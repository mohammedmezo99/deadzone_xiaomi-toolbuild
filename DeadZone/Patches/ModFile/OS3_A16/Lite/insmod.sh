#!/usr/bin/env bash
# Lite OS3_A16 runtime orchestrator. Patch logic lives in patches/*.sh.
set -u

LITE_PACK_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
LITE_PATCH_DIR="$LITE_PACK_DIR/patches"
export DZ_BASE_STYLE_ID="${DZ_BASE_STYLE_ID:-lite}"
source "$LITE_PATCH_DIR/lite_smali_master.sh"

norm_lower() { printf '%s' "$1" | tr '[:upper:]' '[:lower:]'; }
FINAL_STYLE="${DZ_FINAL_STYLE_ID:-${DZ_REQUESTED_STYLE:-${DZ_STYLE_ID:-}}}"
FINAL_STYLE="$(norm_lower "$FINAL_STYLE")"
MODE="${DZ_STYLE_EXECUTION_MODE:-final}"

find_rom_root() {
  local candidate
  for candidate in "${1:-}" "${ROM_ROOT:-}" "${DZ_ROM_ROOT:-}" "${EXTRACTED_ROM_DIR:-}" "${WORK_DIR:-}" "$PWD" "$PWD/work" "$PWD/out" "$PWD/output"; do
    [[ -n "$candidate" && -d "$candidate" ]] || continue
    if find "$candidate" -type f \( -name 'Settings.apk' -o -name 'MiuiSystemUI.apk' \) -print -quit 2>/dev/null | grep -q .; then
      echo "$candidate"
      return 0
    fi
  done
  return 1
}

read_prop_from_root() {
  local root="$1" key="$2"
  find "$root" -name build.prop -type f 2>/dev/null | while read -r prop; do
    grep -h "^${key}=" "$prop" | head -n 1 | cut -d= -f2-
  done | head -n 1
}

lite_gate() {
  local root="$1"
  local platform android sdk release
  platform="${DZ_PLATFORM_ID:-${PLATFORM_ID:-${ROM_PLATFORM:-}}}"
  android="${ANDROID_VERSION:-${DZ_ANDROID_VERSION:-}}"
  sdk="${SDK_VERSION:-${ANDROID_SDK:-${PLATFORM_SDK_VERSION:-}}}"
  release="$(read_prop_from_root "$root" 'ro.build.version.release')"
  [[ -z "$android" && -n "$release" ]] && android="$release"
  [[ -z "$sdk" ]] && sdk="$(read_prop_from_root "$root" 'ro.build.version.sdk')"

  if [[ "$FINAL_STYLE" != "lite" ]]; then
    echo "[Lite][OS3_A16] SKIPPED: final style is not lite (${FINAL_STYLE:-unknown})"
    exit 0
  fi
  if [[ "$MODE" == "base" ]]; then
    echo "[Lite][OS3_A16] SKIPPED: Lite manual pack is final-style-only, current mode is base"
    exit 0
  fi
  if [[ "$platform" != "OS3_A16" ]]; then
    echo "[Lite][OS3_A16] SKIPPED: platform is not OS3_A16 (${platform:-unknown})"
    exit 0
  fi
  if [[ "$android" != "16" && "$sdk" != "36" ]]; then
    echo "[Lite][OS3_A16] SKIPPED: not Android 16 / SDK 36"
    exit 0
  fi
}

find_apk() {
  local root="$1" name="$2" pattern="$3"
  find "$root" -type f -name "$name" 2>/dev/null | grep -E "$pattern" | head -n 1 || true
}

apktool_cmd() {
  local repo_root jar
  if command -v apktool >/dev/null 2>&1; then
    echo apktool
    return 0
  fi
  repo_root="$(cd "$LITE_PACK_DIR/../../../../../" && pwd)"
  jar=$(find "$repo_root/DeadZone/Tools/Android/apktool" -maxdepth 1 -type f \( -name 'apktool*.jar' -o -name 'apke.jar' \) | head -n 1 || true)
  if [[ -n "$jar" && -f "$jar" ]]; then
    echo "java -jar $jar"
    return 0
  fi
  if [[ -n "${APKTOOL_JAR:-}" && -f "${APKTOOL_JAR:-}" ]]; then
    echo "java -jar ${APKTOOL_JAR}"
    return 0
  fi
  return 1
}

patch_decoded_dir() {
  local decoded="$1" module="$2" apply_func="$3" target_label="$4"
  if [[ -z "$decoded" || ! -d "$decoded" ]]; then
    lite_log_skip "$module decoded dir missing"
    return 0
  fi
  echo "[Lite][OS3_A16][$target_label] Applying $module patches"
  "$apply_func" "$decoded"
}

patch_apk() {
  local apk="$1" module="$2" apply_func="$3" decoded_env_var="$4" target_label="$5"
  local decoded_override="${!decoded_env_var:-}"
  if [[ -n "$decoded_override" ]]; then
    patch_decoded_dir "$decoded_override" "$module" "$apply_func" "$target_label"
    return $?
  fi
  if [[ -z "$apk" || ! -f "$apk" ]]; then
    lite_log_skip "$module apk not found"
    return 0
  fi
  local tool tmp decoded out backup
  tool=$(apktool_cmd) || { echo "[Lite][OS3_A16] ERROR apktool not found"; return 1; }
  tmp="${TMPDIR:-/tmp}/lite_os3_a16_${module}_$$"
  decoded="$tmp/decoded"
  out="$tmp/out.apk"
  backup="$apk.lite-os3-a16.bak"
  rm -rf "$tmp"
  mkdir -p "$tmp"
  cp "$apk" "$backup"
  echo "[Lite][OS3_A16][$target_label] Applying $module patches"
  lite_log_info "Decompiling $module: $apk"
  # shellcheck disable=SC2086
  $tool d -f "$apk" -o "$decoded" >/dev/null || { lite_log_error "$module decompile failed"; rm -rf "$tmp"; return 1; }
  "$apply_func" "$decoded"
  lite_log_info "Rebuilding $module"
  # shellcheck disable=SC2086
  $tool b "$decoded" -o "$out" >/dev/null || { lite_log_error "$module rebuild failed"; rm -rf "$tmp"; return 1; }
  if [[ ! -s "$out" ]]; then
    lite_log_error "$module rebuilt APK empty"
    rm -rf "$tmp"
    return 1
  fi
  cp "$out" "$apk"
  remove_oat_artifacts "$apk"
  lite_log_applied "$module apk replaced"
  rm -rf "$tmp"
}

main() {
  local root settings_apk systemui_apk
  root=$(find_rom_root "${1:-}") || { echo "[Lite][OS3_A16] ERROR ROM root not found"; exit 1; }
  lite_prepare_reports
  lite_gate "$root"
  echo "[Lite][OS3_A16] Applying Lite OS3_A16 Manual Runtime Smali Pack"
  lite_log_info "ROM root: $root"

  settings_apk=$(find_apk "$root" 'Settings.apk' '/(system|system_ext|product)/(priv-)?app/Settings/')
  systemui_apk=$(find_apk "$root" 'MiuiSystemUI.apk' '/system_ext/priv-app/MiuiSystemUI/')

  patch_apk "$settings_apk" "Settings" apply_lite_settings_patches "DZ_DECOMPILED_SETTINGS_DIR" "Settings.apk" || true
  patch_apk "$systemui_apk" "MiuiSystemUI" apply_lite_systemui_patches "DZ_DECOMPILED_SYSTEMUI_DIR" "MiuiSystemUI.apk" || true
  lite_write_summary

  if [[ "$LITE_ERROR_COUNT" -gt 0 || "$LITE_BLOCKER_COUNT" -gt 0 ]]; then
    exit 1
  fi
}

main "$@"

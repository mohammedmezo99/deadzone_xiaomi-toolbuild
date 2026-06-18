#!/usr/bin/env bash
# Lite OS3_A16 runtime patch helpers. No .mtcr runtime usage.

set -u

LITE_PACK_DIR="${LITE_PACK_DIR:-$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)}"
LITE_REPORT_DIR="${LITE_REPORT_DIR:-${PWD}/out/reports/lite-os3-a16}"
LITE_REPORT_TSV="${LITE_REPORT_TSV:-${LITE_REPORT_DIR}/lite-os3-a16-report.tsv}"
LITE_SUMMARY_TXT="${LITE_SUMMARY_TXT:-${LITE_REPORT_DIR}/lite-os3-a16-summary.txt}"
LITE_ACTIVE_JSON="${LITE_ACTIVE_JSON:-${PWD}/out/reports/active_mods_report.json}"

LITE_APPLIED_COUNT=${LITE_APPLIED_COUNT:-0}
LITE_SKIPPED_COUNT=${LITE_SKIPPED_COUNT:-0}
LITE_ERROR_COUNT=${LITE_ERROR_COUNT:-0}
LITE_BLOCKER_COUNT=${LITE_BLOCKER_COUNT:-0}

lite_prepare_reports() {
  mkdir -p "$LITE_REPORT_DIR" "$(dirname "$LITE_ACTIVE_JSON")"
  printf 'target_module\ttarget_file\tpatch_function\tclass_name\tstatus\treason\n' > "$LITE_REPORT_TSV"
}

lite_log_info() { echo "[Lite][OS3_A16] $*"; }
lite_log_applied() { echo "[Lite][OS3_A16] APPLIED $*"; LITE_APPLIED_COUNT=$((LITE_APPLIED_COUNT+1)); }
lite_log_skip() { echo "[Lite][OS3_A16] SKIPPED $*"; LITE_SKIPPED_COUNT=$((LITE_SKIPPED_COUNT+1)); }
lite_log_error() { echo "[Lite][OS3_A16] ERROR $*"; LITE_ERROR_COUNT=$((LITE_ERROR_COUNT+1)); }
lite_log_blocker() { echo "[Lite][OS3_A16] BLOCKER $*"; LITE_BLOCKER_COUNT=$((LITE_BLOCKER_COUNT+1)); }

lite_report_row() {
  local module="$1" target="$2" func="$3" cls="$4" status="$5" reason="$6"
  mkdir -p "$(dirname "$LITE_REPORT_TSV")"
  printf '%s\t%s\t%s\t%s\t%s\t%s\n' "$module" "$target" "$func" "$cls" "$status" "$reason" >> "$LITE_REPORT_TSV"
}

lite_find_smali_base() {
  local decoded="$1"
  if [[ -d "$decoded/smali" ]]; then
    echo "$decoded/smali"
    return 0
  fi
  local found
  found=$(find "$decoded" -maxdepth 1 -type d -name 'smali*' | sort | head -n 1 || true)
  if [[ -n "$found" ]]; then
    echo "$found"
    return 0
  fi
  mkdir -p "$decoded/smali"
  echo "$decoded/smali"
}

inject_added_smali_class() {
  local module="$1" decoded="$2" rel="$3" source="$4" func="$5"
  local base target
  base=$(lite_find_smali_base "$decoded")
  target="$base/$rel"

  if [[ ! -f "$source" ]]; then
    lite_log_error "$rel source template missing"
    lite_report_row "$module" "$target" "$func" "$rel" "ERROR" "source template missing"
    return 1
  fi

  if [[ -f "$target" ]]; then
    if cmp -s "$source" "$target"; then
      lite_log_skip "$rel already injected"
      lite_report_row "$module" "$target" "$func" "$rel" "SKIPPED" "already injected"
      return 0
    fi
    lite_log_skip "$rel exists already, not overwritten"
    lite_report_row "$module" "$target" "$func" "$rel" "SKIPPED" "class exists already"
    return 0
  fi

  mkdir -p "$(dirname "$target")"
  cp "$source" "$target"
  if [[ -s "$target" ]]; then
    lite_log_applied "$rel"
    lite_report_row "$module" "$target" "$func" "$rel" "APPLIED" "added smali class"
    return 0
  fi
  lite_log_error "$rel injection failed"
  lite_report_row "$module" "$target" "$func" "$rel" "ERROR" "copy failed"
  return 1
}

copy_resource_tree() {
  local module="$1" decoded="$2" src_tree="$3" func="$4"
  if [[ ! -d "$src_tree" ]]; then
    lite_log_skip "$module resource tree missing: $src_tree"
    lite_report_row "$module" "$decoded" "$func" "resources" "SKIPPED" "resource tree missing"
    return 0
  fi
  local count=0
  while IFS= read -r -d '' file; do
    local rel dest
    rel="${file#$src_tree/}"
    dest="$decoded/res/$rel"
    mkdir -p "$(dirname "$dest")"
    cp "$file" "$dest"
    count=$((count+1))
  done < <(find "$src_tree" -type f -print0)
  lite_log_applied "$module resources copied: $count"
  lite_report_row "$module" "$decoded/res" "$func" "resources" "APPLIED" "copied $count resources"
}

copy_axml_replacements() {
  local module="$1" decoded="$2" src_tree="$3" func="$4"
  if [[ ! -d "$src_tree" ]]; then
    lite_log_skip "$module AXML replacements missing"
    lite_report_row "$module" "$decoded" "$func" "axml" "SKIPPED" "missing"
    return 0
  fi
  local count=0
  while IFS= read -r -d '' file; do
    local rel dest
    rel="${file#$src_tree/}"
    dest="$decoded/$rel"
    mkdir -p "$(dirname "$dest")"
    cp "$file" "$dest"
    count=$((count+1))
  done < <(find "$src_tree" -type f -print0)
  lite_log_applied "$module AXML replacements copied: $count"
  lite_report_row "$module" "$decoded" "$func" "axml" "APPLIED" "copied $count replacements"
}

remove_oat_artifacts() {
  local apk_path="$1"
  local base_dir
  base_dir=$(dirname "$apk_path")
  find "$base_dir" \( -name '*.odex' -o -name '*.vdex' -o -name '*.oat' -o -type d -name oat \) -print -exec rm -rf {} + 2>/dev/null || true
}

lite_write_summary() {
  mkdir -p "$LITE_REPORT_DIR" "$(dirname "$LITE_ACTIVE_JSON")"
  {
    echo "Lite OS3_A16 runtime patch summary"
    echo "status: generated-runtime-pack"
    echo "applied: $LITE_APPLIED_COUNT"
    echo "skipped: $LITE_SKIPPED_COUNT"
    echo "errors: $LITE_ERROR_COUNT"
    echo "blockers: $LITE_BLOCKER_COUNT"
    echo "report: $LITE_REPORT_TSV"
    echo "runtime_uses_mtcr: false"
  } > "$LITE_SUMMARY_TXT"
  python3 - "$LITE_ACTIVE_JSON" "$LITE_APPLIED_COUNT" "$LITE_SKIPPED_COUNT" "$LITE_ERROR_COUNT" "$LITE_BLOCKER_COUNT" "$LITE_SUMMARY_TXT" <<'PY_LITE_JSON' || true
import json, sys, os
path, a, s, e, b, summary = sys.argv[1:]
entry = {
  "id":"lite_os3_a16_pack",
  "style":"lite",
  "platform":"OS3_A16",
  "android":"16",
  "status":"error" if int(e) or int(b) else "applied",
  "applied_count":int(a),
  "skipped_count":int(s),
  "error_count":int(e),
  "blocker_count":int(b),
  "report":summary,
  "runtime_uses_mtcr":False,
}
os.makedirs(os.path.dirname(path), exist_ok=True)
try:
    data=json.load(open(path,encoding='utf-8'))
except Exception:
    data=[]
if isinstance(data, dict):
    mods=data.setdefault('mods', [])
else:
    mods=data
mods=[m for m in mods if not (isinstance(m,dict) and m.get('id')=='lite_os3_a16_pack')]
mods.append(entry)
if isinstance(data, dict):
    data['mods']=mods
else:
    data=mods
json.dump(data, open(path,'w',encoding='utf-8'), indent=2, ensure_ascii=False)
PY_LITE_JSON
}

#!/usr/bin/env bash
set -u

LITE_PATCH_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
LITE_PACK_DIR="$(cd "$LITE_PATCH_DIR/.." && pwd)"
source "$LITE_PATCH_DIR/lite_patch_lib.sh"
source "$LITE_PATCH_DIR/settings_smali_patches.sh"
source "$LITE_PATCH_DIR/settings_resource_patches.sh"
source "$LITE_PATCH_DIR/systemui_resource_patches.sh"

apply_lite_settings_patches() {
  local decoded="$1"
  apply_lite_settings_smali_patches "$decoded"
  apply_lite_settings_resource_patches "$decoded"
}

apply_lite_systemui_patches() {
  local decoded="$1"
  apply_lite_systemui_resource_patches "$decoded"
}

apply_all_lite_os3_a16_patches() {
  local settings_decoded="${1:-}" systemui_decoded="${2:-}"
  lite_log_info "Applying Lite OS3_A16 runtime smali/resource patches"
  [[ -n "$settings_decoded" && -d "$settings_decoded" ]] && apply_lite_settings_patches "$settings_decoded" || lite_log_skip "Settings decoded dir missing"
  [[ -n "$systemui_decoded" && -d "$systemui_decoded" ]] && apply_lite_systemui_patches "$systemui_decoded" || lite_log_skip "MiuiSystemUI decoded dir missing"
  lite_write_summary
}

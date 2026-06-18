#!/usr/bin/env bash
set -u

apply_lite_settings_resource_patches() {
  local decoded="$1"
  lite_log_info "Applying Lite Settings resource patches"
  copy_resource_tree "Settings" "$decoded" "${LITE_PACK_DIR}/resources/Settings/res" "apply_lite_settings_resource_patches"
  copy_axml_replacements "Settings" "$decoded" "${LITE_PACK_DIR}/resources/Settings/axml_b" "apply_lite_settings_resource_patches"
}

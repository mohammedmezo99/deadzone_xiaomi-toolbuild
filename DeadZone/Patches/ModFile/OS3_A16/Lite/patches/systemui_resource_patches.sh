#!/usr/bin/env bash
set -u

apply_lite_systemui_resource_patches() {
  local decoded="$1"
  lite_log_info "Applying Lite MiuiSystemUI resource patches"
  copy_resource_tree "MiuiSystemUI" "$decoded" "${LITE_PACK_DIR}/resources/MiuiSystemUI/res" "apply_lite_systemui_resource_patches"
}

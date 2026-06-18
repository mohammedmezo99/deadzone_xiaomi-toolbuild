#!/usr/bin/env bash
# Ninja OS3_A16 MiuiSystemUI resource patcher.
set -euo pipefail
apply_systemui_resource_patches() {
  local decompiled_dir="${APK_DECOMPILED_DIR:-}"
  if [[ -z "$decompiled_dir" || ! -d "$decompiled_dir" ]]; then ninja_log_skip "MiuiSystemUI resource patch skipped: APK_DECOMPILED_DIR missing"; ninja_report_row "systemui_resources" "MiuiSystemUI.apk" "apply_systemui_resource_patches" "res" "SKIPPED" "APK_DECOMPILED_DIR missing"; return 0; fi
  ninja_log_info "Applying MiuiSystemUI resource patches"; local applied=0
  if [[ -d "$NINJA_PACK_DIR/resources/MiuiSystemUI/res" ]]; then ninja_copy_dir_contents "$NINJA_PACK_DIR/resources/MiuiSystemUI/res" "$decompiled_dir/res"; applied=$((applied+1)); fi
  if [[ -d "$NINJA_PACK_DIR/resources/MiuiSystemUI/res_from_axml/res" ]]; then ninja_copy_dir_contents "$NINJA_PACK_DIR/resources/MiuiSystemUI/res_from_axml/res" "$decompiled_dir/res"; applied=$((applied+1)); fi
  if [[ -d "$NINJA_PACK_DIR/resources/MiuiSystemUI/res_values_from_arsc/res" ]]; then ninja_copy_dir_contents "$NINJA_PACK_DIR/resources/MiuiSystemUI/res_values_from_arsc/res" "$decompiled_dir/res"; applied=$((applied+1)); fi
  if [[ "$applied" -gt 0 ]]; then ninja_log_applied "MiuiSystemUI resources merged"; ninja_report_row "systemui_resources" "$decompiled_dir/res" "apply_systemui_resource_patches" "res" "APPLIED" "resources copied/merged"; else ninja_log_skip "MiuiSystemUI resources: no generated resources found"; ninja_report_row "systemui_resources" "$decompiled_dir/res" "apply_systemui_resource_patches" "res" "SKIPPED" "no generated resources found"; fi
}

#!/usr/bin/env bash
set -euo pipefail
: "${NINJA_PACK_DIR:?NINJA_PACK_DIR required}"
source "$NINJA_PACK_DIR/patches/ninja_patch_lib.sh"
source "$NINJA_PACK_DIR/patches/framework_smali_patches.sh"
source "$NINJA_PACK_DIR/patches/services_smali_patches.sh"
source "$NINJA_PACK_DIR/patches/miui_framework_smali_patches.sh"
source "$NINJA_PACK_DIR/patches/miui_services_smali_patches.sh"
source "$NINJA_PACK_DIR/patches/systemui_smali_patches.sh"
source "$NINJA_PACK_DIR/patches/systemui_resource_patches.sh"
source "$NINJA_PACK_DIR/patches/powerkeeper_smali_patches.sh"
apply_all_ninja_smali_patches() {
  local module="$1"
  case "$module" in
    framework) apply_framework_smali_patches ;;
    services) apply_services_smali_patches ;;
    miui_framework) apply_miui_framework_smali_patches ;;
    miui_services) apply_miui_services_smali_patches ;;
    systemui) apply_systemui_smali_patches; apply_systemui_resource_patches ;;
    powerkeeper) apply_powerkeeper_smali_patches ;;
    all) apply_framework_smali_patches; apply_services_smali_patches; apply_miui_framework_smali_patches; apply_miui_services_smali_patches; apply_systemui_smali_patches; apply_systemui_resource_patches; apply_powerkeeper_smali_patches ;;
    *) ninja_log_error "Unknown module: $module"; return 1 ;;
  esac
  ninja_write_summary
}

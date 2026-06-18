#!/usr/bin/env bash
# Auto-generated manual Ninja OS3_A16 smali patch functions for powerkeeper.
# Runtime does not read .mtcr files; it uses generated smali templates.
set -euo pipefail

patch_powerkeeper_com_miui_powerkeeper_cloudcontrol_cloudupdatehidemode() {
  ninja_apply_smali_template 'powerkeeper' "$SMALI_DIRS" 'com/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode.smali' 'com/miui/powerkeeper/cloudcontrol/CloudUpdateHideMode.smali' 'modified' 'patch_powerkeeper_com_miui_powerkeeper_cloudcontrol_cloudupdatehidemode'
}

patch_powerkeeper_com_miui_powerkeeper_cloudcontrol_localupdateutils() {
  ninja_apply_smali_template 'powerkeeper' "$SMALI_DIRS" 'com/miui/powerkeeper/cloudcontrol/LocalUpdateUtils.smali' 'com/miui/powerkeeper/cloudcontrol/LocalUpdateUtils.smali' 'modified' 'patch_powerkeeper_com_miui_powerkeeper_cloudcontrol_localupdateutils'
}

patch_powerkeeper_com_miui_powerkeeper_controller_deviceidlecontroller_1() {
  ninja_apply_smali_template 'powerkeeper' "$SMALI_DIRS" 'com/miui/powerkeeper/controller/DeviceIdleController$1.smali' 'com/miui/powerkeeper/controller/DeviceIdleController$1.smali' 'modified' 'patch_powerkeeper_com_miui_powerkeeper_controller_deviceidlecontroller_1'
}

patch_powerkeeper_com_miui_powerkeeper_customerpower_customerpowercheck() {
  ninja_apply_smali_template 'powerkeeper' "$SMALI_DIRS" 'com/miui/powerkeeper/customerpower/CustomerPowerCheck.smali' 'com/miui/powerkeeper/customerpower/CustomerPowerCheck.smali' 'modified' 'patch_powerkeeper_com_miui_powerkeeper_customerpower_customerpowercheck'
}

patch_powerkeeper_com_miui_powerkeeper_dfs_usageapptracker() {
  ninja_apply_smali_template 'powerkeeper' "$SMALI_DIRS" 'com/miui/powerkeeper/dfs/UsageAppTracker.smali' 'com/miui/powerkeeper/dfs/UsageAppTracker.smali' 'modified' 'patch_powerkeeper_com_miui_powerkeeper_dfs_usageapptracker'
}

patch_powerkeeper_com_miui_powerkeeper_feedbackcontrol_thermalloguploader() {
  ninja_apply_smali_template 'powerkeeper' "$SMALI_DIRS" 'com/miui/powerkeeper/feedbackcontrol/ThermalLogUploader.smali' 'com/miui/powerkeeper/feedbackcontrol/ThermalLogUploader.smali' 'modified' 'patch_powerkeeper_com_miui_powerkeeper_feedbackcontrol_thermalloguploader'
}

patch_powerkeeper_com_miui_powerkeeper_powerchecker_powercheckercloudpolicy() {
  ninja_apply_smali_template 'powerkeeper' "$SMALI_DIRS" 'com/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy.smali' 'com/miui/powerkeeper/powerchecker/PowerCheckerCloudPolicy.smali' 'modified' 'patch_powerkeeper_com_miui_powerkeeper_powerchecker_powercheckercloudpolicy'
}

patch_powerkeeper_com_miui_powerkeeper_statemachine_displayframesetting() {
  ninja_apply_smali_template 'powerkeeper' "$SMALI_DIRS" 'com/miui/powerkeeper/statemachine/DisplayFrameSetting.smali' 'com/miui/powerkeeper/statemachine/DisplayFrameSetting.smali' 'modified' 'patch_powerkeeper_com_miui_powerkeeper_statemachine_displayframesetting'
}

patch_powerkeeper_com_miui_powerkeeper_tracker_trackermanager_privacypolicy() {
  ninja_apply_smali_template 'powerkeeper' "$SMALI_DIRS" 'com/miui/powerkeeper/tracker/TrackerManager$PrivacyPolicy.smali' 'com/miui/powerkeeper/tracker/TrackerManager$PrivacyPolicy.smali' 'modified' 'patch_powerkeeper_com_miui_powerkeeper_tracker_trackermanager_privacypolicy'
}

patch_powerkeeper_com_miui_powerkeeper_unionpower_utils_unionpowerconfig() {
  ninja_apply_smali_template 'powerkeeper' "$SMALI_DIRS" 'com/miui/powerkeeper/unionpower/utils/UnionPowerConfig.smali' 'com/miui/powerkeeper/unionpower/utils/UnionPowerConfig.smali' 'modified' 'patch_powerkeeper_com_miui_powerkeeper_unionpower_utils_unionpowerconfig'
}

patch_powerkeeper_com_miui_powerkeeper_utils_gmsobserver() {
  ninja_apply_smali_template 'powerkeeper' "$SMALI_DIRS" 'com/miui/powerkeeper/utils/GmsObserver.smali' 'com/miui/powerkeeper/utils/GmsObserver.smali' 'modified' 'patch_powerkeeper_com_miui_powerkeeper_utils_gmsobserver'
}

patch_powerkeeper_com_miui_powerkeeper_utils_utils() {
  ninja_apply_smali_template 'powerkeeper' "$SMALI_DIRS" 'com/miui/powerkeeper/utils/Utils.smali' 'com/miui/powerkeeper/utils/Utils.smali' 'modified' 'patch_powerkeeper_com_miui_powerkeeper_utils_utils'
}

patch_powerkeeper_miui_payment_paymentmanager() {
  ninja_apply_smali_template 'powerkeeper' "$SMALI_DIRS" 'miui/payment/PaymentManager.smali' 'miui/payment/PaymentManager.smali' 'modified' 'patch_powerkeeper_miui_payment_paymentmanager'
}

patch_powerkeeper_miui_provider_extranetwork() {
  ninja_apply_smali_template 'powerkeeper' "$SMALI_DIRS" 'miui/provider/ExtraNetwork.smali' 'miui/provider/ExtraNetwork.smali' 'modified' 'patch_powerkeeper_miui_provider_extranetwork'
}

patch_powerkeeper_miui_theme_thememanagerhelper() {
  ninja_apply_smali_template 'powerkeeper' "$SMALI_DIRS" 'miui/theme/ThemeManagerHelper.smali' 'miui/theme/ThemeManagerHelper.smali' 'modified' 'patch_powerkeeper_miui_theme_thememanagerhelper'
}

patch_powerkeeper_miui_yellowpage_hostmanager() {
  ninja_apply_smali_template 'powerkeeper' "$SMALI_DIRS" 'miui/yellowpage/HostManager.smali' 'miui/yellowpage/HostManager.smali' 'modified' 'patch_powerkeeper_miui_yellowpage_hostmanager'
}

patch_powerkeeper_miui_yellowpage_yellowpageutils() {
  ninja_apply_smali_template 'powerkeeper' "$SMALI_DIRS" 'miui/yellowpage/YellowPageUtils.smali' 'miui/yellowpage/YellowPageUtils.smali' 'modified' 'patch_powerkeeper_miui_yellowpage_yellowpageutils'
}

apply_powerkeeper_smali_patches() {
  ninja_log_info "Applying powerkeeper smali patches"
  patch_powerkeeper_com_miui_powerkeeper_cloudcontrol_cloudupdatehidemode || true
  patch_powerkeeper_com_miui_powerkeeper_cloudcontrol_localupdateutils || true
  patch_powerkeeper_com_miui_powerkeeper_controller_deviceidlecontroller_1 || true
  patch_powerkeeper_com_miui_powerkeeper_customerpower_customerpowercheck || true
  patch_powerkeeper_com_miui_powerkeeper_dfs_usageapptracker || true
  patch_powerkeeper_com_miui_powerkeeper_feedbackcontrol_thermalloguploader || true
  patch_powerkeeper_com_miui_powerkeeper_powerchecker_powercheckercloudpolicy || true
  patch_powerkeeper_com_miui_powerkeeper_statemachine_displayframesetting || true
  patch_powerkeeper_com_miui_powerkeeper_tracker_trackermanager_privacypolicy || true
  patch_powerkeeper_com_miui_powerkeeper_unionpower_utils_unionpowerconfig || true
  patch_powerkeeper_com_miui_powerkeeper_utils_gmsobserver || true
  patch_powerkeeper_com_miui_powerkeeper_utils_utils || true
  patch_powerkeeper_miui_payment_paymentmanager || true
  patch_powerkeeper_miui_provider_extranetwork || true
  patch_powerkeeper_miui_theme_thememanagerhelper || true
  patch_powerkeeper_miui_yellowpage_hostmanager || true
  patch_powerkeeper_miui_yellowpage_yellowpageutils || true
}

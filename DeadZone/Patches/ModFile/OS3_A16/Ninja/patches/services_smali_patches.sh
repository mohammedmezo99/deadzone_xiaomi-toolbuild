#!/usr/bin/env bash
# Auto-generated manual Ninja OS3_A16 smali patch functions for services.
# Runtime does not read .mtcr files; it uses generated smali templates.
set -euo pipefail

patch_services_com_android_server_biometrics_sensors_authenticationclient() {
  ninja_apply_smali_template 'services' "$SMALI_DIRS" 'com/android/server/biometrics/sensors/AuthenticationClient.smali' 'com/android/server/biometrics/sensors/AuthenticationClient.smali' 'modified' 'patch_services_com_android_server_biometrics_sensors_authenticationclient'
}

patch_services_com_android_server_devicepolicy_devicepolicycacheimpl() {
  ninja_apply_smali_template 'services' "$SMALI_DIRS" 'com/android/server/devicepolicy/DevicePolicyCacheImpl.smali' 'com/android/server/devicepolicy/DevicePolicyCacheImpl.smali' 'modified' 'patch_services_com_android_server_devicepolicy_devicepolicycacheimpl'
}

patch_services_com_android_server_devicepolicy_devicepolicymanagerservice() {
  ninja_apply_smali_template 'services' "$SMALI_DIRS" 'com/android/server/devicepolicy/DevicePolicyManagerService.smali' 'com/android/server/devicepolicy/DevicePolicyManagerService.smali' 'modified' 'patch_services_com_android_server_devicepolicy_devicepolicymanagerservice'
}

patch_services_com_android_server_location_locationmanagerservice() {
  ninja_apply_smali_template 'services' "$SMALI_DIRS" 'com/android/server/location/LocationManagerService.smali' 'com/android/server/location/LocationManagerService.smali' 'modified' 'patch_services_com_android_server_location_locationmanagerservice'
}

patch_services_com_android_server_location_provider_mocklocationprovider() {
  ninja_apply_smali_template 'services' "$SMALI_DIRS" 'com/android/server/location/provider/MockLocationProvider.smali' 'com/android/server/location/provider/MockLocationProvider.smali' 'modified' 'patch_services_com_android_server_location_provider_mocklocationprovider'
}

patch_services_com_android_server_policy_phonewindowmanager() {
  ninja_apply_smali_template 'services' "$SMALI_DIRS" 'com/android/server/policy/PhoneWindowManager.smali' 'com/android/server/policy/PhoneWindowManager.smali' 'modified' 'patch_services_com_android_server_policy_phonewindowmanager'
}

patch_services_com_android_server_policy_phonewindowmanager_musicnext() {
  ninja_apply_smali_template 'services' "$SMALI_DIRS" 'com/android/server/policy/PhoneWindowManager$MusicNext.smali' 'com/android/server/policy/PhoneWindowManager$MusicNext.smali' 'added' 'patch_services_com_android_server_policy_phonewindowmanager_musicnext'
}

patch_services_com_android_server_policy_phonewindowmanager_musicprev() {
  ninja_apply_smali_template 'services' "$SMALI_DIRS" 'com/android/server/policy/PhoneWindowManager$MusicPrev.smali' 'com/android/server/policy/PhoneWindowManager$MusicPrev.smali' 'added' 'patch_services_com_android_server_policy_phonewindowmanager_musicprev'
}

patch_services_com_android_server_policy_volbtnhelper() {
  ninja_apply_smali_template 'services' "$SMALI_DIRS" 'com/android/server/policy/VolBtnHelper.smali' 'com/android/server/policy/VolBtnHelper.smali' 'added' 'patch_services_com_android_server_policy_volbtnhelper'
}

patch_services_com_android_server_wm_windowmanagerservice() {
  ninja_apply_smali_template 'services' "$SMALI_DIRS" 'com/android/server/wm/WindowManagerService.smali' 'com/android/server/wm/WindowManagerService.smali' 'modified' 'patch_services_com_android_server_wm_windowmanagerservice'
}

patch_services_com_android_server_wm_windowstate() {
  ninja_apply_smali_template 'services' "$SMALI_DIRS" 'com/android/server/wm/WindowState.smali' 'com/android/server/wm/WindowState.smali' 'modified' 'patch_services_com_android_server_wm_windowstate'
}

apply_services_smali_patches() {
  ninja_log_info "Applying services smali patches"
  patch_services_com_android_server_biometrics_sensors_authenticationclient || true
  patch_services_com_android_server_devicepolicy_devicepolicycacheimpl || true
  patch_services_com_android_server_devicepolicy_devicepolicymanagerservice || true
  patch_services_com_android_server_location_locationmanagerservice || true
  patch_services_com_android_server_location_provider_mocklocationprovider || true
  patch_services_com_android_server_policy_phonewindowmanager || true
  patch_services_com_android_server_policy_phonewindowmanager_musicnext || true
  patch_services_com_android_server_policy_phonewindowmanager_musicprev || true
  patch_services_com_android_server_policy_volbtnhelper || true
  patch_services_com_android_server_wm_windowmanagerservice || true
  patch_services_com_android_server_wm_windowstate || true
}

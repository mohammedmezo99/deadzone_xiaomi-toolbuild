#!/usr/bin/env bash
# Auto-generated manual Ninja OS3_A16 smali patch functions for miui_services.
# Runtime does not read .mtcr files; it uses generated smali templates.
set -euo pipefail

patch_miui_services_com_android_server_am_activitymanagerserviceimpl() {
  ninja_apply_smali_template 'miui_services' "$SMALI_DIRS" 'com/android/server/am/ActivityManagerServiceImpl.smali' 'com/android/server/am/ActivityManagerServiceImpl.smali' 'modified' 'patch_miui_services_com_android_server_am_activitymanagerserviceimpl'
}

patch_miui_services_com_android_server_am_broadcastqueuemodernstubimpl() {
  ninja_apply_smali_template 'miui_services' "$SMALI_DIRS" 'com/android/server/am/BroadcastQueueModernStubImpl.smali' 'com/android/server/am/BroadcastQueueModernStubImpl.smali' 'modified' 'patch_miui_services_com_android_server_am_broadcastqueuemodernstubimpl'
}

patch_miui_services_com_android_server_am_processmanagerservice() {
  ninja_apply_smali_template 'miui_services' "$SMALI_DIRS" 'com/android/server/am/ProcessManagerService.smali' 'com/android/server/am/ProcessManagerService.smali' 'modified' 'patch_miui_services_com_android_server_am_processmanagerservice'
}

patch_miui_services_com_android_server_am_processpolicy() {
  ninja_apply_smali_template 'miui_services' "$SMALI_DIRS" 'com/android/server/am/ProcessPolicy.smali' 'com/android/server/am/ProcessPolicy.smali' 'modified' 'patch_miui_services_com_android_server_am_processpolicy'
}

patch_miui_services_com_android_server_am_processscenecleaner() {
  ninja_apply_smali_template 'miui_services' "$SMALI_DIRS" 'com/android/server/am/ProcessSceneCleaner.smali' 'com/android/server/am/ProcessSceneCleaner.smali' 'modified' 'patch_miui_services_com_android_server_am_processscenecleaner'
}

patch_miui_services_com_android_server_policy_miuishortcuttriggerhelper_shortcutsettingsobserver() {
  ninja_apply_smali_template 'miui_services' "$SMALI_DIRS" 'com/android/server/policy/MiuiShortcutTriggerHelper$ShortcutSettingsObserver.smali' 'com/android/server/policy/MiuiShortcutTriggerHelper$ShortcutSettingsObserver.smali' 'modified' 'patch_miui_services_com_android_server_policy_miuishortcuttriggerhelper_shortcutsettingsobserver'
}

patch_miui_services_com_android_server_wm_windowmanagerserviceimpl() {
  ninja_apply_smali_template 'miui_services' "$SMALI_DIRS" 'com/android/server/wm/WindowManagerServiceImpl.smali' 'com/android/server/wm/WindowManagerServiceImpl.smali' 'modified' 'patch_miui_services_com_android_server_wm_windowmanagerserviceimpl'
}

patch_miui_services_com_miui_server_greeze_policymanager() {
  ninja_apply_smali_template 'miui_services' "$SMALI_DIRS" 'com/miui/server/greeze/PolicyManager.smali' 'com/miui/server/greeze/PolicyManager.smali' 'modified' 'patch_miui_services_com_miui_server_greeze_policymanager'
}

apply_miui_services_smali_patches() {
  ninja_log_info "Applying miui_services smali patches"
  patch_miui_services_com_android_server_am_activitymanagerserviceimpl || true
  patch_miui_services_com_android_server_am_broadcastqueuemodernstubimpl || true
  patch_miui_services_com_android_server_am_processmanagerservice || true
  patch_miui_services_com_android_server_am_processpolicy || true
  patch_miui_services_com_android_server_am_processscenecleaner || true
  patch_miui_services_com_android_server_policy_miuishortcuttriggerhelper_shortcutsettingsobserver || true
  patch_miui_services_com_android_server_wm_windowmanagerserviceimpl || true
  patch_miui_services_com_miui_server_greeze_policymanager || true
}

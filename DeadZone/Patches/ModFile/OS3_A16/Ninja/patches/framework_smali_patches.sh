#!/usr/bin/env bash
# Auto-generated manual Ninja OS3_A16 smali patch functions for framework.
# Runtime does not read .mtcr files; it uses generated smali templates.
set -euo pipefail

patch_framework_android_utils_imageutils() {
  ninja_apply_smali_template 'framework' "$SMALI_DIRS" 'android/Utils/ImageUtils.smali' 'android/Utils/ImageUtils.smali' 'added' 'patch_framework_android_utils_imageutils'
}

patch_framework_android_utils_reflectionutil() {
  ninja_apply_smali_template 'framework' "$SMALI_DIRS" 'android/Utils/ReflectionUtil.smali' 'android/Utils/ReflectionUtil.smali' 'added' 'patch_framework_android_utils_reflectionutil'
}

patch_framework_android_utils_shell() {
  ninja_apply_smali_template 'framework' "$SMALI_DIRS" 'android/Utils/Shell.smali' 'android/Utils/Shell.smali' 'added' 'patch_framework_android_utils_shell'
}

patch_framework_android_utils_shell_commandresult() {
  ninja_apply_smali_template 'framework' "$SMALI_DIRS" 'android/Utils/Shell$CommandResult.smali' 'android/Utils/Shell$CommandResult.smali' 'added' 'patch_framework_android_utils_shell_commandresult'
}

patch_framework_android_utils_utils() {
  ninja_apply_smali_template 'framework' "$SMALI_DIRS" 'android/Utils/Utils.smali' 'android/Utils/Utils.smali' 'added' 'patch_framework_android_utils_utils'
}

patch_framework_android_content_res_resources() {
  ninja_apply_smali_template 'framework' "$SMALI_DIRS" 'android/content/res/Resources.smali' 'android/content/res/Resources.smali' 'modified' 'patch_framework_android_content_res_resources'
}

patch_framework_android_preference_customupdater() {
  ninja_apply_smali_template 'framework' "$SMALI_DIRS" 'android/preference/CustomUpdater.smali' 'android/preference/CustomUpdater.smali' 'added' 'patch_framework_android_preference_customupdater'
}

patch_framework_android_preference_customupdater_customobjecttransmitter() {
  ninja_apply_smali_template 'framework' "$SMALI_DIRS" 'android/preference/CustomUpdater$CustomObjectTransmitter.smali' 'android/preference/CustomUpdater$CustomObjectTransmitter.smali' 'added' 'patch_framework_android_preference_customupdater_customobjecttransmitter'
}

patch_framework_android_preference_customupdater_customreceiver() {
  ninja_apply_smali_template 'framework' "$SMALI_DIRS" 'android/preference/CustomUpdater$CustomReceiver.smali' 'android/preference/CustomUpdater$CustomReceiver.smali' 'added' 'patch_framework_android_preference_customupdater_customreceiver'
}

patch_framework_android_preference_customupdater_customupdateri() {
  ninja_apply_smali_template 'framework' "$SMALI_DIRS" 'android/preference/CustomUpdater$CustomUpdaterI.smali' 'android/preference/CustomUpdater$CustomUpdaterI.smali' 'added' 'patch_framework_android_preference_customupdater_customupdateri'
}

patch_framework_android_preference_customupdater_customupdateri_1() {
  ninja_apply_smali_template 'framework' "$SMALI_DIRS" 'android/preference/CustomUpdater$CustomUpdaterI$1.smali' 'android/preference/CustomUpdater$CustomUpdaterI$1.smali' 'added' 'patch_framework_android_preference_customupdater_customupdateri_1'
}

patch_framework_android_preference_miuicoresettingspreference() {
  ninja_apply_smali_template 'framework' "$SMALI_DIRS" 'android/preference/MiuiCoreSettingsPreference.smali' 'android/preference/MiuiCoreSettingsPreference.smali' 'added' 'patch_framework_android_preference_miuicoresettingspreference'
}

patch_framework_android_preference_miuipictureselectionpreference() {
  ninja_apply_smali_template 'framework' "$SMALI_DIRS" 'android/preference/MiuiPictureSelectionPreference.smali' 'android/preference/MiuiPictureSelectionPreference.smali' 'added' 'patch_framework_android_preference_miuipictureselectionpreference'
}

patch_framework_android_preference_mypictureselectionpreference() {
  ninja_apply_smali_template 'framework' "$SMALI_DIRS" 'android/preference/MyPictureSelectionPreference.smali' 'android/preference/MyPictureSelectionPreference.smali' 'added' 'patch_framework_android_preference_mypictureselectionpreference'
}

patch_framework_android_preference_settingsmezohelper() {
  ninja_apply_smali_template 'framework' "$SMALI_DIRS" 'android/preference/SettingsMezoHelper.smali' 'android/preference/SettingsMezoHelper.smali' 'added' 'patch_framework_android_preference_settingsmezohelper'
}

patch_framework_android_widget_myscrolltextview() {
  ninja_apply_smali_template 'framework' "$SMALI_DIRS" 'android/widget/MyScrollTextView.smali' 'android/widget/MyScrollTextView.smali' 'added' 'patch_framework_android_widget_myscrolltextview'
}

patch_framework_com_android_internal_policy_systembarutils() {
  ninja_apply_smali_template 'framework' "$SMALI_DIRS" 'com/android/internal/policy/SystemBarUtils.smali' 'com/android/internal/policy/SystemBarUtils.smali' 'modified' 'patch_framework_com_android_internal_policy_systembarutils'
}

patch_framework_miui_util_vibratereasonutils() {
  ninja_apply_smali_template 'framework' "$SMALI_DIRS" 'miui/util/VibrateReasonUtils.smali' 'miui/util/VibrateReasonUtils.smali' 'added' 'patch_framework_miui_util_vibratereasonutils'
}

apply_framework_smali_patches() {
  ninja_log_info "Applying framework smali patches"
  patch_framework_android_utils_imageutils || true
  patch_framework_android_utils_reflectionutil || true
  patch_framework_android_utils_shell || true
  patch_framework_android_utils_shell_commandresult || true
  patch_framework_android_utils_utils || true
  patch_framework_android_content_res_resources || true
  patch_framework_android_preference_customupdater || true
  patch_framework_android_preference_customupdater_customobjecttransmitter || true
  patch_framework_android_preference_customupdater_customreceiver || true
  patch_framework_android_preference_customupdater_customupdateri || true
  patch_framework_android_preference_customupdater_customupdateri_1 || true
  patch_framework_android_preference_miuicoresettingspreference || true
  patch_framework_android_preference_miuipictureselectionpreference || true
  patch_framework_android_preference_mypictureselectionpreference || true
  patch_framework_android_preference_settingsmezohelper || true
  patch_framework_android_widget_myscrolltextview || true
  patch_framework_com_android_internal_policy_systembarutils || true
  patch_framework_miui_util_vibratereasonutils || true
}

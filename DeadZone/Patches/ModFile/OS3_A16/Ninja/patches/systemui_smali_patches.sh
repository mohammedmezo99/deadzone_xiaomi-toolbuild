#!/usr/bin/env bash
# Auto-generated manual Ninja OS3_A16 smali patch functions for systemui.
# Runtime does not read .mtcr files; it uses generated smali templates.
set -euo pipefail

patch_systemui_androidx_recyclerview_widget_springrecyclerview() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'androidx/recyclerview/widget/SpringRecyclerView.smali' 'androidx/recyclerview/widget/SpringRecyclerView.smali' 'modified' 'patch_systemui_androidx_recyclerview_widget_springrecyclerview'
}

patch_systemui_bg_mods_lockscreen_charginginfohelper() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'bg/mods/Lockscreen/ChargingInfoHelper.smali' 'bg/mods/Lockscreen/ChargingInfoHelper.smali' 'added' 'patch_systemui_bg_mods_lockscreen_charginginfohelper'
}

patch_systemui_bg_mods_lockscreen_charginginfohelper_charginginfo() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'bg/mods/Lockscreen/ChargingInfoHelper$ChargingInfo.smali' 'bg/mods/Lockscreen/ChargingInfoHelper$ChargingInfo.smali' 'added' 'patch_systemui_bg_mods_lockscreen_charginginfohelper_charginginfo'
}

patch_systemui_bg_mods_lockscreen_charginginfohelper_screenreceiver() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'bg/mods/Lockscreen/ChargingInfoHelper$ScreenReceiver.smali' 'bg/mods/Lockscreen/ChargingInfoHelper$ScreenReceiver.smali' 'added' 'patch_systemui_bg_mods_lockscreen_charginginfohelper_screenreceiver'
}

patch_systemui_bg_mods_lockscreen_charginginfohelper_updaterunnable() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'bg/mods/Lockscreen/ChargingInfoHelper$UpdateRunnable.smali' 'bg/mods/Lockscreen/ChargingInfoHelper$UpdateRunnable.smali' 'added' 'patch_systemui_bg_mods_lockscreen_charginginfohelper_updaterunnable'
}

patch_systemui_com_android_keyguard_injector_keyguardindicationinjector() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/keyguard/injector/KeyguardIndicationInjector.smali' 'com/android/keyguard/injector/KeyguardIndicationInjector.smali' 'modified' 'patch_systemui_com_android_keyguard_injector_keyguardindicationinjector'
}

patch_systemui_com_android_keyguard_magazine_lockscreenmagazinecontroller() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/keyguard/magazine/LockScreenMagazineController.smali' 'com/android/keyguard/magazine/LockScreenMagazineController.smali' 'modified' 'patch_systemui_com_android_keyguard_magazine_lockscreenmagazinecontroller'
}

patch_systemui_com_android_keyguard_magazine_lockscreenmagazinecontroller_5() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/keyguard/magazine/LockScreenMagazineController$5.smali' 'com/android/keyguard/magazine/LockScreenMagazineController$5.smali' 'modified' 'patch_systemui_com_android_keyguard_magazine_lockscreenmagazinecontroller_5'
}

patch_systemui_com_android_keyguard_magazine_lockscreenmagazinecontroller_7() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/keyguard/magazine/LockScreenMagazineController$7.smali' 'com/android/keyguard/magazine/LockScreenMagazineController$7.smali' 'modified' 'patch_systemui_com_android_keyguard_magazine_lockscreenmagazinecontroller_7'
}

patch_systemui_com_android_keyguard_magazine_lockscreenmagazinepreview() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/keyguard/magazine/LockScreenMagazinePreView.smali' 'com/android/keyguard/magazine/LockScreenMagazinePreView.smali' 'modified' 'patch_systemui_com_android_keyguard_magazine_lockscreenmagazinepreview'
}

patch_systemui_com_android_keyguard_magazine_utils_lockscreenmagazineutils() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/keyguard/magazine/utils/LockScreenMagazineUtils.smali' 'com/android/keyguard/magazine/utils/LockScreenMagazineUtils.smali' 'modified' 'patch_systemui_com_android_keyguard_magazine_utils_lockscreenmagazineutils'
}

patch_systemui_com_android_keyguard_negative_keyguardmoveleftcontroller() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/keyguard/negative/KeyguardMoveLeftController.smali' 'com/android/keyguard/negative/KeyguardMoveLeftController.smali' 'modified' 'patch_systemui_com_android_keyguard_negative_keyguardmoveleftcontroller'
}

patch_systemui_com_android_systemui_dependency() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/Dependency.smali' 'com/android/systemui/Dependency.smali' 'modified' 'patch_systemui_com_android_systemui_dependency'
}

patch_systemui_com_android_systemui_sysdependency() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/SysDependency.smali' 'com/android/systemui/SysDependency.smali' 'added' 'patch_systemui_com_android_systemui_sysdependency'
}

patch_systemui_com_android_systemui_systemuiinitializer() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/SystemUIInitializer.smali' 'com/android/systemui/SystemUIInitializer.smali' 'modified' 'patch_systemui_com_android_systemui_systemuiinitializer'
}

patch_systemui_com_android_systemui_assist_ui_defaultuicontroller() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/assist/ui/DefaultUiController.smali' 'com/android/systemui/assist/ui/DefaultUiController.smali' 'modified' 'patch_systemui_com_android_systemui_assist_ui_defaultuicontroller'
}

patch_systemui_com_android_systemui_controlcenter_phone_controlpanelwindowmanager() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/controlcenter/phone/ControlPanelWindowManager.smali' 'com/android/systemui/controlcenter/phone/ControlPanelWindowManager.smali' 'added' 'patch_systemui_com_android_systemui_controlcenter_phone_controlpanelwindowmanager'
}

patch_systemui_com_android_systemui_controlcenter_phone_controlpanelwindowmanager_onwindowchangelistener() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/controlcenter/phone/ControlPanelWindowManager$OnWindowChangeListener.smali' 'com/android/systemui/controlcenter/phone/ControlPanelWindowManager$OnWindowChangeListener.smali' 'added' 'patch_systemui_com_android_systemui_controlcenter_phone_controlpanelwindowmanager_onwindowchangelistener'
}

patch_systemui_com_android_systemui_controlcenter_phone_controlpanelwindowmanager_applylayout_1() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/controlcenter/phone/ControlPanelWindowManager$applyLayout$1.smali' 'com/android/systemui/controlcenter/phone/ControlPanelWindowManager$applyLayout$1.smali' 'added' 'patch_systemui_com_android_systemui_controlcenter_phone_controlpanelwindowmanager_applylayout_1'
}

patch_systemui_com_android_systemui_controlcenter_phone_controlpanelwindowmanager_windowviewondrawlistener_1() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/controlcenter/phone/ControlPanelWindowManager$windowViewOnDrawListener$1.smali' 'com/android/systemui/controlcenter/phone/ControlPanelWindowManager$windowViewOnDrawListener$1.smali' 'added' 'patch_systemui_com_android_systemui_controlcenter_phone_controlpanelwindowmanager_windowviewondrawlistener_1'
}

patch_systemui_com_android_systemui_controlcenter_phone_widget_controlcenterfakestatusicons() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/controlcenter/phone/widget/ControlCenterFakeStatusIcons.smali' 'com/android/systemui/controlcenter/phone/widget/ControlCenterFakeStatusIcons.smali' 'modified' 'patch_systemui_com_android_systemui_controlcenter_phone_widget_controlcenterfakestatusicons'
}

patch_systemui_com_android_systemui_controlcenter_policy_controlcentercontrollerimpl() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/controlcenter/policy/ControlCenterControllerImpl.smali' 'com/android/systemui/controlcenter/policy/ControlCenterControllerImpl.smali' 'modified' 'patch_systemui_com_android_systemui_controlcenter_policy_controlcentercontrollerimpl'
}

patch_systemui_com_android_systemui_controlcenter_policy_miuinetworkcontroller() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/controlcenter/policy/MiuiNetworkController.smali' 'com/android/systemui/controlcenter/policy/MiuiNetworkController.smali' 'modified' 'patch_systemui_com_android_systemui_controlcenter_policy_miuinetworkcontroller'
}

patch_systemui_com_android_systemui_controlcenter_shade_combinedheadercontroller() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/controlcenter/shade/CombinedHeaderController.smali' 'com/android/systemui/controlcenter/shade/CombinedHeaderController.smali' 'modified' 'patch_systemui_com_android_systemui_controlcenter_shade_combinedheadercontroller'
}

patch_systemui_com_android_systemui_controlcenter_shade_controlcenterheaderexpandcontroller() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController.smali' 'com/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController.smali' 'modified' 'patch_systemui_com_android_systemui_controlcenter_shade_controlcenterheaderexpandcontroller'
}

patch_systemui_com_android_systemui_controlcenter_shade_controlcenterheaderview() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/controlcenter/shade/ControlCenterHeaderView.smali' 'com/android/systemui/controlcenter/shade/ControlCenterHeaderView.smali' 'modified' 'patch_systemui_com_android_systemui_controlcenter_shade_controlcenterheaderview'
}

patch_systemui_com_android_systemui_controlcenter_shade_notificationheaderexpandcontroller_notificationcallback_1() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/controlcenter/shade/NotificationHeaderExpandController$notificationCallback$1.smali' 'com/android/systemui/controlcenter/shade/NotificationHeaderExpandController$notificationCallback$1.smali' 'modified' 'patch_systemui_com_android_systemui_controlcenter_shade_notificationheaderexpandcontroller_notificationcallback_1'
}

patch_systemui_com_android_systemui_dagger_daggerreferenceglobalrootcomponent_referencesysuicomponentimplshard() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImplShard.smali' 'com/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImplShard.smali' 'modified' 'patch_systemui_com_android_systemui_dagger_daggerreferenceglobalrootcomponent_referencesysuicomponentimplshard'
}

patch_systemui_com_android_systemui_dagger_daggerreferenceglobalrootcomponent_referencesysuicomponentimplshard_switchingprovider() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImplShard$SwitchingProvider.smali' 'com/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImplShard$SwitchingProvider.smali' 'modified' 'patch_systemui_com_android_systemui_dagger_daggerreferenceglobalrootcomponent_referencesysuicomponentimplshard_switchingprovider'
}

patch_systemui_com_android_systemui_media_ringtoneplayer_1() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/media/RingtonePlayer$1.smali' 'com/android/systemui/media/RingtonePlayer$1.smali' 'modified' 'patch_systemui_com_android_systemui_media_ringtoneplayer_1'
}

patch_systemui_com_android_systemui_newstatusbar_keyguardstatusbarview() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/KeyguardStatusBarView.smali' 'com/android/systemui/newstatusbar/KeyguardStatusBarView.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_keyguardstatusbarview'
}

patch_systemui_com_android_systemui_newstatusbar_log() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/Log.smali' 'com/android/systemui/newstatusbar/Log.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_log'
}

patch_systemui_com_android_systemui_newstatusbar_miuikeyguardstatusbarview() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/MiuiKeyguardStatusBarView.smali' 'com/android/systemui/newstatusbar/MiuiKeyguardStatusBarView.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_miuikeyguardstatusbarview'
}

patch_systemui_com_android_systemui_newstatusbar_miuiphonestatusbarview() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/MiuiPhoneStatusBarView.smali' 'com/android/systemui/newstatusbar/MiuiPhoneStatusBarView.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_miuiphonestatusbarview'
}

patch_systemui_com_android_systemui_newstatusbar_miuiphonestatusbarview_1() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/MiuiPhoneStatusBarView$1.smali' 'com/android/systemui/newstatusbar/MiuiPhoneStatusBarView$1.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_miuiphonestatusbarview_1'
}

patch_systemui_com_android_systemui_newstatusbar_miuiphonestatusbarviewsettingscontroller() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/MiuiPhoneStatusBarViewSettingsController.smali' 'com/android/systemui/newstatusbar/MiuiPhoneStatusBarViewSettingsController.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_miuiphonestatusbarviewsettingscontroller'
}

patch_systemui_com_android_systemui_newstatusbar_miuiphonestatusbarviewsettingscontroller_callback() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/MiuiPhoneStatusBarViewSettingsController$CallBack.smali' 'com/android/systemui/newstatusbar/MiuiPhoneStatusBarViewSettingsController$CallBack.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_miuiphonestatusbarviewsettingscontroller_callback'
}

patch_systemui_com_android_systemui_newstatusbar_statusbarwifiview() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/StatusBarWifiView.smali' 'com/android/systemui/newstatusbar/StatusBarWifiView.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_statusbarwifiview'
}

patch_systemui_com_android_systemui_newstatusbar_battery_batterychargeview() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/battery/BatteryChargeView.smali' 'com/android/systemui/newstatusbar/battery/BatteryChargeView.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_battery_batterychargeview'
}

patch_systemui_com_android_systemui_newstatusbar_battery_batterycolorsizecontroller() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/battery/BatteryColorSizeController.smali' 'com/android/systemui/newstatusbar/battery/BatteryColorSizeController.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_battery_batterycolorsizecontroller'
}

patch_systemui_com_android_systemui_newstatusbar_battery_batteryiconcontainer() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/battery/BatteryIconContainer.smali' 'com/android/systemui/newstatusbar/battery/BatteryIconContainer.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_battery_batteryiconcontainer'
}

patch_systemui_com_android_systemui_newstatusbar_battery_batterymetericonview() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/battery/BatteryMeterIconView.smali' 'com/android/systemui/newstatusbar/battery/BatteryMeterIconView.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_battery_batterymetericonview'
}

patch_systemui_com_android_systemui_newstatusbar_battery_batterymetericonviewminit() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/battery/BatteryMeterIconViewMinit.smali' 'com/android/systemui/newstatusbar/battery/BatteryMeterIconViewMinit.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_battery_batterymetericonviewminit'
}

patch_systemui_com_android_systemui_newstatusbar_battery_batterymetericonviewminit_1() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/battery/BatteryMeterIconViewMinit$1.smali' 'com/android/systemui/newstatusbar/battery/BatteryMeterIconViewMinit$1.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_battery_batterymetericonviewminit_1'
}

patch_systemui_com_android_systemui_newstatusbar_battery_batterymetericonviewminit_1_1() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/battery/BatteryMeterIconViewMinit$1$1.smali' 'com/android/systemui/newstatusbar/battery/BatteryMeterIconViewMinit$1$1.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_battery_batterymetericonviewminit_1_1'
}

patch_systemui_com_android_systemui_newstatusbar_battery_batterymetericonviewminit_minitupdate() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/battery/BatteryMeterIconViewMinit$MinitUpdate.smali' 'com/android/systemui/newstatusbar/battery/BatteryMeterIconViewMinit$MinitUpdate.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_battery_batterymetericonviewminit_minitupdate'
}

patch_systemui_com_android_systemui_newstatusbar_battery_batterymetericonviewminit_minitupdate_1() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/battery/BatteryMeterIconViewMinit$MinitUpdate$1.smali' 'com/android/systemui/newstatusbar/battery/BatteryMeterIconViewMinit$MinitUpdate$1.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_battery_batterymetericonviewminit_minitupdate_1'
}

patch_systemui_com_android_systemui_newstatusbar_battery_batterymetericonviewminit_resourcemanager() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/battery/BatteryMeterIconViewMinit$ResourceManager.smali' 'com/android/systemui/newstatusbar/battery/BatteryMeterIconViewMinit$ResourceManager.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_battery_batterymetericonviewminit_resourcemanager'
}

patch_systemui_com_android_systemui_newstatusbar_battery_batterypercentcontainer() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/battery/BatteryPercentContainer.smali' 'com/android/systemui/newstatusbar/battery/BatteryPercentContainer.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_battery_batterypercentcontainer'
}

patch_systemui_com_android_systemui_newstatusbar_battery_hollowbatterymetericonview() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/battery/HollowBatteryMeterIconView.smali' 'com/android/systemui/newstatusbar/battery/HollowBatteryMeterIconView.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_battery_hollowbatterymetericonview'
}

patch_systemui_com_android_systemui_newstatusbar_battery_miuibatterymeterview() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/battery/MiuiBatteryMeterView.smali' 'com/android/systemui/newstatusbar/battery/MiuiBatteryMeterView.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_battery_miuibatterymeterview'
}

patch_systemui_com_android_systemui_newstatusbar_battery_percentinview() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/battery/PercentInView.smali' 'com/android/systemui/newstatusbar/battery/PercentInView.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_battery_percentinview'
}

patch_systemui_com_android_systemui_newstatusbar_battery_percentmarkview() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/battery/PercentMarkView.smali' 'com/android/systemui/newstatusbar/battery/PercentMarkView.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_battery_percentmarkview'
}

patch_systemui_com_android_systemui_newstatusbar_battery_percentoutview() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/battery/PercentOutView.smali' 'com/android/systemui/newstatusbar/battery/PercentOutView.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_battery_percentoutview'
}

patch_systemui_com_android_systemui_newstatusbar_clock_clocklayout() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/clock/ClockLayout.smali' 'com/android/systemui/newstatusbar/clock/ClockLayout.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_clock_clocklayout'
}

patch_systemui_com_android_systemui_newstatusbar_clock_clocklayout_1() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/clock/ClockLayout$1.smali' 'com/android/systemui/newstatusbar/clock/ClockLayout$1.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_clock_clocklayout_1'
}

patch_systemui_com_android_systemui_newstatusbar_clock_clocklayout_centertextview() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/clock/ClockLayout$CenterTextView.smali' 'com/android/systemui/newstatusbar/clock/ClockLayout$CenterTextView.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_clock_clocklayout_centertextview'
}

patch_systemui_com_android_systemui_newstatusbar_clock_clocklayout_centertextview_1() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/clock/ClockLayout$CenterTextView$1.smali' 'com/android/systemui/newstatusbar/clock/ClockLayout$CenterTextView$1.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_clock_clocklayout_centertextview_1'
}

patch_systemui_com_android_systemui_newstatusbar_clock_clocklayout_centertextview_2() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/clock/ClockLayout$CenterTextView$2.smali' 'com/android/systemui/newstatusbar/clock/ClockLayout$CenterTextView$2.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_clock_clocklayout_centertextview_2'
}

patch_systemui_com_android_systemui_newstatusbar_clock_clocklayout_centertextview_3() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/clock/ClockLayout$CenterTextView$3.smali' 'com/android/systemui/newstatusbar/clock/ClockLayout$CenterTextView$3.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_clock_clocklayout_centertextview_3'
}

patch_systemui_com_android_systemui_newstatusbar_clock_clocklayout_centertextview_4() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/clock/ClockLayout$CenterTextView$4.smali' 'com/android/systemui/newstatusbar/clock/ClockLayout$CenterTextView$4.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_clock_clocklayout_centertextview_4'
}

patch_systemui_com_android_systemui_newstatusbar_clock_clocklayout_fullcharacterlayout() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/clock/ClockLayout$FullCharacterLayout.smali' 'com/android/systemui/newstatusbar/clock/ClockLayout$FullCharacterLayout.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_clock_clocklayout_fullcharacterlayout'
}

patch_systemui_com_android_systemui_newstatusbar_clock_clocklayout_singlecharacterlayout() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/clock/ClockLayout$SingleCharacterLayout.smali' 'com/android/systemui/newstatusbar/clock/ClockLayout$SingleCharacterLayout.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_clock_clocklayout_singlecharacterlayout'
}

patch_systemui_com_android_systemui_newstatusbar_clock_clocklayoutext() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/clock/ClockLayoutExt.smali' 'com/android/systemui/newstatusbar/clock/ClockLayoutExt.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_clock_clocklayoutext'
}

patch_systemui_com_android_systemui_newstatusbar_clock_clocklayoutfactory() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/clock/ClockLayoutFactory.smali' 'com/android/systemui/newstatusbar/clock/ClockLayoutFactory.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_clock_clocklayoutfactory'
}

patch_systemui_com_android_systemui_newstatusbar_clock_clocklayoutwithmulticock() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/clock/ClockLayoutWithMultiCock.smali' 'com/android/systemui/newstatusbar/clock/ClockLayoutWithMultiCock.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_clock_clocklayoutwithmulticock'
}

patch_systemui_com_android_systemui_newstatusbar_clock_clocksettings() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/clock/ClockSettings.smali' 'com/android/systemui/newstatusbar/clock/ClockSettings.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_clock_clocksettings'
}

patch_systemui_com_android_systemui_newstatusbar_clock_clocksettings_clockdata() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/clock/ClockSettings$ClockData.smali' 'com/android/systemui/newstatusbar/clock/ClockSettings$ClockData.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_clock_clocksettings_clockdata'
}

patch_systemui_com_android_systemui_newstatusbar_clock_clocksinglelayoutext() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/clock/ClockSingleLayoutExt.smali' 'com/android/systemui/newstatusbar/clock/ClockSingleLayoutExt.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_clock_clocksinglelayoutext'
}

patch_systemui_com_android_systemui_newstatusbar_clock_clockview() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/clock/ClockView.smali' 'com/android/systemui/newstatusbar/clock/ClockView.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_clock_clockview'
}

patch_systemui_com_android_systemui_newstatusbar_clock_clockview_1() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/clock/ClockView$1.smali' 'com/android/systemui/newstatusbar/clock/ClockView$1.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_clock_clockview_1'
}

patch_systemui_com_android_systemui_newstatusbar_clock_clockview_2() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/clock/ClockView$2.smali' 'com/android/systemui/newstatusbar/clock/ClockView$2.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_clock_clockview_2'
}

patch_systemui_com_android_systemui_newstatusbar_clock_iclock() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/clock/IClock.smali' 'com/android/systemui/newstatusbar/clock/IClock.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_clock_iclock'
}

patch_systemui_com_android_systemui_newstatusbar_clock_multiclockview() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/clock/MultiClockView.smali' 'com/android/systemui/newstatusbar/clock/MultiClockView.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_clock_multiclockview'
}

patch_systemui_com_android_systemui_newstatusbar_clock_secondtick() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/clock/SecondTick.smali' 'com/android/systemui/newstatusbar/clock/SecondTick.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_clock_secondtick'
}

patch_systemui_com_android_systemui_newstatusbar_clock_secondtick_1() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/clock/SecondTick$1.smali' 'com/android/systemui/newstatusbar/clock/SecondTick$1.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_clock_secondtick_1'
}

patch_systemui_com_android_systemui_newstatusbar_clock_secondtick_callback() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/clock/SecondTick$CallBack.smali' 'com/android/systemui/newstatusbar/clock/SecondTick$CallBack.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_clock_secondtick_callback'
}

patch_systemui_com_android_systemui_newstatusbar_clock_secondtick_secondtimertask() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/clock/SecondTick$SecondTimerTask.smali' 'com/android/systemui/newstatusbar/clock/SecondTick$SecondTimerTask.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_clock_secondtick_secondtimertask'
}

patch_systemui_com_android_systemui_newstatusbar_controllers_batterycolorsizecontroller() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/controllers/BatteryColorSizeController.smali' 'com/android/systemui/newstatusbar/controllers/BatteryColorSizeController.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_controllers_batterycolorsizecontroller'
}

patch_systemui_com_android_systemui_newstatusbar_controllers_batterycolorsizecontroller_1() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/controllers/BatteryColorSizeController$1.smali' 'com/android/systemui/newstatusbar/controllers/BatteryColorSizeController$1.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_controllers_batterycolorsizecontroller_1'
}

patch_systemui_com_android_systemui_newstatusbar_controllers_batterycolorsizecontroller_2() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/controllers/BatteryColorSizeController$2.smali' 'com/android/systemui/newstatusbar/controllers/BatteryColorSizeController$2.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_controllers_batterycolorsizecontroller_2'
}

patch_systemui_com_android_systemui_newstatusbar_controllers_batterycolorsizecontroller_3() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/controllers/BatteryColorSizeController$3.smali' 'com/android/systemui/newstatusbar/controllers/BatteryColorSizeController$3.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_controllers_batterycolorsizecontroller_3'
}

patch_systemui_com_android_systemui_newstatusbar_controllers_batterycolorsizecontroller_4() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/controllers/BatteryColorSizeController$4.smali' 'com/android/systemui/newstatusbar/controllers/BatteryColorSizeController$4.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_controllers_batterycolorsizecontroller_4'
}

patch_systemui_com_android_systemui_newstatusbar_controllers_batterycolorsizecontroller_5() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/controllers/BatteryColorSizeController$5.smali' 'com/android/systemui/newstatusbar/controllers/BatteryColorSizeController$5.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_controllers_batterycolorsizecontroller_5'
}

patch_systemui_com_android_systemui_newstatusbar_controllers_batterycolorsizecontroller_6() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/controllers/BatteryColorSizeController$6.smali' 'com/android/systemui/newstatusbar/controllers/BatteryColorSizeController$6.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_controllers_batterycolorsizecontroller_6'
}

patch_systemui_com_android_systemui_newstatusbar_controllers_batterycolorsizecontroller_6_1() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/controllers/BatteryColorSizeController$6$1.smali' 'com/android/systemui/newstatusbar/controllers/BatteryColorSizeController$6$1.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_controllers_batterycolorsizecontroller_6_1'
}

patch_systemui_com_android_systemui_newstatusbar_controllers_customiconcontroller() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/controllers/CustomIconController.smali' 'com/android/systemui/newstatusbar/controllers/CustomIconController.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_controllers_customiconcontroller'
}

patch_systemui_com_android_systemui_newstatusbar_controllers_customiconcontroller_callback() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/controllers/CustomIconController$CallBack.smali' 'com/android/systemui/newstatusbar/controllers/CustomIconController$CallBack.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_controllers_customiconcontroller_callback'
}

patch_systemui_com_android_systemui_newstatusbar_controllers_darkcontroller() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/controllers/DarkController.smali' 'com/android/systemui/newstatusbar/controllers/DarkController.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_controllers_darkcontroller'
}

patch_systemui_com_android_systemui_newstatusbar_controllers_darkcontroller_1() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/controllers/DarkController$1.smali' 'com/android/systemui/newstatusbar/controllers/DarkController$1.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_controllers_darkcontroller_1'
}

patch_systemui_com_android_systemui_newstatusbar_controllers_darkcontroller_darkreceiver() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/controllers/DarkController$DarkReceiver.smali' 'com/android/systemui/newstatusbar/controllers/DarkController$DarkReceiver.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_controllers_darkcontroller_darkreceiver'
}

patch_systemui_com_android_systemui_newstatusbar_controllers_elementcontroller() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/controllers/ElementController.smali' 'com/android/systemui/newstatusbar/controllers/ElementController.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_controllers_elementcontroller'
}

patch_systemui_com_android_systemui_newstatusbar_controllers_elementcontroller_callback() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/controllers/ElementController$CallBack.smali' 'com/android/systemui/newstatusbar/controllers/ElementController$CallBack.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_controllers_elementcontroller_callback'
}

patch_systemui_com_android_systemui_newstatusbar_controllers_elementcontroller_centerelementposition() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/controllers/ElementController$CenterElementPosition.smali' 'com/android/systemui/newstatusbar/controllers/ElementController$CenterElementPosition.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_controllers_elementcontroller_centerelementposition'
}

patch_systemui_com_android_systemui_newstatusbar_controllers_elementcontroller_leftelementposition() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/controllers/ElementController$LeftElementPosition.smali' 'com/android/systemui/newstatusbar/controllers/ElementController$LeftElementPosition.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_controllers_elementcontroller_leftelementposition'
}

patch_systemui_com_android_systemui_newstatusbar_controllers_elementcontroller_mainlayoutrecord() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/controllers/ElementController$MainLayoutRecord.smali' 'com/android/systemui/newstatusbar/controllers/ElementController$MainLayoutRecord.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_controllers_elementcontroller_mainlayoutrecord'
}

patch_systemui_com_android_systemui_newstatusbar_controllers_elementcontroller_mainlayoutrecord_1() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/controllers/ElementController$MainLayoutRecord$1.smali' 'com/android/systemui/newstatusbar/controllers/ElementController$MainLayoutRecord$1.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_controllers_elementcontroller_mainlayoutrecord_1'
}

patch_systemui_com_android_systemui_newstatusbar_controllers_elementcontroller_notcalculateholeinline() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/controllers/ElementController$NotCalculateHoleInLine.smali' 'com/android/systemui/newstatusbar/controllers/ElementController$NotCalculateHoleInLine.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_controllers_elementcontroller_notcalculateholeinline'
}

patch_systemui_com_android_systemui_newstatusbar_controllers_elementcontroller_slots() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/controllers/ElementController$Slots.smali' 'com/android/systemui/newstatusbar/controllers/ElementController$Slots.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_controllers_elementcontroller_slots'
}

patch_systemui_com_android_systemui_newstatusbar_controllers_fakeclockanimcontroller() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/controllers/FakeClockAnimController.smali' 'com/android/systemui/newstatusbar/controllers/FakeClockAnimController.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_controllers_fakeclockanimcontroller'
}

patch_systemui_com_android_systemui_newstatusbar_controllers_fakeclockanimcontroller_1() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/controllers/FakeClockAnimController$1.smali' 'com/android/systemui/newstatusbar/controllers/FakeClockAnimController$1.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_controllers_fakeclockanimcontroller_1'
}

patch_systemui_com_android_systemui_newstatusbar_controllers_fakeclockanimcontroller_2() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/controllers/FakeClockAnimController$2.smali' 'com/android/systemui/newstatusbar/controllers/FakeClockAnimController$2.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_controllers_fakeclockanimcontroller_2'
}

patch_systemui_com_android_systemui_newstatusbar_controllers_fakeclockanimcontroller_callback() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/controllers/FakeClockAnimController$CallBack.smali' 'com/android/systemui/newstatusbar/controllers/FakeClockAnimController$CallBack.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_controllers_fakeclockanimcontroller_callback'
}

patch_systemui_com_android_systemui_newstatusbar_controllers_fakeclockanimcontroller_workhandler() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/controllers/FakeClockAnimController$WorkHandler.smali' 'com/android/systemui/newstatusbar/controllers/FakeClockAnimController$WorkHandler.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_controllers_fakeclockanimcontroller_workhandler'
}

patch_systemui_com_android_systemui_newstatusbar_controllers_iconcontroller() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/controllers/IconController.smali' 'com/android/systemui/newstatusbar/controllers/IconController.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_controllers_iconcontroller'
}

patch_systemui_com_android_systemui_newstatusbar_controllers_iconcontroller_1() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/controllers/IconController$1.smali' 'com/android/systemui/newstatusbar/controllers/IconController$1.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_controllers_iconcontroller_1'
}

patch_systemui_com_android_systemui_newstatusbar_controllers_iconcontroller_iconcallback() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/controllers/IconController$IconCallBack.smali' 'com/android/systemui/newstatusbar/controllers/IconController$IconCallBack.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_controllers_iconcontroller_iconcallback'
}

patch_systemui_com_android_systemui_newstatusbar_controllers_islandcontroller() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/controllers/IslandController.smali' 'com/android/systemui/newstatusbar/controllers/IslandController.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_controllers_islandcontroller'
}

patch_systemui_com_android_systemui_newstatusbar_controllers_islandcontroller_errorrunable() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/controllers/IslandController$ErrorRunable.smali' 'com/android/systemui/newstatusbar/controllers/IslandController$ErrorRunable.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_controllers_islandcontroller_errorrunable'
}

patch_systemui_com_android_systemui_newstatusbar_controllers_islandcontroller_onislandchangelistener() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/controllers/IslandController$OnIslandChangeListener.smali' 'com/android/systemui/newstatusbar/controllers/IslandController$OnIslandChangeListener.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_controllers_islandcontroller_onislandchangelistener'
}

patch_systemui_com_android_systemui_newstatusbar_controllers_mainlayoutvisiblecontroller() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/controllers/MainLayoutVisibleController.smali' 'com/android/systemui/newstatusbar/controllers/MainLayoutVisibleController.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_controllers_mainlayoutvisiblecontroller'
}

patch_systemui_com_android_systemui_newstatusbar_controllers_mainlayoutvisiblecontroller_1() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/controllers/MainLayoutVisibleController$1.smali' 'com/android/systemui/newstatusbar/controllers/MainLayoutVisibleController$1.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_controllers_mainlayoutvisiblecontroller_1'
}

patch_systemui_com_android_systemui_newstatusbar_controllers_mobileiconcolorsizecontroller() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/controllers/MobileIconColorSizeController.smali' 'com/android/systemui/newstatusbar/controllers/MobileIconColorSizeController.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_controllers_mobileiconcolorsizecontroller'
}

patch_systemui_com_android_systemui_newstatusbar_controllers_mobileiconcolorsizecontroller_1() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/controllers/MobileIconColorSizeController$1.smali' 'com/android/systemui/newstatusbar/controllers/MobileIconColorSizeController$1.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_controllers_mobileiconcolorsizecontroller_1'
}

patch_systemui_com_android_systemui_newstatusbar_controllers_mobileiconcolorsizecontroller_2() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/controllers/MobileIconColorSizeController$2.smali' 'com/android/systemui/newstatusbar/controllers/MobileIconColorSizeController$2.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_controllers_mobileiconcolorsizecontroller_2'
}

patch_systemui_com_android_systemui_newstatusbar_controllers_mobileiconcolorsizecontroller_3() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/controllers/MobileIconColorSizeController$3.smali' 'com/android/systemui/newstatusbar/controllers/MobileIconColorSizeController$3.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_controllers_mobileiconcolorsizecontroller_3'
}

patch_systemui_com_android_systemui_newstatusbar_controllers_mobileiconcolorsizecontroller_4() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/controllers/MobileIconColorSizeController$4.smali' 'com/android/systemui/newstatusbar/controllers/MobileIconColorSizeController$4.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_controllers_mobileiconcolorsizecontroller_4'
}

patch_systemui_com_android_systemui_newstatusbar_controllers_mobileiconcolorsizecontroller_5() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/controllers/MobileIconColorSizeController$5.smali' 'com/android/systemui/newstatusbar/controllers/MobileIconColorSizeController$5.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_controllers_mobileiconcolorsizecontroller_5'
}

patch_systemui_com_android_systemui_newstatusbar_controllers_mobileiconcolorsizecontroller_6() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/controllers/MobileIconColorSizeController$6.smali' 'com/android/systemui/newstatusbar/controllers/MobileIconColorSizeController$6.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_controllers_mobileiconcolorsizecontroller_6'
}

patch_systemui_com_android_systemui_newstatusbar_controllers_netspeedcolorsizecontroller() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/controllers/NetSpeedColorSizeController.smali' 'com/android/systemui/newstatusbar/controllers/NetSpeedColorSizeController.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_controllers_netspeedcolorsizecontroller'
}

patch_systemui_com_android_systemui_newstatusbar_controllers_netspeedcolorsizecontroller_1() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/controllers/NetSpeedColorSizeController$1.smali' 'com/android/systemui/newstatusbar/controllers/NetSpeedColorSizeController$1.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_controllers_netspeedcolorsizecontroller_1'
}

patch_systemui_com_android_systemui_newstatusbar_controllers_notifheadertransitioncontroller() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/controllers/NotifHeaderTransitionController.smali' 'com/android/systemui/newstatusbar/controllers/NotifHeaderTransitionController.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_controllers_notifheadertransitioncontroller'
}

patch_systemui_com_android_systemui_newstatusbar_controllers_showmobiletypecontroller() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/controllers/ShowMobileTypeController.smali' 'com/android/systemui/newstatusbar/controllers/ShowMobileTypeController.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_controllers_showmobiletypecontroller'
}

patch_systemui_com_android_systemui_newstatusbar_controllers_simtypecontroller() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/controllers/SimTypeController.smali' 'com/android/systemui/newstatusbar/controllers/SimTypeController.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_controllers_simtypecontroller'
}

patch_systemui_com_android_systemui_newstatusbar_controllers_simtypecontroller_callback() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/controllers/SimTypeController$CallBack.smali' 'com/android/systemui/newstatusbar/controllers/SimTypeController$CallBack.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_controllers_simtypecontroller_callback'
}

patch_systemui_com_android_systemui_newstatusbar_controllers_simtypepositioncontroller() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/controllers/SimTypePositionController.smali' 'com/android/systemui/newstatusbar/controllers/SimTypePositionController.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_controllers_simtypepositioncontroller'
}

patch_systemui_com_android_systemui_newstatusbar_controllers_simtypepositioncontroller_callback() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/controllers/SimTypePositionController$CallBack.smali' 'com/android/systemui/newstatusbar/controllers/SimTypePositionController$CallBack.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_controllers_simtypepositioncontroller_callback'
}

patch_systemui_com_android_systemui_newstatusbar_controllers_statusbariconviewcontroller() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/controllers/StatusBarIconViewController.smali' 'com/android/systemui/newstatusbar/controllers/StatusBarIconViewController.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_controllers_statusbariconviewcontroller'
}

patch_systemui_com_android_systemui_newstatusbar_controllers_statusbariconviewcontroller_1() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/controllers/StatusBarIconViewController$1.smali' 'com/android/systemui/newstatusbar/controllers/StatusBarIconViewController$1.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_controllers_statusbariconviewcontroller_1'
}

patch_systemui_com_android_systemui_newstatusbar_controllers_statusbariconviewcontroller_2() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/controllers/StatusBarIconViewController$2.smali' 'com/android/systemui/newstatusbar/controllers/StatusBarIconViewController$2.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_controllers_statusbariconviewcontroller_2'
}

patch_systemui_com_android_systemui_newstatusbar_controllers_statusbariconviewcontroller_notificationicondata() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/controllers/StatusBarIconViewController$NotificationIconData.smali' 'com/android/systemui/newstatusbar/controllers/StatusBarIconViewController$NotificationIconData.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_controllers_statusbariconviewcontroller_notificationicondata'
}

patch_systemui_com_android_systemui_newstatusbar_controllers_statusiconsvisibilitycontroller() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/controllers/StatusIconsVisibilityController.smali' 'com/android/systemui/newstatusbar/controllers/StatusIconsVisibilityController.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_controllers_statusiconsvisibilitycontroller'
}

patch_systemui_com_android_systemui_newstatusbar_controllers_statusiconsvisibilitycontroller_ignoredslots() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/controllers/StatusIconsVisibilityController$IgnoredSlots.smali' 'com/android/systemui/newstatusbar/controllers/StatusIconsVisibilityController$IgnoredSlots.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_controllers_statusiconsvisibilitycontroller_ignoredslots'
}

patch_systemui_com_android_systemui_newstatusbar_controllers_updatelayoutcontroller() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/controllers/UpdateLayoutController.smali' 'com/android/systemui/newstatusbar/controllers/UpdateLayoutController.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_controllers_updatelayoutcontroller'
}

patch_systemui_com_android_systemui_newstatusbar_controllers_updatelayoutcontroller_1() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/controllers/UpdateLayoutController$1.smali' 'com/android/systemui/newstatusbar/controllers/UpdateLayoutController$1.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_controllers_updatelayoutcontroller_1'
}

patch_systemui_com_android_systemui_newstatusbar_controllers_updatelayoutcontroller_2() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/controllers/UpdateLayoutController$2.smali' 'com/android/systemui/newstatusbar/controllers/UpdateLayoutController$2.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_controllers_updatelayoutcontroller_2'
}

patch_systemui_com_android_systemui_newstatusbar_controllers_updatelayoutcontroller_callback() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/controllers/UpdateLayoutController$CallBack.smali' 'com/android/systemui/newstatusbar/controllers/UpdateLayoutController$CallBack.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_controllers_updatelayoutcontroller_callback'
}

patch_systemui_com_android_systemui_newstatusbar_data_data() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/data/Data.smali' 'com/android/systemui/newstatusbar/data/Data.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_data_data'
}

patch_systemui_com_android_systemui_newstatusbar_data_data_ondatachangelistener() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/data/Data$OnDataChangeListener.smali' 'com/android/systemui/newstatusbar/data/Data$OnDataChangeListener.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_data_data_ondatachangelistener'
}

patch_systemui_com_android_systemui_newstatusbar_data_icondata() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/data/IconData.smali' 'com/android/systemui/newstatusbar/data/IconData.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_data_icondata'
}

patch_systemui_com_android_systemui_newstatusbar_data_textdata() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/data/TextData.smali' 'com/android/systemui/newstatusbar/data/TextData.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_data_textdata'
}

patch_systemui_com_android_systemui_newstatusbar_layouts_animateelementlayout() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/layouts/AnimateElementLayout.smali' 'com/android/systemui/newstatusbar/layouts/AnimateElementLayout.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_layouts_animateelementlayout'
}

patch_systemui_com_android_systemui_newstatusbar_layouts_animateelementlayout_1() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/layouts/AnimateElementLayout$1.smali' 'com/android/systemui/newstatusbar/layouts/AnimateElementLayout$1.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_layouts_animateelementlayout_1'
}

patch_systemui_com_android_systemui_newstatusbar_layouts_animateelementlayout_2() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/layouts/AnimateElementLayout$2.smali' 'com/android/systemui/newstatusbar/layouts/AnimateElementLayout$2.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_layouts_animateelementlayout_2'
}

patch_systemui_com_android_systemui_newstatusbar_layouts_batterylayout() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/layouts/BatteryLayout.smali' 'com/android/systemui/newstatusbar/layouts/BatteryLayout.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_layouts_batterylayout'
}

patch_systemui_com_android_systemui_newstatusbar_layouts_clocklayout() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/layouts/ClockLayout.smali' 'com/android/systemui/newstatusbar/layouts/ClockLayout.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_layouts_clocklayout'
}

patch_systemui_com_android_systemui_newstatusbar_layouts_controlcenterstatusbar() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/layouts/ControlCenterStatusBar.smali' 'com/android/systemui/newstatusbar/layouts/ControlCenterStatusBar.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_layouts_controlcenterstatusbar'
}

patch_systemui_com_android_systemui_newstatusbar_layouts_controlcenterstatusbaricon() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/layouts/ControlCenterStatusBarIcon.smali' 'com/android/systemui/newstatusbar/layouts/ControlCenterStatusBarIcon.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_layouts_controlcenterstatusbaricon'
}

patch_systemui_com_android_systemui_newstatusbar_layouts_datelayout() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/layouts/DateLayout.smali' 'com/android/systemui/newstatusbar/layouts/DateLayout.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_layouts_datelayout'
}

patch_systemui_com_android_systemui_newstatusbar_layouts_elementbglayout() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/layouts/ElementBgLayout.smali' 'com/android/systemui/newstatusbar/layouts/ElementBgLayout.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_layouts_elementbglayout'
}

patch_systemui_com_android_systemui_newstatusbar_layouts_elementbglayout_1() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/layouts/ElementBgLayout$1.smali' 'com/android/systemui/newstatusbar/layouts/ElementBgLayout$1.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_layouts_elementbglayout_1'
}

patch_systemui_com_android_systemui_newstatusbar_layouts_elementbglayout_2() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/layouts/ElementBgLayout$2.smali' 'com/android/systemui/newstatusbar/layouts/ElementBgLayout$2.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_layouts_elementbglayout_2'
}

patch_systemui_com_android_systemui_newstatusbar_layouts_elementbglayout_settingsobserver() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/layouts/ElementBgLayout$SettingsObserver.smali' 'com/android/systemui/newstatusbar/layouts/ElementBgLayout$SettingsObserver.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_layouts_elementbglayout_settingsobserver'
}

patch_systemui_com_android_systemui_newstatusbar_layouts_elementhelper() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/layouts/ElementHelper.smali' 'com/android/systemui/newstatusbar/layouts/ElementHelper.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_layouts_elementhelper'
}

patch_systemui_com_android_systemui_newstatusbar_layouts_elementlayout() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/layouts/ElementLayout.smali' 'com/android/systemui/newstatusbar/layouts/ElementLayout.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_layouts_elementlayout'
}

patch_systemui_com_android_systemui_newstatusbar_layouts_focusednotifpromptview() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/layouts/FocusedNotifPromptView.smali' 'com/android/systemui/newstatusbar/layouts/FocusedNotifPromptView.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_layouts_focusednotifpromptview'
}

patch_systemui_com_android_systemui_newstatusbar_layouts_headerparent() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/layouts/HeaderParent.smali' 'com/android/systemui/newstatusbar/layouts/HeaderParent.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_layouts_headerparent'
}

patch_systemui_com_android_systemui_newstatusbar_layouts_mainlayout() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/layouts/MainLayout.smali' 'com/android/systemui/newstatusbar/layouts/MainLayout.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_layouts_mainlayout'
}

patch_systemui_com_android_systemui_newstatusbar_layouts_mainlayout_1() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/layouts/MainLayout$1.smali' 'com/android/systemui/newstatusbar/layouts/MainLayout$1.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_layouts_mainlayout_1'
}

patch_systemui_com_android_systemui_newstatusbar_layouts_mainlayout_2() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/layouts/MainLayout$2.smali' 'com/android/systemui/newstatusbar/layouts/MainLayout$2.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_layouts_mainlayout_2'
}

patch_systemui_com_android_systemui_newstatusbar_layouts_mainlayout_3() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/layouts/MainLayout$3.smali' 'com/android/systemui/newstatusbar/layouts/MainLayout$3.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_layouts_mainlayout_3'
}

patch_systemui_com_android_systemui_newstatusbar_layouts_mainlayout_4() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/layouts/MainLayout$4.smali' 'com/android/systemui/newstatusbar/layouts/MainLayout$4.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_layouts_mainlayout_4'
}

patch_systemui_com_android_systemui_newstatusbar_layouts_mainlayout_5() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/layouts/MainLayout$5.smali' 'com/android/systemui/newstatusbar/layouts/MainLayout$5.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_layouts_mainlayout_5'
}

patch_systemui_com_android_systemui_newstatusbar_layouts_mainlayout_elementhandler() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/layouts/MainLayout$ElementHandler.smali' 'com/android/systemui/newstatusbar/layouts/MainLayout$ElementHandler.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_layouts_mainlayout_elementhandler'
}

patch_systemui_com_android_systemui_newstatusbar_layouts_miuinotificationstatuscontainer() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/layouts/MiuiNotificationStatusContainer.smali' 'com/android/systemui/newstatusbar/layouts/MiuiNotificationStatusContainer.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_layouts_miuinotificationstatuscontainer'
}

patch_systemui_com_android_systemui_newstatusbar_layouts_miuistatusbatterycontainer() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/layouts/MiuiStatusBatteryContainer.smali' 'com/android/systemui/newstatusbar/layouts/MiuiStatusBatteryContainer.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_layouts_miuistatusbatterycontainer'
}

patch_systemui_com_android_systemui_newstatusbar_layouts_miuistatusiconcontainer() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/layouts/MiuiStatusIconContainer.smali' 'com/android/systemui/newstatusbar/layouts/MiuiStatusIconContainer.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_layouts_miuistatusiconcontainer'
}

patch_systemui_com_android_systemui_newstatusbar_layouts_miuistatusiconcontainer_1() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/layouts/MiuiStatusIconContainer$1.smali' 'com/android/systemui/newstatusbar/layouts/MiuiStatusIconContainer$1.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_layouts_miuistatusiconcontainer_1'
}

patch_systemui_com_android_systemui_newstatusbar_layouts_miuistatusiconcontainer_2() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/layouts/MiuiStatusIconContainer$2.smali' 'com/android/systemui/newstatusbar/layouts/MiuiStatusIconContainer$2.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_layouts_miuistatusiconcontainer_2'
}

patch_systemui_com_android_systemui_newstatusbar_layouts_netspeedlayout() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/layouts/NetSpeedLayout.smali' 'com/android/systemui/newstatusbar/layouts/NetSpeedLayout.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_layouts_netspeedlayout'
}

patch_systemui_com_android_systemui_newstatusbar_layouts_notifpromptlayout() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/layouts/NotifPromptLayout.smali' 'com/android/systemui/newstatusbar/layouts/NotifPromptLayout.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_layouts_notifpromptlayout'
}

patch_systemui_com_android_systemui_newstatusbar_layouts_notificationiconcontainer() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/layouts/NotificationIconContainer.smali' 'com/android/systemui/newstatusbar/layouts/NotificationIconContainer.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_layouts_notificationiconcontainer'
}

patch_systemui_com_android_systemui_newstatusbar_layouts_notificationlayout() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/layouts/NotificationLayout.smali' 'com/android/systemui/newstatusbar/layouts/NotificationLayout.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_layouts_notificationlayout'
}

patch_systemui_com_android_systemui_newstatusbar_layouts_overflowlayout() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/layouts/OverflowLayout.smali' 'com/android/systemui/newstatusbar/layouts/OverflowLayout.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_layouts_overflowlayout'
}

patch_systemui_com_android_systemui_newstatusbar_layouts_promptlayout() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/layouts/PromptLayout.smali' 'com/android/systemui/newstatusbar/layouts/PromptLayout.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_layouts_promptlayout'
}

patch_systemui_com_android_systemui_newstatusbar_layouts_singlelayout() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/layouts/SingleLayout.smali' 'com/android/systemui/newstatusbar/layouts/SingleLayout.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_layouts_singlelayout'
}

patch_systemui_com_android_systemui_newstatusbar_layouts_singlelayout_1() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/layouts/SingleLayout$1.smali' 'com/android/systemui/newstatusbar/layouts/SingleLayout$1.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_layouts_singlelayout_1'
}

patch_systemui_com_android_systemui_newstatusbar_layouts_statuslayout() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/layouts/StatusLayout.smali' 'com/android/systemui/newstatusbar/layouts/StatusLayout.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_layouts_statuslayout'
}

patch_systemui_com_android_systemui_newstatusbar_layouts_transfermobilelayout() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/layouts/TransferMobileLayout.smali' 'com/android/systemui/newstatusbar/layouts/TransferMobileLayout.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_layouts_transfermobilelayout'
}

patch_systemui_com_android_systemui_newstatusbar_layouts_transfermobilelayout_1() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/layouts/TransferMobileLayout$1.smali' 'com/android/systemui/newstatusbar/layouts/TransferMobileLayout$1.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_layouts_transfermobilelayout_1'
}

patch_systemui_com_android_systemui_newstatusbar_layouts_weatherlayout() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/layouts/WeatherLayout.smali' 'com/android/systemui/newstatusbar/layouts/WeatherLayout.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_layouts_weatherlayout'
}

patch_systemui_com_android_systemui_newstatusbar_netspeed_networkspeedsingle() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/netspeed/NetworkSpeedSingle.smali' 'com/android/systemui/newstatusbar/netspeed/NetworkSpeedSingle.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_netspeed_networkspeedsingle'
}

patch_systemui_com_android_systemui_newstatusbar_policy_algorithmcentercamera() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/policy/AlgorithmCenterCamera.smali' 'com/android/systemui/newstatusbar/policy/AlgorithmCenterCamera.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_policy_algorithmcentercamera'
}

patch_systemui_com_android_systemui_newstatusbar_policy_algorithmleftcamera() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/policy/AlgorithmLeftCamera.smali' 'com/android/systemui/newstatusbar/policy/AlgorithmLeftCamera.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_policy_algorithmleftcamera'
}

patch_systemui_com_android_systemui_newstatusbar_policy_elementpositionalgorithm() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/policy/ElementPositionAlgorithm.smali' 'com/android/systemui/newstatusbar/policy/ElementPositionAlgorithm.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_policy_elementpositionalgorithm'
}

patch_systemui_com_android_systemui_newstatusbar_policy_islots() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/policy/ISlots.smali' 'com/android/systemui/newstatusbar/policy/ISlots.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_policy_islots'
}

patch_systemui_com_android_systemui_newstatusbar_policy_shake() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/policy/Shake.smali' 'com/android/systemui/newstatusbar/policy/Shake.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_policy_shake'
}

patch_systemui_com_android_systemui_newstatusbar_policy_shake_1() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/policy/Shake$1.smali' 'com/android/systemui/newstatusbar/policy/Shake$1.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_policy_shake_1'
}

patch_systemui_com_android_systemui_newstatusbar_policy_shake_2() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/policy/Shake$2.smali' 'com/android/systemui/newstatusbar/policy/Shake$2.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_policy_shake_2'
}

patch_systemui_com_android_systemui_newstatusbar_policy_shake_settingsobserver() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/policy/Shake$SettingsObserver.smali' 'com/android/systemui/newstatusbar/policy/Shake$SettingsObserver.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_policy_shake_settingsobserver'
}

patch_systemui_com_android_systemui_newstatusbar_policy_shake_shakedetector() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/policy/Shake$ShakeDetector.smali' 'com/android/systemui/newstatusbar/policy/Shake$ShakeDetector.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_policy_shake_shakedetector'
}

patch_systemui_com_android_systemui_newstatusbar_policy_shake_shakedetector_onshakelistener() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/policy/Shake$ShakeDetector$OnShakeListener.smali' 'com/android/systemui/newstatusbar/policy/Shake$ShakeDetector$OnShakeListener.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_policy_shake_shakedetector_onshakelistener'
}

patch_systemui_com_android_systemui_newstatusbar_policy_textutil() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/policy/TextUtil.smali' 'com/android/systemui/newstatusbar/policy/TextUtil.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_policy_textutil'
}

patch_systemui_com_android_systemui_newstatusbar_sim_customsimicon() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/sim/CustomSimIcon.smali' 'com/android/systemui/newstatusbar/sim/CustomSimIcon.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_sim_customsimicon'
}

patch_systemui_com_android_systemui_newstatusbar_sim_mobilegroup() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/sim/MobileGroup.smali' 'com/android/systemui/newstatusbar/sim/MobileGroup.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_sim_mobilegroup'
}

patch_systemui_com_android_systemui_newstatusbar_sim_mobiletypedrawable() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/sim/MobileTypeDrawable.smali' 'com/android/systemui/newstatusbar/sim/MobileTypeDrawable.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_sim_mobiletypedrawable'
}

patch_systemui_com_android_systemui_newstatusbar_sim_mobiletypeimageview() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/sim/MobileTypeImageView.smali' 'com/android/systemui/newstatusbar/sim/MobileTypeImageView.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_sim_mobiletypeimageview'
}

patch_systemui_com_android_systemui_newstatusbar_sim_simicon() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/sim/SimIcon.smali' 'com/android/systemui/newstatusbar/sim/SimIcon.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_sim_simicon'
}

patch_systemui_com_android_systemui_newstatusbar_sim_simiconforvertical() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/sim/SimIconForVertical.smali' 'com/android/systemui/newstatusbar/sim/SimIconForVertical.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_sim_simiconforvertical'
}

patch_systemui_com_android_systemui_newstatusbar_sim_simiconvertical() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/sim/SimIconVertical.smali' 'com/android/systemui/newstatusbar/sim/SimIconVertical.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_sim_simiconvertical'
}

patch_systemui_com_android_systemui_newstatusbar_sim_siminoutcustview() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/sim/SimInOutCustView.smali' 'com/android/systemui/newstatusbar/sim/SimInOutCustView.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_sim_siminoutcustview'
}

patch_systemui_com_android_systemui_newstatusbar_sim_siminoutverticalview() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/sim/SimInOutVerticalView.smali' 'com/android/systemui/newstatusbar/sim/SimInOutVerticalView.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_sim_siminoutverticalview'
}

patch_systemui_com_android_systemui_newstatusbar_sim_siminoutview() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/sim/SimInOutView.smali' 'com/android/systemui/newstatusbar/sim/SimInOutView.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_sim_siminoutview'
}

patch_systemui_com_android_systemui_newstatusbar_sim_simslotindexhelper() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/sim/SimSlotIndexHelper.smali' 'com/android/systemui/newstatusbar/sim/SimSlotIndexHelper.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_sim_simslotindexhelper'
}

patch_systemui_com_android_systemui_newstatusbar_sim_simtypecontainer() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/sim/SimTypeContainer.smali' 'com/android/systemui/newstatusbar/sim/SimTypeContainer.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_sim_simtypecontainer'
}

patch_systemui_com_android_systemui_newstatusbar_sim_simtypecontainer_1() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/sim/SimTypeContainer$1.smali' 'com/android/systemui/newstatusbar/sim/SimTypeContainer$1.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_sim_simtypecontainer_1'
}

patch_systemui_com_android_systemui_newstatusbar_sim_simtypecontainer_2() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/sim/SimTypeContainer$2.smali' 'com/android/systemui/newstatusbar/sim/SimTypeContainer$2.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_sim_simtypecontainer_2'
}

patch_systemui_com_android_systemui_newstatusbar_sim_simtypeverticalview() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/sim/SimTypeVerticalView.smali' 'com/android/systemui/newstatusbar/sim/SimTypeVerticalView.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_sim_simtypeverticalview'
}

patch_systemui_com_android_systemui_newstatusbar_sim_simtypeview() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/sim/SimTypeView.smali' 'com/android/systemui/newstatusbar/sim/SimTypeView.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_sim_simtypeview'
}

patch_systemui_com_android_systemui_newstatusbar_sim_simtypeviewimage() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/sim/SimTypeViewImage.smali' 'com/android/systemui/newstatusbar/sim/SimTypeViewImage.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_sim_simtypeviewimage'
}

patch_systemui_com_android_systemui_newstatusbar_thread_fixedthreadpool() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/thread/FixedThreadPool.smali' 'com/android/systemui/newstatusbar/thread/FixedThreadPool.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_thread_fixedthreadpool'
}

patch_systemui_com_android_systemui_newstatusbar_thread_fixedthreadpool_localthreadfactory() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/thread/FixedThreadPool$LocalThreadFactory.smali' 'com/android/systemui/newstatusbar/thread/FixedThreadPool$LocalThreadFactory.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_thread_fixedthreadpool_localthreadfactory'
}

patch_systemui_com_android_systemui_newstatusbar_thread_threadutils() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/thread/ThreadUtils.smali' 'com/android/systemui/newstatusbar/thread/ThreadUtils.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_thread_threadutils'
}

patch_systemui_com_android_systemui_newstatusbar_thread_threadutils_handlerholder() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/thread/ThreadUtils$HandlerHolder.smali' 'com/android/systemui/newstatusbar/thread/ThreadUtils$HandlerHolder.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_thread_threadutils_handlerholder'
}

patch_systemui_com_android_systemui_newstatusbar_util_textutil() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/util/TextUtil.smali' 'com/android/systemui/newstatusbar/util/TextUtil.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_util_textutil'
}

patch_systemui_com_android_systemui_newstatusbar_views_alphacolorview() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/views/AlphaColorView.smali' 'com/android/systemui/newstatusbar/views/AlphaColorView.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_views_alphacolorview'
}

patch_systemui_com_android_systemui_newstatusbar_views_alphacolorview_1() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/views/AlphaColorView$1.smali' 'com/android/systemui/newstatusbar/views/AlphaColorView$1.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_views_alphacolorview_1'
}

patch_systemui_com_android_systemui_newstatusbar_views_alphavisiblecolorview() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/views/AlphaVisibleColorView.smali' 'com/android/systemui/newstatusbar/views/AlphaVisibleColorView.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_views_alphavisiblecolorview'
}

patch_systemui_com_android_systemui_newstatusbar_views_animatorcolorview() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/views/AnimatorColorView.smali' 'com/android/systemui/newstatusbar/views/AnimatorColorView.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_views_animatorcolorview'
}

patch_systemui_com_android_systemui_newstatusbar_views_animatorvisiblecolorview() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/views/AnimatorVisibleColorView.smali' 'com/android/systemui/newstatusbar/views/AnimatorVisibleColorView.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_views_animatorvisiblecolorview'
}

patch_systemui_com_android_systemui_newstatusbar_views_colortextview() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/views/ColorTextView.smali' 'com/android/systemui/newstatusbar/views/ColorTextView.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_views_colortextview'
}

patch_systemui_com_android_systemui_newstatusbar_views_colortextview_1() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/views/ColorTextView$1.smali' 'com/android/systemui/newstatusbar/views/ColorTextView$1.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_views_colortextview_1'
}

patch_systemui_com_android_systemui_newstatusbar_views_custsimicon() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/views/CustSimIcon.smali' 'com/android/systemui/newstatusbar/views/CustSimIcon.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_views_custsimicon'
}

patch_systemui_com_android_systemui_newstatusbar_views_custwifiview() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/views/CustWifiView.smali' 'com/android/systemui/newstatusbar/views/CustWifiView.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_views_custwifiview'
}

patch_systemui_com_android_systemui_newstatusbar_views_dateview() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/views/DateView.smali' 'com/android/systemui/newstatusbar/views/DateView.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_views_dateview'
}

patch_systemui_com_android_systemui_newstatusbar_views_dateview_1() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/views/DateView$1.smali' 'com/android/systemui/newstatusbar/views/DateView$1.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_views_dateview_1'
}

patch_systemui_com_android_systemui_newstatusbar_views_dateview_1_1() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/views/DateView$1$1.smali' 'com/android/systemui/newstatusbar/views/DateView$1$1.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_views_dateview_1_1'
}

patch_systemui_com_android_systemui_newstatusbar_views_dateview_1_2() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/views/DateView$1$2.smali' 'com/android/systemui/newstatusbar/views/DateView$1$2.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_views_dateview_1_2'
}

patch_systemui_com_android_systemui_newstatusbar_views_dateview_2() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/views/DateView$2.smali' 'com/android/systemui/newstatusbar/views/DateView$2.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_views_dateview_2'
}

patch_systemui_com_android_systemui_newstatusbar_views_dateview_3() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/views/DateView$3.smali' 'com/android/systemui/newstatusbar/views/DateView$3.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_views_dateview_3'
}

patch_systemui_com_android_systemui_newstatusbar_views_fakeislandview() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/views/FakeIslandView.smali' 'com/android/systemui/newstatusbar/views/FakeIslandView.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_views_fakeislandview'
}

patch_systemui_com_android_systemui_newstatusbar_views_headerdate() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/views/HeaderDate.smali' 'com/android/systemui/newstatusbar/views/HeaderDate.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_views_headerdate'
}

patch_systemui_com_android_systemui_newstatusbar_views_inoutview() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/views/InOutView.smali' 'com/android/systemui/newstatusbar/views/InOutView.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_views_inoutview'
}

patch_systemui_com_android_systemui_newstatusbar_views_modernstatusbarmobileview() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/views/ModernStatusBarMobileView.smali' 'com/android/systemui/newstatusbar/views/ModernStatusBarMobileView.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_views_modernstatusbarmobileview'
}

patch_systemui_com_android_systemui_newstatusbar_views_modernstatusbarwifiview() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/views/ModernStatusBarWifiView.smali' 'com/android/systemui/newstatusbar/views/ModernStatusBarWifiView.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_views_modernstatusbarwifiview'
}

patch_systemui_com_android_systemui_newstatusbar_views_notificationheaderdateview() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/views/NotificationHeaderDateView.smali' 'com/android/systemui/newstatusbar/views/NotificationHeaderDateView.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_views_notificationheaderdateview'
}

patch_systemui_com_android_systemui_newstatusbar_views_notificationheaderdateview_1() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/views/NotificationHeaderDateView$1.smali' 'com/android/systemui/newstatusbar/views/NotificationHeaderDateView$1.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_views_notificationheaderdateview_1'
}

patch_systemui_com_android_systemui_newstatusbar_views_notificationheaderdateview_1_1() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/views/NotificationHeaderDateView$1$1.smali' 'com/android/systemui/newstatusbar/views/NotificationHeaderDateView$1$1.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_views_notificationheaderdateview_1_1'
}

patch_systemui_com_android_systemui_newstatusbar_views_notificationheaderdateview_1_2() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/views/NotificationHeaderDateView$1$2.smali' 'com/android/systemui/newstatusbar/views/NotificationHeaderDateView$1$2.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_views_notificationheaderdateview_1_2'
}

patch_systemui_com_android_systemui_newstatusbar_views_notificationheaderdateview_2() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/views/NotificationHeaderDateView$2.smali' 'com/android/systemui/newstatusbar/views/NotificationHeaderDateView$2.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_views_notificationheaderdateview_2'
}

patch_systemui_com_android_systemui_newstatusbar_views_statusbariconview() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/views/StatusBarIconView.smali' 'com/android/systemui/newstatusbar/views/StatusBarIconView.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_views_statusbariconview'
}

patch_systemui_com_android_systemui_newstatusbar_views_volteview() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/views/VoLteView.smali' 'com/android/systemui/newstatusbar/views/VoLteView.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_views_volteview'
}

patch_systemui_com_android_systemui_newstatusbar_views_vowifiview() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/views/VoWiFiView.smali' 'com/android/systemui/newstatusbar/views/VoWiFiView.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_views_vowifiview'
}

patch_systemui_com_android_systemui_newstatusbar_views_weatherview() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/views/WeatherView.smali' 'com/android/systemui/newstatusbar/views/WeatherView.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_views_weatherview'
}

patch_systemui_com_android_systemui_newstatusbar_views_weatherview_1() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/views/WeatherView$1.smali' 'com/android/systemui/newstatusbar/views/WeatherView$1.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_views_weatherview_1'
}

patch_systemui_com_android_systemui_newstatusbar_views_weatherview_2() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/views/WeatherView$2.smali' 'com/android/systemui/newstatusbar/views/WeatherView$2.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_views_weatherview_2'
}

patch_systemui_com_android_systemui_newstatusbar_views_wifiinoutview() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/views/WifiInOutView.smali' 'com/android/systemui/newstatusbar/views/WifiInOutView.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_views_wifiinoutview'
}

patch_systemui_com_android_systemui_newstatusbar_views_wifiview() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/views/WifiView.smali' 'com/android/systemui/newstatusbar/views/WifiView.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_views_wifiview'
}

patch_systemui_com_android_systemui_newstatusbar_views_ext_exticonalpha() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/views/ext/ExtIconAlpha.smali' 'com/android/systemui/newstatusbar/views/ext/ExtIconAlpha.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_views_ext_exticonalpha'
}

patch_systemui_com_android_systemui_newstatusbar_views_ext_exticonalphanew() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/views/ext/ExtIconAlphaNew.smali' 'com/android/systemui/newstatusbar/views/ext/ExtIconAlphaNew.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_views_ext_exticonalphanew'
}

patch_systemui_com_android_systemui_newstatusbar_views_ext_exticonanimated() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/views/ext/ExtIconAnimated.smali' 'com/android/systemui/newstatusbar/views/ext/ExtIconAnimated.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_views_ext_exticonanimated'
}

patch_systemui_com_android_systemui_newstatusbar_views_ext_exticonmobileanimator() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/views/ext/ExtIconMobileAnimator.smali' 'com/android/systemui/newstatusbar/views/ext/ExtIconMobileAnimator.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_views_ext_exticonmobileanimator'
}

patch_systemui_com_android_systemui_newstatusbar_views_ext_exttextview() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/views/ext/ExtTextView.smali' 'com/android/systemui/newstatusbar/views/ext/ExtTextView.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_views_ext_exttextview'
}

patch_systemui_com_android_systemui_newstatusbar_views_ext_exttextview_1() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/views/ext/ExtTextView$1.smali' 'com/android/systemui/newstatusbar/views/ext/ExtTextView$1.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_views_ext_exttextview_1'
}

patch_systemui_com_android_systemui_newstatusbar_views_ext_exttextviewclock() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/newstatusbar/views/ext/ExtTextViewClock.smali' 'com/android/systemui/newstatusbar/views/ext/ExtTextViewClock.smali' 'added' 'patch_systemui_com_android_systemui_newstatusbar_views_ext_exttextviewclock'
}

patch_systemui_com_android_systemui_plugins_controllerstorage() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/plugins/ControllerStorage.smali' 'com/android/systemui/plugins/ControllerStorage.smali' 'added' 'patch_systemui_com_android_systemui_plugins_controllerstorage'
}

patch_systemui_com_android_systemui_plugins_controllerstorage_controllerstoragekey() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/plugins/ControllerStorage$ControllerStorageKey.smali' 'com/android/systemui/plugins/ControllerStorage$ControllerStorageKey.smali' 'added' 'patch_systemui_com_android_systemui_plugins_controllerstorage_controllerstoragekey'
}

patch_systemui_com_android_systemui_plugins_controllers_controllerext() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/plugins/controllers/ControllerExt.smali' 'com/android/systemui/plugins/controllers/ControllerExt.smali' 'added' 'patch_systemui_com_android_systemui_plugins_controllers_controllerext'
}

patch_systemui_com_android_systemui_plugins_controllers_controllerext_callback() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/plugins/controllers/ControllerExt$CallBack.smali' 'com/android/systemui/plugins/controllers/ControllerExt$CallBack.smali' 'added' 'patch_systemui_com_android_systemui_plugins_controllers_controllerext_callback'
}

patch_systemui_com_android_systemui_plugins_controllers_controllerext_settingsobserver() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/plugins/controllers/ControllerExt$SettingsObserver.smali' 'com/android/systemui/plugins/controllers/ControllerExt$SettingsObserver.smali' 'added' 'patch_systemui_com_android_systemui_plugins_controllers_controllerext_settingsobserver'
}

patch_systemui_com_android_systemui_plugins_controllers_controllerext_settingsobserver_keymap() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/plugins/controllers/ControllerExt$SettingsObserver$KeyMap.smali' 'com/android/systemui/plugins/controllers/ControllerExt$SettingsObserver$KeyMap.smali' 'added' 'patch_systemui_com_android_systemui_plugins_controllers_controllerext_settingsobserver_keymap'
}

patch_systemui_com_android_systemui_plugins_controllers_controllerext_settingsobserver_observer() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/plugins/controllers/ControllerExt$SettingsObserver$Observer.smali' 'com/android/systemui/plugins/controllers/ControllerExt$SettingsObserver$Observer.smali' 'added' 'patch_systemui_com_android_systemui_plugins_controllers_controllerext_settingsobserver_observer'
}

patch_systemui_com_android_systemui_plugins_controllers_controllerext_settingsobserver_settingstype() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/plugins/controllers/ControllerExt$SettingsObserver$SettingsType.smali' 'com/android/systemui/plugins/controllers/ControllerExt$SettingsObserver$SettingsType.smali' 'added' 'patch_systemui_com_android_systemui_plugins_controllers_controllerext_settingsobserver_settingstype'
}

patch_systemui_com_android_systemui_plugins_controllers_controllerext_settingsobserver_onchangelistener() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/plugins/controllers/ControllerExt$SettingsObserver$onChangeListener.smali' 'com/android/systemui/plugins/controllers/ControllerExt$SettingsObserver$onChangeListener.smali' 'added' 'patch_systemui_com_android_systemui_plugins_controllers_controllerext_settingsobserver_onchangelistener'
}

patch_systemui_com_android_systemui_plugins_qs_qs() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/plugins/qs/QS.smali' 'com/android/systemui/plugins/qs/QS.smali' 'modified' 'patch_systemui_com_android_systemui_plugins_qs_qs'
}

patch_systemui_com_android_systemui_qs_miuinotificationheaderview() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/qs/MiuiNotificationHeaderView.smali' 'com/android/systemui/qs/MiuiNotificationHeaderView.smali' 'modified' 'patch_systemui_com_android_systemui_qs_miuinotificationheaderview'
}

patch_systemui_com_android_systemui_qs_miuiqsfragment() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/qs/MiuiQSFragment.smali' 'com/android/systemui/qs/MiuiQSFragment.smali' 'modified' 'patch_systemui_com_android_systemui_qs_miuiqsfragment'
}

patch_systemui_com_android_systemui_qs_miuiqsheaderview() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/qs/MiuiQSHeaderView.smali' 'com/android/systemui/qs/MiuiQSHeaderView.smali' 'modified' 'patch_systemui_com_android_systemui_qs_miuiqsheaderview'
}

patch_systemui_com_android_systemui_qs_miuiquickqspanel() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/qs/MiuiQuickQSPanel.smali' 'com/android/systemui/qs/MiuiQuickQSPanel.smali' 'modified' 'patch_systemui_com_android_systemui_qs_miuiquickqspanel'
}

patch_systemui_com_android_systemui_qs_miuitilelayout() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/qs/MiuiTileLayout.smali' 'com/android/systemui/qs/MiuiTileLayout.smali' 'modified' 'patch_systemui_com_android_systemui_qs_miuitilelayout'
}

patch_systemui_com_android_systemui_qs_tilelayout() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/qs/TileLayout.smali' 'com/android/systemui/qs/TileLayout.smali' 'modified' 'patch_systemui_com_android_systemui_qs_tilelayout'
}

patch_systemui_com_android_systemui_qs_pipeline_data_repository_miuidefaulttilesrepository() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/qs/pipeline/data/repository/MiuiDefaultTilesRepository.smali' 'com/android/systemui/qs/pipeline/data/repository/MiuiDefaultTilesRepository.smali' 'modified' 'patch_systemui_com_android_systemui_qs_pipeline_data_repository_miuidefaulttilesrepository'
}

patch_systemui_com_android_systemui_qs_tileimpl_miuiqsiconviewimpl() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/qs/tileimpl/MiuiQSIconViewImpl.smali' 'com/android/systemui/qs/tileimpl/MiuiQSIconViewImpl.smali' 'modified' 'patch_systemui_com_android_systemui_qs_tileimpl_miuiqsiconviewimpl'
}

patch_systemui_com_android_systemui_qs_tileimpl_qstileimpl() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/qs/tileimpl/QSTileImpl.smali' 'com/android/systemui/qs/tileimpl/QSTileImpl.smali' 'modified' 'patch_systemui_com_android_systemui_qs_tileimpl_qstileimpl'
}

patch_systemui_com_android_systemui_qs_tiles_synctile() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/qs/tiles/SyncTile.smali' 'com/android/systemui/qs/tiles/SyncTile.smali' 'modified' 'patch_systemui_com_android_systemui_qs_tiles_synctile'
}

patch_systemui_com_android_systemui_shade_notificationpanelviewcontroller_touchhandler() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/shade/NotificationPanelViewController$TouchHandler.smali' 'com/android/systemui/shade/NotificationPanelViewController$TouchHandler.smali' 'modified' 'patch_systemui_com_android_systemui_shade_notificationpanelviewcontroller_touchhandler'
}

patch_systemui_com_android_systemui_statusbar_animatedimageview() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/statusbar/AnimatedImageView.smali' 'com/android/systemui/statusbar/AnimatedImageView.smali' 'modified' 'patch_systemui_com_android_systemui_statusbar_animatedimageview'
}

patch_systemui_com_android_systemui_statusbar_islandmonitor_realcontainerislandmonitor() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor.smali' 'com/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor.smali' 'modified' 'patch_systemui_com_android_systemui_statusbar_islandmonitor_realcontainerislandmonitor'
}

patch_systemui_com_android_systemui_statusbar_lockscreenshadetransitioncontroller() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/statusbar/LockscreenShadeTransitionController.smali' 'com/android/systemui/statusbar/LockscreenShadeTransitionController.smali' 'modified' 'patch_systemui_com_android_systemui_statusbar_lockscreenshadetransitioncontroller'
}

patch_systemui_com_android_systemui_statusbar_statusbariconview() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/statusbar/StatusBarIconView.smali' 'com/android/systemui/statusbar/StatusBarIconView.smali' 'modified' 'patch_systemui_com_android_systemui_statusbar_statusbariconview'
}

patch_systemui_com_android_systemui_statusbar_notification_expandednotification() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/statusbar/notification/ExpandedNotification.smali' 'com/android/systemui/statusbar/notification/ExpandedNotification.smali' 'modified' 'patch_systemui_com_android_systemui_statusbar_notification_expandednotification'
}

patch_systemui_com_android_systemui_statusbar_notification_collection_coordinator_rowappearancecoordinator() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/statusbar/notification/collection/coordinator/RowAppearanceCoordinator.smali' 'com/android/systemui/statusbar/notification/collection/coordinator/RowAppearanceCoordinator.smali' 'modified' 'patch_systemui_com_android_systemui_statusbar_notification_collection_coordinator_rowappearancecoordinator'
}

patch_systemui_com_android_systemui_statusbar_notification_collection_coordinator_rowappearancecoordinator_attach_2() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/statusbar/notification/collection/coordinator/RowAppearanceCoordinator$attach$2.smali' 'com/android/systemui/statusbar/notification/collection/coordinator/RowAppearanceCoordinator$attach$2.smali' 'modified' 'patch_systemui_com_android_systemui_statusbar_notification_collection_coordinator_rowappearancecoordinator_attach_2'
}

patch_systemui_com_android_systemui_statusbar_notification_collection_coordinator_rowappearancecoordinator_attach_3() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/statusbar/notification/collection/coordinator/RowAppearanceCoordinator$attach$3.smali' 'com/android/systemui/statusbar/notification/collection/coordinator/RowAppearanceCoordinator$attach$3.smali' 'added' 'patch_systemui_com_android_systemui_statusbar_notification_collection_coordinator_rowappearancecoordinator_attach_3'
}

patch_systemui_com_android_systemui_statusbar_notification_policy_fakefocusnotifcontrollerimpl() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl.smali' 'com/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl.smali' 'modified' 'patch_systemui_com_android_systemui_statusbar_notification_policy_fakefocusnotifcontrollerimpl'
}

patch_systemui_com_android_systemui_statusbar_notification_policy_notificationfiltercontroller_companion() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/statusbar/notification/policy/NotificationFilterController$Companion.smali' 'com/android/systemui/statusbar/notification/policy/NotificationFilterController$Companion.smali' 'modified' 'patch_systemui_com_android_systemui_statusbar_notification_policy_notificationfiltercontroller_companion'
}

patch_systemui_com_android_systemui_statusbar_notification_row_expandableview() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/statusbar/notification/row/ExpandableView.smali' 'com/android/systemui/statusbar/notification/row/ExpandableView.smali' 'modified' 'patch_systemui_com_android_systemui_statusbar_notification_row_expandableview'
}

patch_systemui_com_android_systemui_statusbar_notification_row_notificationcontentview() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/statusbar/notification/row/NotificationContentView.smali' 'com/android/systemui/statusbar/notification/row/NotificationContentView.smali' 'modified' 'patch_systemui_com_android_systemui_statusbar_notification_row_notificationcontentview'
}

patch_systemui_com_android_systemui_statusbar_notification_row_notificationrowcontentbinderinjectorimpl() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/statusbar/notification/row/NotificationRowContentBinderInjectorImpl.smali' 'com/android/systemui/statusbar/notification/row/NotificationRowContentBinderInjectorImpl.smali' 'modified' 'patch_systemui_com_android_systemui_statusbar_notification_row_notificationrowcontentbinderinjectorimpl'
}

patch_systemui_com_android_systemui_statusbar_notification_row_wrapper_notificationviewwrapper() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper.smali' 'com/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper.smali' 'modified' 'patch_systemui_com_android_systemui_statusbar_notification_row_wrapper_notificationviewwrapper'
}

patch_systemui_com_android_systemui_statusbar_notification_utils_notifimageutil() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/statusbar/notification/utils/NotifImageUtil.smali' 'com/android/systemui/statusbar/notification/utils/NotifImageUtil.smali' 'modified' 'patch_systemui_com_android_systemui_statusbar_notification_utils_notifimageutil'
}

patch_systemui_com_android_systemui_statusbar_phone_centralsurfacesimpl() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/statusbar/phone/CentralSurfacesImpl.smali' 'com/android/systemui/statusbar/phone/CentralSurfacesImpl.smali' 'modified' 'patch_systemui_com_android_systemui_statusbar_phone_centralsurfacesimpl'
}

patch_systemui_com_android_systemui_statusbar_phone_keyguardstatusbarview() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/statusbar/phone/KeyguardStatusBarView.smali' 'com/android/systemui/statusbar/phone/KeyguardStatusBarView.smali' 'modified' 'patch_systemui_com_android_systemui_statusbar_phone_keyguardstatusbarview'
}

patch_systemui_com_android_systemui_statusbar_phone_miuicollapsedstatusbarfragment() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment.smali' 'com/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment.smali' 'modified' 'patch_systemui_com_android_systemui_statusbar_phone_miuicollapsedstatusbarfragment'
}

patch_systemui_com_android_systemui_statusbar_phone_miuicollapsedstatusbarfragment_2() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$2.smali' 'com/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$2.smali' 'modified' 'patch_systemui_com_android_systemui_statusbar_phone_miuicollapsedstatusbarfragment_2'
}

patch_systemui_com_android_systemui_statusbar_phone_miuihomeprivacycontroller() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/statusbar/phone/MiuiHomePrivacyController.smali' 'com/android/systemui/statusbar/phone/MiuiHomePrivacyController.smali' 'modified' 'patch_systemui_com_android_systemui_statusbar_phone_miuihomeprivacycontroller'
}

patch_systemui_com_android_systemui_statusbar_phone_miuiiconmanagerutils() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/statusbar/phone/MiuiIconManagerUtils.smali' 'com/android/systemui/statusbar/phone/MiuiIconManagerUtils.smali' 'modified' 'patch_systemui_com_android_systemui_statusbar_phone_miuiiconmanagerutils'
}

patch_systemui_com_android_systemui_statusbar_phone_miuikeyguardstatusbarview() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView.smali' 'com/android/systemui/statusbar/phone/MiuiKeyguardStatusBarView.smali' 'modified' 'patch_systemui_com_android_systemui_statusbar_phone_miuikeyguardstatusbarview'
}

patch_systemui_com_android_systemui_statusbar_phone_miuiphonestatusbarpolicy() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy.smali' 'com/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy.smali' 'modified' 'patch_systemui_com_android_systemui_statusbar_phone_miuiphonestatusbarpolicy'
}

patch_systemui_com_android_systemui_statusbar_phone_miuiphonestatusbarview() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/statusbar/phone/MiuiPhoneStatusBarView.smali' 'com/android/systemui/statusbar/phone/MiuiPhoneStatusBarView.smali' 'modified' 'patch_systemui_com_android_systemui_statusbar_phone_miuiphonestatusbarview'
}

patch_systemui_com_android_systemui_statusbar_phone_mymodifiedui_edgescreenservice() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/statusbar/phone/MyModifiedUI/EdgeScreenService.smali' 'com/android/systemui/statusbar/phone/MyModifiedUI/EdgeScreenService.smali' 'added' 'patch_systemui_com_android_systemui_statusbar_phone_mymodifiedui_edgescreenservice'
}

patch_systemui_com_android_systemui_statusbar_phone_mymodifiedui_edgescreenservice_1() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/statusbar/phone/MyModifiedUI/EdgeScreenService$1.smali' 'com/android/systemui/statusbar/phone/MyModifiedUI/EdgeScreenService$1.smali' 'added' 'patch_systemui_com_android_systemui_statusbar_phone_mymodifiedui_edgescreenservice_1'
}

patch_systemui_com_android_systemui_statusbar_phone_mymodifiedui_edgewindowmanager() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/statusbar/phone/MyModifiedUI/EdgeWindowManager.smali' 'com/android/systemui/statusbar/phone/MyModifiedUI/EdgeWindowManager.smali' 'added' 'patch_systemui_com_android_systemui_statusbar_phone_mymodifiedui_edgewindowmanager'
}

patch_systemui_com_android_systemui_statusbar_phone_mymodifiedui_edgewindowmanager_1() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/statusbar/phone/MyModifiedUI/EdgeWindowManager$1.smali' 'com/android/systemui/statusbar/phone/MyModifiedUI/EdgeWindowManager$1.smali' 'added' 'patch_systemui_com_android_systemui_statusbar_phone_mymodifiedui_edgewindowmanager_1'
}

patch_systemui_com_android_systemui_statusbar_phone_mymodifiedui_lightninganimationlayout() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/statusbar/phone/MyModifiedUI/LightningAnimationLayout.smali' 'com/android/systemui/statusbar/phone/MyModifiedUI/LightningAnimationLayout.smali' 'added' 'patch_systemui_com_android_systemui_statusbar_phone_mymodifiedui_lightninganimationlayout'
}

patch_systemui_com_android_systemui_statusbar_phone_mymodifiedui_lightninganimationlayout_1() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/statusbar/phone/MyModifiedUI/LightningAnimationLayout$1.smali' 'com/android/systemui/statusbar/phone/MyModifiedUI/LightningAnimationLayout$1.smali' 'added' 'patch_systemui_com_android_systemui_statusbar_phone_mymodifiedui_lightninganimationlayout_1'
}

patch_systemui_com_android_systemui_statusbar_phone_mymodifiedui_lightninganimationlayout_2() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/statusbar/phone/MyModifiedUI/LightningAnimationLayout$2.smali' 'com/android/systemui/statusbar/phone/MyModifiedUI/LightningAnimationLayout$2.smali' 'added' 'patch_systemui_com_android_systemui_statusbar_phone_mymodifiedui_lightninganimationlayout_2'
}

patch_systemui_com_android_systemui_statusbar_phone_mymodifiedui_lightningbackground() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/statusbar/phone/MyModifiedUI/LightningBackground.smali' 'com/android/systemui/statusbar/phone/MyModifiedUI/LightningBackground.smali' 'added' 'patch_systemui_com_android_systemui_statusbar_phone_mymodifiedui_lightningbackground'
}

patch_systemui_com_android_systemui_statusbar_phone_notificationiconcontainer() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/statusbar/phone/NotificationIconContainer.smali' 'com/android/systemui/statusbar/phone/NotificationIconContainer.smali' 'modified' 'patch_systemui_com_android_systemui_statusbar_phone_notificationiconcontainer'
}

patch_systemui_com_android_systemui_statusbar_phone_refreshelitestatusbar() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/statusbar/phone/RefreshEliteStatusbar.smali' 'com/android/systemui/statusbar/phone/RefreshEliteStatusbar.smali' 'added' 'patch_systemui_com_android_systemui_statusbar_phone_refreshelitestatusbar'
}

patch_systemui_com_android_systemui_statusbar_phone_refreshelitestatusbar_1() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/statusbar/phone/RefreshEliteStatusbar$1.smali' 'com/android/systemui/statusbar/phone/RefreshEliteStatusbar$1.smali' 'added' 'patch_systemui_com_android_systemui_statusbar_phone_refreshelitestatusbar_1'
}

patch_systemui_com_android_systemui_statusbar_phone_fragment_collapsedstatusbarfragment() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment.smali' 'com/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment.smali' 'modified' 'patch_systemui_com_android_systemui_statusbar_phone_fragment_collapsedstatusbarfragment'
}

patch_systemui_com_android_systemui_statusbar_phone_ui_darkiconmanager() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/statusbar/phone/ui/DarkIconManager.smali' 'com/android/systemui/statusbar/phone/ui/DarkIconManager.smali' 'modified' 'patch_systemui_com_android_systemui_statusbar_phone_ui_darkiconmanager'
}

patch_systemui_com_android_systemui_statusbar_phone_ui_iconmanager() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/statusbar/phone/ui/IconManager.smali' 'com/android/systemui/statusbar/phone/ui/IconManager.smali' 'modified' 'patch_systemui_com_android_systemui_statusbar_phone_ui_iconmanager'
}

patch_systemui_com_android_systemui_statusbar_pipeline_mobile_ui_binder_miuimobileiconbinder() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/statusbar/pipeline/mobile/ui/binder/MiuiMobileIconBinder.smali' 'com/android/systemui/statusbar/pipeline/mobile/ui/binder/MiuiMobileIconBinder.smali' 'modified' 'patch_systemui_com_android_systemui_statusbar_pipeline_mobile_ui_binder_miuimobileiconbinder'
}

patch_systemui_com_android_systemui_statusbar_pipeline_mobile_ui_view_modernstatusbarmobileview() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileView.smali' 'com/android/systemui/statusbar/pipeline/mobile/ui/view/ModernStatusBarMobileView.smali' 'modified' 'patch_systemui_com_android_systemui_statusbar_pipeline_mobile_ui_view_modernstatusbarmobileview'
}

patch_systemui_com_android_systemui_statusbar_pipeline_wifi_ui_view_modernstatusbarwifiview() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/statusbar/pipeline/wifi/ui/view/ModernStatusBarWifiView.smali' 'com/android/systemui/statusbar/pipeline/wifi/ui/view/ModernStatusBarWifiView.smali' 'modified' 'patch_systemui_com_android_systemui_statusbar_pipeline_wifi_ui_view_modernstatusbarwifiview'
}

patch_systemui_com_android_systemui_statusbar_policy_batterybar() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/statusbar/policy/BatteryBar.smali' 'com/android/systemui/statusbar/policy/BatteryBar.smali' 'added' 'patch_systemui_com_android_systemui_statusbar_policy_batterybar'
}

patch_systemui_com_android_systemui_statusbar_policy_batterybar_1() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/statusbar/policy/BatteryBar$1.smali' 'com/android/systemui/statusbar/policy/BatteryBar$1.smali' 'added' 'patch_systemui_com_android_systemui_statusbar_policy_batterybar_1'
}

patch_systemui_com_android_systemui_statusbar_policy_batterybar_settingsobserver() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/statusbar/policy/BatteryBar$SettingsObserver.smali' 'com/android/systemui/statusbar/policy/BatteryBar$SettingsObserver.smali' 'added' 'patch_systemui_com_android_systemui_statusbar_policy_batterybar_settingsobserver'
}

patch_systemui_com_android_systemui_statusbar_policy_batterybarcontroller() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/statusbar/policy/BatteryBarController.smali' 'com/android/systemui/statusbar/policy/BatteryBarController.smali' 'added' 'patch_systemui_com_android_systemui_statusbar_policy_batterybarcontroller'
}

patch_systemui_com_android_systemui_statusbar_policy_batterybarcontroller_1() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/statusbar/policy/BatteryBarController$1.smali' 'com/android/systemui/statusbar/policy/BatteryBarController$1.smali' 'added' 'patch_systemui_com_android_systemui_statusbar_policy_batterybarcontroller_1'
}

patch_systemui_com_android_systemui_statusbar_policy_batterybarcontroller_2() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/statusbar/policy/BatteryBarController$2.smali' 'com/android/systemui/statusbar/policy/BatteryBarController$2.smali' 'added' 'patch_systemui_com_android_systemui_statusbar_policy_batterybarcontroller_2'
}

patch_systemui_com_android_systemui_statusbar_policy_batterybarcontroller_settingsobserver() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/statusbar/policy/BatteryBarController$SettingsObserver.smali' 'com/android/systemui/statusbar/policy/BatteryBarController$SettingsObserver.smali' 'added' 'patch_systemui_com_android_systemui_statusbar_policy_batterybarcontroller_settingsobserver'
}

patch_systemui_com_android_systemui_statusbar_policy_controllerexpandheight() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/statusbar/policy/ControllerExpandHeight.smali' 'com/android/systemui/statusbar/policy/ControllerExpandHeight.smali' 'added' 'patch_systemui_com_android_systemui_statusbar_policy_controllerexpandheight'
}

patch_systemui_com_android_systemui_statusbar_policy_controllerexpandheight_1() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/statusbar/policy/ControllerExpandHeight$1.smali' 'com/android/systemui/statusbar/policy/ControllerExpandHeight$1.smali' 'added' 'patch_systemui_com_android_systemui_statusbar_policy_controllerexpandheight_1'
}

patch_systemui_com_android_systemui_statusbar_policy_controllerexpandheight_2() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/statusbar/policy/ControllerExpandHeight$2.smali' 'com/android/systemui/statusbar/policy/ControllerExpandHeight$2.smali' 'added' 'patch_systemui_com_android_systemui_statusbar_policy_controllerexpandheight_2'
}

patch_systemui_com_android_systemui_statusbar_policy_controllerexpandheight_callback() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/statusbar/policy/ControllerExpandHeight$CallBack.smali' 'com/android/systemui/statusbar/policy/ControllerExpandHeight$CallBack.smali' 'added' 'patch_systemui_com_android_systemui_statusbar_policy_controllerexpandheight_callback'
}

patch_systemui_com_android_systemui_statusbar_policy_defaultfirstsettings() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/statusbar/policy/DefaultFirstSettings.smali' 'com/android/systemui/statusbar/policy/DefaultFirstSettings.smali' 'added' 'patch_systemui_com_android_systemui_statusbar_policy_defaultfirstsettings'
}

patch_systemui_com_android_systemui_statusbar_policy_mykeyguardstatecontroller() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/statusbar/policy/MyKeyguardStateController.smali' 'com/android/systemui/statusbar/policy/MyKeyguardStateController.smali' 'added' 'patch_systemui_com_android_systemui_statusbar_policy_mykeyguardstatecontroller'
}

patch_systemui_com_android_systemui_statusbar_policy_mykeyguardstatecontroller_1() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/statusbar/policy/MyKeyguardStateController$1.smali' 'com/android/systemui/statusbar/policy/MyKeyguardStateController$1.smali' 'added' 'patch_systemui_com_android_systemui_statusbar_policy_mykeyguardstatecontroller_1'
}

patch_systemui_com_android_systemui_statusbar_policy_mykeyguardstatecontroller_callback() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/statusbar/policy/MyKeyguardStateController$CallBack.smali' 'com/android/systemui/statusbar/policy/MyKeyguardStateController$CallBack.smali' 'added' 'patch_systemui_com_android_systemui_statusbar_policy_mykeyguardstatecontroller_callback'
}

patch_systemui_com_android_systemui_statusbar_policy_networkspeedcontroller() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/statusbar/policy/NetworkSpeedController.smali' 'com/android/systemui/statusbar/policy/NetworkSpeedController.smali' 'modified' 'patch_systemui_com_android_systemui_statusbar_policy_networkspeedcontroller'
}

patch_systemui_com_android_systemui_statusbar_policy_networkspeedcontroller_1() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/statusbar/policy/NetworkSpeedController$1.smali' 'com/android/systemui/statusbar/policy/NetworkSpeedController$1.smali' 'modified' 'patch_systemui_com_android_systemui_statusbar_policy_networkspeedcontroller_1'
}

patch_systemui_com_android_systemui_statusbar_policy_networkspeedcontroller_2() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/statusbar/policy/NetworkSpeedController$2.smali' 'com/android/systemui/statusbar/policy/NetworkSpeedController$2.smali' 'modified' 'patch_systemui_com_android_systemui_statusbar_policy_networkspeedcontroller_2'
}

patch_systemui_com_android_systemui_statusbar_policy_networkspeedcontroller_3() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/statusbar/policy/NetworkSpeedController$3.smali' 'com/android/systemui/statusbar/policy/NetworkSpeedController$3.smali' 'modified' 'patch_systemui_com_android_systemui_statusbar_policy_networkspeedcontroller_3'
}

patch_systemui_com_android_systemui_statusbar_policy_networkspeedcontroller_3_1() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/statusbar/policy/NetworkSpeedController$3$1.smali' 'com/android/systemui/statusbar/policy/NetworkSpeedController$3$1.smali' 'added' 'patch_systemui_com_android_systemui_statusbar_policy_networkspeedcontroller_3_1'
}

patch_systemui_com_android_systemui_statusbar_policy_networkspeedcontroller_4() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/statusbar/policy/NetworkSpeedController$4.smali' 'com/android/systemui/statusbar/policy/NetworkSpeedController$4.smali' 'modified' 'patch_systemui_com_android_systemui_statusbar_policy_networkspeedcontroller_4'
}

patch_systemui_com_android_systemui_statusbar_policy_networkspeedcontroller_workhandler() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/statusbar/policy/NetworkSpeedController$WorkHandler.smali' 'com/android/systemui/statusbar/policy/NetworkSpeedController$WorkHandler.smali' 'added' 'patch_systemui_com_android_systemui_statusbar_policy_networkspeedcontroller_workhandler'
}

patch_systemui_com_android_systemui_statusbar_policy_notificationiconobserver() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/statusbar/policy/NotificationIconObserver.smali' 'com/android/systemui/statusbar/policy/NotificationIconObserver.smali' 'modified' 'patch_systemui_com_android_systemui_statusbar_policy_notificationiconobserver'
}

patch_systemui_com_android_systemui_statusbar_policy_prefs() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/statusbar/policy/Prefs.smali' 'com/android/systemui/statusbar/policy/Prefs.smali' 'added' 'patch_systemui_com_android_systemui_statusbar_policy_prefs'
}

patch_systemui_com_android_systemui_statusbar_privacy_miuiprivacycontrollerimpl() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl.smali' 'com/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl.smali' 'modified' 'patch_systemui_com_android_systemui_statusbar_privacy_miuiprivacycontrollerimpl'
}

patch_systemui_com_android_systemui_statusbar_privacy_miuiprivacyflaresdotcontroller() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController.smali' 'com/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController.smali' 'modified' 'patch_systemui_com_android_systemui_statusbar_privacy_miuiprivacyflaresdotcontroller'
}

patch_systemui_com_android_systemui_statusbar_views_miuibatterymetericonview() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/statusbar/views/MiuiBatteryMeterIconView.smali' 'com/android/systemui/statusbar/views/MiuiBatteryMeterIconView.smali' 'modified' 'patch_systemui_com_android_systemui_statusbar_views_miuibatterymetericonview'
}

patch_systemui_com_android_systemui_statusbar_views_miuibatterymeterview() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/statusbar/views/MiuiBatteryMeterView.smali' 'com/android/systemui/statusbar/views/MiuiBatteryMeterView.smali' 'modified' 'patch_systemui_com_android_systemui_statusbar_views_miuibatterymeterview'
}

patch_systemui_com_android_systemui_statusbar_views_miuiclock() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/statusbar/views/MiuiClock.smali' 'com/android/systemui/statusbar/views/MiuiClock.smali' 'modified' 'patch_systemui_com_android_systemui_statusbar_views_miuiclock'
}

patch_systemui_com_android_systemui_statusbar_views_miuihollowbatterymetericonview() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView.smali' 'com/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView.smali' 'modified' 'patch_systemui_com_android_systemui_statusbar_views_miuihollowbatterymetericonview'
}

patch_systemui_com_android_systemui_statusbar_views_miuinotificationstatuscontainer() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/statusbar/views/MiuiNotificationStatusContainer.smali' 'com/android/systemui/statusbar/views/MiuiNotificationStatusContainer.smali' 'modified' 'patch_systemui_com_android_systemui_statusbar_views_miuinotificationstatuscontainer'
}

patch_systemui_com_android_systemui_statusbar_views_miuistatusbatterycontainer() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/statusbar/views/MiuiStatusBatteryContainer.smali' 'com/android/systemui/statusbar/views/MiuiStatusBatteryContainer.smali' 'modified' 'patch_systemui_com_android_systemui_statusbar_views_miuistatusbatterycontainer'
}

patch_systemui_com_android_systemui_statusbar_views_miuistatusiconcontainer() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/statusbar/views/MiuiStatusIconContainer.smali' 'com/android/systemui/statusbar/views/MiuiStatusIconContainer.smali' 'modified' 'patch_systemui_com_android_systemui_statusbar_views_miuistatusiconcontainer'
}

patch_systemui_com_android_systemui_statusbar_views_miuistatusiconcontainer_nfcsettingobserver() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/statusbar/views/MiuiStatusIconContainer$NfcSettingObserver.smali' 'com/android/systemui/statusbar/views/MiuiStatusIconContainer$NfcSettingObserver.smali' 'added' 'patch_systemui_com_android_systemui_statusbar_views_miuistatusiconcontainer_nfcsettingobserver'
}

patch_systemui_com_android_systemui_statusbar_views_mobilesignalanimatorcontainer() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/statusbar/views/MobileSignalAnimatorContainer.smali' 'com/android/systemui/statusbar/views/MobileSignalAnimatorContainer.smali' 'modified' 'patch_systemui_com_android_systemui_statusbar_views_mobilesignalanimatorcontainer'
}

patch_systemui_com_android_systemui_statusbar_views_mobilesignalanimatorimageview() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/statusbar/views/MobileSignalAnimatorImageView.smali' 'com/android/systemui/statusbar/views/MobileSignalAnimatorImageView.smali' 'modified' 'patch_systemui_com_android_systemui_statusbar_views_mobilesignalanimatorimageview'
}

patch_systemui_com_android_systemui_statusbar_views_mobilesignalanimatortextview() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/statusbar/views/MobileSignalAnimatorTextView.smali' 'com/android/systemui/statusbar/views/MobileSignalAnimatorTextView.smali' 'modified' 'patch_systemui_com_android_systemui_statusbar_views_mobilesignalanimatortextview'
}

patch_systemui_com_android_systemui_statusbar_views_mobilesignalanimatorview() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/statusbar/views/MobileSignalAnimatorView.smali' 'com/android/systemui/statusbar/views/MobileSignalAnimatorView.smali' 'modified' 'patch_systemui_com_android_systemui_statusbar_views_mobilesignalanimatorview'
}

patch_systemui_com_android_systemui_statusbar_views_networkspeedview() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/statusbar/views/NetworkSpeedView.smali' 'com/android/systemui/statusbar/views/NetworkSpeedView.smali' 'modified' 'patch_systemui_com_android_systemui_statusbar_views_networkspeedview'
}

patch_systemui_com_android_systemui_statusbar_views_networkspeedview_1() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/statusbar/views/NetworkSpeedView$1.smali' 'com/android/systemui/statusbar/views/NetworkSpeedView$1.smali' 'added' 'patch_systemui_com_android_systemui_statusbar_views_networkspeedview_1'
}

patch_systemui_com_android_systemui_tuner_tunerservice() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/tuner/TunerService.smali' 'com/android/systemui/tuner/TunerService.smali' 'modified' 'patch_systemui_com_android_systemui_tuner_tunerservice'
}

patch_systemui_com_android_systemui_tuner_tunerserviceimpl() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/tuner/TunerServiceImpl.smali' 'com/android/systemui/tuner/TunerServiceImpl.smali' 'modified' 'patch_systemui_com_android_systemui_tuner_tunerserviceimpl'
}

patch_systemui_com_android_wm_shell_multitasking_miuifreeform_miuibubbles_settings_miuibubblesettings() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/wm/shell/multitasking/miuifreeform/miuibubbles/settings/MiuiBubbleSettings.smali' 'com/android/wm/shell/multitasking/miuifreeform/miuibubbles/settings/MiuiBubbleSettings.smali' 'modified' 'patch_systemui_com_android_wm_shell_multitasking_miuifreeform_miuibubbles_settings_miuibubblesettings'
}

patch_systemui_com_android_wm_shell_multitasking_stubs_infinitymode_miuiinfinitymodestatus() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/wm/shell/multitasking/stubs/infinitymode/MiuiInfinityModeStatus.smali' 'com/android/wm/shell/multitasking/stubs/infinitymode/MiuiInfinityModeStatus.smali' 'modified' 'patch_systemui_com_android_wm_shell_multitasking_stubs_infinitymode_miuiinfinitymodestatus'
}

patch_systemui_com_justas_animationweather_cloudanimation() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/justas/AnimationWeather/CloudAnimation.smali' 'com/justas/AnimationWeather/CloudAnimation.smali' 'added' 'patch_systemui_com_justas_animationweather_cloudanimation'
}

patch_systemui_com_justas_animationweather_drippingdrops() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/justas/AnimationWeather/DrippingDrops.smali' 'com/justas/AnimationWeather/DrippingDrops.smali' 'added' 'patch_systemui_com_justas_animationweather_drippingdrops'
}

patch_systemui_com_justas_animationweather_drippingdrops_1() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/justas/AnimationWeather/DrippingDrops$1.smali' 'com/justas/AnimationWeather/DrippingDrops$1.smali' 'added' 'patch_systemui_com_justas_animationweather_drippingdrops_1'
}

patch_systemui_com_justas_animationweather_drippingdrops_2() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/justas/AnimationWeather/DrippingDrops$2.smali' 'com/justas/AnimationWeather/DrippingDrops$2.smali' 'added' 'patch_systemui_com_justas_animationweather_drippingdrops_2'
}

patch_systemui_com_justas_animationweather_lightninanimation() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/justas/AnimationWeather/LightninAnimation.smali' 'com/justas/AnimationWeather/LightninAnimation.smali' 'added' 'patch_systemui_com_justas_animationweather_lightninanimation'
}

patch_systemui_com_justas_animationweather_lightninanimation_1() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/justas/AnimationWeather/LightninAnimation$1.smali' 'com/justas/AnimationWeather/LightninAnimation$1.smali' 'added' 'patch_systemui_com_justas_animationweather_lightninanimation_1'
}

patch_systemui_com_justas_animationweather_moonanimation() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/justas/AnimationWeather/MoonAnimation.smali' 'com/justas/AnimationWeather/MoonAnimation.smali' 'added' 'patch_systemui_com_justas_animationweather_moonanimation'
}

patch_systemui_com_justas_animationweather_moonanimation_1() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/justas/AnimationWeather/MoonAnimation$1.smali' 'com/justas/AnimationWeather/MoonAnimation$1.smali' 'added' 'patch_systemui_com_justas_animationweather_moonanimation_1'
}

patch_systemui_com_justas_animationweather_moonanimation_2() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/justas/AnimationWeather/MoonAnimation$2.smali' 'com/justas/AnimationWeather/MoonAnimation$2.smali' 'added' 'patch_systemui_com_justas_animationweather_moonanimation_2'
}

patch_systemui_com_justas_animationweather_rainanimation() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/justas/AnimationWeather/RainAnimation.smali' 'com/justas/AnimationWeather/RainAnimation.smali' 'added' 'patch_systemui_com_justas_animationweather_rainanimation'
}

patch_systemui_com_justas_animationweather_rainanimation_1() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/justas/AnimationWeather/RainAnimation$1.smali' 'com/justas/AnimationWeather/RainAnimation$1.smali' 'added' 'patch_systemui_com_justas_animationweather_rainanimation_1'
}

patch_systemui_com_justas_animationweather_rainanimation_2() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/justas/AnimationWeather/RainAnimation$2.smali' 'com/justas/AnimationWeather/RainAnimation$2.smali' 'added' 'patch_systemui_com_justas_animationweather_rainanimation_2'
}

patch_systemui_com_justas_animationweather_snowanimation() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/justas/AnimationWeather/SnowAnimation.smali' 'com/justas/AnimationWeather/SnowAnimation.smali' 'added' 'patch_systemui_com_justas_animationweather_snowanimation'
}

patch_systemui_com_justas_animationweather_snowanimation_1() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/justas/AnimationWeather/SnowAnimation$1.smali' 'com/justas/AnimationWeather/SnowAnimation$1.smali' 'added' 'patch_systemui_com_justas_animationweather_snowanimation_1'
}

patch_systemui_com_justas_animationweather_snowanimation_2() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/justas/AnimationWeather/SnowAnimation$2.smali' 'com/justas/AnimationWeather/SnowAnimation$2.smali' 'added' 'patch_systemui_com_justas_animationweather_snowanimation_2'
}

patch_systemui_com_justas_animationweather_sunanimation() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/justas/AnimationWeather/SunAnimation.smali' 'com/justas/AnimationWeather/SunAnimation.smali' 'added' 'patch_systemui_com_justas_animationweather_sunanimation'
}

patch_systemui_com_justas_animationweather_weather() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/justas/AnimationWeather/Weather.smali' 'com/justas/AnimationWeather/Weather.smali' 'added' 'patch_systemui_com_justas_animationweather_weather'
}

patch_systemui_com_justas_animationweather_weather_1() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/justas/AnimationWeather/Weather$1.smali' 'com/justas/AnimationWeather/Weather$1.smali' 'added' 'patch_systemui_com_justas_animationweather_weather_1'
}

patch_systemui_com_justas_animationweather_weather_2() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/justas/AnimationWeather/Weather$2.smali' 'com/justas/AnimationWeather/Weather$2.smali' 'added' 'patch_systemui_com_justas_animationweather_weather_2'
}

patch_systemui_com_justas_animationweather_weather_queryhandler() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/justas/AnimationWeather/Weather$QueryHandler.smali' 'com/justas/AnimationWeather/Weather$QueryHandler.smali' 'added' 'patch_systemui_com_justas_animationweather_weather_queryhandler'
}

patch_systemui_com_miui_charge_chargeutils() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/miui/charge/ChargeUtils.smali' 'com/miui/charge/ChargeUtils.smali' 'modified' 'patch_systemui_com_miui_charge_chargeutils'
}

patch_systemui_com_miui_charge_miuichargecontroller() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/miui/charge/MiuiChargeController.smali' 'com/miui/charge/MiuiChargeController.smali' 'modified' 'patch_systemui_com_miui_charge_miuichargecontroller'
}

patch_systemui_com_miui_charge_miuichargemanager() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/miui/charge/MiuiChargeManager.smali' 'com/miui/charge/MiuiChargeManager.smali' 'modified' 'patch_systemui_com_miui_charge_miuichargemanager'
}

patch_systemui_com_miui_charge_container_miuichargeanimationview() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/miui/charge/container/MiuiChargeAnimationView.smali' 'com/miui/charge/container/MiuiChargeAnimationView.smali' 'modified' 'patch_systemui_com_miui_charge_container_miuichargeanimationview'
}

patch_systemui_com_miui_charge_container_miuichargecontainerview() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/miui/charge/container/MiuiChargeContainerView.smali' 'com/miui/charge/container/MiuiChargeContainerView.smali' 'modified' 'patch_systemui_com_miui_charge_container_miuichargecontainerview'
}

patch_systemui_com_miui_charge_container_miuichargeiconview() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/miui/charge/container/MiuiChargeIconView.smali' 'com/miui/charge/container/MiuiChargeIconView.smali' 'modified' 'patch_systemui_com_miui_charge_container_miuichargeiconview'
}

patch_systemui_com_miui_charge_container_miuichargelogoview() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/miui/charge/container/MiuiChargeLogoView.smali' 'com/miui/charge/container/MiuiChargeLogoView.smali' 'modified' 'patch_systemui_com_miui_charge_container_miuichargelogoview'
}

patch_systemui_com_miui_charge_view_miuichargepercentcountview() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/miui/charge/view/MiuiChargePercentCountView.smali' 'com/miui/charge/view/MiuiChargePercentCountView.smali' 'modified' 'patch_systemui_com_miui_charge_view_miuichargepercentcountview'
}

patch_systemui_com_miui_charge_view_numberdrawview() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/miui/charge/view/NumberDrawView.smali' 'com/miui/charge/view/NumberDrawView.smali' 'modified' 'patch_systemui_com_miui_charge_view_numberdrawview'
}

patch_systemui_com_miui_charge_wave_wavechargeview() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/miui/charge/wave/WaveChargeView.smali' 'com/miui/charge/wave/WaveChargeView.smali' 'added' 'patch_systemui_com_miui_charge_wave_wavechargeview'
}

patch_systemui_com_miui_charge_wave_waveview() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/miui/charge/wave/WaveView.smali' 'com/miui/charge/wave/WaveView.smali' 'added' 'patch_systemui_com_miui_charge_wave_waveview'
}

patch_systemui_com_miui_charge_wave_waveview_1() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/miui/charge/wave/WaveView$1.smali' 'com/miui/charge/wave/WaveView$1.smali' 'added' 'patch_systemui_com_miui_charge_wave_waveview_1'
}

patch_systemui_com_miui_charge_wave_waveview_2() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/miui/charge/wave/WaveView$2.smali' 'com/miui/charge/wave/WaveView$2.smali' 'added' 'patch_systemui_com_miui_charge_wave_waveview_2'
}

patch_systemui_com_miui_charge_wave_waveview_3() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/miui/charge/wave/WaveView$3.smali' 'com/miui/charge/wave/WaveView$3.smali' 'added' 'patch_systemui_com_miui_charge_wave_waveview_3'
}

patch_systemui_com_miui_charge_wave_waveview_4() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/miui/charge/wave/WaveView$4.smali' 'com/miui/charge/wave/WaveView$4.smali' 'added' 'patch_systemui_com_miui_charge_wave_waveview_4'
}

patch_systemui_com_miui_charge_wave_waveview_bubble() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/miui/charge/wave/WaveView$Bubble.smali' 'com/miui/charge/wave/WaveView$Bubble.smali' 'added' 'patch_systemui_com_miui_charge_wave_waveview_bubble'
}

patch_systemui_com_miui_keyguard_utils_miuikeyguardutils() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/miui/keyguard/utils/MiuiKeyguardUtils.smali' 'com/miui/keyguard/utils/MiuiKeyguardUtils.smali' 'modified' 'patch_systemui_com_miui_keyguard_utils_miuikeyguardutils'
}

patch_systemui_com_miui_maml_util_mobiledatautils() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/miui/maml/util/MobileDataUtils.smali' 'com/miui/maml/util/MobileDataUtils.smali' 'modified' 'patch_systemui_com_miui_maml_util_mobiledatautils'
}

patch_systemui_com_miui_systemui_legacydependency() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/miui/systemui/LegacyDependency.smali' 'com/miui/systemui/LegacyDependency.smali' 'modified' 'patch_systemui_com_miui_systemui_legacydependency'
}

patch_systemui_com_miui_systemui_settingsmanager() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/miui/systemui/SettingsManager.smali' 'com/miui/systemui/SettingsManager.smali' 'modified' 'patch_systemui_com_miui_systemui_settingsmanager'
}

patch_systemui_com_miui_systemui_settingsmanager_99() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/miui/systemui/SettingsManager$99.smali' 'com/miui/systemui/SettingsManager$99.smali' 'added' 'patch_systemui_com_miui_systemui_settingsmanager_99'
}

patch_systemui_com_miui_systemui_common_ui_data_repository_miuiconfigurationrepositoryimpl() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/miui/systemui/common/ui/data/repository/MiuiConfigurationRepositoryImpl.smali' 'com/miui/systemui/common/ui/data/repository/MiuiConfigurationRepositoryImpl.smali' 'modified' 'patch_systemui_com_miui_systemui_common_ui_data_repository_miuiconfigurationrepositoryimpl'
}

patch_systemui_com_miui_systemui_common_ui_data_repository_miuiconfigurationrepositoryimpl_isnightmode_1_listener_1() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/miui/systemui/common/ui/data/repository/MiuiConfigurationRepositoryImpl$isNightMode$1$listener$1.smali' 'com/miui/systemui/common/ui/data/repository/MiuiConfigurationRepositoryImpl$isNightMode$1$listener$1.smali' 'modified' 'patch_systemui_com_miui_systemui_common_ui_data_repository_miuiconfigurationrepositoryimpl_isnightmode_1_listener_1'
}

patch_systemui_com_miui_systemui_controlcenter_container_controlcentereventhandlerimpl() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/miui/systemui/controlcenter/container/ControlCenterEventHandlerImpl.smali' 'com/miui/systemui/controlcenter/container/ControlCenterEventHandlerImpl.smali' 'modified' 'patch_systemui_com_miui_systemui_controlcenter_container_controlcentereventhandlerimpl'
}

patch_systemui_com_miui_systemui_controlcenter_data_repository_controlcentersettingsrepositoryimpl() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/miui/systemui/controlcenter/data/repository/ControlCenterSettingsRepositoryImpl.smali' 'com/miui/systemui/controlcenter/data/repository/ControlCenterSettingsRepositoryImpl.smali' 'modified' 'patch_systemui_com_miui_systemui_controlcenter_data_repository_controlcentersettingsrepositoryimpl'
}

patch_systemui_com_miui_systemui_controlcenter_data_repository_controlcentersettingsrepositoryimpl_controlpanelswitchside_1() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/miui/systemui/controlcenter/data/repository/ControlCenterSettingsRepositoryImpl$controlPanelSwitchSide$1.smali' 'com/miui/systemui/controlcenter/data/repository/ControlCenterSettingsRepositoryImpl$controlPanelSwitchSide$1.smali' 'added' 'patch_systemui_com_miui_systemui_controlcenter_data_repository_controlcentersettingsrepositoryimpl_controlpanelswitchside_1'
}

patch_systemui_com_miui_systemui_controlcenter_data_repository_controlcentersettingsrepositoryimpl_special_inlined_map_1() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/miui/systemui/controlcenter/data/repository/ControlCenterSettingsRepositoryImpl$special$$inlined$map$1.smali' 'com/miui/systemui/controlcenter/data/repository/ControlCenterSettingsRepositoryImpl$special$$inlined$map$1.smali' 'modified' 'patch_systemui_com_miui_systemui_controlcenter_data_repository_controlcentersettingsrepositoryimpl_special_inlined_map_1'
}

patch_systemui_com_miui_systemui_controlcenter_data_repository_controlcentersettingsrepositoryimpl_special_inlined_map_5_2() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/miui/systemui/controlcenter/data/repository/ControlCenterSettingsRepositoryImpl$special$$inlined$map$5$2.smali' 'com/miui/systemui/controlcenter/data/repository/ControlCenterSettingsRepositoryImpl$special$$inlined$map$5$2.smali' 'added' 'patch_systemui_com_miui_systemui_controlcenter_data_repository_controlcentersettingsrepositoryimpl_special_inlined_map_5_2'
}

patch_systemui_com_miui_systemui_controlcenter_data_repository_controlcentersettingsrepositoryimpl_special_inlined_map_5_2_1() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/miui/systemui/controlcenter/data/repository/ControlCenterSettingsRepositoryImpl$special$$inlined$map$5$2$1.smali' 'com/miui/systemui/controlcenter/data/repository/ControlCenterSettingsRepositoryImpl$special$$inlined$map$5$2$1.smali' 'added' 'patch_systemui_com_miui_systemui_controlcenter_data_repository_controlcentersettingsrepositoryimpl_special_inlined_map_5_2_1'
}

patch_systemui_com_miui_systemui_controller_weathercontroller() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/miui/systemui/controller/WeatherController.smali' 'com/miui/systemui/controller/WeatherController.smali' 'added' 'patch_systemui_com_miui_systemui_controller_weathercontroller'
}

patch_systemui_com_miui_systemui_controller_weathercontroller_1() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/miui/systemui/controller/WeatherController$1.smali' 'com/miui/systemui/controller/WeatherController$1.smali' 'added' 'patch_systemui_com_miui_systemui_controller_weathercontroller_1'
}

patch_systemui_com_miui_systemui_controller_weathercontroller_2() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/miui/systemui/controller/WeatherController$2.smali' 'com/miui/systemui/controller/WeatherController$2.smali' 'added' 'patch_systemui_com_miui_systemui_controller_weathercontroller_2'
}

patch_systemui_com_miui_systemui_controller_weathercontroller_3() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/miui/systemui/controller/WeatherController$3.smali' 'com/miui/systemui/controller/WeatherController$3.smali' 'added' 'patch_systemui_com_miui_systemui_controller_weathercontroller_3'
}

patch_systemui_com_miui_systemui_controller_weathercontroller_queryhandler() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/miui/systemui/controller/WeatherController$QueryHandler.smali' 'com/miui/systemui/controller/WeatherController$QueryHandler.smali' 'added' 'patch_systemui_com_miui_systemui_controller_weathercontroller_queryhandler'
}

patch_systemui_com_miui_systemui_controller_weathercontroller_queryhandler_catchingworkerhandler() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/miui/systemui/controller/WeatherController$QueryHandler$CatchingWorkerHandler.smali' 'com/miui/systemui/controller/WeatherController$QueryHandler$CatchingWorkerHandler.smali' 'added' 'patch_systemui_com_miui_systemui_controller_weathercontroller_queryhandler_catchingworkerhandler'
}

patch_systemui_com_miui_systemui_controller_weathercontroller_weatherchangelistener() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/miui/systemui/controller/WeatherController$WeatherChangeListener.smali' 'com/miui/systemui/controller/WeatherController$WeatherChangeListener.smali' 'added' 'patch_systemui_com_miui_systemui_controller_weathercontroller_weatherchangelistener'
}

patch_systemui_com_miui_systemui_controller_weathercontroller_weatherinfo() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/miui/systemui/controller/WeatherController$WeatherInfo.smali' 'com/miui/systemui/controller/WeatherController$WeatherInfo.smali' 'added' 'patch_systemui_com_miui_systemui_controller_weathercontroller_weatherinfo'
}

patch_systemui_com_miui_systemui_modulesettings_keyguardsettings() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/miui/systemui/modulesettings/KeyguardSettings.smali' 'com/miui/systemui/modulesettings/KeyguardSettings.smali' 'modified' 'patch_systemui_com_miui_systemui_modulesettings_keyguardsettings'
}

patch_systemui_com_miui_systemui_notification_notificationsettingshelper() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/miui/systemui/notification/NotificationSettingsHelper.smali' 'com/miui/systemui/notification/NotificationSettingsHelper.smali' 'modified' 'patch_systemui_com_miui_systemui_notification_notificationsettingshelper'
}

patch_systemui_com_miui_systemui_shade_miuishadeinteractor_special_inlined_map_1_2() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/miui/systemui/shade/MiuiShadeInteractor$special$$inlined$map$1$2.smali' 'com/miui/systemui/shade/MiuiShadeInteractor$special$$inlined$map$1$2.smali' 'modified' 'patch_systemui_com_miui_systemui_shade_miuishadeinteractor_special_inlined_map_1_2'
}

patch_systemui_com_miui_systemui_shade_blur_shadeblurcontroller() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/miui/systemui/shade/blur/ShadeBlurController.smali' 'com/miui/systemui/shade/blur/ShadeBlurController.smali' 'modified' 'patch_systemui_com_miui_systemui_shade_blur_shadeblurcontroller'
}

patch_systemui_com_miui_systemui_statusbar_views_mobiletypedrawable() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/miui/systemui/statusbar/views/MobileTypeDrawable.smali' 'com/miui/systemui/statusbar/views/MobileTypeDrawable.smali' 'modified' 'patch_systemui_com_miui_systemui_statusbar_views_mobiletypedrawable'
}

patch_systemui_com_miui_systemui_util_commonutil() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/miui/systemui/util/CommonUtil.smali' 'com/miui/systemui/util/CommonUtil.smali' 'modified' 'patch_systemui_com_miui_systemui_util_commonutil'
}

patch_systemui_com_miui_utils_packageutils() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/miui/utils/PackageUtils.smali' 'com/miui/utils/PackageUtils.smali' 'modified' 'patch_systemui_com_miui_utils_packageutils'
}

patch_systemui_com_miui_utils_configs_miuiconfigs() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/miui/utils/configs/MiuiConfigs.smali' 'com/miui/utils/configs/MiuiConfigs.smali' 'modified' 'patch_systemui_com_miui_utils_configs_miuiconfigs'
}

patch_systemui_miuix_springback_view_springbacklayout() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'miuix/springback/view/SpringBackLayout.smali' 'miuix/springback/view/SpringBackLayout.smali' 'modified' 'patch_systemui_miuix_springback_view_springbacklayout'
}

patch_systemui_com_android_systemui_statusbar_phone_refreshmezostatusbar_1() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/statusbar/phone/RefreshMezoStatusbar$1.smali' 'com/android/systemui/statusbar/phone/RefreshMezoStatusbar$1.smali' 'added' 'patch_systemui_com_android_systemui_statusbar_phone_refreshmezostatusbar_1'
}

patch_systemui_com_android_systemui_statusbar_phone_refreshmezostatusbar() {
  ninja_apply_smali_template 'systemui' "$SMALI_DIRS" 'com/android/systemui/statusbar/phone/RefreshMezoStatusbar.smali' 'com/android/systemui/statusbar/phone/RefreshMezoStatusbar.smali' 'added' 'patch_systemui_com_android_systemui_statusbar_phone_refreshmezostatusbar'
}

apply_systemui_smali_patches() {
  ninja_log_info "Applying systemui smali patches"
  patch_systemui_androidx_recyclerview_widget_springrecyclerview || true
  patch_systemui_bg_mods_lockscreen_charginginfohelper || true
  patch_systemui_bg_mods_lockscreen_charginginfohelper_charginginfo || true
  patch_systemui_bg_mods_lockscreen_charginginfohelper_screenreceiver || true
  patch_systemui_bg_mods_lockscreen_charginginfohelper_updaterunnable || true
  patch_systemui_com_android_keyguard_injector_keyguardindicationinjector || true
  patch_systemui_com_android_keyguard_magazine_lockscreenmagazinecontroller || true
  patch_systemui_com_android_keyguard_magazine_lockscreenmagazinecontroller_5 || true
  patch_systemui_com_android_keyguard_magazine_lockscreenmagazinecontroller_7 || true
  patch_systemui_com_android_keyguard_magazine_lockscreenmagazinepreview || true
  patch_systemui_com_android_keyguard_magazine_utils_lockscreenmagazineutils || true
  patch_systemui_com_android_keyguard_negative_keyguardmoveleftcontroller || true
  patch_systemui_com_android_systemui_dependency || true
  patch_systemui_com_android_systemui_sysdependency || true
  patch_systemui_com_android_systemui_systemuiinitializer || true
  patch_systemui_com_android_systemui_assist_ui_defaultuicontroller || true
  patch_systemui_com_android_systemui_controlcenter_phone_controlpanelwindowmanager || true
  patch_systemui_com_android_systemui_controlcenter_phone_controlpanelwindowmanager_onwindowchangelistener || true
  patch_systemui_com_android_systemui_controlcenter_phone_controlpanelwindowmanager_applylayout_1 || true
  patch_systemui_com_android_systemui_controlcenter_phone_controlpanelwindowmanager_windowviewondrawlistener_1 || true
  patch_systemui_com_android_systemui_controlcenter_phone_widget_controlcenterfakestatusicons || true
  patch_systemui_com_android_systemui_controlcenter_policy_controlcentercontrollerimpl || true
  patch_systemui_com_android_systemui_controlcenter_policy_miuinetworkcontroller || true
  patch_systemui_com_android_systemui_controlcenter_shade_combinedheadercontroller || true
  patch_systemui_com_android_systemui_controlcenter_shade_controlcenterheaderexpandcontroller || true
  patch_systemui_com_android_systemui_controlcenter_shade_controlcenterheaderview || true
  patch_systemui_com_android_systemui_controlcenter_shade_notificationheaderexpandcontroller_notificationcallback_1 || true
  patch_systemui_com_android_systemui_dagger_daggerreferenceglobalrootcomponent_referencesysuicomponentimplshard || true
  patch_systemui_com_android_systemui_dagger_daggerreferenceglobalrootcomponent_referencesysuicomponentimplshard_switchingprovider || true
  patch_systemui_com_android_systemui_media_ringtoneplayer_1 || true
  patch_systemui_com_android_systemui_newstatusbar_keyguardstatusbarview || true
  patch_systemui_com_android_systemui_newstatusbar_log || true
  patch_systemui_com_android_systemui_newstatusbar_miuikeyguardstatusbarview || true
  patch_systemui_com_android_systemui_newstatusbar_miuiphonestatusbarview || true
  patch_systemui_com_android_systemui_newstatusbar_miuiphonestatusbarview_1 || true
  patch_systemui_com_android_systemui_newstatusbar_miuiphonestatusbarviewsettingscontroller || true
  patch_systemui_com_android_systemui_newstatusbar_miuiphonestatusbarviewsettingscontroller_callback || true
  patch_systemui_com_android_systemui_newstatusbar_statusbarwifiview || true
  patch_systemui_com_android_systemui_newstatusbar_battery_batterychargeview || true
  patch_systemui_com_android_systemui_newstatusbar_battery_batterycolorsizecontroller || true
  patch_systemui_com_android_systemui_newstatusbar_battery_batteryiconcontainer || true
  patch_systemui_com_android_systemui_newstatusbar_battery_batterymetericonview || true
  patch_systemui_com_android_systemui_newstatusbar_battery_batterymetericonviewminit || true
  patch_systemui_com_android_systemui_newstatusbar_battery_batterymetericonviewminit_1 || true
  patch_systemui_com_android_systemui_newstatusbar_battery_batterymetericonviewminit_1_1 || true
  patch_systemui_com_android_systemui_newstatusbar_battery_batterymetericonviewminit_minitupdate || true
  patch_systemui_com_android_systemui_newstatusbar_battery_batterymetericonviewminit_minitupdate_1 || true
  patch_systemui_com_android_systemui_newstatusbar_battery_batterymetericonviewminit_resourcemanager || true
  patch_systemui_com_android_systemui_newstatusbar_battery_batterypercentcontainer || true
  patch_systemui_com_android_systemui_newstatusbar_battery_hollowbatterymetericonview || true
  patch_systemui_com_android_systemui_newstatusbar_battery_miuibatterymeterview || true
  patch_systemui_com_android_systemui_newstatusbar_battery_percentinview || true
  patch_systemui_com_android_systemui_newstatusbar_battery_percentmarkview || true
  patch_systemui_com_android_systemui_newstatusbar_battery_percentoutview || true
  patch_systemui_com_android_systemui_newstatusbar_clock_clocklayout || true
  patch_systemui_com_android_systemui_newstatusbar_clock_clocklayout_1 || true
  patch_systemui_com_android_systemui_newstatusbar_clock_clocklayout_centertextview || true
  patch_systemui_com_android_systemui_newstatusbar_clock_clocklayout_centertextview_1 || true
  patch_systemui_com_android_systemui_newstatusbar_clock_clocklayout_centertextview_2 || true
  patch_systemui_com_android_systemui_newstatusbar_clock_clocklayout_centertextview_3 || true
  patch_systemui_com_android_systemui_newstatusbar_clock_clocklayout_centertextview_4 || true
  patch_systemui_com_android_systemui_newstatusbar_clock_clocklayout_fullcharacterlayout || true
  patch_systemui_com_android_systemui_newstatusbar_clock_clocklayout_singlecharacterlayout || true
  patch_systemui_com_android_systemui_newstatusbar_clock_clocklayoutext || true
  patch_systemui_com_android_systemui_newstatusbar_clock_clocklayoutfactory || true
  patch_systemui_com_android_systemui_newstatusbar_clock_clocklayoutwithmulticock || true
  patch_systemui_com_android_systemui_newstatusbar_clock_clocksettings || true
  patch_systemui_com_android_systemui_newstatusbar_clock_clocksettings_clockdata || true
  patch_systemui_com_android_systemui_newstatusbar_clock_clocksinglelayoutext || true
  patch_systemui_com_android_systemui_newstatusbar_clock_clockview || true
  patch_systemui_com_android_systemui_newstatusbar_clock_clockview_1 || true
  patch_systemui_com_android_systemui_newstatusbar_clock_clockview_2 || true
  patch_systemui_com_android_systemui_newstatusbar_clock_iclock || true
  patch_systemui_com_android_systemui_newstatusbar_clock_multiclockview || true
  patch_systemui_com_android_systemui_newstatusbar_clock_secondtick || true
  patch_systemui_com_android_systemui_newstatusbar_clock_secondtick_1 || true
  patch_systemui_com_android_systemui_newstatusbar_clock_secondtick_callback || true
  patch_systemui_com_android_systemui_newstatusbar_clock_secondtick_secondtimertask || true
  patch_systemui_com_android_systemui_newstatusbar_controllers_batterycolorsizecontroller || true
  patch_systemui_com_android_systemui_newstatusbar_controllers_batterycolorsizecontroller_1 || true
  patch_systemui_com_android_systemui_newstatusbar_controllers_batterycolorsizecontroller_2 || true
  patch_systemui_com_android_systemui_newstatusbar_controllers_batterycolorsizecontroller_3 || true
  patch_systemui_com_android_systemui_newstatusbar_controllers_batterycolorsizecontroller_4 || true
  patch_systemui_com_android_systemui_newstatusbar_controllers_batterycolorsizecontroller_5 || true
  patch_systemui_com_android_systemui_newstatusbar_controllers_batterycolorsizecontroller_6 || true
  patch_systemui_com_android_systemui_newstatusbar_controllers_batterycolorsizecontroller_6_1 || true
  patch_systemui_com_android_systemui_newstatusbar_controllers_customiconcontroller || true
  patch_systemui_com_android_systemui_newstatusbar_controllers_customiconcontroller_callback || true
  patch_systemui_com_android_systemui_newstatusbar_controllers_darkcontroller || true
  patch_systemui_com_android_systemui_newstatusbar_controllers_darkcontroller_1 || true
  patch_systemui_com_android_systemui_newstatusbar_controllers_darkcontroller_darkreceiver || true
  patch_systemui_com_android_systemui_newstatusbar_controllers_elementcontroller || true
  patch_systemui_com_android_systemui_newstatusbar_controllers_elementcontroller_callback || true
  patch_systemui_com_android_systemui_newstatusbar_controllers_elementcontroller_centerelementposition || true
  patch_systemui_com_android_systemui_newstatusbar_controllers_elementcontroller_leftelementposition || true
  patch_systemui_com_android_systemui_newstatusbar_controllers_elementcontroller_mainlayoutrecord || true
  patch_systemui_com_android_systemui_newstatusbar_controllers_elementcontroller_mainlayoutrecord_1 || true
  patch_systemui_com_android_systemui_newstatusbar_controllers_elementcontroller_notcalculateholeinline || true
  patch_systemui_com_android_systemui_newstatusbar_controllers_elementcontroller_slots || true
  patch_systemui_com_android_systemui_newstatusbar_controllers_fakeclockanimcontroller || true
  patch_systemui_com_android_systemui_newstatusbar_controllers_fakeclockanimcontroller_1 || true
  patch_systemui_com_android_systemui_newstatusbar_controllers_fakeclockanimcontroller_2 || true
  patch_systemui_com_android_systemui_newstatusbar_controllers_fakeclockanimcontroller_callback || true
  patch_systemui_com_android_systemui_newstatusbar_controllers_fakeclockanimcontroller_workhandler || true
  patch_systemui_com_android_systemui_newstatusbar_controllers_iconcontroller || true
  patch_systemui_com_android_systemui_newstatusbar_controllers_iconcontroller_1 || true
  patch_systemui_com_android_systemui_newstatusbar_controllers_iconcontroller_iconcallback || true
  patch_systemui_com_android_systemui_newstatusbar_controllers_islandcontroller || true
  patch_systemui_com_android_systemui_newstatusbar_controllers_islandcontroller_errorrunable || true
  patch_systemui_com_android_systemui_newstatusbar_controllers_islandcontroller_onislandchangelistener || true
  patch_systemui_com_android_systemui_newstatusbar_controllers_mainlayoutvisiblecontroller || true
  patch_systemui_com_android_systemui_newstatusbar_controllers_mainlayoutvisiblecontroller_1 || true
  patch_systemui_com_android_systemui_newstatusbar_controllers_mobileiconcolorsizecontroller || true
  patch_systemui_com_android_systemui_newstatusbar_controllers_mobileiconcolorsizecontroller_1 || true
  patch_systemui_com_android_systemui_newstatusbar_controllers_mobileiconcolorsizecontroller_2 || true
  patch_systemui_com_android_systemui_newstatusbar_controllers_mobileiconcolorsizecontroller_3 || true
  patch_systemui_com_android_systemui_newstatusbar_controllers_mobileiconcolorsizecontroller_4 || true
  patch_systemui_com_android_systemui_newstatusbar_controllers_mobileiconcolorsizecontroller_5 || true
  patch_systemui_com_android_systemui_newstatusbar_controllers_mobileiconcolorsizecontroller_6 || true
  patch_systemui_com_android_systemui_newstatusbar_controllers_netspeedcolorsizecontroller || true
  patch_systemui_com_android_systemui_newstatusbar_controllers_netspeedcolorsizecontroller_1 || true
  patch_systemui_com_android_systemui_newstatusbar_controllers_notifheadertransitioncontroller || true
  patch_systemui_com_android_systemui_newstatusbar_controllers_showmobiletypecontroller || true
  patch_systemui_com_android_systemui_newstatusbar_controllers_simtypecontroller || true
  patch_systemui_com_android_systemui_newstatusbar_controllers_simtypecontroller_callback || true
  patch_systemui_com_android_systemui_newstatusbar_controllers_simtypepositioncontroller || true
  patch_systemui_com_android_systemui_newstatusbar_controllers_simtypepositioncontroller_callback || true
  patch_systemui_com_android_systemui_newstatusbar_controllers_statusbariconviewcontroller || true
  patch_systemui_com_android_systemui_newstatusbar_controllers_statusbariconviewcontroller_1 || true
  patch_systemui_com_android_systemui_newstatusbar_controllers_statusbariconviewcontroller_2 || true
  patch_systemui_com_android_systemui_newstatusbar_controllers_statusbariconviewcontroller_notificationicondata || true
  patch_systemui_com_android_systemui_newstatusbar_controllers_statusiconsvisibilitycontroller || true
  patch_systemui_com_android_systemui_newstatusbar_controllers_statusiconsvisibilitycontroller_ignoredslots || true
  patch_systemui_com_android_systemui_newstatusbar_controllers_updatelayoutcontroller || true
  patch_systemui_com_android_systemui_newstatusbar_controllers_updatelayoutcontroller_1 || true
  patch_systemui_com_android_systemui_newstatusbar_controllers_updatelayoutcontroller_2 || true
  patch_systemui_com_android_systemui_newstatusbar_controllers_updatelayoutcontroller_callback || true
  patch_systemui_com_android_systemui_newstatusbar_data_data || true
  patch_systemui_com_android_systemui_newstatusbar_data_data_ondatachangelistener || true
  patch_systemui_com_android_systemui_newstatusbar_data_icondata || true
  patch_systemui_com_android_systemui_newstatusbar_data_textdata || true
  patch_systemui_com_android_systemui_newstatusbar_layouts_animateelementlayout || true
  patch_systemui_com_android_systemui_newstatusbar_layouts_animateelementlayout_1 || true
  patch_systemui_com_android_systemui_newstatusbar_layouts_animateelementlayout_2 || true
  patch_systemui_com_android_systemui_newstatusbar_layouts_batterylayout || true
  patch_systemui_com_android_systemui_newstatusbar_layouts_clocklayout || true
  patch_systemui_com_android_systemui_newstatusbar_layouts_controlcenterstatusbar || true
  patch_systemui_com_android_systemui_newstatusbar_layouts_controlcenterstatusbaricon || true
  patch_systemui_com_android_systemui_newstatusbar_layouts_datelayout || true
  patch_systemui_com_android_systemui_newstatusbar_layouts_elementbglayout || true
  patch_systemui_com_android_systemui_newstatusbar_layouts_elementbglayout_1 || true
  patch_systemui_com_android_systemui_newstatusbar_layouts_elementbglayout_2 || true
  patch_systemui_com_android_systemui_newstatusbar_layouts_elementbglayout_settingsobserver || true
  patch_systemui_com_android_systemui_newstatusbar_layouts_elementhelper || true
  patch_systemui_com_android_systemui_newstatusbar_layouts_elementlayout || true
  patch_systemui_com_android_systemui_newstatusbar_layouts_focusednotifpromptview || true
  patch_systemui_com_android_systemui_newstatusbar_layouts_headerparent || true
  patch_systemui_com_android_systemui_newstatusbar_layouts_mainlayout || true
  patch_systemui_com_android_systemui_newstatusbar_layouts_mainlayout_1 || true
  patch_systemui_com_android_systemui_newstatusbar_layouts_mainlayout_2 || true
  patch_systemui_com_android_systemui_newstatusbar_layouts_mainlayout_3 || true
  patch_systemui_com_android_systemui_newstatusbar_layouts_mainlayout_4 || true
  patch_systemui_com_android_systemui_newstatusbar_layouts_mainlayout_5 || true
  patch_systemui_com_android_systemui_newstatusbar_layouts_mainlayout_elementhandler || true
  patch_systemui_com_android_systemui_newstatusbar_layouts_miuinotificationstatuscontainer || true
  patch_systemui_com_android_systemui_newstatusbar_layouts_miuistatusbatterycontainer || true
  patch_systemui_com_android_systemui_newstatusbar_layouts_miuistatusiconcontainer || true
  patch_systemui_com_android_systemui_newstatusbar_layouts_miuistatusiconcontainer_1 || true
  patch_systemui_com_android_systemui_newstatusbar_layouts_miuistatusiconcontainer_2 || true
  patch_systemui_com_android_systemui_newstatusbar_layouts_netspeedlayout || true
  patch_systemui_com_android_systemui_newstatusbar_layouts_notifpromptlayout || true
  patch_systemui_com_android_systemui_newstatusbar_layouts_notificationiconcontainer || true
  patch_systemui_com_android_systemui_newstatusbar_layouts_notificationlayout || true
  patch_systemui_com_android_systemui_newstatusbar_layouts_overflowlayout || true
  patch_systemui_com_android_systemui_newstatusbar_layouts_promptlayout || true
  patch_systemui_com_android_systemui_newstatusbar_layouts_singlelayout || true
  patch_systemui_com_android_systemui_newstatusbar_layouts_singlelayout_1 || true
  patch_systemui_com_android_systemui_newstatusbar_layouts_statuslayout || true
  patch_systemui_com_android_systemui_newstatusbar_layouts_transfermobilelayout || true
  patch_systemui_com_android_systemui_newstatusbar_layouts_transfermobilelayout_1 || true
  patch_systemui_com_android_systemui_newstatusbar_layouts_weatherlayout || true
  patch_systemui_com_android_systemui_newstatusbar_netspeed_networkspeedsingle || true
  patch_systemui_com_android_systemui_newstatusbar_policy_algorithmcentercamera || true
  patch_systemui_com_android_systemui_newstatusbar_policy_algorithmleftcamera || true
  patch_systemui_com_android_systemui_newstatusbar_policy_elementpositionalgorithm || true
  patch_systemui_com_android_systemui_newstatusbar_policy_islots || true
  patch_systemui_com_android_systemui_newstatusbar_policy_shake || true
  patch_systemui_com_android_systemui_newstatusbar_policy_shake_1 || true
  patch_systemui_com_android_systemui_newstatusbar_policy_shake_2 || true
  patch_systemui_com_android_systemui_newstatusbar_policy_shake_settingsobserver || true
  patch_systemui_com_android_systemui_newstatusbar_policy_shake_shakedetector || true
  patch_systemui_com_android_systemui_newstatusbar_policy_shake_shakedetector_onshakelistener || true
  patch_systemui_com_android_systemui_newstatusbar_policy_textutil || true
  patch_systemui_com_android_systemui_newstatusbar_sim_customsimicon || true
  patch_systemui_com_android_systemui_newstatusbar_sim_mobilegroup || true
  patch_systemui_com_android_systemui_newstatusbar_sim_mobiletypedrawable || true
  patch_systemui_com_android_systemui_newstatusbar_sim_mobiletypeimageview || true
  patch_systemui_com_android_systemui_newstatusbar_sim_simicon || true
  patch_systemui_com_android_systemui_newstatusbar_sim_simiconforvertical || true
  patch_systemui_com_android_systemui_newstatusbar_sim_simiconvertical || true
  patch_systemui_com_android_systemui_newstatusbar_sim_siminoutcustview || true
  patch_systemui_com_android_systemui_newstatusbar_sim_siminoutverticalview || true
  patch_systemui_com_android_systemui_newstatusbar_sim_siminoutview || true
  patch_systemui_com_android_systemui_newstatusbar_sim_simslotindexhelper || true
  patch_systemui_com_android_systemui_newstatusbar_sim_simtypecontainer || true
  patch_systemui_com_android_systemui_newstatusbar_sim_simtypecontainer_1 || true
  patch_systemui_com_android_systemui_newstatusbar_sim_simtypecontainer_2 || true
  patch_systemui_com_android_systemui_newstatusbar_sim_simtypeverticalview || true
  patch_systemui_com_android_systemui_newstatusbar_sim_simtypeview || true
  patch_systemui_com_android_systemui_newstatusbar_sim_simtypeviewimage || true
  patch_systemui_com_android_systemui_newstatusbar_thread_fixedthreadpool || true
  patch_systemui_com_android_systemui_newstatusbar_thread_fixedthreadpool_localthreadfactory || true
  patch_systemui_com_android_systemui_newstatusbar_thread_threadutils || true
  patch_systemui_com_android_systemui_newstatusbar_thread_threadutils_handlerholder || true
  patch_systemui_com_android_systemui_newstatusbar_util_textutil || true
  patch_systemui_com_android_systemui_newstatusbar_views_alphacolorview || true
  patch_systemui_com_android_systemui_newstatusbar_views_alphacolorview_1 || true
  patch_systemui_com_android_systemui_newstatusbar_views_alphavisiblecolorview || true
  patch_systemui_com_android_systemui_newstatusbar_views_animatorcolorview || true
  patch_systemui_com_android_systemui_newstatusbar_views_animatorvisiblecolorview || true
  patch_systemui_com_android_systemui_newstatusbar_views_colortextview || true
  patch_systemui_com_android_systemui_newstatusbar_views_colortextview_1 || true
  patch_systemui_com_android_systemui_newstatusbar_views_custsimicon || true
  patch_systemui_com_android_systemui_newstatusbar_views_custwifiview || true
  patch_systemui_com_android_systemui_newstatusbar_views_dateview || true
  patch_systemui_com_android_systemui_newstatusbar_views_dateview_1 || true
  patch_systemui_com_android_systemui_newstatusbar_views_dateview_1_1 || true
  patch_systemui_com_android_systemui_newstatusbar_views_dateview_1_2 || true
  patch_systemui_com_android_systemui_newstatusbar_views_dateview_2 || true
  patch_systemui_com_android_systemui_newstatusbar_views_dateview_3 || true
  patch_systemui_com_android_systemui_newstatusbar_views_fakeislandview || true
  patch_systemui_com_android_systemui_newstatusbar_views_headerdate || true
  patch_systemui_com_android_systemui_newstatusbar_views_inoutview || true
  patch_systemui_com_android_systemui_newstatusbar_views_modernstatusbarmobileview || true
  patch_systemui_com_android_systemui_newstatusbar_views_modernstatusbarwifiview || true
  patch_systemui_com_android_systemui_newstatusbar_views_notificationheaderdateview || true
  patch_systemui_com_android_systemui_newstatusbar_views_notificationheaderdateview_1 || true
  patch_systemui_com_android_systemui_newstatusbar_views_notificationheaderdateview_1_1 || true
  patch_systemui_com_android_systemui_newstatusbar_views_notificationheaderdateview_1_2 || true
  patch_systemui_com_android_systemui_newstatusbar_views_notificationheaderdateview_2 || true
  patch_systemui_com_android_systemui_newstatusbar_views_statusbariconview || true
  patch_systemui_com_android_systemui_newstatusbar_views_volteview || true
  patch_systemui_com_android_systemui_newstatusbar_views_vowifiview || true
  patch_systemui_com_android_systemui_newstatusbar_views_weatherview || true
  patch_systemui_com_android_systemui_newstatusbar_views_weatherview_1 || true
  patch_systemui_com_android_systemui_newstatusbar_views_weatherview_2 || true
  patch_systemui_com_android_systemui_newstatusbar_views_wifiinoutview || true
  patch_systemui_com_android_systemui_newstatusbar_views_wifiview || true
  patch_systemui_com_android_systemui_newstatusbar_views_ext_exticonalpha || true
  patch_systemui_com_android_systemui_newstatusbar_views_ext_exticonalphanew || true
  patch_systemui_com_android_systemui_newstatusbar_views_ext_exticonanimated || true
  patch_systemui_com_android_systemui_newstatusbar_views_ext_exticonmobileanimator || true
  patch_systemui_com_android_systemui_newstatusbar_views_ext_exttextview || true
  patch_systemui_com_android_systemui_newstatusbar_views_ext_exttextview_1 || true
  patch_systemui_com_android_systemui_newstatusbar_views_ext_exttextviewclock || true
  patch_systemui_com_android_systemui_plugins_controllerstorage || true
  patch_systemui_com_android_systemui_plugins_controllerstorage_controllerstoragekey || true
  patch_systemui_com_android_systemui_plugins_controllers_controllerext || true
  patch_systemui_com_android_systemui_plugins_controllers_controllerext_callback || true
  patch_systemui_com_android_systemui_plugins_controllers_controllerext_settingsobserver || true
  patch_systemui_com_android_systemui_plugins_controllers_controllerext_settingsobserver_keymap || true
  patch_systemui_com_android_systemui_plugins_controllers_controllerext_settingsobserver_observer || true
  patch_systemui_com_android_systemui_plugins_controllers_controllerext_settingsobserver_settingstype || true
  patch_systemui_com_android_systemui_plugins_controllers_controllerext_settingsobserver_onchangelistener || true
  patch_systemui_com_android_systemui_plugins_qs_qs || true
  patch_systemui_com_android_systemui_qs_miuinotificationheaderview || true
  patch_systemui_com_android_systemui_qs_miuiqsfragment || true
  patch_systemui_com_android_systemui_qs_miuiqsheaderview || true
  patch_systemui_com_android_systemui_qs_miuiquickqspanel || true
  patch_systemui_com_android_systemui_qs_miuitilelayout || true
  patch_systemui_com_android_systemui_qs_tilelayout || true
  patch_systemui_com_android_systemui_qs_pipeline_data_repository_miuidefaulttilesrepository || true
  patch_systemui_com_android_systemui_qs_tileimpl_miuiqsiconviewimpl || true
  patch_systemui_com_android_systemui_qs_tileimpl_qstileimpl || true
  patch_systemui_com_android_systemui_qs_tiles_synctile || true
  patch_systemui_com_android_systemui_shade_notificationpanelviewcontroller_touchhandler || true
  patch_systemui_com_android_systemui_statusbar_animatedimageview || true
  patch_systemui_com_android_systemui_statusbar_islandmonitor_realcontainerislandmonitor || true
  patch_systemui_com_android_systemui_statusbar_lockscreenshadetransitioncontroller || true
  patch_systemui_com_android_systemui_statusbar_statusbariconview || true
  patch_systemui_com_android_systemui_statusbar_notification_expandednotification || true
  patch_systemui_com_android_systemui_statusbar_notification_collection_coordinator_rowappearancecoordinator || true
  patch_systemui_com_android_systemui_statusbar_notification_collection_coordinator_rowappearancecoordinator_attach_2 || true
  patch_systemui_com_android_systemui_statusbar_notification_collection_coordinator_rowappearancecoordinator_attach_3 || true
  patch_systemui_com_android_systemui_statusbar_notification_policy_fakefocusnotifcontrollerimpl || true
  patch_systemui_com_android_systemui_statusbar_notification_policy_notificationfiltercontroller_companion || true
  patch_systemui_com_android_systemui_statusbar_notification_row_expandableview || true
  patch_systemui_com_android_systemui_statusbar_notification_row_notificationcontentview || true
  patch_systemui_com_android_systemui_statusbar_notification_row_notificationrowcontentbinderinjectorimpl || true
  patch_systemui_com_android_systemui_statusbar_notification_row_wrapper_notificationviewwrapper || true
  patch_systemui_com_android_systemui_statusbar_notification_utils_notifimageutil || true
  patch_systemui_com_android_systemui_statusbar_phone_centralsurfacesimpl || true
  patch_systemui_com_android_systemui_statusbar_phone_keyguardstatusbarview || true
  patch_systemui_com_android_systemui_statusbar_phone_miuicollapsedstatusbarfragment || true
  patch_systemui_com_android_systemui_statusbar_phone_miuicollapsedstatusbarfragment_2 || true
  patch_systemui_com_android_systemui_statusbar_phone_miuihomeprivacycontroller || true
  patch_systemui_com_android_systemui_statusbar_phone_miuiiconmanagerutils || true
  patch_systemui_com_android_systemui_statusbar_phone_miuikeyguardstatusbarview || true
  patch_systemui_com_android_systemui_statusbar_phone_miuiphonestatusbarpolicy || true
  patch_systemui_com_android_systemui_statusbar_phone_miuiphonestatusbarview || true
  patch_systemui_com_android_systemui_statusbar_phone_mymodifiedui_edgescreenservice || true
  patch_systemui_com_android_systemui_statusbar_phone_mymodifiedui_edgescreenservice_1 || true
  patch_systemui_com_android_systemui_statusbar_phone_mymodifiedui_edgewindowmanager || true
  patch_systemui_com_android_systemui_statusbar_phone_mymodifiedui_edgewindowmanager_1 || true
  patch_systemui_com_android_systemui_statusbar_phone_mymodifiedui_lightninganimationlayout || true
  patch_systemui_com_android_systemui_statusbar_phone_mymodifiedui_lightninganimationlayout_1 || true
  patch_systemui_com_android_systemui_statusbar_phone_mymodifiedui_lightninganimationlayout_2 || true
  patch_systemui_com_android_systemui_statusbar_phone_mymodifiedui_lightningbackground || true
  patch_systemui_com_android_systemui_statusbar_phone_notificationiconcontainer || true
  patch_systemui_com_android_systemui_statusbar_phone_refreshelitestatusbar || true
  patch_systemui_com_android_systemui_statusbar_phone_refreshelitestatusbar_1 || true
  patch_systemui_com_android_systemui_statusbar_phone_fragment_collapsedstatusbarfragment || true
  patch_systemui_com_android_systemui_statusbar_phone_ui_darkiconmanager || true
  patch_systemui_com_android_systemui_statusbar_phone_ui_iconmanager || true
  patch_systemui_com_android_systemui_statusbar_pipeline_mobile_ui_binder_miuimobileiconbinder || true
  patch_systemui_com_android_systemui_statusbar_pipeline_mobile_ui_view_modernstatusbarmobileview || true
  patch_systemui_com_android_systemui_statusbar_pipeline_wifi_ui_view_modernstatusbarwifiview || true
  patch_systemui_com_android_systemui_statusbar_policy_batterybar || true
  patch_systemui_com_android_systemui_statusbar_policy_batterybar_1 || true
  patch_systemui_com_android_systemui_statusbar_policy_batterybar_settingsobserver || true
  patch_systemui_com_android_systemui_statusbar_policy_batterybarcontroller || true
  patch_systemui_com_android_systemui_statusbar_policy_batterybarcontroller_1 || true
  patch_systemui_com_android_systemui_statusbar_policy_batterybarcontroller_2 || true
  patch_systemui_com_android_systemui_statusbar_policy_batterybarcontroller_settingsobserver || true
  patch_systemui_com_android_systemui_statusbar_policy_controllerexpandheight || true
  patch_systemui_com_android_systemui_statusbar_policy_controllerexpandheight_1 || true
  patch_systemui_com_android_systemui_statusbar_policy_controllerexpandheight_2 || true
  patch_systemui_com_android_systemui_statusbar_policy_controllerexpandheight_callback || true
  patch_systemui_com_android_systemui_statusbar_policy_defaultfirstsettings || true
  patch_systemui_com_android_systemui_statusbar_policy_mykeyguardstatecontroller || true
  patch_systemui_com_android_systemui_statusbar_policy_mykeyguardstatecontroller_1 || true
  patch_systemui_com_android_systemui_statusbar_policy_mykeyguardstatecontroller_callback || true
  patch_systemui_com_android_systemui_statusbar_policy_networkspeedcontroller || true
  patch_systemui_com_android_systemui_statusbar_policy_networkspeedcontroller_1 || true
  patch_systemui_com_android_systemui_statusbar_policy_networkspeedcontroller_2 || true
  patch_systemui_com_android_systemui_statusbar_policy_networkspeedcontroller_3 || true
  patch_systemui_com_android_systemui_statusbar_policy_networkspeedcontroller_3_1 || true
  patch_systemui_com_android_systemui_statusbar_policy_networkspeedcontroller_4 || true
  patch_systemui_com_android_systemui_statusbar_policy_networkspeedcontroller_workhandler || true
  patch_systemui_com_android_systemui_statusbar_policy_notificationiconobserver || true
  patch_systemui_com_android_systemui_statusbar_policy_prefs || true
  patch_systemui_com_android_systemui_statusbar_privacy_miuiprivacycontrollerimpl || true
  patch_systemui_com_android_systemui_statusbar_privacy_miuiprivacyflaresdotcontroller || true
  patch_systemui_com_android_systemui_statusbar_views_miuibatterymetericonview || true
  patch_systemui_com_android_systemui_statusbar_views_miuibatterymeterview || true
  patch_systemui_com_android_systemui_statusbar_views_miuiclock || true
  patch_systemui_com_android_systemui_statusbar_views_miuihollowbatterymetericonview || true
  patch_systemui_com_android_systemui_statusbar_views_miuinotificationstatuscontainer || true
  patch_systemui_com_android_systemui_statusbar_views_miuistatusbatterycontainer || true
  patch_systemui_com_android_systemui_statusbar_views_miuistatusiconcontainer || true
  patch_systemui_com_android_systemui_statusbar_views_miuistatusiconcontainer_nfcsettingobserver || true
  patch_systemui_com_android_systemui_statusbar_views_mobilesignalanimatorcontainer || true
  patch_systemui_com_android_systemui_statusbar_views_mobilesignalanimatorimageview || true
  patch_systemui_com_android_systemui_statusbar_views_mobilesignalanimatortextview || true
  patch_systemui_com_android_systemui_statusbar_views_mobilesignalanimatorview || true
  patch_systemui_com_android_systemui_statusbar_views_networkspeedview || true
  patch_systemui_com_android_systemui_statusbar_views_networkspeedview_1 || true
  patch_systemui_com_android_systemui_tuner_tunerservice || true
  patch_systemui_com_android_systemui_tuner_tunerserviceimpl || true
  patch_systemui_com_android_wm_shell_multitasking_miuifreeform_miuibubbles_settings_miuibubblesettings || true
  patch_systemui_com_android_wm_shell_multitasking_stubs_infinitymode_miuiinfinitymodestatus || true
  patch_systemui_com_justas_animationweather_cloudanimation || true
  patch_systemui_com_justas_animationweather_drippingdrops || true
  patch_systemui_com_justas_animationweather_drippingdrops_1 || true
  patch_systemui_com_justas_animationweather_drippingdrops_2 || true
  patch_systemui_com_justas_animationweather_lightninanimation || true
  patch_systemui_com_justas_animationweather_lightninanimation_1 || true
  patch_systemui_com_justas_animationweather_moonanimation || true
  patch_systemui_com_justas_animationweather_moonanimation_1 || true
  patch_systemui_com_justas_animationweather_moonanimation_2 || true
  patch_systemui_com_justas_animationweather_rainanimation || true
  patch_systemui_com_justas_animationweather_rainanimation_1 || true
  patch_systemui_com_justas_animationweather_rainanimation_2 || true
  patch_systemui_com_justas_animationweather_snowanimation || true
  patch_systemui_com_justas_animationweather_snowanimation_1 || true
  patch_systemui_com_justas_animationweather_snowanimation_2 || true
  patch_systemui_com_justas_animationweather_sunanimation || true
  patch_systemui_com_justas_animationweather_weather || true
  patch_systemui_com_justas_animationweather_weather_1 || true
  patch_systemui_com_justas_animationweather_weather_2 || true
  patch_systemui_com_justas_animationweather_weather_queryhandler || true
  patch_systemui_com_miui_charge_chargeutils || true
  patch_systemui_com_miui_charge_miuichargecontroller || true
  patch_systemui_com_miui_charge_miuichargemanager || true
  patch_systemui_com_miui_charge_container_miuichargeanimationview || true
  patch_systemui_com_miui_charge_container_miuichargecontainerview || true
  patch_systemui_com_miui_charge_container_miuichargeiconview || true
  patch_systemui_com_miui_charge_container_miuichargelogoview || true
  patch_systemui_com_miui_charge_view_miuichargepercentcountview || true
  patch_systemui_com_miui_charge_view_numberdrawview || true
  patch_systemui_com_miui_charge_wave_wavechargeview || true
  patch_systemui_com_miui_charge_wave_waveview || true
  patch_systemui_com_miui_charge_wave_waveview_1 || true
  patch_systemui_com_miui_charge_wave_waveview_2 || true
  patch_systemui_com_miui_charge_wave_waveview_3 || true
  patch_systemui_com_miui_charge_wave_waveview_4 || true
  patch_systemui_com_miui_charge_wave_waveview_bubble || true
  patch_systemui_com_miui_keyguard_utils_miuikeyguardutils || true
  patch_systemui_com_miui_maml_util_mobiledatautils || true
  patch_systemui_com_miui_systemui_legacydependency || true
  patch_systemui_com_miui_systemui_settingsmanager || true
  patch_systemui_com_miui_systemui_settingsmanager_99 || true
  patch_systemui_com_miui_systemui_common_ui_data_repository_miuiconfigurationrepositoryimpl || true
  patch_systemui_com_miui_systemui_common_ui_data_repository_miuiconfigurationrepositoryimpl_isnightmode_1_listener_1 || true
  patch_systemui_com_miui_systemui_controlcenter_container_controlcentereventhandlerimpl || true
  patch_systemui_com_miui_systemui_controlcenter_data_repository_controlcentersettingsrepositoryimpl || true
  patch_systemui_com_miui_systemui_controlcenter_data_repository_controlcentersettingsrepositoryimpl_controlpanelswitchside_1 || true
  patch_systemui_com_miui_systemui_controlcenter_data_repository_controlcentersettingsrepositoryimpl_special_inlined_map_1 || true
  patch_systemui_com_miui_systemui_controlcenter_data_repository_controlcentersettingsrepositoryimpl_special_inlined_map_5_2 || true
  patch_systemui_com_miui_systemui_controlcenter_data_repository_controlcentersettingsrepositoryimpl_special_inlined_map_5_2_1 || true
  patch_systemui_com_miui_systemui_controller_weathercontroller || true
  patch_systemui_com_miui_systemui_controller_weathercontroller_1 || true
  patch_systemui_com_miui_systemui_controller_weathercontroller_2 || true
  patch_systemui_com_miui_systemui_controller_weathercontroller_3 || true
  patch_systemui_com_miui_systemui_controller_weathercontroller_queryhandler || true
  patch_systemui_com_miui_systemui_controller_weathercontroller_queryhandler_catchingworkerhandler || true
  patch_systemui_com_miui_systemui_controller_weathercontroller_weatherchangelistener || true
  patch_systemui_com_miui_systemui_controller_weathercontroller_weatherinfo || true
  patch_systemui_com_miui_systemui_modulesettings_keyguardsettings || true
  patch_systemui_com_miui_systemui_notification_notificationsettingshelper || true
  patch_systemui_com_miui_systemui_shade_miuishadeinteractor_special_inlined_map_1_2 || true
  patch_systemui_com_miui_systemui_shade_blur_shadeblurcontroller || true
  patch_systemui_com_miui_systemui_statusbar_views_mobiletypedrawable || true
  patch_systemui_com_miui_systemui_util_commonutil || true
  patch_systemui_com_miui_utils_packageutils || true
  patch_systemui_com_miui_utils_configs_miuiconfigs || true
  patch_systemui_miuix_springback_view_springbacklayout || true
  patch_systemui_com_android_systemui_statusbar_phone_refreshmezostatusbar_1 || true
  patch_systemui_com_android_systemui_statusbar_phone_refreshmezostatusbar || true
}

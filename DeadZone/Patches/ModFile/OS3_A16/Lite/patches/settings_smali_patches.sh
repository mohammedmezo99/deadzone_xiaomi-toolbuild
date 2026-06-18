#!/usr/bin/env bash
set -u

apply_lite_settings_smali_patches() {
  local decoded="$1"
  lite_log_info "Applying Lite Settings smali class injections"
  patch_lite_settings_androidx_preference_xmiuicheckboxpreference "$decoded"
  patch_lite_settings_androidx_preference_xmiuipreferencehelper "$decoded"
  patch_lite_settings_com_android_settings_mezodevelopmentdetails "$decoded"
  patch_lite_settings_com_android_settings_mymezosettings "$decoded"
  patch_lite_settings_mobx_settings_overlay_icon_themeutils_externalsyntheticlambda0 "$decoded"
  patch_lite_settings_mobx_settings_overlay_icon_themeutils_externalsyntheticlambda1 "$decoded"
  patch_lite_settings_mobx_settings_overlay_icon_themeutils_externalsyntheticlambda2 "$decoded"
  patch_lite_settings_mobx_settings_overlay_icon_themeutils "$decoded"
  patch_lite_settings_mobx_settings_overlay_icon_battery_batteryicons_adapter_100000000 "$decoded"
  patch_lite_settings_mobx_settings_overlay_icon_battery_batteryicons_adapter_viewholder "$decoded"
  patch_lite_settings_mobx_settings_overlay_icon_battery_batteryicons_adapter "$decoded"
  patch_lite_settings_mobx_settings_overlay_icon_battery_batteryicons_function "$decoded"
  patch_lite_settings_mobx_settings_overlay_icon_battery_batteryicons_predicate "$decoded"
  patch_lite_settings_mobx_settings_overlay_icon_battery_batteryicons "$decoded"
  patch_lite_settings_mobx_settings_overlay_icon_fod_fodicons_adapter_100000000 "$decoded"
  patch_lite_settings_mobx_settings_overlay_icon_fod_fodicons_adapter_viewholder "$decoded"
  patch_lite_settings_mobx_settings_overlay_icon_fod_fodicons_adapter "$decoded"
  patch_lite_settings_mobx_settings_overlay_icon_fod_fodicons_function "$decoded"
  patch_lite_settings_mobx_settings_overlay_icon_fod_fodicons_predicate "$decoded"
  patch_lite_settings_mobx_settings_overlay_icon_fod_fodicons "$decoded"
  patch_lite_settings_mobx_settings_overlay_icon_navigation_navigationicons_adapter_100000000 "$decoded"
  patch_lite_settings_mobx_settings_overlay_icon_navigation_navigationicons_adapter_viewholder "$decoded"
  patch_lite_settings_mobx_settings_overlay_icon_navigation_navigationicons_adapter "$decoded"
  patch_lite_settings_mobx_settings_overlay_icon_navigation_navigationicons_function "$decoded"
  patch_lite_settings_mobx_settings_overlay_icon_navigation_navigationicons_predicate "$decoded"
  patch_lite_settings_mobx_settings_overlay_icon_navigation_navigationicons "$decoded"
  patch_lite_settings_mobx_settings_overlay_icon_signal_signalicons_adapter_100000000 "$decoded"
  patch_lite_settings_mobx_settings_overlay_icon_signal_signalicons_adapter_viewholder "$decoded"
  patch_lite_settings_mobx_settings_overlay_icon_signal_signalicons_adapter "$decoded"
  patch_lite_settings_mobx_settings_overlay_icon_signal_signalicons_function "$decoded"
  patch_lite_settings_mobx_settings_overlay_icon_signal_signalicons_predicate "$decoded"
  patch_lite_settings_mobx_settings_overlay_icon_signal_signalicons "$decoded"
  patch_lite_settings_mobx_settings_overlay_icon_volte_volteicons_adapter_100000000 "$decoded"
  patch_lite_settings_mobx_settings_overlay_icon_volte_volteicons_adapter_viewholder "$decoded"
  patch_lite_settings_mobx_settings_overlay_icon_volte_volteicons_adapter "$decoded"
  patch_lite_settings_mobx_settings_overlay_icon_volte_volteicons_function "$decoded"
  patch_lite_settings_mobx_settings_overlay_icon_volte_volteicons_predicate "$decoded"
  patch_lite_settings_mobx_settings_overlay_icon_volte_volteicons "$decoded"
  patch_lite_settings_mobx_settings_overlay_icon_vowifi_vowifiicons_adapter_100000000 "$decoded"
  patch_lite_settings_mobx_settings_overlay_icon_vowifi_vowifiicons_adapter_viewholder "$decoded"
  patch_lite_settings_mobx_settings_overlay_icon_vowifi_vowifiicons_adapter "$decoded"
  patch_lite_settings_mobx_settings_overlay_icon_vowifi_vowifiicons_function "$decoded"
  patch_lite_settings_mobx_settings_overlay_icon_vowifi_vowifiicons_predicate "$decoded"
  patch_lite_settings_mobx_settings_overlay_icon_vowifi_vowifiicons "$decoded"
  patch_lite_settings_mobx_settings_overlay_icon_wifi_wifiicons_adapter_100000000 "$decoded"
  patch_lite_settings_mobx_settings_overlay_icon_wifi_wifiicons_adapter_viewholder "$decoded"
  patch_lite_settings_mobx_settings_overlay_icon_wifi_wifiicons_adapter "$decoded"
  patch_lite_settings_mobx_settings_overlay_icon_wifi_wifiicons_function "$decoded"
  patch_lite_settings_mobx_settings_overlay_icon_wifi_wifiicons_predicate "$decoded"
  patch_lite_settings_mobx_settings_overlay_icon_wifi_wifiicons "$decoded"
}

patch_lite_settings_androidx_preference_xmiuicheckboxpreference() {
  local decoded="$1"
  inject_added_smali_class "Settings" "$decoded" "androidx/preference/XMiuiCheckBoxPreference.smali" "${LITE_PACK_DIR}/patches/generated_smali/Settings/androidx/preference/XMiuiCheckBoxPreference.smali" "patch_lite_settings_androidx_preference_xmiuicheckboxpreference"
}

patch_lite_settings_androidx_preference_xmiuipreferencehelper() {
  local decoded="$1"
  inject_added_smali_class "Settings" "$decoded" "androidx/preference/XMiuiPreferenceHelper.smali" "${LITE_PACK_DIR}/patches/generated_smali/Settings/androidx/preference/XMiuiPreferenceHelper.smali" "patch_lite_settings_androidx_preference_xmiuipreferencehelper"
}

patch_lite_settings_com_android_settings_mezodevelopmentdetails() {
  local decoded="$1"
  inject_added_smali_class "Settings" "$decoded" "com/android/settings/MezoDevelopmentDetails.smali" "${LITE_PACK_DIR}/patches/generated_smali/Settings/com/android/settings/MezoDevelopmentDetails.smali" "patch_lite_settings_com_android_settings_mezodevelopmentdetails"
}

patch_lite_settings_com_android_settings_mymezosettings() {
  local decoded="$1"
  inject_added_smali_class "Settings" "$decoded" "com/android/settings/MyMezoSettings.smali" "${LITE_PACK_DIR}/patches/generated_smali/Settings/com/android/settings/MyMezoSettings.smali" "patch_lite_settings_com_android_settings_mymezosettings"
}

patch_lite_settings_mobx_settings_overlay_icon_themeutils_externalsyntheticlambda0() {
  local decoded="$1"
  inject_added_smali_class "Settings" "$decoded" "mobx/settings/overlay/icon/ThemeUtils$$ExternalSyntheticLambda0.smali" "${LITE_PACK_DIR}/patches/generated_smali/Settings/mobx/settings/overlay/icon/ThemeUtils$$ExternalSyntheticLambda0.smali" "patch_lite_settings_mobx_settings_overlay_icon_themeutils_externalsyntheticlambda0"
}

patch_lite_settings_mobx_settings_overlay_icon_themeutils_externalsyntheticlambda1() {
  local decoded="$1"
  inject_added_smali_class "Settings" "$decoded" "mobx/settings/overlay/icon/ThemeUtils$$ExternalSyntheticLambda1.smali" "${LITE_PACK_DIR}/patches/generated_smali/Settings/mobx/settings/overlay/icon/ThemeUtils$$ExternalSyntheticLambda1.smali" "patch_lite_settings_mobx_settings_overlay_icon_themeutils_externalsyntheticlambda1"
}

patch_lite_settings_mobx_settings_overlay_icon_themeutils_externalsyntheticlambda2() {
  local decoded="$1"
  inject_added_smali_class "Settings" "$decoded" "mobx/settings/overlay/icon/ThemeUtils$$ExternalSyntheticLambda2.smali" "${LITE_PACK_DIR}/patches/generated_smali/Settings/mobx/settings/overlay/icon/ThemeUtils$$ExternalSyntheticLambda2.smali" "patch_lite_settings_mobx_settings_overlay_icon_themeutils_externalsyntheticlambda2"
}

patch_lite_settings_mobx_settings_overlay_icon_themeutils() {
  local decoded="$1"
  inject_added_smali_class "Settings" "$decoded" "mobx/settings/overlay/icon/ThemeUtils.smali" "${LITE_PACK_DIR}/patches/generated_smali/Settings/mobx/settings/overlay/icon/ThemeUtils.smali" "patch_lite_settings_mobx_settings_overlay_icon_themeutils"
}

patch_lite_settings_mobx_settings_overlay_icon_battery_batteryicons_adapter_100000000() {
  local decoded="$1"
  inject_added_smali_class "Settings" "$decoded" "mobx/settings/overlay/icon/battery/BatteryIcons$Adapter$100000000.smali" "${LITE_PACK_DIR}/patches/generated_smali/Settings/mobx/settings/overlay/icon/battery/BatteryIcons$Adapter$100000000.smali" "patch_lite_settings_mobx_settings_overlay_icon_battery_batteryicons_adapter_100000000"
}

patch_lite_settings_mobx_settings_overlay_icon_battery_batteryicons_adapter_viewholder() {
  local decoded="$1"
  inject_added_smali_class "Settings" "$decoded" "mobx/settings/overlay/icon/battery/BatteryIcons$Adapter$ViewHolder.smali" "${LITE_PACK_DIR}/patches/generated_smali/Settings/mobx/settings/overlay/icon/battery/BatteryIcons$Adapter$ViewHolder.smali" "patch_lite_settings_mobx_settings_overlay_icon_battery_batteryicons_adapter_viewholder"
}

patch_lite_settings_mobx_settings_overlay_icon_battery_batteryicons_adapter() {
  local decoded="$1"
  inject_added_smali_class "Settings" "$decoded" "mobx/settings/overlay/icon/battery/BatteryIcons$Adapter.smali" "${LITE_PACK_DIR}/patches/generated_smali/Settings/mobx/settings/overlay/icon/battery/BatteryIcons$Adapter.smali" "patch_lite_settings_mobx_settings_overlay_icon_battery_batteryicons_adapter"
}

patch_lite_settings_mobx_settings_overlay_icon_battery_batteryicons_function() {
  local decoded="$1"
  inject_added_smali_class "Settings" "$decoded" "mobx/settings/overlay/icon/battery/BatteryIcons$Function.smali" "${LITE_PACK_DIR}/patches/generated_smali/Settings/mobx/settings/overlay/icon/battery/BatteryIcons$Function.smali" "patch_lite_settings_mobx_settings_overlay_icon_battery_batteryicons_function"
}

patch_lite_settings_mobx_settings_overlay_icon_battery_batteryicons_predicate() {
  local decoded="$1"
  inject_added_smali_class "Settings" "$decoded" "mobx/settings/overlay/icon/battery/BatteryIcons$Predicate.smali" "${LITE_PACK_DIR}/patches/generated_smali/Settings/mobx/settings/overlay/icon/battery/BatteryIcons$Predicate.smali" "patch_lite_settings_mobx_settings_overlay_icon_battery_batteryicons_predicate"
}

patch_lite_settings_mobx_settings_overlay_icon_battery_batteryicons() {
  local decoded="$1"
  inject_added_smali_class "Settings" "$decoded" "mobx/settings/overlay/icon/battery/BatteryIcons.smali" "${LITE_PACK_DIR}/patches/generated_smali/Settings/mobx/settings/overlay/icon/battery/BatteryIcons.smali" "patch_lite_settings_mobx_settings_overlay_icon_battery_batteryicons"
}

patch_lite_settings_mobx_settings_overlay_icon_fod_fodicons_adapter_100000000() {
  local decoded="$1"
  inject_added_smali_class "Settings" "$decoded" "mobx/settings/overlay/icon/fod/fodIcons$Adapter$100000000.smali" "${LITE_PACK_DIR}/patches/generated_smali/Settings/mobx/settings/overlay/icon/fod/fodIcons$Adapter$100000000.smali" "patch_lite_settings_mobx_settings_overlay_icon_fod_fodicons_adapter_100000000"
}

patch_lite_settings_mobx_settings_overlay_icon_fod_fodicons_adapter_viewholder() {
  local decoded="$1"
  inject_added_smali_class "Settings" "$decoded" "mobx/settings/overlay/icon/fod/fodIcons$Adapter$ViewHolder.smali" "${LITE_PACK_DIR}/patches/generated_smali/Settings/mobx/settings/overlay/icon/fod/fodIcons$Adapter$ViewHolder.smali" "patch_lite_settings_mobx_settings_overlay_icon_fod_fodicons_adapter_viewholder"
}

patch_lite_settings_mobx_settings_overlay_icon_fod_fodicons_adapter() {
  local decoded="$1"
  inject_added_smali_class "Settings" "$decoded" "mobx/settings/overlay/icon/fod/fodIcons$Adapter.smali" "${LITE_PACK_DIR}/patches/generated_smali/Settings/mobx/settings/overlay/icon/fod/fodIcons$Adapter.smali" "patch_lite_settings_mobx_settings_overlay_icon_fod_fodicons_adapter"
}

patch_lite_settings_mobx_settings_overlay_icon_fod_fodicons_function() {
  local decoded="$1"
  inject_added_smali_class "Settings" "$decoded" "mobx/settings/overlay/icon/fod/fodIcons$Function.smali" "${LITE_PACK_DIR}/patches/generated_smali/Settings/mobx/settings/overlay/icon/fod/fodIcons$Function.smali" "patch_lite_settings_mobx_settings_overlay_icon_fod_fodicons_function"
}

patch_lite_settings_mobx_settings_overlay_icon_fod_fodicons_predicate() {
  local decoded="$1"
  inject_added_smali_class "Settings" "$decoded" "mobx/settings/overlay/icon/fod/fodIcons$Predicate.smali" "${LITE_PACK_DIR}/patches/generated_smali/Settings/mobx/settings/overlay/icon/fod/fodIcons$Predicate.smali" "patch_lite_settings_mobx_settings_overlay_icon_fod_fodicons_predicate"
}

patch_lite_settings_mobx_settings_overlay_icon_fod_fodicons() {
  local decoded="$1"
  inject_added_smali_class "Settings" "$decoded" "mobx/settings/overlay/icon/fod/fodIcons.smali" "${LITE_PACK_DIR}/patches/generated_smali/Settings/mobx/settings/overlay/icon/fod/fodIcons.smali" "patch_lite_settings_mobx_settings_overlay_icon_fod_fodicons"
}

patch_lite_settings_mobx_settings_overlay_icon_navigation_navigationicons_adapter_100000000() {
  local decoded="$1"
  inject_added_smali_class "Settings" "$decoded" "mobx/settings/overlay/icon/navigation/NavigationIcons$Adapter$100000000.smali" "${LITE_PACK_DIR}/patches/generated_smali/Settings/mobx/settings/overlay/icon/navigation/NavigationIcons$Adapter$100000000.smali" "patch_lite_settings_mobx_settings_overlay_icon_navigation_navigationicons_adapter_100000000"
}

patch_lite_settings_mobx_settings_overlay_icon_navigation_navigationicons_adapter_viewholder() {
  local decoded="$1"
  inject_added_smali_class "Settings" "$decoded" "mobx/settings/overlay/icon/navigation/NavigationIcons$Adapter$ViewHolder.smali" "${LITE_PACK_DIR}/patches/generated_smali/Settings/mobx/settings/overlay/icon/navigation/NavigationIcons$Adapter$ViewHolder.smali" "patch_lite_settings_mobx_settings_overlay_icon_navigation_navigationicons_adapter_viewholder"
}

patch_lite_settings_mobx_settings_overlay_icon_navigation_navigationicons_adapter() {
  local decoded="$1"
  inject_added_smali_class "Settings" "$decoded" "mobx/settings/overlay/icon/navigation/NavigationIcons$Adapter.smali" "${LITE_PACK_DIR}/patches/generated_smali/Settings/mobx/settings/overlay/icon/navigation/NavigationIcons$Adapter.smali" "patch_lite_settings_mobx_settings_overlay_icon_navigation_navigationicons_adapter"
}

patch_lite_settings_mobx_settings_overlay_icon_navigation_navigationicons_function() {
  local decoded="$1"
  inject_added_smali_class "Settings" "$decoded" "mobx/settings/overlay/icon/navigation/NavigationIcons$Function.smali" "${LITE_PACK_DIR}/patches/generated_smali/Settings/mobx/settings/overlay/icon/navigation/NavigationIcons$Function.smali" "patch_lite_settings_mobx_settings_overlay_icon_navigation_navigationicons_function"
}

patch_lite_settings_mobx_settings_overlay_icon_navigation_navigationicons_predicate() {
  local decoded="$1"
  inject_added_smali_class "Settings" "$decoded" "mobx/settings/overlay/icon/navigation/NavigationIcons$Predicate.smali" "${LITE_PACK_DIR}/patches/generated_smali/Settings/mobx/settings/overlay/icon/navigation/NavigationIcons$Predicate.smali" "patch_lite_settings_mobx_settings_overlay_icon_navigation_navigationicons_predicate"
}

patch_lite_settings_mobx_settings_overlay_icon_navigation_navigationicons() {
  local decoded="$1"
  inject_added_smali_class "Settings" "$decoded" "mobx/settings/overlay/icon/navigation/NavigationIcons.smali" "${LITE_PACK_DIR}/patches/generated_smali/Settings/mobx/settings/overlay/icon/navigation/NavigationIcons.smali" "patch_lite_settings_mobx_settings_overlay_icon_navigation_navigationicons"
}

patch_lite_settings_mobx_settings_overlay_icon_signal_signalicons_adapter_100000000() {
  local decoded="$1"
  inject_added_smali_class "Settings" "$decoded" "mobx/settings/overlay/icon/signal/SignalIcons$Adapter$100000000.smali" "${LITE_PACK_DIR}/patches/generated_smali/Settings/mobx/settings/overlay/icon/signal/SignalIcons$Adapter$100000000.smali" "patch_lite_settings_mobx_settings_overlay_icon_signal_signalicons_adapter_100000000"
}

patch_lite_settings_mobx_settings_overlay_icon_signal_signalicons_adapter_viewholder() {
  local decoded="$1"
  inject_added_smali_class "Settings" "$decoded" "mobx/settings/overlay/icon/signal/SignalIcons$Adapter$ViewHolder.smali" "${LITE_PACK_DIR}/patches/generated_smali/Settings/mobx/settings/overlay/icon/signal/SignalIcons$Adapter$ViewHolder.smali" "patch_lite_settings_mobx_settings_overlay_icon_signal_signalicons_adapter_viewholder"
}

patch_lite_settings_mobx_settings_overlay_icon_signal_signalicons_adapter() {
  local decoded="$1"
  inject_added_smali_class "Settings" "$decoded" "mobx/settings/overlay/icon/signal/SignalIcons$Adapter.smali" "${LITE_PACK_DIR}/patches/generated_smali/Settings/mobx/settings/overlay/icon/signal/SignalIcons$Adapter.smali" "patch_lite_settings_mobx_settings_overlay_icon_signal_signalicons_adapter"
}

patch_lite_settings_mobx_settings_overlay_icon_signal_signalicons_function() {
  local decoded="$1"
  inject_added_smali_class "Settings" "$decoded" "mobx/settings/overlay/icon/signal/SignalIcons$Function.smali" "${LITE_PACK_DIR}/patches/generated_smali/Settings/mobx/settings/overlay/icon/signal/SignalIcons$Function.smali" "patch_lite_settings_mobx_settings_overlay_icon_signal_signalicons_function"
}

patch_lite_settings_mobx_settings_overlay_icon_signal_signalicons_predicate() {
  local decoded="$1"
  inject_added_smali_class "Settings" "$decoded" "mobx/settings/overlay/icon/signal/SignalIcons$Predicate.smali" "${LITE_PACK_DIR}/patches/generated_smali/Settings/mobx/settings/overlay/icon/signal/SignalIcons$Predicate.smali" "patch_lite_settings_mobx_settings_overlay_icon_signal_signalicons_predicate"
}

patch_lite_settings_mobx_settings_overlay_icon_signal_signalicons() {
  local decoded="$1"
  inject_added_smali_class "Settings" "$decoded" "mobx/settings/overlay/icon/signal/SignalIcons.smali" "${LITE_PACK_DIR}/patches/generated_smali/Settings/mobx/settings/overlay/icon/signal/SignalIcons.smali" "patch_lite_settings_mobx_settings_overlay_icon_signal_signalicons"
}

patch_lite_settings_mobx_settings_overlay_icon_volte_volteicons_adapter_100000000() {
  local decoded="$1"
  inject_added_smali_class "Settings" "$decoded" "mobx/settings/overlay/icon/volte/VolteIcons$Adapter$100000000.smali" "${LITE_PACK_DIR}/patches/generated_smali/Settings/mobx/settings/overlay/icon/volte/VolteIcons$Adapter$100000000.smali" "patch_lite_settings_mobx_settings_overlay_icon_volte_volteicons_adapter_100000000"
}

patch_lite_settings_mobx_settings_overlay_icon_volte_volteicons_adapter_viewholder() {
  local decoded="$1"
  inject_added_smali_class "Settings" "$decoded" "mobx/settings/overlay/icon/volte/VolteIcons$Adapter$ViewHolder.smali" "${LITE_PACK_DIR}/patches/generated_smali/Settings/mobx/settings/overlay/icon/volte/VolteIcons$Adapter$ViewHolder.smali" "patch_lite_settings_mobx_settings_overlay_icon_volte_volteicons_adapter_viewholder"
}

patch_lite_settings_mobx_settings_overlay_icon_volte_volteicons_adapter() {
  local decoded="$1"
  inject_added_smali_class "Settings" "$decoded" "mobx/settings/overlay/icon/volte/VolteIcons$Adapter.smali" "${LITE_PACK_DIR}/patches/generated_smali/Settings/mobx/settings/overlay/icon/volte/VolteIcons$Adapter.smali" "patch_lite_settings_mobx_settings_overlay_icon_volte_volteicons_adapter"
}

patch_lite_settings_mobx_settings_overlay_icon_volte_volteicons_function() {
  local decoded="$1"
  inject_added_smali_class "Settings" "$decoded" "mobx/settings/overlay/icon/volte/VolteIcons$Function.smali" "${LITE_PACK_DIR}/patches/generated_smali/Settings/mobx/settings/overlay/icon/volte/VolteIcons$Function.smali" "patch_lite_settings_mobx_settings_overlay_icon_volte_volteicons_function"
}

patch_lite_settings_mobx_settings_overlay_icon_volte_volteicons_predicate() {
  local decoded="$1"
  inject_added_smali_class "Settings" "$decoded" "mobx/settings/overlay/icon/volte/VolteIcons$Predicate.smali" "${LITE_PACK_DIR}/patches/generated_smali/Settings/mobx/settings/overlay/icon/volte/VolteIcons$Predicate.smali" "patch_lite_settings_mobx_settings_overlay_icon_volte_volteicons_predicate"
}

patch_lite_settings_mobx_settings_overlay_icon_volte_volteicons() {
  local decoded="$1"
  inject_added_smali_class "Settings" "$decoded" "mobx/settings/overlay/icon/volte/VolteIcons.smali" "${LITE_PACK_DIR}/patches/generated_smali/Settings/mobx/settings/overlay/icon/volte/VolteIcons.smali" "patch_lite_settings_mobx_settings_overlay_icon_volte_volteicons"
}

patch_lite_settings_mobx_settings_overlay_icon_vowifi_vowifiicons_adapter_100000000() {
  local decoded="$1"
  inject_added_smali_class "Settings" "$decoded" "mobx/settings/overlay/icon/vowifi/VowifiIcons$Adapter$100000000.smali" "${LITE_PACK_DIR}/patches/generated_smali/Settings/mobx/settings/overlay/icon/vowifi/VowifiIcons$Adapter$100000000.smali" "patch_lite_settings_mobx_settings_overlay_icon_vowifi_vowifiicons_adapter_100000000"
}

patch_lite_settings_mobx_settings_overlay_icon_vowifi_vowifiicons_adapter_viewholder() {
  local decoded="$1"
  inject_added_smali_class "Settings" "$decoded" "mobx/settings/overlay/icon/vowifi/VowifiIcons$Adapter$ViewHolder.smali" "${LITE_PACK_DIR}/patches/generated_smali/Settings/mobx/settings/overlay/icon/vowifi/VowifiIcons$Adapter$ViewHolder.smali" "patch_lite_settings_mobx_settings_overlay_icon_vowifi_vowifiicons_adapter_viewholder"
}

patch_lite_settings_mobx_settings_overlay_icon_vowifi_vowifiicons_adapter() {
  local decoded="$1"
  inject_added_smali_class "Settings" "$decoded" "mobx/settings/overlay/icon/vowifi/VowifiIcons$Adapter.smali" "${LITE_PACK_DIR}/patches/generated_smali/Settings/mobx/settings/overlay/icon/vowifi/VowifiIcons$Adapter.smali" "patch_lite_settings_mobx_settings_overlay_icon_vowifi_vowifiicons_adapter"
}

patch_lite_settings_mobx_settings_overlay_icon_vowifi_vowifiicons_function() {
  local decoded="$1"
  inject_added_smali_class "Settings" "$decoded" "mobx/settings/overlay/icon/vowifi/VowifiIcons$Function.smali" "${LITE_PACK_DIR}/patches/generated_smali/Settings/mobx/settings/overlay/icon/vowifi/VowifiIcons$Function.smali" "patch_lite_settings_mobx_settings_overlay_icon_vowifi_vowifiicons_function"
}

patch_lite_settings_mobx_settings_overlay_icon_vowifi_vowifiicons_predicate() {
  local decoded="$1"
  inject_added_smali_class "Settings" "$decoded" "mobx/settings/overlay/icon/vowifi/VowifiIcons$Predicate.smali" "${LITE_PACK_DIR}/patches/generated_smali/Settings/mobx/settings/overlay/icon/vowifi/VowifiIcons$Predicate.smali" "patch_lite_settings_mobx_settings_overlay_icon_vowifi_vowifiicons_predicate"
}

patch_lite_settings_mobx_settings_overlay_icon_vowifi_vowifiicons() {
  local decoded="$1"
  inject_added_smali_class "Settings" "$decoded" "mobx/settings/overlay/icon/vowifi/VowifiIcons.smali" "${LITE_PACK_DIR}/patches/generated_smali/Settings/mobx/settings/overlay/icon/vowifi/VowifiIcons.smali" "patch_lite_settings_mobx_settings_overlay_icon_vowifi_vowifiicons"
}

patch_lite_settings_mobx_settings_overlay_icon_wifi_wifiicons_adapter_100000000() {
  local decoded="$1"
  inject_added_smali_class "Settings" "$decoded" "mobx/settings/overlay/icon/wifi/WifiIcons$Adapter$100000000.smali" "${LITE_PACK_DIR}/patches/generated_smali/Settings/mobx/settings/overlay/icon/wifi/WifiIcons$Adapter$100000000.smali" "patch_lite_settings_mobx_settings_overlay_icon_wifi_wifiicons_adapter_100000000"
}

patch_lite_settings_mobx_settings_overlay_icon_wifi_wifiicons_adapter_viewholder() {
  local decoded="$1"
  inject_added_smali_class "Settings" "$decoded" "mobx/settings/overlay/icon/wifi/WifiIcons$Adapter$ViewHolder.smali" "${LITE_PACK_DIR}/patches/generated_smali/Settings/mobx/settings/overlay/icon/wifi/WifiIcons$Adapter$ViewHolder.smali" "patch_lite_settings_mobx_settings_overlay_icon_wifi_wifiicons_adapter_viewholder"
}

patch_lite_settings_mobx_settings_overlay_icon_wifi_wifiicons_adapter() {
  local decoded="$1"
  inject_added_smali_class "Settings" "$decoded" "mobx/settings/overlay/icon/wifi/WifiIcons$Adapter.smali" "${LITE_PACK_DIR}/patches/generated_smali/Settings/mobx/settings/overlay/icon/wifi/WifiIcons$Adapter.smali" "patch_lite_settings_mobx_settings_overlay_icon_wifi_wifiicons_adapter"
}

patch_lite_settings_mobx_settings_overlay_icon_wifi_wifiicons_function() {
  local decoded="$1"
  inject_added_smali_class "Settings" "$decoded" "mobx/settings/overlay/icon/wifi/WifiIcons$Function.smali" "${LITE_PACK_DIR}/patches/generated_smali/Settings/mobx/settings/overlay/icon/wifi/WifiIcons$Function.smali" "patch_lite_settings_mobx_settings_overlay_icon_wifi_wifiicons_function"
}

patch_lite_settings_mobx_settings_overlay_icon_wifi_wifiicons_predicate() {
  local decoded="$1"
  inject_added_smali_class "Settings" "$decoded" "mobx/settings/overlay/icon/wifi/WifiIcons$Predicate.smali" "${LITE_PACK_DIR}/patches/generated_smali/Settings/mobx/settings/overlay/icon/wifi/WifiIcons$Predicate.smali" "patch_lite_settings_mobx_settings_overlay_icon_wifi_wifiicons_predicate"
}

patch_lite_settings_mobx_settings_overlay_icon_wifi_wifiicons() {
  local decoded="$1"
  inject_added_smali_class "Settings" "$decoded" "mobx/settings/overlay/icon/wifi/WifiIcons.smali" "${LITE_PACK_DIR}/patches/generated_smali/Settings/mobx/settings/overlay/icon/wifi/WifiIcons.smali" "patch_lite_settings_mobx_settings_overlay_icon_wifi_wifiicons"
}

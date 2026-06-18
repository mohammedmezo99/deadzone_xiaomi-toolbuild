#!/usr/bin/env bash
# Auto-generated manual Ninja OS3_A16 smali patch functions for miui_framework.
# Runtime does not read .mtcr files; it uses generated smali templates.
set -euo pipefail

patch_miui_framework_android_provider_miuisettings_system() {
  ninja_apply_smali_template 'miui_framework' "$SMALI_DIRS" 'android/provider/MiuiSettings$System.smali' 'android/provider/MiuiSettings$System.smali' 'modified' 'patch_miui_framework_android_provider_miuisettings_system'
}

patch_miui_framework_com_android_internal_util_mezo_ooo0oo() {
  ninja_apply_smali_template 'miui_framework' "$SMALI_DIRS" 'com/android/internal/util/mezo/OOO0OO.smali' 'com/android/internal/util/mezo/OOO0OO.smali' 'added' 'patch_miui_framework_com_android_internal_util_mezo_ooo0oo'
}

patch_miui_framework_com_android_internal_util_mezo_oooo0oo() {
  ninja_apply_smali_template 'miui_framework' "$SMALI_DIRS" 'com/android/internal/util/mezo/OoOO0oo.smali' 'com/android/internal/util/mezo/OoOO0oo.smali' 'added' 'patch_miui_framework_com_android_internal_util_mezo_oooo0oo'
}

patch_miui_framework_com_android_internal_util_mezo_o0oooo00() {
  ninja_apply_smali_template 'miui_framework' "$SMALI_DIRS" 'com/android/internal/util/mezo/o0OOOo00.smali' 'com/android/internal/util/mezo/o0OOOo00.smali' 'added' 'patch_miui_framework_com_android_internal_util_mezo_o0oooo00'
}

patch_miui_framework_mezo_xiaomi_util_fileutil() {
  ninja_apply_smali_template 'miui_framework' "$SMALI_DIRS" 'mezo/xiaomi/util/FileUtil.smali' 'mezo/xiaomi/util/FileUtil.smali' 'added' 'patch_miui_framework_mezo_xiaomi_util_fileutil'
}

patch_miui_framework_mezo_xiaomi_util_jsontranslator() {
  ninja_apply_smali_template 'miui_framework' "$SMALI_DIRS" 'mezo/xiaomi/util/JSONTranslator.smali' 'mezo/xiaomi/util/JSONTranslator.smali' 'added' 'patch_miui_framework_mezo_xiaomi_util_jsontranslator'
}

patch_miui_framework_mezo_xiaomi_util_jsontranslator_jsonstate() {
  ninja_apply_smali_template 'miui_framework' "$SMALI_DIRS" 'mezo/xiaomi/util/JSONTranslator$JSONState.smali' 'mezo/xiaomi/util/JSONTranslator$JSONState.smali' 'added' 'patch_miui_framework_mezo_xiaomi_util_jsontranslator_jsonstate'
}

patch_miui_framework_mezo_xiaomi_util_jsontranslator_singletonholder() {
  ninja_apply_smali_template 'miui_framework' "$SMALI_DIRS" 'mezo/xiaomi/util/JSONTranslator$SingletonHolder.smali' 'mezo/xiaomi/util/JSONTranslator$SingletonHolder.smali' 'added' 'patch_miui_framework_mezo_xiaomi_util_jsontranslator_singletonholder'
}

patch_miui_framework_mezo_xiaomi_util_jsontranslator_ia() {
  ninja_apply_smali_template 'miui_framework' "$SMALI_DIRS" 'mezo/xiaomi/util/JSONTranslator-IA.smali' 'mezo/xiaomi/util/JSONTranslator-IA.smali' 'added' 'patch_miui_framework_mezo_xiaomi_util_jsontranslator_ia'
}

patch_miui_framework_mezo_xiaomi_util_translator() {
  ninja_apply_smali_template 'miui_framework' "$SMALI_DIRS" 'mezo/xiaomi/util/Translator.smali' 'mezo/xiaomi/util/Translator.smali' 'added' 'patch_miui_framework_mezo_xiaomi_util_translator'
}

patch_miui_framework_mezo_xiaomi_util_translator_singletonholder() {
  ninja_apply_smali_template 'miui_framework' "$SMALI_DIRS" 'mezo/xiaomi/util/Translator$SingletonHolder.smali' 'mezo/xiaomi/util/Translator$SingletonHolder.smali' 'added' 'patch_miui_framework_mezo_xiaomi_util_translator_singletonholder'
}

patch_miui_framework_mezo_xiaomi_util_translator_state() {
  ninja_apply_smali_template 'miui_framework' "$SMALI_DIRS" 'mezo/xiaomi/util/Translator$State.smali' 'mezo/xiaomi/util/Translator$State.smali' 'added' 'patch_miui_framework_mezo_xiaomi_util_translator_state'
}

patch_miui_framework_mezo_xiaomi_util_translator_ia() {
  ninja_apply_smali_template 'miui_framework' "$SMALI_DIRS" 'mezo/xiaomi/util/Translator-IA.smali' 'mezo/xiaomi/util/Translator-IA.smali' 'added' 'patch_miui_framework_mezo_xiaomi_util_translator_ia'
}

apply_miui_framework_smali_patches() {
  ninja_log_info "Applying miui_framework smali patches"
  patch_miui_framework_android_provider_miuisettings_system || true
  patch_miui_framework_com_android_internal_util_mezo_ooo0oo || true
  patch_miui_framework_com_android_internal_util_mezo_oooo0oo || true
  patch_miui_framework_com_android_internal_util_mezo_o0oooo00 || true
  patch_miui_framework_mezo_xiaomi_util_fileutil || true
  patch_miui_framework_mezo_xiaomi_util_jsontranslator || true
  patch_miui_framework_mezo_xiaomi_util_jsontranslator_jsonstate || true
  patch_miui_framework_mezo_xiaomi_util_jsontranslator_singletonholder || true
  patch_miui_framework_mezo_xiaomi_util_jsontranslator_ia || true
  patch_miui_framework_mezo_xiaomi_util_translator || true
  patch_miui_framework_mezo_xiaomi_util_translator_singletonholder || true
  patch_miui_framework_mezo_xiaomi_util_translator_state || true
  patch_miui_framework_mezo_xiaomi_util_translator_ia || true
}

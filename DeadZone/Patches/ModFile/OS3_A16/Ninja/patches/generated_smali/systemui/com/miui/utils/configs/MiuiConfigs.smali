.class public abstract Lcom/miui/utils/configs/MiuiConfigs;
.super Ljava/lang/Object;


# static fields
.field public static final BACKGROUND_BLUR_SUPPORTED:Z

.field public static final BROAD_SIDE_FP:Z

.field public static final CN_CUSTOMIZATION_TEST:Z

.field public static final CUSTOMIZED_REGION:Ljava/lang/String;

.field public static final FOD_SWIPE_SENSOR:Z

.field public static final FONT_MIPRO_PATH:Ljava/lang/String;

.field public static final FONT_WGHT_660:Landroid/graphics/Typeface;

.field public static final FULL_AOD_FIXED_BRIGHTNESS:F

.field public static final GXZW_SENSOR:Z

.field public static final HAS_CAMERA_IN_LARGESCREEN:Z

.field public static final IS_CM_CUSTOMIZATION:Z

.field public static final IS_CM_CUSTOMIZATION_TEST:Z

.field public static final IS_CUST_SINGLE_SIM:Z

.field public static final IS_DEVELOPMENT_VERSION:Z

.field public static final IS_FOLD:Z

.field public static final IS_INDEPENDENT_REAR_DEVICE:Z

.field public static final IS_INTERNATIONAL_BUILD:Z

.field public static final IS_JP_RK_VERSION:Z

.field public static final IS_KDDI_VERSION:Z

.field public static final IS_MEDIATEK:Z

.field public static final IS_NOTCH:Z

.field public static final IS_OLED_SCREEN:Z

.field public static final IS_PAD:Z

.field public static final IS_REDMI_BRAND:Z

.field public static IS_RSA4_FROM_WC:Z

.field public static final IS_SUPPORT_REAR_SMART_ASSISTANT:Z

.field public static final IS_XRING:Z

.field public static final MIUI_LITE_V2:Z

.field public static final MI_SHADOW_SUPPORTED:Z

.field public static final NOT_SUPPORT_FASHION_GALLERY_CN:Z

.field public static final SHADOW_SUPPORTED:Z

.field public static final SUPPORT_FULL_AOD:Z

.field public static final SUPPORT_GESTURE_WAKEUP:Z

.field public static final SUPPORT_LEAUDIO_CG:Z

.field public static final SUPPORT_MULTIPLE_FACES_AON:Z

.field public static final SUPPORT_NON_UI:Z

.field public static final SUPPORT_OWNER_FACE_AON:Z

.field public static final SUPPORT_PROP_DYNAMIC_ROUND_CORNER:Z

.field public static final cpuLevel:I

.field public static final gpuLevel:I

.field public static final sDeviceLevelFromFolme:I

.field public static sForceMiddleDevice:I

.field public static final sInstantAppConfig:Landroid/content/res/Configuration;

.field public static final sMiproTypeface:Landroid/graphics/Typeface;

.field public static final sMiproTypefaceWght460:Landroid/graphics/Typeface;

.field public static final sMiproTypefaceWght500:Landroid/graphics/Typeface;

.field public static final sMiproTypefaceWght600:Landroid/graphics/Typeface;

.field public static sScreenHeight:I

.field public static sScreenWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 11

    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const-string v1, "\\d+(.\\d+){2,}(-internal)?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "^(V\\d{1,})(\\.\\d{1,})*(\\.DEV)$"

    invoke-virtual {v0, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    const-string v4, "ro.miui.customized.region"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/miui/utils/configs/MiuiConfigs;->CUSTOMIZED_REGION:Ljava/lang/String;

    sget-boolean v6, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    sput-boolean v6, Lcom/miui/utils/configs/MiuiConfigs;->IS_INTERNATIONAL_BUILD:Z

    if-nez v1, :cond_3

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v0, v3

    goto :goto_3

    :cond_3
    :goto_2
    move v0, v2

    :goto_3
    sput-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->IS_DEVELOPMENT_VERSION:Z

    const-string v0, "ro.cust.test"

    invoke-static {v0, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ro.carrier.name"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "cm"

    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    sput-boolean v7, Lcom/miui/utils/configs/MiuiConfigs;->IS_CM_CUSTOMIZATION_TEST:Z

    const-string v8, "ct"

    invoke-virtual {v8, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    const-string v10, "cu"

    invoke-virtual {v10, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v6, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    sput-boolean v6, Lcom/miui/utils/configs/MiuiConfigs;->IS_CM_CUSTOMIZATION:Z

    invoke-virtual {v8, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    invoke-virtual {v10, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    if-nez v7, :cond_5

    if-nez v9, :cond_5

    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    move v0, v3

    goto :goto_5

    :cond_5
    :goto_4
    move v0, v2

    :goto_5
    sput-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->CN_CUSTOMIZATION_TEST:Z

    const-string v0, "ro.debuggable"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    const-string v0, "not_support_fashion_gallery"

    invoke-static {v0, v3}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->NOT_SUPPORT_FASHION_GALLERY_CN:Z

    const-string v0, "support_owner_faces_aon"

    invoke-static {v0, v3}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->SUPPORT_OWNER_FACE_AON:Z

    const-string v0, "support_multiple_faces_aon"

    invoke-static {v0, v3}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->SUPPORT_MULTIPLE_FACES_AON:Z

    const-string v0, "persist.sys.muiltdisplay_type"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    move v0, v2

    goto :goto_6

    :cond_6
    move v0, v3

    :goto_6
    sput-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->IS_FOLD:Z

    const-string v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "tablet"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->IS_PAD:Z

    const-string v0, "ro.miui.singlesim"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_7

    move v0, v2

    goto :goto_7

    :cond_7
    move v0, v3

    :goto_7
    sput-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->IS_CUST_SINGLE_SIM:Z

    const-string v0, "ro.miui.notch"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_8

    move v0, v2

    goto :goto_8

    :cond_8
    move v0, v3

    :goto_8
    sput-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->IS_NOTCH:Z

    const-string v0, "is_mediatek"

    invoke-static {v0, v3}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->IS_MEDIATEK:Z

    const-string v0, "vendor"

    invoke-static {v0}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "xring"

    invoke-static {v6, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->IS_XRING:Z

    const-string v0, "persist.vendor.bluetooth.leaudio_mode"

    invoke-static {v0, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "ums-cg"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->SUPPORT_LEAUDIO_CG:Z

    const-string v0, "ro.com.miui.rsa.feature"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v2

    sput-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->IS_RSA4_FROM_WC:Z

    const-string v0, "ro.hardware.fp.fod"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->GXZW_SENSOR:Z

    const-string v0, "persist.vendor.sys.fp.fod.slide"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->FOD_SWIPE_SENSOR:Z

    const-string v0, "ro.vendor.localhbm.enable"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    const-string v0, "ro.hardware.fp.sideCap"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->BROAD_SIDE_FP:Z

    const-string v0, "sys.power.nonui"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->SUPPORT_NON_UI:Z

    const-string v0, "ro.boot.hwc"

    invoke-static {v0, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "ro.vendor.miui.support_esim"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    const-string v0, "support_gesture_wakeup"

    invoke-static {v0, v3}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->SUPPORT_GESTURE_WAKEUP:Z

    const-string v0, "ro.miui.cust_variant"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "cn"

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    const-string v0, "persist.sys.frontcamera_type"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_9

    move v0, v2

    goto :goto_9

    :cond_9
    move v0, v3

    :goto_9
    sput-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->HAS_CAMERA_IN_LARGESCREEN:Z

    const-string v0, "ro.miui.ui.font.mi_font_path"

    const-string v5, "/system/fonts/MiSansVF.ttf"

    invoke-static {v0, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/utils/configs/MiuiConfigs;->FONT_MIPRO_PATH:Ljava/lang/String;

    new-instance v5, Landroid/graphics/Typeface$Builder;

    invoke-direct {v5, v0}, Landroid/graphics/Typeface$Builder;-><init>(Ljava/lang/String;)V

    const-string v6, "\'wght\' 430"

    invoke-virtual {v5, v6}, Landroid/graphics/Typeface$Builder;->setFontVariationSettings(Ljava/lang/String;)Landroid/graphics/Typeface$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Typeface$Builder;->build()Landroid/graphics/Typeface;

    move-result-object v5

    sput-object v5, Lcom/miui/utils/configs/MiuiConfigs;->sMiproTypeface:Landroid/graphics/Typeface;

    new-instance v5, Landroid/graphics/Typeface$Builder;

    invoke-direct {v5, v0}, Landroid/graphics/Typeface$Builder;-><init>(Ljava/lang/String;)V

    const-string v6, "\'wght\' 460"

    invoke-virtual {v5, v6}, Landroid/graphics/Typeface$Builder;->setFontVariationSettings(Ljava/lang/String;)Landroid/graphics/Typeface$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Typeface$Builder;->build()Landroid/graphics/Typeface;

    move-result-object v5

    sput-object v5, Lcom/miui/utils/configs/MiuiConfigs;->sMiproTypefaceWght460:Landroid/graphics/Typeface;

    new-instance v5, Landroid/graphics/Typeface$Builder;

    invoke-direct {v5, v0}, Landroid/graphics/Typeface$Builder;-><init>(Ljava/lang/String;)V

    const-string v6, "\'wght\' 500"

    invoke-virtual {v5, v6}, Landroid/graphics/Typeface$Builder;->setFontVariationSettings(Ljava/lang/String;)Landroid/graphics/Typeface$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Typeface$Builder;->build()Landroid/graphics/Typeface;

    move-result-object v5

    sput-object v5, Lcom/miui/utils/configs/MiuiConfigs;->sMiproTypefaceWght500:Landroid/graphics/Typeface;

    new-instance v5, Landroid/graphics/Typeface$Builder;

    invoke-direct {v5, v0}, Landroid/graphics/Typeface$Builder;-><init>(Ljava/lang/String;)V

    const-string v6, "\'wght\' 600"

    invoke-virtual {v5, v6}, Landroid/graphics/Typeface$Builder;->setFontVariationSettings(Ljava/lang/String;)Landroid/graphics/Typeface$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Typeface$Builder;->build()Landroid/graphics/Typeface;

    move-result-object v5

    sput-object v5, Lcom/miui/utils/configs/MiuiConfigs;->sMiproTypefaceWght600:Landroid/graphics/Typeface;

    new-instance v5, Landroid/graphics/Typeface$Builder;

    invoke-direct {v5, v0}, Landroid/graphics/Typeface$Builder;-><init>(Ljava/lang/String;)V

    const-string v0, "\'wght\' 660"

    invoke-virtual {v5, v0}, Landroid/graphics/Typeface$Builder;->setFontVariationSettings(Ljava/lang/String;)Landroid/graphics/Typeface$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Typeface$Builder;->build()Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/miui/utils/configs/MiuiConfigs;->FONT_WGHT_660:Landroid/graphics/Typeface;

    const-string v0, "support_aod_fullscreen"

    invoke-static {v0, v3}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->SUPPORT_FULL_AOD:Z

    const-string v0, "ro.miui.special.aod.mask"

    const-string v5, "-1f"

    invoke-static {v0, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sput v0, Lcom/miui/utils/configs/MiuiConfigs;->FULL_AOD_FIXED_BRIGHTNESS:F

    const-string v0, "ro.product.brand"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Redmi"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    sput-boolean v5, Lcom/miui/utils/configs/MiuiConfigs;->IS_REDMI_BRAND:Z

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "Xiaomi"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    const-string v0, "sys.display.rounded_corner_type"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->SUPPORT_PROP_DYNAMIC_ROUND_CORNER:Z

    const-string v0, "ro.vendor.display.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "oled"

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "ro.display.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_a

    :cond_a
    move v0, v3

    goto :goto_b

    :cond_b
    :goto_a
    move v0, v2

    :goto_b
    sput-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->IS_OLED_SCREEN:Z

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    sput-object v0, Lcom/miui/utils/configs/MiuiConfigs;->sInstantAppConfig:Landroid/content/res/Configuration;

    const-string v0, "miui.util.MiuiMultiDisplayTypeInfo"

    const-string v5, "isIndependentRearDevice"

    invoke-static {v0, v5, v3}, Lcom/miui/utils/configs/MiuiConfigs;->callBooleanMethodQuietly(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->IS_INDEPENDENT_REAR_DEVICE:Z

    const-string v0, "miui.os.DeviceFeature"

    const-string v5, "isSupportRearSmartAssistant"

    invoke-static {v0, v5, v2}, Lcom/miui/utils/configs/MiuiConfigs;->callBooleanMethodQuietly(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->IS_SUPPORT_REAR_SMART_ASSISTANT:Z

    sget v0, Lmiui/util/DeviceLevel;->TOTAL_RAM:I

    invoke-static {}, Lmiui/util/DeviceLevel;->getMiuiLiteVersion()I

    move-result v0

    if-ne v0, v1, :cond_c

    move v0, v2

    goto :goto_c

    :cond_c
    move v0, v3

    :goto_c
    sput-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->MIUI_LITE_V2:Z

    const-string v0, "persist.sys.background_blur_supported"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->BACKGROUND_BLUR_SUPPORTED:Z

    const-string v0, "persist.sys.mi_shadow_supported"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->SHADOW_SUPPORTED:Z

    const-string v0, "persist.sys.support_view_mishadow"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->MI_SHADOW_SUPPORTED:Z

    const-string v0, "jp_kd"

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->IS_KDDI_VERSION:Z

    const-string v0, "jp_rk"

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->IS_JP_RK_VERSION:Z

    sget v0, Lmiui/util/DeviceLevel;->CPU:I

    invoke-static {v2, v0}, Lmiui/util/DeviceLevel;->getDeviceLevel(II)I

    move-result v0

    sput v0, Lcom/miui/utils/configs/MiuiConfigs;->cpuLevel:I

    sget v0, Lmiui/util/DeviceLevel;->GPU:I

    invoke-static {v2, v0}, Lmiui/util/DeviceLevel;->getDeviceLevel(II)I

    move-result v0

    sput v0, Lcom/miui/utils/configs/MiuiConfigs;->gpuLevel:I

    const/4 v0, -0x1

    sput v0, Lcom/miui/utils/configs/MiuiConfigs;->sForceMiddleDevice:I

    sput v3, Lcom/miui/utils/configs/MiuiConfigs;->sScreenHeight:I

    sput v3, Lcom/miui/utils/configs/MiuiConfigs;->sScreenWidth:I

    sget v0, Lmiuix/device/DeviceUtils;->DEV_STANDARD_VERSION:I

    sget v1, Lmiuix/device/DeviceUtils;->TYPE_CPU:I

    invoke-static {v0, v1}, Lmiuix/device/DeviceUtils;->getDeviceLevel(II)I

    move-result v1

    sget v2, Lmiuix/device/DeviceUtils;->TYPE_GPU:I

    invoke-static {v0, v2}, Lmiuix/device/DeviceUtils;->getDeviceLevel(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    sput v0, Lcom/miui/utils/configs/MiuiConfigs;->sDeviceLevelFromFolme:I

    return-void
.end method

.method public static varargs applyStatusBarTypeface(Landroid/graphics/Typeface;[Landroid/widget/TextView;)V
    .registers 9

    const-string v0, "mipro-medium"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, v0, Landroid/graphics/Typeface;->familyName:[Ljava/lang/String;

    if-eqz v2, :cond_1

    array-length v3, v2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    const-string v6, "mipro"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move-object p0, v0

    :goto_1
    array-length v0, p1

    :goto_2
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    if-eqz v2, :cond_2

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public static callBooleanMethodQuietly(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 6

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :cond_0
    return p2

    :catch_0
    const-string v0, "callBooleanMethodQuietly: "

    const-string v1, "#"

    const-string v2, " -> not found"

    invoke-static {v0, p0, v1, p1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "Configs"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p2
.end method

.method public static getAdjustedRotation(Landroid/content/Context;)I
    .registers 2

    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    invoke-static {p0}, Lcom/miui/utils/configs/MiuiConfigs;->isFlipTinyScreen(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    add-int/lit8 v0, v0, 0x2

    rem-int/lit8 v0, v0, 0x4

    :cond_0
    return v0
.end method

.method public static getCutoutRect(Landroid/content/Context;)Landroid/graphics/Rect;
    .registers 5

    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getBoundingRects()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_3

    const/4 v1, 0x0

    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    return-object v2

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public static getLockScreenSize(Landroid/content/Context;)Landroid/graphics/Point;
    .registers 5

    invoke-static {p0}, Lcom/miui/utils/configs/MiuiConfigs;->getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-static {p0}, Lcom/miui/utils/configs/MiuiConfigs;->isFlipTinyScreen(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p0}, Lcom/miui/utils/configs/MiuiConfigs;->isFoldLargeScreenAndNotPad(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-boolean p0, Lcom/miui/utils/configs/MiuiConfigs;->IS_PAD:Z

    if-nez p0, :cond_0

    iget p0, v0, Landroid/graphics/Point;->x:I

    iget v1, v0, Landroid/graphics/Point;->y:I

    invoke-static {p0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget p0, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_0
    new-instance p0, Landroid/graphics/Point;

    invoke-direct {p0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object p0
.end method

.method public static getSafeInsets(Landroid/content/Context;)Landroid/graphics/Rect;
    .registers 2

    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    iget-object p0, v0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsets()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getScreenHeight(Landroid/content/Context;)I
    .registers 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    return p0
.end method

.method public static getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v0, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object v1
.end method

.method public static getScreenWidth(Landroid/content/Context;)I
    .registers 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    return p0
.end method

.method public static isCupAndGupHighLevel()Z
    .registers 2

    sget v0, Lmiui/util/DeviceLevel;->HIGH:I

    sget v1, Lcom/miui/utils/configs/MiuiConfigs;->cpuLevel:I

    if-ne v1, v0, :cond_0

    sget v1, Lcom/miui/utils/configs/MiuiConfigs;->gpuLevel:I

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isCutoutRight(Landroid/content/Context;)Z
    .registers 2

    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result p0

    if-lez p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method public static isFlipTinyScreen(Landroid/content/Context;)Z
    .registers 2

    invoke-static {}, Lmiui/util/MiuiMultiDisplayTypeInfo;->isFlipDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/miui/utils/configs/MiuiConfigs;->isTinyScreen(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isFoldLargeScreenAndNotPad(Landroid/content/Context;)Z
    .registers 2

    sget-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->IS_PAD:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->IS_FOLD:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v0, 0x258

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isFoldableDevice()Z
    .registers 1

    sget-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->IS_FOLD:Z

    if-nez v0, :cond_1

    invoke-static {}, Lmiui/util/MiuiMultiDisplayTypeInfo;->isFlipDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isInstantFlipTinyScreen()Z
    .registers 2

    invoke-static {}, Lmiui/util/MiuiMultiDisplayTypeInfo;->isFlipDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/utils/configs/MiuiConfigs;->sInstantAppConfig:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->screenType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isLandscape(Landroid/content/Context;)Z
    .registers 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isLite2Phone()Z
    .registers 1

    sget-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->MIUI_LITE_V2:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->IS_PAD:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isLiteOrLowDevice()Z
    .registers 2

    invoke-static {}, Lcom/miui/utils/configs/MiuiConfigs;->isLowEndDevice()Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Lmiui/util/DeviceLevel;->LOW:I

    sget v1, Lcom/miui/utils/configs/MiuiConfigs;->cpuLevel:I

    if-eq v1, v0, :cond_1

    sget v1, Lcom/miui/utils/configs/MiuiConfigs;->gpuLevel:I

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isLowEndDevice()Z
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isNightMode(Landroid/content/Context;)Z
    .registers 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isNightMode1(Landroid/content/Context;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public static isPadLandscape(Landroid/content/Context;)Z
    .registers 2

    sget-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->IS_PAD:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isPadOrFoldLargeScreen(Landroid/content/Context;)Z
    .registers 2

    sget-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->IS_PAD:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->IS_FOLD:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v0, 0x258

    if-lt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isTinyScreen(Landroid/content/Context;)Z
    .registers 3

    invoke-static {p0}, Lcom/miui/utils/configs/MiuiConfigs;->getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, p0

    float-to-int p0, v0

    const/16 v0, 0x29e

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isTinyScreenLandscape(Landroid/content/Context;)Z
    .registers 2

    invoke-static {p0}, Lcom/miui/utils/configs/MiuiConfigs;->isFlipTinyScreen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isVerticalMode(Landroid/content/Context;)Z
    .registers 3

    invoke-static {p0}, Lcom/miui/utils/configs/MiuiConfigs;->isPadOrFoldLargeScreen(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method public static varargs setMiuiStatusBarWifiTypeface([Landroid/widget/TextView;)V
    .registers 8

    const-string v0, "mipro-bold"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, v0, Landroid/graphics/Typeface;->familyName:[Ljava/lang/String;

    if-eqz v2, :cond_1

    array-length v3, v2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    const-string v6, "mipro"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v0, Lcom/miui/utils/configs/MiuiConfigs;->FONT_WGHT_660:Landroid/graphics/Typeface;

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    array-length v2, p0

    :goto_2
    if-ge v1, v2, :cond_3

    aget-object v3, p0, v1

    if-eqz v3, :cond_2

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

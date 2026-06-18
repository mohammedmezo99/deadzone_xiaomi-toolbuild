.class public abstract Lcom/miui/charge/ChargeUtils;
.super Ljava/lang/Object;


# static fields
.field public static final SUPPORT_CHARGE_SHADER:Z

.field public static final SUPPORT_DOUBLE_CHARGE:Z

.field public static final SUPPORT_WIRELESS_CHARGE:Z

.field public static sBatteryStatus:Lcom/miui/systemui/charge/BatteryStatus;

.field public static sChargeAnimationDisabled:Z

.field public static sCharging:Z

.field public static sDevelopAnimationEnable:Z

.field public static sNeedRepositionDevice:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "persist.vendor.accelerate.charge"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/miui/charge/ChargeUtils;->SUPPORT_DOUBLE_CHARGE:Z

    const-string v0, "persist.sys.background_blur_supported"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/miui/charge/ChargeUtils;->SUPPORT_CHARGE_SHADER:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/miui/charge/ChargeUtils;->sDevelopAnimationEnable:Z

    sput-boolean v1, Lcom/miui/charge/ChargeUtils;->sCharging:Z

    new-instance v0, Ljava/io/File;

    const-string v2, "/sys/class/power_supply/wireless/signal_strength"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    sput-boolean v0, Lcom/miui/charge/ChargeUtils;->SUPPORT_WIRELESS_CHARGE:Z

    sput-boolean v1, Lcom/miui/charge/ChargeUtils;->sNeedRepositionDevice:Z

    return-void
.end method

.method public static getChargeAnimationType()I
    .registers 1

    const-class v0, Lcom/miui/systemui/SettingsManager;

    invoke-static {v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/systemui/SettingsManager;

    iget v0, v0, Lcom/miui/systemui/SettingsManager;->chargeAnimType:I

    return v0
.end method

.method public static getChargeSpeed(II)I
    .registers 3

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0xb

    if-ne p0, v0, :cond_3

    :cond_0
    const/4 p0, 0x4

    const/4 v0, 0x3

    if-ne p1, p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x2

    if-eq p1, p0, :cond_4

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    if-ne p1, p0, :cond_3

    return p0

    :cond_3
    const/4 p0, 0x0

    :cond_4
    :goto_0
    return p0
.end method

.method public static getTemplateIdFromJson(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    :try_start_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "clockInfo"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-class v1, Lcom/miui/clock/module/ClockBean;

    invoke-virtual {v0, v1, p0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/clock/module/ClockBean;

    invoke-virtual {p0}, Lcom/miui/clock/module/ClockBean;->getTemplateId()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "ChargeUtils"

    const-string v1, "getClockBean fail"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static isChargeAnimationDisabled()Z
    .registers 1

    sget-boolean v0, Lcom/miui/charge/ChargeUtils;->sChargeAnimationDisabled:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/charge/ChargeUtils;->getChargeAnimationType()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public static isUseInteractivePetsCharge(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    invoke-static {p0}, Lcom/miui/utils/configs/MiuiConfigs;->isTinyScreen(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "interactive_pets"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0, v1}, Landroid/provider/MiuiSettings$System;->isSuperSaveModeOpen(Landroid/content/Context;I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public static supportShaderChargeAnimation()Z
    .registers 2

    sget-boolean v0, Lcom/miui/charge/ChargeUtils;->SUPPORT_CHARGE_SHADER:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/charge/ChargeUtils;->getChargeAnimationType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static supportVideoChargeAnimation()Z
    .registers 2

    invoke-static {}, Lcom/miui/charge/ChargeUtils;->getChargeAnimationType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static supportWaveChargeAnimation()Z
    .registers 2

    invoke-static {}, Lcom/miui/charge/ChargeUtils;->getChargeAnimationType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

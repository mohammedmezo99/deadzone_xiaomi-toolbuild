.class public Lcom/android/wm/shell/multitasking/stubs/infinitymode/MiuiInfinityModeStatus;
.super Ljava/lang/Object;


# static fields
.field private static final IS_GLOBAL_BUILD:Z

.field private static final IS_INTERNATIONAL_BUILD:Z

.field public static final LEVEL_STRATEGY_TYPE_10:I = 0x0

.field public static final LEVEL_STRATEGY_TYPE_20:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-string v0, "ro.product.device"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "_global"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    sput-boolean v2, Lcom/android/wm/shell/multitasking/stubs/infinitymode/MiuiInfinityModeStatus;->IS_INTERNATIONAL_BUILD:Z

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/wm/shell/multitasking/stubs/infinitymode/MiuiInfinityModeStatus;->IS_GLOBAL_BUILD:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isEnabled()Z
    .registers 1

    invoke-static {}, Lcom/android/wm/shell/multitasking/common/MultiTaskingDeviceUtils;->isPadDevice()Z

    move-result v0

    return v0
.end method

.method public static isInternationalBuild()Z
    .registers 1

    sget-boolean v0, Lcom/android/wm/shell/multitasking/stubs/infinitymode/MiuiInfinityModeStatus;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/wm/shell/multitasking/stubs/infinitymode/MiuiInfinityModeStatus;->IS_GLOBAL_BUILD:Z

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

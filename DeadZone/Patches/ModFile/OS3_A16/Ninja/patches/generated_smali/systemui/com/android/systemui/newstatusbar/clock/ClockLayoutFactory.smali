.class public Lcom/android/systemui/newstatusbar/clock/ClockLayoutFactory;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Lcom/android/systemui/newstatusbar/clock/ClockView;Z)Lcom/android/systemui/newstatusbar/clock/ClockLayout;
    .registers 5

    const/4 p1, 0x1

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/clock/ClockView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez p1, :cond_1

    const-string v1, "statusbar_clock_style"

    const/4 v2, -0x5

    invoke-static {v1, v2}, Landroid/preference/SettingsEliteHelper;->getIntofSettings(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/systemui/newstatusbar/clock/ClockLayoutWithMultiCock;

    invoke-direct {v1, v0, p0}, Lcom/android/systemui/newstatusbar/clock/ClockLayoutWithMultiCock;-><init>(Landroid/content/Context;Lcom/android/systemui/newstatusbar/clock/ClockView;)V

    return-object v1

    :cond_1
    :goto_0
    new-instance v1, Lcom/android/systemui/newstatusbar/clock/ClockLayout;

    invoke-direct {v1, v0, p0}, Lcom/android/systemui/newstatusbar/clock/ClockLayout;-><init>(Landroid/content/Context;Lcom/android/systemui/newstatusbar/clock/ClockView;)V

    return-object v1
.end method

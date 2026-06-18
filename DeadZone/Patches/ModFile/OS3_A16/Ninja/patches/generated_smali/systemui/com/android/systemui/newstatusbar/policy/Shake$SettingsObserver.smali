.class Lcom/android/systemui/newstatusbar/policy/Shake$SettingsObserver;
.super Landroid/database/ContentObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/newstatusbar/policy/Shake;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/newstatusbar/policy/Shake;


# direct methods
.method constructor <init>(Lcom/android/systemui/newstatusbar/policy/Shake;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/android/systemui/newstatusbar/policy/Shake$SettingsObserver;->this$0:Lcom/android/systemui/newstatusbar/policy/Shake;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method observe()V
    .registers 4

    goto :goto_1

    nop

    :goto_0
    return-void

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/policy/Shake$SettingsObserver;->this$0:Lcom/android/systemui/newstatusbar/policy/Shake;

    goto :goto_7

    nop

    :goto_2
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_5

    nop

    :goto_3
    const-string v1, "shake_mobile"

    goto :goto_2

    nop

    :goto_4
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    goto :goto_3

    nop

    :goto_5
    const/4 v2, 0x0

    goto :goto_6

    nop

    :goto_6
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    nop

    :goto_7
    iget-object v0, v0, Lcom/android/systemui/newstatusbar/policy/Shake;->mContext:Landroid/content/Context;

    goto :goto_4

    nop
.end method

.method public onChange(Z)V
    .registers 4

    const-string v0, "shake_mobile"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/preference/SettingsEliteHelper;->getIntofSettings(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/policy/Shake$SettingsObserver;->this$0:Lcom/android/systemui/newstatusbar/policy/Shake;

    invoke-virtual {v0}, Lcom/android/systemui/newstatusbar/policy/Shake;->registerOnOffScreenListener()V

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/policy/Shake$SettingsObserver;->this$0:Lcom/android/systemui/newstatusbar/policy/Shake;

    invoke-virtual {v0}, Lcom/android/systemui/newstatusbar/policy/Shake;->registerSensorListener()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/policy/Shake$SettingsObserver;->this$0:Lcom/android/systemui/newstatusbar/policy/Shake;

    invoke-virtual {v0}, Lcom/android/systemui/newstatusbar/policy/Shake;->unregisterOnOffScreenListener()V

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/policy/Shake$SettingsObserver;->this$0:Lcom/android/systemui/newstatusbar/policy/Shake;

    invoke-virtual {v0}, Lcom/android/systemui/newstatusbar/policy/Shake;->unregisterSensorListener()V

    return-void
.end method

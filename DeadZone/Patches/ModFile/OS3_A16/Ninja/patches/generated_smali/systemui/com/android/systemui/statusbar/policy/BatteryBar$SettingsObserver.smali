.class Lcom/android/systemui/statusbar/policy/BatteryBar$SettingsObserver;
.super Landroid/database/ContentObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/BatteryBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/BatteryBar;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/BatteryBar;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BatteryBar$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/BatteryBar;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method observer()V
    .registers 4

    goto :goto_1a

    nop

    :goto_0
    const-string v1, "statusbar_battery_bar_low_color"

    goto :goto_4

    nop

    :goto_1
    const-string v1, "statusbar_battery_bar"

    goto :goto_f

    nop

    :goto_2
    const-string v1, "statusbar_battery_bar_use_gradient_color"

    goto :goto_5

    nop

    :goto_3
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_1b

    nop

    :goto_4
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_15

    nop

    :goto_5
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_9

    nop

    :goto_6
    const-string v1, "statusbar_battery_bar_color"

    goto :goto_17

    nop

    :goto_7
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_12

    nop

    :goto_8
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_6

    nop

    :goto_9
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_b

    nop

    :goto_a
    const-string v1, "statusbar_battery_bar_animate"

    goto :goto_10

    nop

    :goto_b
    return-void

    :goto_c
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    nop

    :goto_d
    const-string v1, "statusbar_battery_bar_high_color"

    goto :goto_1e

    nop

    :goto_e
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_a

    nop

    :goto_f
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_8

    nop

    :goto_10
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_13

    nop

    :goto_11
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    goto :goto_1

    nop

    :goto_12
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_2

    nop

    :goto_13
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_d

    nop

    :goto_14
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_1c

    nop

    :goto_15
    const-string v1, "statusbar_battery_bar_low_color2"

    goto :goto_7

    nop

    :goto_16
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_e

    nop

    :goto_17
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_3

    nop

    :goto_18
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/BatteryBar;->-get2(Lcom/android/systemui/statusbar/policy/BatteryBar;)Landroid/content/Context;

    move-result-object v1

    goto :goto_11

    nop

    :goto_19
    const-string v1, "statusbar_battery_bar_battery_low_color_warning"

    goto :goto_16

    nop

    :goto_1a
    const/4 v2, 0x0

    goto :goto_1d

    nop

    :goto_1b
    const-string v1, "statusbar_battery_bar_charging_color"

    goto :goto_14

    nop

    :goto_1c
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_19

    nop

    :goto_1d
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryBar$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/BatteryBar;

    goto :goto_18

    nop

    :goto_1e
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_c

    nop
.end method

.method public onChange(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBar$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/BatteryBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/BatteryBar;->-wrap1(Lcom/android/systemui/statusbar/policy/BatteryBar;)V

    return-void
.end method

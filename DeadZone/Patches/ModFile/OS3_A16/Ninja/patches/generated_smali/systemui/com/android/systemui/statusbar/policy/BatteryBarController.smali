.class public Lcom/android/systemui/statusbar/policy/BatteryBarController;
.super Landroid/widget/LinearLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/BatteryBarController$SettingsObserver;
    }
.end annotation


# instance fields
.field isAttached:Z

.field isVertical:Z

.field private mBatteryCharging:Z

.field private mBatteryLevel:I

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field mLocation:I

.field mLocationToLookFor:I

.field private mSettingsObserver:Lcom/android/systemui/statusbar/policy/BatteryBarController$SettingsObserver;

.field mStyle:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v2, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->mStyle:I

    iput v2, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->mLocation:I

    iput v2, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->mLocationToLookFor:I

    iput v2, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->mBatteryLevel:I

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->mBatteryCharging:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->isAttached:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->isVertical:Z

    new-instance v1, Lcom/android/systemui/statusbar/policy/BatteryBarController$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/BatteryBarController$1;-><init>(Lcom/android/systemui/statusbar/policy/BatteryBarController;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz p2, :cond_1

    if-eqz v1, :cond_0

    const-string v0, "http://schemas.android.com/apk/res/com.android.systemui"

    const-string v1, "viewLocation"

    invoke-interface {p2, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->mLocationToLookFor:I

    :cond_0
    if-eqz p2, :cond_1

    const-string v0, "http://schemas.android.com/apk/res/com.android.systemui"

    const-string v1, "viewLocation2"

    invoke-interface {p2, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->mLocationToLookFor:I

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/BatteryBarController;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/BatteryBarController;)I
    .registers 2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->mBatteryLevel:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/policy/BatteryBarController;I)I
    .registers 2

    iput p1, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->mBatteryLevel:I

    return p1
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/policy/BatteryBarController;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->mBatteryCharging:Z

    return p1
.end method


# virtual methods
.method public addBars()V
    .registers 15

    const/4 v13, 0x1

    const/high16 v10, 0x43340000

    const/high16 v12, 0x3f800000

    const/4 v11, -0x1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBarController;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBarController;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "battery_bar_thickness"

    invoke-static {v6, v7, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    int-to-float v2, v6

    iget v6, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v6, v2

    float-to-double v6, v6

    const-wide/high16 v8, 0x3fe0000000000000L

    add-double/2addr v6, v8

    double-to-int v5, v6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBarController;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->isVertical:Z

    if-eqz v6, :cond_1

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_0
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/BatteryBarController;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBarController;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/Prefs;->getLastBatteryLevel(Landroid/content/Context;)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->mBatteryLevel:I

    iget v6, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->mStyle:I

    if-nez v6, :cond_2

    new-instance v6, Lcom/android/systemui/statusbar/policy/BatteryBar;

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->mContext:Landroid/content/Context;

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->mBatteryCharging:Z

    iget v9, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->mBatteryLevel:I

    iget-boolean v10, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->isVertical:Z

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/android/systemui/statusbar/policy/BatteryBar;-><init>(Landroid/content/Context;ZIZ)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v11, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, v6, v7}, Lcom/android/systemui/statusbar/policy/BatteryBarController;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_2
    iget v6, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->mStyle:I

    if-ne v6, v13, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/policy/BatteryBar;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->mContext:Landroid/content/Context;

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->mBatteryCharging:Z

    iget v8, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->mBatteryLevel:I

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->isVertical:Z

    invoke-direct {v0, v6, v7, v8, v9}, Lcom/android/systemui/statusbar/policy/BatteryBar;-><init>(Landroid/content/Context;ZIZ)V

    new-instance v1, Lcom/android/systemui/statusbar/policy/BatteryBar;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->mContext:Landroid/content/Context;

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->mBatteryCharging:Z

    iget v8, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->mBatteryLevel:I

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->isVertical:Z

    invoke-direct {v1, v6, v7, v8, v9}, Lcom/android/systemui/statusbar/policy/BatteryBar;-><init>(Landroid/content/Context;ZIZ)V

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->isVertical:Z

    if-eqz v6, :cond_3

    invoke-virtual {v1, v10}, Lcom/android/systemui/statusbar/policy/BatteryBar;->setRotationY(F)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v11, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, v1, v6}, Lcom/android/systemui/statusbar/policy/BatteryBarController;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v11, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, v0, v6}, Lcom/android/systemui/statusbar/policy/BatteryBarController;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v10}, Lcom/android/systemui/statusbar/policy/BatteryBar;->setRotationY(F)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v11, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, v0, v6}, Lcom/android/systemui/statusbar/policy/BatteryBarController;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v11, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p0, v1, v6}, Lcom/android/systemui/statusbar/policy/BatteryBarController;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method protected isLocationValid(I)Z
    .registers 3

    goto :goto_7

    nop

    :goto_0
    return v0

    :goto_1
    goto :goto_4

    nop

    :goto_2
    goto :goto_6

    :goto_3
    if-eq v0, p1, :cond_0

    goto :goto_1

    :cond_0
    goto :goto_5

    nop

    :goto_4
    const/4 v0, 0x0

    goto :goto_2

    nop

    :goto_5
    const/4 v0, 0x1

    :goto_6
    goto :goto_0

    nop

    :goto_7
    iget v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->mLocationToLookFor:I

    goto :goto_3

    nop
.end method

.method protected onAttachedToWindow()V
    .registers 5

    goto :goto_18

    nop

    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    goto :goto_1c

    nop

    :goto_1
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->isAttached:Z

    goto :goto_0

    nop

    :goto_2
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_1d

    nop

    :goto_3
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->isVertical:Z

    goto :goto_1

    nop

    :goto_4
    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->mSettingsObserver:Lcom/android/systemui/statusbar/policy/BatteryBarController$SettingsObserver;

    goto :goto_12

    nop

    :goto_5
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    goto :goto_16

    nop

    :goto_6
    if-eqz v1, :cond_0

    goto :goto_1a

    :cond_0
    goto :goto_1e

    nop

    :goto_7
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBarController;->getContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_e

    nop

    :goto_8
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    goto :goto_20

    nop

    :goto_9
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/BatteryBarController$SettingsObserver;->observe()V

    goto :goto_19

    nop

    :goto_a
    move v1, v2

    :goto_b
    goto :goto_3

    nop

    :goto_c
    const/4 v3, 0x2

    goto :goto_2

    nop

    :goto_d
    new-instance v2, Landroid/os/Handler;

    goto :goto_17

    nop

    :goto_e
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    goto :goto_c

    nop

    :goto_f
    const/4 v3, -0x1

    goto :goto_13

    nop

    :goto_10
    return-void

    :goto_11
    goto :goto_15

    nop

    :goto_12
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->mSettingsObserver:Lcom/android/systemui/statusbar/policy/BatteryBarController$SettingsObserver;

    goto :goto_9

    nop

    :goto_13
    if-eq v1, v3, :cond_1

    goto :goto_11

    :cond_1
    goto :goto_a

    nop

    :goto_14
    goto :goto_b

    :goto_15
    const/4 v1, 0x0

    goto :goto_14

    nop

    :goto_16
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->isAttached:Z

    goto :goto_6

    nop

    :goto_17
    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    goto :goto_1f

    nop

    :goto_18
    const/4 v2, 0x1

    goto :goto_5

    nop

    :goto_19
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBarController;->updateSettings()V

    :goto_1a
    goto :goto_10

    nop

    :goto_1b
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_f

    nop

    :goto_1c
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    goto :goto_8

    nop

    :goto_1d
    new-instance v1, Lcom/android/systemui/statusbar/policy/BatteryBarController$SettingsObserver;

    goto :goto_d

    nop

    :goto_1e
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBarController;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    goto :goto_1b

    nop

    :goto_1f
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/policy/BatteryBarController$SettingsObserver;-><init>(Lcom/android/systemui/statusbar/policy/BatteryBarController;Landroid/os/Handler;)V

    goto :goto_4

    nop

    :goto_20
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_7

    nop
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6

    goto :goto_5

    nop

    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    goto :goto_3

    nop

    :goto_2
    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    goto :goto_7

    nop

    :goto_3
    return-void

    :goto_4
    new-instance v1, Lcom/android/systemui/statusbar/policy/BatteryBarController$2;

    goto :goto_8

    nop

    :goto_5
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_9

    nop

    :goto_6
    const-wide/16 v2, 0x1f4

    goto :goto_0

    nop

    :goto_7
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBarController;->getHandler()Landroid/os/Handler;

    move-result-object v0

    goto :goto_4

    nop

    :goto_8
    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/BatteryBarController$2;-><init>(Lcom/android/systemui/statusbar/policy/BatteryBarController;)V

    goto :goto_6

    nop

    :goto_9
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->isAttached:Z

    goto :goto_2

    nop
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    goto :goto_4

    nop

    :goto_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    goto :goto_6

    nop

    :goto_1
    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    goto :goto_9

    nop

    :goto_2
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :goto_3
    goto :goto_0

    nop

    :goto_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->isAttached:Z

    goto :goto_1

    nop

    :goto_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->mSettingsObserver:Lcom/android/systemui/statusbar/policy/BatteryBarController$SettingsObserver;

    goto :goto_2

    nop

    :goto_6
    return-void

    :goto_7
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    goto :goto_a

    nop

    :goto_8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBarController;->removeBars()V

    goto :goto_e

    nop

    :goto_9
    const/4 v0, 0x0

    goto :goto_d

    nop

    :goto_a
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_b

    nop

    :goto_b
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBarController;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_c

    nop

    :goto_c
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    goto :goto_5

    nop

    :goto_d
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->isAttached:Z

    goto :goto_8

    nop

    :goto_e
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBarController;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_7

    nop
.end method

.method public removeBars()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBarController;->removeAllViews()V

    return-void
.end method

.method public updateSettings()V
    .registers 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBarController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "battery_bar_style"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->mStyle:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBarController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "battery_bar"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->mLocation:I

    iget v0, p0, Lcom/android/systemui/statusbar/policy/BatteryBarController;->mLocation:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/BatteryBarController;->isLocationValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBarController;->removeBars()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBarController;->addBars()V

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/BatteryBarController;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryBarController;->removeBars()V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/BatteryBarController;->setVisibility(I)V

    goto :goto_0
.end method

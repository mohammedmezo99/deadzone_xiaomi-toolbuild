.class public Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;
.implements Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/statusbar/policy/MinimalismModeController$MinimalismModeListener;
.implements Lcom/miui/systemui/modulesettings/DeveloperSettings$MiuiOptimizationListener;
.implements Lcom/android/systemui/statusbar/views/IBlurEffect;


# static fields
.field public static synthetic $r8$clinit:I


# instance fields
.field public mAnimToAod:Z

.field public mAnimatAble:Lcom/android/systemui/statusbar/views/IAnimatable;

.field public mBatteryChargeingViewFolme:Lmiuix/animation/IFolme;

.field public mBatteryChargingView:Landroid/widget/ImageView;

.field public mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field public mBatteryDigitalView:Landroid/widget/FrameLayout;

.field public mBatteryDigitalViewFolme:Lmiuix/animation/IFolme;

.field public mBatteryIconView:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;

.field public mBatteryIconViewFolme:Lmiuix/animation/IFolme;

.field public mBatteryMeterViewFolme:Lmiuix/animation/IFolme;

.field public mBatteryPercentContainer:Landroid/widget/LinearLayout;

.field public mBatteryPercentContainerFolme:Lmiuix/animation/IFolme;

.field public mBatteryPercentMarkView:Landroid/widget/TextView;

.field public mBatteryPercentView:Landroid/widget/TextView;

.field public mBatteryStyle:I

.field public mBlurRadius:I

.field public mByIsAddBatteryIslandTrigger:Z

.field public mByIslandTrigger:Z

.field public mCharging:Z

.field public mConfigChanged:Z

.field public mConfiguration:Landroid/content/res/Configuration;

.field public mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public mDark:I

.field public mDarkColor:I

.field public mDarkIntensity:F

.field public mFirstLevel:Z

.field public mHasIslandInfoOper:Z

.field public mHasIslandOnce:Z

.field public mHollowBatteryIconView:Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;

.field public mHollowBatteryIconViewFolme:Lmiuix/animation/IFolme;

.field public mHomeBlock:Z

.field public mInitTime:J

.field public mIsAddBatteryIsland:Z

.field public mIsAodAnimate:Z

.field public mIsControlCenterExpanding:Z

.field public mIsIslandShowing:Z

.field public mIslandAnimate:Z

.field public mLayoutFromTag:I

.field public mLevel:I

.field public mLevelString:Ljava/lang/String;

.field public mLightColor:I

.field public mMinimalism:Z

.field public mMinimalismModeController:Lcom/android/systemui/statusbar/policy/MinimalismModeController;

.field public mMiuiStatusBatteryContainer:Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;

.field public mPerformanceMode:Z

.field public mPowerSave:Z

.field public mQuickCharging:Z

.field public mSettingsManager:Lcom/miui/systemui/SettingsManager;

.field public mStatusBarState:I

.field public mStoreIsAddBatteryIsland:Z

.field public mStoreIsIslandShowing:Z

.field public mStoreRealStyle:I

.field public mTintAreas:Ljava/util/ArrayList;

.field public mTintColor:I

.field public mToAod:Z

.field public mUseLegacyDrawable:Z

.field public mUseTint:Z

.field public onLayoutChangeListener:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView$1;


# direct methods
.method public static $r8$lambda$N-bVPp4Pa3IxUB2suQH0nY3fDMY(Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;)V
    .registers 12

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    neg-int v0, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mIsAddBatteryIsland:Z

    const/4 v2, 0x0

    const-string v3, "battery_meter_view"

    const-wide/16 v4, 0x0

    const-string v6, "new_battery_meter_view"

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->getUseAnimate()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mByIsAddBatteryIslandTrigger:Z

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->enableAnimation()Z

    move-result v2

    :goto_1
    const/16 v1, 0x1e

    const-wide v7, 0x3fd999999999999aL

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryMeterViewFolme:Lmiuix/animation/IFolme;

    invoke-interface {v2}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v2

    new-instance v9, Lmiuix/animation/controller/AnimState;

    invoke-direct {v9}, Lmiuix/animation/controller/AnimState;-><init>()V

    sget-object v10, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {v9, v10, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v4

    invoke-static {}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->getAnimConfig()Lmiuix/animation/base/AnimConfig;

    move-result-object v5

    filled-new-array {v5}, [Lmiuix/animation/base/AnimConfig;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lmiuix/animation/FolmeStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryMeterViewFolme:Lmiuix/animation/IFolme;

    invoke-interface {v2}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v2

    invoke-static {v1, v3}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->getAnimState(ILjava/lang/String;)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    sget-object v3, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {v1, v3, v7, v8}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    sget-object v3, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {v1, v3, v7, v8}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    invoke-static {}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->getAnimConfig()Lmiuix/animation/base/AnimConfig;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView$3;

    const/4 v5, 0x0

    invoke-direct {v4, v5, p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView$3;-><init>(ILjava/lang/Object;)V

    filled-new-array {v4}, [Lmiuix/animation/listener/TransitionListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object v3

    filled-new-array {v3}, [Lmiuix/animation/base/AnimConfig;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lmiuix/animation/FolmeStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryMeterViewFolme:Lmiuix/animation/IFolme;

    invoke-interface {v1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v1

    new-instance v2, Lmiuix/animation/controller/AnimState;

    invoke-direct {v2, v6}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v3, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    int-to-double v4, v0

    invoke-virtual {v2, v3, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    invoke-static {}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->getAnimConfig()Lmiuix/animation/base/AnimConfig;

    move-result-object v2

    filled-new-array {v2}, [Lmiuix/animation/base/AnimConfig;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lmiuix/animation/FolmeStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_3

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryMeterViewFolme:Lmiuix/animation/IFolme;

    invoke-interface {v2}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v2

    invoke-static {v1, v3}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->getAnimState(ILjava/lang/String;)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    sget-object v3, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {v1, v3, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    sget-object v3, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {v1, v3, v7, v8}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    sget-object v3, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {v1, v3, v7, v8}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    invoke-interface {v2, v1}, Lmiuix/animation/FolmeStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryMeterViewFolme:Lmiuix/animation/IFolme;

    invoke-interface {v1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v1

    new-instance v2, Lmiuix/animation/controller/AnimState;

    invoke-direct {v2, v6}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v3, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    int-to-double v4, v0

    invoke-virtual {v2, v3, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    invoke-interface {v1, v0}, Lmiuix/animation/FolmeStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->updateVisibility$1$1()V

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->updateVisibility$1$1()V

    goto :goto_3

    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->getUseAnimate()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mByIsAddBatteryIslandTrigger:Z

    if-nez v1, :cond_5

    move v1, v2

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->enableAnimation()Z

    move-result v1

    :goto_2
    const-wide/high16 v7, 0x3ff0000000000000L

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->updateVisibility$1$1()V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mHomeBlock:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryMeterViewFolme:Lmiuix/animation/IFolme;

    invoke-interface {v1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v1

    new-instance v9, Lmiuix/animation/controller/AnimState;

    invoke-direct {v9}, Lmiuix/animation/controller/AnimState;-><init>()V

    sget-object v10, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {v9, v10, v7, v8}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v9

    invoke-static {}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->getAnimConfig()Lmiuix/animation/base/AnimConfig;

    move-result-object v10

    filled-new-array {v10}, [Lmiuix/animation/base/AnimConfig;

    move-result-object v10

    invoke-interface {v1, v9, v10}, Lmiuix/animation/FolmeStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryMeterViewFolme:Lmiuix/animation/IFolme;

    invoke-interface {v1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v1

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->getAnimState(ILjava/lang/String;)Lmiuix/animation/controller/AnimState;

    move-result-object v2

    sget-object v3, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {v2, v3, v7, v8}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v2

    sget-object v3, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {v2, v3, v7, v8}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v2

    invoke-static {}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->getAnimConfig()Lmiuix/animation/base/AnimConfig;

    move-result-object v3

    filled-new-array {v3}, [Lmiuix/animation/base/AnimConfig;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lmiuix/animation/FolmeStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    :cond_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryMeterViewFolme:Lmiuix/animation/IFolme;

    invoke-interface {v1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v1

    new-instance v2, Lmiuix/animation/controller/AnimState;

    invoke-direct {v2, v6}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v3, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    int-to-double v7, v0

    invoke-virtual {v2, v3, v7, v8}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    invoke-interface {v1, v0}, Lmiuix/animation/FolmeStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryMeterViewFolme:Lmiuix/animation/IFolme;

    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    invoke-static {v6, v3, v4, v5}, Lcom/android/keyguard/clock/KeyguardClockContainer$carrierTextCallback$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lmiuix/animation/property/ViewProperty;D)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    invoke-static {}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->getAnimConfig()Lmiuix/animation/base/AnimConfig;

    move-result-object v2

    filled-new-array {v2}, [Lmiuix/animation/base/AnimConfig;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lmiuix/animation/FolmeStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryMeterViewFolme:Lmiuix/animation/IFolme;

    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->getAnimState(ILjava/lang/String;)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    sget-object v2, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {v1, v2, v7, v8}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    sget-object v2, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {v1, v2, v7, v8}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    sget-object v2, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {v1, v2, v7, v8}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    invoke-interface {v0, v1}, Lmiuix/animation/FolmeStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryMeterViewFolme:Lmiuix/animation/IFolme;

    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    new-instance v1, Lmiuix/animation/controller/AnimState;

    invoke-direct {v1, v6}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v2, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {v1, v2, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    invoke-interface {v0, v1}, Lmiuix/animation/FolmeStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->updateVisibility$1$1()V

    goto :goto_3

    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->updateVisibility$1$1()V

    :goto_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mByIsAddBatteryIslandTrigger:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetUseAnimate(Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->getUseAnimate()Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mUseLegacyDrawable:Z

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mQuickCharging:Z

    const/4 p3, -0x1

    iput p3, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryStyle:I

    const-string v0, "0"

    iput-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mLevelString:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mTintAreas:Ljava/util/ArrayList;

    iput p2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mDark:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mFirstLevel:Z

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mMinimalism:Z

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mHasIslandOnce:Z

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mHasIslandInfoOper:Z

    iput p3, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mLayoutFromTag:I

    iput p3, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mStoreRealStyle:I

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mConfigChanged:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mIslandAnimate:Z

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mInitTime:J

    new-instance p3, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView$1;

    invoke-direct {p3, p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView$1;-><init>(Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;)V

    iput-object p3, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->onLayoutChangeListener:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView$1;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mAnimToAod:Z

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-virtual {p3}, Landroid/os/Looper;->isCurrentThread()Z

    move-result p3

    if-nez p3, :cond_0

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "MiuiBatteryMeterView: \n "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v1, "MiuiBatteryMeterView"

    invoke-static {v1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object p3, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {p3, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/statusbar/policy/BatteryController;

    iput-object p3, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    sget-object p3, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/statusbar/policy/MinimalismModeController;

    invoke-virtual {p3, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/statusbar/policy/MinimalismModeController;

    iput-object p3, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mMinimalismModeController:Lcom/android/systemui/statusbar/policy/MinimalismModeController;

    const-class p3, Lcom/miui/systemui/SettingsManager;

    invoke-static {p3}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/miui/systemui/SettingsManager;

    iput-object p3, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mSettingsManager:Lcom/miui/systemui/SettingsManager;

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-virtual {v1, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iput-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    new-instance v1, Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const p1, 0x800013

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0e0052

    invoke-virtual {p1, p2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const p1, 0x7f0b0186

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryDigitalView:Landroid/widget/FrameLayout;

    const p1, 0x7f0b0187

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryIconView:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;

    const p2, 0x7f0b0564

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mHollowBatteryIconView:Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;

    const v0, 0x7f0b018d

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    const v0, 0x7f0b018c

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryPercentMarkView:Landroid/widget/TextView;

    const v0, 0x7f0b018b

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryPercentContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f0b0183

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryChargingView:Landroid/widget/ImageView;

    iget-boolean p0, p3, Lcom/miui/systemui/SettingsManager;->miuiOptimizationEnabled:Z

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->setMiuiOptimizationEnabled(Z)V

    iget-boolean p0, p3, Lcom/miui/systemui/SettingsManager;->miuiOptimizationEnabled:Z

    invoke-virtual {p2, p0}, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->setMiuiOptimizationEnabled(Z)V

    return-void
.end method

.method public static animateHideView(Lmiuix/animation/IFolme;Landroid/view/View;Ljava/lang/String;)V
    .registers 6

    invoke-interface {p0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p0

    const/16 v0, 0x1e

    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->getAnimState(ILjava/lang/String;)Lmiuix/animation/controller/AnimState;

    move-result-object p2

    sget-object v0, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    const-wide/16 v1, 0x0

    invoke-virtual {p2, v0, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p2

    invoke-static {}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->getAnimConfig()Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView$4;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView$4;-><init>(ILandroid/view/View;)V

    filled-new-array {v1}, [Lmiuix/animation/listener/TransitionListener;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    filled-new-array {p1}, [Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Lmiuix/animation/FolmeStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    return-void
.end method

.method public static animateShowView(Lmiuix/animation/IFolme;Landroid/view/View;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-interface {p0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p0

    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->getAnimState(ILjava/lang/String;)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    sget-object p2, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    const-wide/high16 v0, 0x3ff0000000000000L

    invoke-virtual {p1, p2, v0, v1}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    invoke-static {}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->getAnimConfig()Lmiuix/animation/base/AnimConfig;

    move-result-object p2

    filled-new-array {p2}, [Lmiuix/animation/base/AnimConfig;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lmiuix/animation/FolmeStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    return-void
.end method

.method public static getAnimConfig()Lmiuix/animation/base/AnimConfig;
    .registers 4

    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v1, -0x2

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-virtual {v0, v1, v2}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    const/4 v2, 0x0

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lmiuix/animation/base/AnimConfig;->setDelay(J)Lmiuix/animation/base/AnimConfig;

    return-object v0

    :array_0
    .array-data 4
        0x3f733333
        0x3eb33333
    .end array-data
.end method

.method public static getAnimState(ILjava/lang/String;)Lmiuix/animation/controller/AnimState;
    .registers 5

    new-instance v0, Lmiuix/animation/controller/AnimState;

    invoke-direct {v0, p1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-boolean p1, Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController;->isHighDevice:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/android/systemui/statusbar/anim/FolmeAnimatableProperty;->Companion:Lcom/android/systemui/statusbar/anim/FolmeAnimatableProperty$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/systemui/statusbar/anim/FolmeAnimatableProperty$Companion;->BLUR_PROPERTY:Lcom/android/systemui/statusbar/anim/FolmeAnimatableProperty$Companion$BLUR_PROPERTY$1;

    int-to-double v1, p0

    invoke-virtual {v0, p1, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    :cond_0
    return-object v0
.end method

.method private getNoUseAnimate()Z
    .registers 2

    iget p0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mLayoutFromTag:I

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private getUseAnimate()Z
    .registers 2

    iget p0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mLayoutFromTag:I

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public static hideView(Lmiuix/animation/IFolme;Landroid/view/View;Ljava/lang/String;)V
    .registers 6

    sget-boolean v0, Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController;->isHighDevice:Z

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/anim/FolmeAnimatableProperty;->Companion:Lcom/android/systemui/statusbar/anim/FolmeAnimatableProperty$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/statusbar/anim/FolmeAnimatableProperty$Companion;->BLUR_PROPERTY:Lcom/android/systemui/statusbar/anim/FolmeAnimatableProperty$Companion$BLUR_PROPERTY$1;

    sget-object v2, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    filled-new-array {v1, v2}, [Lmiuix/animation/property/FloatProperty;

    move-result-object v1

    invoke-interface {v0, v1}, Lmiuix/animation/ICancelableStyle;->cancel([Lmiuix/animation/property/FloatProperty;)V

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    sget-object v1, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    filled-new-array {v1}, [Lmiuix/animation/property/FloatProperty;

    move-result-object v1

    invoke-interface {v0, v1}, Lmiuix/animation/ICancelableStyle;->cancel([Lmiuix/animation/property/FloatProperty;)V

    :goto_0
    invoke-interface {p0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p0

    const/16 v0, 0x1e

    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->getAnimState(ILjava/lang/String;)Lmiuix/animation/controller/AnimState;

    move-result-object p2

    sget-object v0, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    const-wide/16 v1, 0x0

    invoke-virtual {p2, v0, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p2

    invoke-interface {p0, p2}, Lmiuix/animation/FolmeStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static showView(Lmiuix/animation/IFolme;Landroid/view/View;Ljava/lang/String;)V
    .registers 7

    sget-boolean v0, Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController;->isHighDevice:Z

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/anim/FolmeAnimatableProperty;->Companion:Lcom/android/systemui/statusbar/anim/FolmeAnimatableProperty$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/statusbar/anim/FolmeAnimatableProperty$Companion;->BLUR_PROPERTY:Lcom/android/systemui/statusbar/anim/FolmeAnimatableProperty$Companion$BLUR_PROPERTY$1;

    sget-object v2, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    filled-new-array {v1, v2}, [Lmiuix/animation/property/FloatProperty;

    move-result-object v1

    invoke-interface {v0, v1}, Lmiuix/animation/ICancelableStyle;->cancel([Lmiuix/animation/property/FloatProperty;)V

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    sget-object v1, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    filled-new-array {v1}, [Lmiuix/animation/property/FloatProperty;

    move-result-object v1

    invoke-interface {v0, v1}, Lmiuix/animation/ICancelableStyle;->cancel([Lmiuix/animation/property/FloatProperty;)V

    :goto_0
    invoke-interface {p0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->getAnimState(ILjava/lang/String;)Lmiuix/animation/controller/AnimState;

    move-result-object p2

    sget-object v1, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    const-wide/high16 v2, 0x3ff0000000000000L

    invoke-virtual {p2, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p2

    invoke-interface {p0, p2}, Lmiuix/animation/FolmeStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public doAnimateColor(Z)V
    .registers 7

    const-string v0, "intensity"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    const/high16 v1, 0x3f800000

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string v4, "MiuiBatteryMeterView"

    filled-new-array {v4, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Lmiuix/animation/FolmeStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    new-instance v1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    new-instance v2, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView$2;-><init>(Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;)V

    filled-new-array {v2}, [Lmiuix/animation/listener/TransitionListener;

    move-result-object p0

    invoke-virtual {v1, p0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    filled-new-array {v4, p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Lmiuix/animation/FolmeStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    return-void
.end method

.method public enableAnimation()Z
    .registers 7

    iget-wide v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mInitTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mInitTime:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    iget v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mLayoutFromTag:I

    sget-object v4, Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController;->blurPoint:Ljava/util/ArrayList;

    if-ne v0, v1, :cond_0

    const-wide/16 v4, 0x7d0

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x1f4

    :goto_0
    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mIslandAnimate:Z

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/utils/configs/MiuiConfigs;->isFlipTinyScreen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mAnimatAble:Lcom/android/systemui/statusbar/views/IAnimatable;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/android/systemui/statusbar/views/IAnimatable;->animatorEnable()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_4
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mIsAodAnimate:Z

    if-eqz p0, :cond_5

    goto :goto_1

    :cond_5
    sget-boolean p0, Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;->MINIMAL_ANIMATION_ENABLED:Z

    if-eqz p0, :cond_7

    :cond_6
    :goto_1
    const/4 p0, 0x0

    return p0

    :cond_7
    return v1
.end method

.method public folmeNotNull()Z
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryMeterViewFolme:Lmiuix/animation/IFolme;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryDigitalViewFolme:Lmiuix/animation/IFolme;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryIconViewFolme:Lmiuix/animation/IFolme;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mHollowBatteryIconViewFolme:Lmiuix/animation/IFolme;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryPercentContainerFolme:Lmiuix/animation/IFolme;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryChargeingViewFolme:Lmiuix/animation/IFolme;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getBatteryIsCharging()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mCharging:Z

    return p0
.end method

.method public getBatteryStyle()I
    .registers 1

    iget p0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryStyle:I

    return p0
.end method

.method public getBlurRadius()I
    .registers 1

    iget p0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBlurRadius:I

    return p0
.end method

.method public getHollowChargingIconId()I
    .registers 1

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mQuickCharging:Z

    if-eqz p0, :cond_0

    const p0, 0x7f080fbd

    return p0

    :cond_0
    const p0, 0x7f080fa6

    return p0
.end method

.method public getIsAddBatteryIsland()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mIsAddBatteryIsland:Z

    return p0
.end method

.method public isNeedAnimateIsland()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mByIslandTrigger:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->enableAnimation()Z

    move-result p0

    return p0
.end method

.method public onAttachedToWindow()V
    .registers 5

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->getUseAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryMeterViewFolme:Lmiuix/animation/IFolme;

    new-array v1, v0, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryDigitalView:Landroid/widget/FrameLayout;

    aput-object v3, v1, v2

    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryDigitalViewFolme:Lmiuix/animation/IFolme;

    new-array v1, v0, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryIconView:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;

    aput-object v3, v1, v2

    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryIconViewFolme:Lmiuix/animation/IFolme;

    new-array v1, v0, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mHollowBatteryIconView:Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;

    aput-object v3, v1, v2

    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mHollowBatteryIconViewFolme:Lmiuix/animation/IFolme;

    new-array v1, v0, [Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryPercentContainer:Landroid/widget/LinearLayout;

    aput-object v3, v1, v2

    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryPercentContainerFolme:Lmiuix/animation/IFolme;

    new-array v0, v0, [Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryChargingView:Landroid/widget/ImageView;

    aput-object v1, v0, v2

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryChargeingViewFolme:Lmiuix/animation/IFolme;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mInitTime:J

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mMinimalismModeController:Lcom/android/systemui/statusbar/policy/MinimalismModeController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/MinimalismModeController;->addListener(Lcom/android/systemui/statusbar/policy/MinimalismModeController$MinimalismModeListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mSettingsManager:Lcom/miui/systemui/SettingsManager;

    invoke-virtual {v0, p0}, Lcom/miui/systemui/SettingsManager;->registerMiuiOptimizationListener(Lcom/miui/systemui/modulesettings/DeveloperSettings$MiuiOptimizationListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->onLayoutChangeListener:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView$1;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public onBatteryLevelChanged(IZZ)V
    .registers 6

    iget v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mLevel:I

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mFirstLevel:Z

    if-eqz v0, :cond_1

    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mLevel:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mLevelString:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mFirstLevel:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->updateChargeAndText()V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryIconView:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->onBatteryLevelChanged(IZZ)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mHollowBatteryIconView:Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;

    iget p2, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->level:I

    if-eq p1, p2, :cond_3

    iput p1, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->level:I

    const/16 p2, 0x13

    if-gt p1, p2, :cond_2

    const/4 v1, 0x1

    :cond_2
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->low:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->updateBatteryDrawable()V

    :cond_3
    return-void
.end method

.method public onBatteryStyleChanged(I)V
    .registers 9

    iput p1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mStoreRealStyle:I

    sget-boolean v0, Lmiui/util/CustomizeUtil;->HAS_NOTCH:Z

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    if-ne p1, v1, :cond_0

    move p1, v2

    :cond_0
    sget-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->IS_PAD:Z

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mIsIslandShowing:Z

    if-eqz v0, :cond_2

    if-ne p1, v3, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->getUseAnimate()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->getNoUseAnimate()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v4

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    iget v5, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mStatusBarState:I

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    iget v5, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mLayoutFromTag:I

    const/4 v6, 0x5

    if-eq v5, v6, :cond_4

    if-ne v5, v4, :cond_6

    :cond_4
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mHasIslandOnce:Z

    if-eqz v5, :cond_5

    goto :goto_1

    :cond_5
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mHasIslandInfoOper:Z

    if-eqz v5, :cond_6

    move v0, v2

    :cond_6
    :goto_1
    if-eqz v0, :cond_7

    move p1, v4

    :cond_7
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mToAod:Z

    if-eqz v0, :cond_8

    if-eq p1, v3, :cond_8

    goto :goto_2

    :cond_8
    move v3, p1

    :goto_2
    iget p1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryStyle:I

    if-eq p1, v3, :cond_13

    iput v3, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryStyle:I

    const/16 p1, 0x8

    const-string v0, "battery_icon_container"

    if-ne v3, v1, :cond_b

    invoke-direct {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->getUseAnimate()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->folmeNotNull()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->isNeedAnimateIsland()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryDigitalViewFolme:Lmiuix/animation/IFolme;

    iget-object v5, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryDigitalView:Landroid/widget/FrameLayout;

    invoke-static {v1, v5, v0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->animateHideView(Lmiuix/animation/IFolme;Landroid/view/View;Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryDigitalViewFolme:Lmiuix/animation/IFolme;

    iget-object v5, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryDigitalView:Landroid/widget/FrameLayout;

    invoke-static {v1, v5, v0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->hideView(Lmiuix/animation/IFolme;Landroid/view/View;Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryDigitalView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_3

    :cond_b
    invoke-direct {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->getUseAnimate()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->folmeNotNull()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->isNeedAnimateIsland()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryDigitalViewFolme:Lmiuix/animation/IFolme;

    iget-object v5, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryDigitalView:Landroid/widget/FrameLayout;

    invoke-static {v1, v5, v0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->animateShowView(Lmiuix/animation/IFolme;Landroid/view/View;Ljava/lang/String;)V

    goto :goto_3

    :cond_c
    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryDigitalViewFolme:Lmiuix/animation/IFolme;

    iget-object v5, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryDigitalView:Landroid/widget/FrameLayout;

    invoke-static {v1, v5, v0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->showView(Lmiuix/animation/IFolme;Landroid/view/View;Ljava/lang/String;)V

    goto :goto_3

    :cond_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryDigitalView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_3
    const-string v0, "hollow_battery_meter_icon_view"

    const-string v1, "battery_meter_icon_view"

    if-ne v3, v4, :cond_10

    invoke-direct {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->getUseAnimate()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->folmeNotNull()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->isNeedAnimateIsland()Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryIconViewFolme:Lmiuix/animation/IFolme;

    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryIconView:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;

    invoke-static {p1, v2, v1}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->animateHideView(Lmiuix/animation/IFolme;Landroid/view/View;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mHollowBatteryIconViewFolme:Lmiuix/animation/IFolme;

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mHollowBatteryIconView:Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;

    invoke-static {p1, v1, v0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->animateShowView(Lmiuix/animation/IFolme;Landroid/view/View;Ljava/lang/String;)V

    goto :goto_4

    :cond_e
    iget-object p1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryIconViewFolme:Lmiuix/animation/IFolme;

    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryIconView:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;

    invoke-static {p1, v2, v1}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->hideView(Lmiuix/animation/IFolme;Landroid/view/View;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mHollowBatteryIconViewFolme:Lmiuix/animation/IFolme;

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mHollowBatteryIconView:Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;

    invoke-static {p1, v1, v0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->showView(Lmiuix/animation/IFolme;Landroid/view/View;Ljava/lang/String;)V

    goto :goto_4

    :cond_f
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryIconView:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mHollowBatteryIconView:Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    :cond_10
    invoke-direct {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->getUseAnimate()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->folmeNotNull()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->isNeedAnimateIsland()Z

    move-result p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryIconViewFolme:Lmiuix/animation/IFolme;

    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryIconView:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;

    invoke-static {p1, v2, v1}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->animateShowView(Lmiuix/animation/IFolme;Landroid/view/View;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mHollowBatteryIconViewFolme:Lmiuix/animation/IFolme;

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mHollowBatteryIconView:Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;

    invoke-static {p1, v1, v0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->animateHideView(Lmiuix/animation/IFolme;Landroid/view/View;Ljava/lang/String;)V

    goto :goto_4

    :cond_11
    iget-object p1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryIconViewFolme:Lmiuix/animation/IFolme;

    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryIconView:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;

    invoke-static {p1, v2, v1}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->showView(Lmiuix/animation/IFolme;Landroid/view/View;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mHollowBatteryIconViewFolme:Lmiuix/animation/IFolme;

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mHollowBatteryIconView:Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;

    invoke-static {p1, v1, v0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->hideView(Lmiuix/animation/IFolme;Landroid/view/View;Ljava/lang/String;)V

    goto :goto_4

    :cond_12
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryIconView:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mHollowBatteryIconView:Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->updateChargeAndText()V

    :cond_13
    return-void
.end method

.method public onChanged(Z)V
    .registers 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryIconView:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->setMiuiOptimizationEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mHollowBatteryIconView:Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->setMiuiOptimizationEnabled(Z)V

    const/4 p1, 0x1

    new-array v0, p1, [Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/utils/configs/MiuiConfigs;->sMiproTypefaceWght500:Landroid/graphics/Typeface;

    invoke-static {v1, v0}, Lcom/miui/utils/configs/MiuiConfigs;->applyStatusBarTypeface(Landroid/graphics/Typeface;[Landroid/widget/TextView;)V

    new-array p1, p1, [Landroid/widget/TextView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryPercentMarkView:Landroid/widget/TextView;

    aput-object p0, p1, v2

    sget-object p0, Lcom/miui/utils/configs/MiuiConfigs;->sMiproTypefaceWght600:Landroid/graphics/Typeface;

    invoke-static {p0, p1}, Lcom/miui/utils/configs/MiuiConfigs;->applyStatusBarTypeface(Landroid/graphics/Typeface;[Landroid/widget/TextView;)V

    return-void
.end method

.method public onChargeStateChanged(ZZ)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mCharging:Z

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mQuickCharging:Z

    if-eq v0, p2, :cond_1

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mCharging:Z

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mQuickCharging:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->updateChargeAndText()V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryIconView:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->onChargeStateChanged(ZZ)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mHollowBatteryIconView:Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->charging:Z

    if-ne v0, p1, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->quickCharging:Z

    if-eq v0, p2, :cond_2

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->charging:Z

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->quickCharging:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->updateBatteryDrawable()V

    return-void
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v0}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    and-int/lit8 p1, v0, 0x4

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mHollowBatteryIconView:Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->updateResources()V

    :cond_0
    const p1, 0x40003084

    and-int/2addr p1, v0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mConfigChanged:Z

    :cond_1
    return-void
.end method

.method public onDarkChanged(Ljava/util/ArrayList;FI)V
    .registers 11

    iput-object p1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mTintAreas:Ljava/util/ArrayList;

    iput p2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mDarkIntensity:F

    iput p3, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mTintColor:I

    iget v4, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mLightColor:I

    iget v5, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mDarkColor:I

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mUseTint:Z

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->updateLightDarkTint(Ljava/util/ArrayList;FIIIZ)V

    return-void
.end method

.method public onDarkChangedInternal()V
    .registers 6

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mUseTint:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mTintAreas:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mTintColor:I

    invoke-static {v0, p0, v1}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getTint(Ljava/util/Collection;Landroid/view/View;I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryChargingView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryPercentMarkView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mTintAreas:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mDarkIntensity:F

    invoke-static {v0, p0, v1}, Lcom/android/systemui/statusbar/DarkIconDispatcherExt;->getDarkIntensity(Ljava/util/ArrayList;Landroid/view/View;F)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v1, 0x2

    if-lez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    iget v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mDark:I

    if-eq v2, v0, :cond_7

    iput v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mDark:I

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->getHollowChargingIconId()I

    move-result v2

    sget-object v3, Lcom/miui/systemui/statusbar/Icons;->sDarkIconMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->getHollowChargingIconId()I

    move-result v2

    sget-object v3, Lcom/miui/systemui/statusbar/Icons;->sLightIconMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryChargingView:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    if-ne v0, v1, :cond_5

    iget v3, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mDarkColor:I

    goto :goto_2

    :cond_5
    iget v3, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mLightColor:I

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryPercentMarkView:Landroid/widget/TextView;

    if-ne v0, v1, :cond_6

    iget p0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mDarkColor:I

    goto :goto_3

    :cond_6
    iget p0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mLightColor:I

    :goto_3
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_7
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->updateAll()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryIconView:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->updateResources$19()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mHollowBatteryIconView:Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->updateResources()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->getUseAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->folmeNotNull()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryMeterViewFolme:Lmiuix/animation/IFolme;

    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/FolmeStyle;->clean()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryDigitalViewFolme:Lmiuix/animation/IFolme;

    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/FolmeStyle;->clean()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryIconViewFolme:Lmiuix/animation/IFolme;

    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/FolmeStyle;->clean()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mHollowBatteryIconViewFolme:Lmiuix/animation/IFolme;

    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/FolmeStyle;->clean()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryPercentContainerFolme:Lmiuix/animation/IFolme;

    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/FolmeStyle;->clean()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryChargeingViewFolme:Lmiuix/animation/IFolme;

    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/FolmeStyle;->clean()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mMinimalismModeController:Lcom/android/systemui/statusbar/policy/MinimalismModeController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MinimalismModeController;->mListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mSettingsManager:Lcom/miui/systemui/SettingsManager;

    iget-object v0, v0, Lcom/miui/systemui/SettingsManager;->miuiOptimizationListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->removeCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public onFinishInflate()V
    .registers 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->updateAll()V

    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 13

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isLayoutRtl()Z

    move-result p1

    sub-int/2addr p5, p3

    sub-int/2addr p4, p2

    iget-object p2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryDigitalView:Landroid/widget/FrameLayout;

    const/4 p3, 0x0

    const/16 v0, 0x8

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p2

    if-eq p2, v0, :cond_5

    iget-object p2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryDigitalView:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p2

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryDigitalView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryDigitalView:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingStart()I

    move-result v3

    if-eqz p1, :cond_0

    sub-int v3, p4, v3

    sub-int/2addr v3, p2

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v4

    if-le v1, p5, :cond_1

    move v5, p3

    goto :goto_0

    :cond_1
    sub-int v5, p5, v1

    div-int/lit8 v5, v5, 0x2

    :goto_0
    add-int/2addr v5, v4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingStart()I

    move-result v4

    if-eqz p1, :cond_2

    sub-int v4, p4, v4

    goto :goto_1

    :cond_2
    add-int/2addr v4, p2

    :goto_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v6

    if-le v1, p5, :cond_3

    move v1, p5

    goto :goto_2

    :cond_3
    add-int/2addr v1, p5

    div-int/lit8 v1, v1, 0x2

    :goto_2
    add-int/2addr v1, v6

    invoke-virtual {v2, v3, v5, v4, v1}, Landroid/widget/FrameLayout;->layout(IIII)V

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingStart()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingEnd()I

    move-result v2

    add-int/2addr v2, p2

    sub-int/2addr p4, v2

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingStart()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingEnd()I

    move-result p2

    sub-int/2addr p4, p2

    goto :goto_3

    :cond_5
    move v1, p3

    :goto_3
    iget-object p2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryChargingView:Landroid/widget/ImageView;

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Landroid/widget/ImageView;->getVisibility()I

    move-result p2

    if-eq p2, v0, :cond_a

    iget-object p2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryChargingView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p2

    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryChargingView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryChargingView:Landroid/widget/ImageView;

    if-eqz p1, :cond_6

    sub-int v4, p4, p2

    goto :goto_4

    :cond_6
    move v4, v1

    :goto_4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v5

    if-le v2, p5, :cond_7

    move v6, p3

    goto :goto_5

    :cond_7
    sub-int v6, p5, v2

    div-int/lit8 v6, v6, 0x2

    :goto_5
    add-int/2addr v6, v5

    if-eqz p1, :cond_8

    move p2, p4

    goto :goto_6

    :cond_8
    add-int/2addr p2, v1

    :goto_6
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v5

    if-le v2, p5, :cond_9

    move v2, p5

    goto :goto_7

    :cond_9
    add-int/2addr v2, p5

    div-int/lit8 v2, v2, 0x2

    :goto_7
    add-int/2addr v2, v5

    invoke-virtual {v3, v4, v6, p2, v2}, Landroid/widget/ImageView;->layout(IIII)V

    :cond_a
    iget-object p2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryPercentContainer:Landroid/widget/LinearLayout;

    if-eqz p2, :cond_f

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p2

    if-eq p2, v0, :cond_f

    iget-object p2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryPercentContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryPercentContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryPercentContainer:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_b

    sub-int v3, p4, p2

    goto :goto_8

    :cond_b
    move v3, v1

    :goto_8
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v4

    if-le v0, p5, :cond_c

    goto :goto_9

    :cond_c
    sub-int p3, p5, v0

    div-int/lit8 p3, p3, 0x2

    :goto_9
    add-int/2addr p3, v4

    if-eqz p1, :cond_d

    goto :goto_a

    :cond_d
    add-int p4, v1, p2

    :goto_a
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result p0

    if-le v0, p5, :cond_e

    goto :goto_b

    :cond_e
    add-int/2addr p5, v0

    div-int/lit8 p5, p5, 0x2

    :goto_b
    add-int/2addr p5, p0

    invoke-virtual {v2, v3, p3, p4, p5}, Landroid/widget/LinearLayout;->layout(IIII)V

    :cond_f
    return-void
.end method

.method public onLightDarkTintChanged(IIZ)V
    .registers 12

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mUseTint:Z

    if-ne v0, p3, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mLightColor:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mDarkColor:I

    if-eq v0, p2, :cond_1

    :cond_0
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mUseTint:Z

    iput p1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mLightColor:I

    iput p2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mDarkColor:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryChargingView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryChargingView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->getHollowChargingIconId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mDark:I

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mTintAreas:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mDarkIntensity:F

    iget v4, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mTintColor:I

    move-object v1, p0

    move v5, p1

    move v6, p2

    move v7, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->updateLightDarkTint(Ljava/util/ArrayList;FIIIZ)V

    return-void
.end method

.method public onMeasure(II)V
    .registers 13

    iget v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryStyle:I

    const/16 v6, 0x8

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x2

    if-eq v1, v8, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryDigitalView:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-eq v1, v6, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryDigitalView:Landroid/widget/FrameLayout;

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryDigitalView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryDigitalView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryStyle:I

    const/4 v9, 0x1

    if-eq v1, v8, :cond_1

    if-ne v1, v9, :cond_2

    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mCharging:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryChargingView:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-eq v1, v6, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryChargingView:Landroid/widget/ImageView;

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryChargingView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v3, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryChargingView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryStyle:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryPercentContainer:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-eq v1, v6, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryPercentContainer:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryPercentContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v3, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryPercentContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    :cond_3
    iget v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryStyle:I

    if-ne v1, v8, :cond_4

    if-nez v3, :cond_4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700e8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    goto :goto_0

    :cond_4
    move v9, v3

    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingStart()I

    move-result v1

    add-int/2addr v1, v9

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingEnd()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    add-int/2addr v1, v7

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p0, v2, v3}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000

    div-float/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setPivotY(F)V

    return-void
.end method

.method public onMinimalismModeChanged(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mMinimalism:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mMinimalism:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->updateVisibility$1$1()V

    :cond_0
    return-void
.end method

.method public onMiuiThemeChanged$1(Z)V
    .registers 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->updateAll()V

    iget-object p1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryIconView:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->updateResources$19()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mHollowBatteryIconView:Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->updateResources()V

    return-void
.end method

.method public onPerformanceModeChanged(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mPerformanceMode:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mPerformanceMode:Z

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryIconView:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->onPerformanceModeChanged(Z)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mHollowBatteryIconView:Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->performanceMode:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->performanceMode:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->updateBatteryTintDrawable()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->updateBatteryDrawable()V

    :cond_1
    return-void
.end method

.method public onPowerSaveChanged(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mPowerSave:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mPowerSave:Z

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryIconView:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->onPowerSaveChanged(Z)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mHollowBatteryIconView:Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->powerSave:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->powerSave:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->updateBatteryDrawable()V

    :cond_1
    return-void
.end method

.method public onScreenLayoutSizeChanged(Landroid/content/res/Configuration;)V
    .registers 3

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mStoreIsAddBatteryIsland:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mByIsAddBatteryIslandTrigger:Z

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->updateIslandChanged(ZZ)V

    return-void
.end method

.method public onUiModeChanged()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->updateAll()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryIconView:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->updateResources$19()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mHollowBatteryIconView:Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->updateResources()V

    return-void
.end method

.method public setAnimatable(Lcom/android/systemui/statusbar/views/IAnimatable;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mAnimatAble:Lcom/android/systemui/statusbar/views/IAnimatable;

    return-void
.end method

.method public setBlurRadius(I)V
    .registers 3

    iget v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBlurRadius:I

    if-eq p1, v0, :cond_1

    iput p1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBlurRadius:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBlurRadius:I

    sget-object v0, Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController;->blurPoint:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0}, Landroid/widget/LinearLayout;->setMiSelfBlur(ILjava/util/ArrayList;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setIsAodAnimate(Z)V
    .registers 5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mIsAodAnimate:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mIsAodAnimate:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->getUseAnimate()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->folmeNotNull()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mIsAddBatteryIsland:Z

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryMeterViewFolme:Lmiuix/animation/IFolme;

    invoke-interface {p0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p0

    new-instance p1, Lmiuix/animation/controller/AnimState;

    const-string v0, "new_battery_meter_view"

    invoke-direct {p1, v0}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v0, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    invoke-interface {p0, p1}, Lmiuix/animation/FolmeStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    :cond_0
    return-void
.end method

.method public setLayoutFromTag(I)V
    .registers 2

    iput p1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mLayoutFromTag:I

    return-void
.end method

.method public setStatusBatteryContainer(Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mMiuiStatusBatteryContainer:Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/widget/LinearLayout;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " {alpha ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", tAlpha ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTransitionAlpha()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mCharging = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mCharging:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mQuickCharging = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mQuickCharging:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mPowerSave = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mPowerSave:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mPerformanceMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mPerformanceMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mBatteryStyle = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryStyle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLevel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mUseTint = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mUseTint:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mDark = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mDark:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIsIslandShowing = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mIsIslandShowing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\' mStoreIsIslandShowing = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mStoreIsIslandShowing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mByIslandTrigger = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mByIslandTrigger:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsAddBatteryIsland = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mIsAddBatteryIsland:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mStoreIsAddBatteryIsland = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mStoreIsAddBatteryIsland:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mByIsAddBatteryIslandTrigger = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mByIsAddBatteryIslandTrigger:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mHomeBlock = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mHomeBlock:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mHasIslandOnce = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mHasIslandOnce:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mHasIslandInfoOper = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mHasIslandInfoOper:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mLayoutFromTag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mLayoutFromTag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mStoreRealStyle = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mStoreRealStyle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mToAod = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mToAod:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mBlurRadius = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBlurRadius:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mStatusBarState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mStatusBarState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIsControlCenterExpanding = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mIsControlCenterExpanding:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mConfigChanged = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mConfigChanged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsAodAnimate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mIsAodAnimate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ". mIslandAnimate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mIslandAnimate:Z

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Landroidx/compose/animation/ChangeSize$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateAll()V
    .registers 6

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mUseLegacyDrawable:Z

    const v1, 0x7f071889

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryIconView:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mUseLegacyDrawable:Z

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->setUseLegacyDrawable(Z)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mHollowBatteryIconView:Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mUseLegacyDrawable:Z

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->setUseLegacyDrawable(Z)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryIconView:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryIconView:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mHollowBatteryIconView:Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mHollowBatteryIconView:Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    const v2, 0x7f15061f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryPercentMarkView:Landroid/widget/TextView;

    const v2, 0x7f0700fa

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryPercentMarkView:Landroid/widget/TextView;

    const v2, 0x7f0700f9

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v3, v2, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    aput-object v4, v2, v3

    sget-object v4, Lcom/miui/utils/configs/MiuiConfigs;->sMiproTypefaceWght500:Landroid/graphics/Typeface;

    invoke-static {v4, v2}, Lcom/miui/utils/configs/MiuiConfigs;->applyStatusBarTypeface(Landroid/graphics/Typeface;[Landroid/widget/TextView;)V

    new-array v1, v1, [Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryPercentMarkView:Landroid/widget/TextView;

    aput-object v2, v1, v3

    sget-object v2, Lcom/miui/utils/configs/MiuiConfigs;->sMiproTypefaceWght600:Landroid/graphics/Typeface;

    invoke-static {v2, v1}, Lcom/miui/utils/configs/MiuiConfigs;->applyStatusBarTypeface(Landroid/graphics/Typeface;[Landroid/widget/TextView;)V

    const v1, 0x7f0700da

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setPivotX(F)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->updateChargeAndText()V

    return-void
.end method

.method public updateChargeAndText()V
    .registers 7

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryPercentView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mLevelString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mCharging:Z

    if-eqz v1, :cond_0

    const v1, 0x7f140059

    goto :goto_0

    :cond_0
    const v1, 0x7f140058

    :goto_0
    iget v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mLevel:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mCharging:Z

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/4 v3, 0x1

    const-string v4, "battery_charging_view"

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryStyle:I

    const/4 v5, 0x2

    if-eq v0, v5, :cond_1

    if-ne v0, v3, :cond_4

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mIsAddBatteryIsland:Z

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->getUseAnimate()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->folmeNotNull()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->isNeedAnimateIsland()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryChargeingViewFolme:Lmiuix/animation/IFolme;

    iget-object v5, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryChargingView:Landroid/widget/ImageView;

    invoke-static {v0, v5, v4}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->animateShowView(Lmiuix/animation/IFolme;Landroid/view/View;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryChargeingViewFolme:Lmiuix/animation/IFolme;

    iget-object v5, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryChargingView:Landroid/widget/ImageView;

    invoke-static {v0, v5, v4}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->showView(Lmiuix/animation/IFolme;Landroid/view/View;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryChargingView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->getUseAnimate()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->folmeNotNull()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->isNeedAnimateIsland()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryChargeingViewFolme:Lmiuix/animation/IFolme;

    iget-object v5, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryChargingView:Landroid/widget/ImageView;

    invoke-static {v0, v5, v4}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->animateHideView(Lmiuix/animation/IFolme;Landroid/view/View;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryChargeingViewFolme:Lmiuix/animation/IFolme;

    iget-object v5, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryChargingView:Landroid/widget/ImageView;

    invoke-static {v0, v5, v4}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->hideView(Lmiuix/animation/IFolme;Landroid/view/View;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryChargingView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    iget v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryStyle:I

    const/4 v4, 0x3

    const-string v5, "battery_percent_container"

    if-ne v0, v4, :cond_9

    invoke-direct {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->getUseAnimate()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->folmeNotNull()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->isNeedAnimateIsland()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryPercentContainerFolme:Lmiuix/animation/IFolme;

    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryPercentContainer:Landroid/widget/LinearLayout;

    invoke-static {v0, v2, v5}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->animateShowView(Lmiuix/animation/IFolme;Landroid/view/View;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryPercentContainerFolme:Lmiuix/animation/IFolme;

    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryPercentContainer:Landroid/widget/LinearLayout;

    invoke-static {v0, v2, v5}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->showView(Lmiuix/animation/IFolme;Landroid/view/View;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryPercentContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    :cond_9
    invoke-direct {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->getUseAnimate()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->folmeNotNull()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->isNeedAnimateIsland()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryPercentContainerFolme:Lmiuix/animation/IFolme;

    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryPercentContainer:Landroid/widget/LinearLayout;

    invoke-static {v0, v2, v5}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->animateHideView(Lmiuix/animation/IFolme;Landroid/view/View;Ljava/lang/String;)V

    goto :goto_2

    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryPercentContainerFolme:Lmiuix/animation/IFolme;

    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryPercentContainer:Landroid/widget/LinearLayout;

    invoke-static {v0, v2, v5}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->hideView(Lmiuix/animation/IFolme;Landroid/view/View;Ljava/lang/String;)V

    goto :goto_2

    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryPercentContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mMiuiStatusBatteryContainer:Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/utils/configs/MiuiConfigs;->isFlipTinyScreen(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mMiuiStatusBatteryContainer:Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;->setBatteryChanged(Z)V

    :cond_c
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mMiuiStatusBatteryContainer:Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;

    if-eqz v0, :cond_e

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mIsAodAnimate:Z

    if-nez v2, :cond_d

    sget-boolean v2, Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;->MINIMAL_ANIMATION_ENABLED:Z

    if-eqz v2, :cond_e

    :cond_d
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;->setBatteryChanged(Z)V

    :cond_e
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryChargingView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryChargingView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->getHollowChargingIconId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iput v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mDark:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->onDarkChangedInternal()V

    return-void
.end method

.method public updateControlCenterExpandState(Z)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mIsControlCenterExpanding:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mIsControlCenterExpanding:Z

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mStoreIsIslandShowing:Z

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mByIslandTrigger:Z

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->updateIslandShowing(ZZZ)V

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mStoreIsAddBatteryIsland:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mByIsAddBatteryIslandTrigger:Z

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->updateIslandChanged(ZZ)V

    :cond_0
    return-void
.end method

.method public updateHasIsland(ZZ)V
    .registers 5

    iget v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mLayoutFromTag:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mHasIslandOnce:Z

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mHasIslandInfoOper:Z

    return-void
.end method

.method public updateHomeBlock(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mHomeBlock:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mHomeBlock:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->updateVisibility$1$1()V

    :cond_0
    return-void
.end method

.method public updateIslandChanged(ZZ)V
    .registers 4

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mStoreIsAddBatteryIsland:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mByIsAddBatteryIslandTrigger:Z

    if-eq v0, p2, :cond_0

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mByIsAddBatteryIslandTrigger:Z

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->getUseAnimate()Z

    move-result p2

    const-string v0, "MiuiBatteryMeterView"

    if-nez p2, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->getNoUseAnimate()Z

    move-result p2

    if-nez p2, :cond_1

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mIsAddBatteryIsland:Z

    if-eqz p1, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "block changed but mIsAddBatteryIsland = true from = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mLayoutFromTag:I

    invoke-static {p0, v0, p1}, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    return-void

    :cond_1
    iget-object p2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mMiuiStatusBatteryContainer:Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;

    if-eqz p2, :cond_6

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mIsControlCenterExpanding:Z

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/miui/utils/configs/MiuiConfigs;->isFlipTinyScreen(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p1, 0x0

    :cond_3
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mIsAddBatteryIsland:Z

    if-eq p2, p1, :cond_5

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mIsAddBatteryIsland:Z

    iget-object p2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mMiuiStatusBatteryContainer:Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;->setIsHideBattery(Ljava/lang/Boolean;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->updateChargeAndText()V

    iget-object p1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mMiuiStatusBatteryContainer:Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;

    new-instance p2, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;)V

    invoke-virtual {p1}, Landroid/view/View;->isLaidOut()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result p0

    if-nez p0, :cond_4

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_4
    new-instance p0, Landroidx/core/view/ViewKt$doOnLayout$$inlined$doOnNextLayout$1;

    invoke-direct {p0, p2}, Landroidx/core/view/ViewKt$doOnLayout$$inlined$doOnNextLayout$1;-><init>(Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView$$ExternalSyntheticLambda0;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_5
    return-void

    :cond_6
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "updateIslandChanged: from = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mLayoutFromTag:I

    invoke-static {p0, v0, p1}, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public updateIslandShowing(ZZZ)V
    .registers 4

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mStoreIsIslandShowing:Z

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mIslandAnimate:Z

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mByIslandTrigger:Z

    if-eq p2, p3, :cond_0

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mByIslandTrigger:Z

    :cond_0
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mIsControlCenterExpanding:Z

    if-nez p2, :cond_3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/miui/utils/configs/MiuiConfigs;->isFlipTinyScreen(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mIsIslandShowing:Z

    if-eq p2, p1, :cond_2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mIsIslandShowing:Z

    iget p1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mStoreRealStyle:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->onBatteryStyleChanged(I)V

    :cond_2
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mByIslandTrigger:Z

    :cond_3
    :goto_0
    return-void
.end method

.method public updateLightDarkTint(Ljava/util/ArrayList;FIIIZ)V
    .registers 9

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->onDarkChangedInternal()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mBatteryIconView:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;

    iget-object v1, v0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mTintAreas:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, v0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mTintAreas:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iput p2, v0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mDarkIntensity:F

    iput p3, v0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mTintColor:I

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mUseTint:Z

    if-ne v1, p6, :cond_0

    iget v1, v0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mLightColor:I

    if-ne v1, p4, :cond_0

    iget v1, v0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mDarkColor:I

    if-eq v1, p5, :cond_1

    :cond_0
    iput-boolean p6, v0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mUseTint:Z

    iput p4, v0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mLightColor:I

    iput p5, v0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->mDarkColor:I

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->clearTint()V

    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterIconView;->onDarkChangeInternal()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mHollowBatteryIconView:Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;

    iget-object p4, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->tintAreas:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_2

    iget-object p4, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->tintAreas:Ljava/util/ArrayList;

    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    iput p2, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->darkIntensity:F

    iput p3, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->tintColor:I

    invoke-static {p1, p0, p2}, Lcom/android/systemui/statusbar/DarkIconDispatcherExt;->getDarkIntensity(Ljava/util/ArrayList;Landroid/view/View;F)F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-lez p1, :cond_3

    const/4 p1, 0x2

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    :goto_0
    iget p2, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->dark:I

    if-ne p2, p1, :cond_4

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->useTint:Z

    if-eq p2, p6, :cond_5

    :cond_4
    iput p1, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->dark:I

    iput-boolean p6, p0, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->useTint:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->updateBatteryTintDrawable()V

    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/views/MiuiHollowBatteryMeterIconView;->updateBatteryDrawable()V

    return-void
.end method

.method public updateState(I)V
    .registers 3

    iget v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mStatusBarState:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mStatusBarState:I

    iget p1, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mStoreRealStyle:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->onBatteryStyleChanged(I)V

    :cond_0
    return-void
.end method

.method public updateVisibility$1$1()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mHomeBlock:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mMinimalism:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->mIsAddBatteryIsland:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    :cond_2
    :goto_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

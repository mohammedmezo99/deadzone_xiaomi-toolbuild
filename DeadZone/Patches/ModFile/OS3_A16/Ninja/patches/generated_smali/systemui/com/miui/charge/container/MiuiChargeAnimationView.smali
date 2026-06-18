.class public Lcom/miui/charge/container/MiuiChargeAnimationView;
.super Landroid/widget/FrameLayout;


# instance fields
.field public animationListener:Lcom/miui/charge/view/IChargeAnimationListener;

.field public itemContainer:Landroid/view/ViewGroup;

.field public mChargeContainerView:Lcom/miui/charge/container/MiuiChargeContainerView;

.field public mChargeIconView:Lcom/miui/charge/container/MiuiChargeIconView;

.field public mChargeLogoView:Lcom/miui/charge/container/MiuiChargeLogoView;

.field public mChargePercentView:Lcom/miui/charge/view/MiuiChargePercentCountView;

.field public final mConfiguration:Landroid/content/res/Configuration;

.field public mDismissAnimatorSet:Landroid/animation/AnimatorSet;

.field public mDismissReason:Ljava/lang/String;

.field public final mDismissRunnable:Lcom/miui/charge/container/MiuiChargeAnimationView$4;

.field public final mHandler:Landroid/os/Handler;

.field public mIconPaddingTop:I

.field public mIsFlipTinyScreenChargeType:Z

.field public mIsFoldChargeVideo:Z

.field public mIsPadChargeVideo:Z

.field public mParentContainer:Landroid/view/ViewGroup;

.field public final mQuartOutInterpolator:Lcom/miui/maml/animation/interpolater/QuartEaseOutInterpolater;

.field public mScreenSize:Landroid/graphics/Point;

.field public mShowingAnimatorSet:Landroid/animation/AnimatorSet;

.field public mStartingDismissAnim:Z

.field public final mSupportWaveChargeAnimation:Z

.field public mSystemUIStat:Lcom/miui/interfaces/ISystemUIStat;

.field public final mTimeoutDismissJob:Lcom/miui/charge/container/MiuiChargeAnimationView$4;

.field public mUpdateMonitorInjector:Lcom/android/keyguard/stub/MiuiKeyguardUpdateMonitorInjectorStub;

.field public mWindowManager:Landroid/view/WindowManager;

.field public mWireState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/charge/container/MiuiChargeAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/charge/container/MiuiChargeAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/miui/maml/animation/interpolater/QuartEaseOutInterpolater;

    invoke-direct {p2}, Lcom/miui/maml/animation/interpolater/QuartEaseOutInterpolater;-><init>()V

    iput-object p2, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mQuartOutInterpolator:Lcom/miui/maml/animation/interpolater/QuartEaseOutInterpolater;

    new-instance p2, Landroid/content/res/Configuration;

    invoke-direct {p2}, Landroid/content/res/Configuration;-><init>()V

    iput-object p2, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mConfiguration:Landroid/content/res/Configuration;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mIsPadChargeVideo:Z

    iput-boolean p2, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mIsFoldChargeVideo:Z

    invoke-static {}, Lcom/miui/charge/ChargeUtils;->supportWaveChargeAnimation()Z

    move-result p3

    iput-boolean p3, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mSupportWaveChargeAnimation:Z

    iput-boolean p2, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mIsFlipTinyScreenChargeType:Z

    new-instance p2, Lcom/miui/charge/container/MiuiChargeAnimationView$4;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/miui/charge/container/MiuiChargeAnimationView$4;-><init>(Lcom/miui/charge/container/MiuiChargeAnimationView;I)V

    iput-object p2, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mTimeoutDismissJob:Lcom/miui/charge/container/MiuiChargeAnimationView$4;

    new-instance p2, Lcom/miui/charge/container/MiuiChargeAnimationView$4;

    const/4 p3, 0x1

    invoke-direct {p2, p0, p3}, Lcom/miui/charge/container/MiuiChargeAnimationView$4;-><init>(Lcom/miui/charge/container/MiuiChargeAnimationView;I)V

    iput-object p2, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mDismissRunnable:Lcom/miui/charge/container/MiuiChargeAnimationView$4;

    invoke-virtual {p0, p1}, Lcom/miui/charge/container/MiuiChargeAnimationView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private getParentViewParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    new-instance p0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object p0
.end method

.method private getWindowParam()Landroid/view/WindowManager$LayoutParams;
    .registers 9

    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mScreenSize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    const v6, 0x5800400

    const/4 v7, -0x3

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/16 v5, 0x7ea

    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/4 v0, 0x3

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    const/4 v1, 0x0

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/16 v1, 0x1300

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget-boolean v1, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mIsPadChargeVideo:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mIsFoldChargeVideo:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/utils/configs/MiuiConfigs;->isFoldLargeScreenAndNotPad(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    iput p0, v2, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x2

    iput p0, v2, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    :goto_1
    const p0, 0x808000

    iput p0, v2, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const-string p0, "charge_animation_view"

    invoke-virtual {v2, p0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-object v2
.end method


# virtual methods
.method public final addChargeView()V
    .registers 4

    const-string v0, "MiuiChargeAnimationView"

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v1, "addToWindow: reason prepareChargeAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    const-class v1, Lcom/miui/systemui/statusbar/NotificationShadeWindowControllerDelegate;

    invoke-static {v1}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/systemui/statusbar/NotificationShadeWindowControllerDelegate;

    iget-object v1, v1, Lcom/miui/systemui/statusbar/NotificationShadeWindowControllerDelegate;->notificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    check-cast v1, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    iget-object v1, v1, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mWindowRootView:Lcom/android/systemui/scene/ui/view/WindowRootView;

    invoke-direct {p0}, Lcom/miui/charge/container/MiuiChargeAnimationView;->getParentViewParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "addToWindow: Exception "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 2

    const-string p1, "dismiss_for_key_event"

    invoke-virtual {p0, p1}, Lcom/miui/charge/container/MiuiChargeAnimationView;->startDismiss(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public getAnimationDuration()I
    .registers 2

    const-class p0, Lcom/miui/interfaces/miuicharge/IMiuiChargeManager;

    invoke-static {p0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/interfaces/miuicharge/IMiuiChargeManager;

    check-cast p0, Lcom/miui/charge/MiuiChargeManager;

    iget-object p0, p0, Lcom/miui/charge/MiuiChargeManager;->mBatteryStatus:Lcom/miui/systemui/charge/BatteryStatus;

    iget p0, p0, Lcom/miui/systemui/charge/BatteryStatus;->plugged:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const-class p0, Lcom/android/keyguard/stub/MiuiKeyguardUpdateMonitorStub;

    invoke-static {p0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/stub/MiuiKeyguardUpdateMonitorStub;

    iget-object p0, p0, Lcom/android/keyguard/stub/MiuiKeyguardUpdateMonitorStub;->keyguardUpdateMonitor:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->hasUserAuthenticatedSinceBoot()Z

    move-result p0

    if-nez p0, :cond_0

    const/16 p0, 0x1388

    return p0

    :cond_0
    const/16 p0, 0x4e20

    return p0
.end method

.method public getContainerLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;
    .registers 2

    new-instance p0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    return-object p0
.end method

.method public getPercentCountAnimationTime()I
    .registers 1

    const/16 p0, 0x24b8

    return p0
.end method

.method public getScreenOffTime()I
    .registers 1

    invoke-virtual {p0}, Lcom/miui/charge/container/MiuiChargeAnimationView;->getAnimationDuration()I

    move-result p0

    add-int/lit16 p0, p0, -0x258

    return p0
.end method

.method public init(Landroid/content/Context;)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/miui/charge/container/MiuiChargeAnimationView;->onDeviceSpecificInit(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/miui/charge/container/MiuiChargeAnimationView;->initDeviceConfig(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/miui/charge/container/MiuiChargeAnimationView;->initScreenSize()V

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mParentContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lcom/miui/charge/container/MiuiChargeAnimationView;->onInitParentContainer(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/miui/charge/container/MiuiChargeAnimationView;->onCreateChargeView(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mParentContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/miui/charge/container/MiuiChargeAnimationView;->getContainerLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 p1, 0x41f00000

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setElevation(F)V

    const-class p1, Lcom/android/keyguard/stub/MiuiKeyguardUpdateMonitorInjectorStub;

    invoke-static {p1}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/stub/MiuiKeyguardUpdateMonitorInjectorStub;

    iput-object p1, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mUpdateMonitorInjector:Lcom/android/keyguard/stub/MiuiKeyguardUpdateMonitorInjectorStub;

    return-void
.end method

.method public initDeviceConfig(Landroid/content/Context;)V
    .registers 3

    sget-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->IS_PAD:Z

    iput-boolean v0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mIsPadChargeVideo:Z

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mWindowManager:Landroid/view/WindowManager;

    sget-boolean p1, Lcom/miui/utils/configs/MiuiConfigs;->IS_FOLD:Z

    iput-boolean p1, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mIsFoldChargeVideo:Z

    invoke-static {}, Lcom/miui/utils/configs/MiuiConfigs;->isInstantFlipTinyScreen()Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mIsFlipTinyScreenChargeType:Z

    return-void
.end method

.method public final initNormalChargeView(Landroid/content/Context;)V
    .registers 9

    const-string v0, "MiuiChargeAnimationView"

    const-string v1, "Init normal charge"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v0, Lcom/miui/charge/container/MiuiChargeContainerView;

    invoke-direct {v0, p1}, Lcom/miui/charge/container/MiuiChargeContainerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mChargeContainerView:Lcom/miui/charge/container/MiuiChargeContainerView;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v3, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mParentContainer:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mChargeContainerView:Lcom/miui/charge/container/MiuiChargeContainerView;

    invoke-virtual {v3, v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->itemContainer:Landroid/view/ViewGroup;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v4, Lcom/miui/charge/view/MiuiChargePercentCountView;

    invoke-direct {v4, p1}, Lcom/miui/charge/view/MiuiChargePercentCountView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mChargePercentView:Lcom/miui/charge/view/MiuiChargePercentCountView;

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v5, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->itemContainer:Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mChargePercentView:Lcom/miui/charge/view/MiuiChargePercentCountView;

    invoke-virtual {v5, v6, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Lcom/miui/charge/container/MiuiChargeLogoView;

    invoke-direct {v4, p1}, Lcom/miui/charge/container/MiuiChargeLogoView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mChargeLogoView:Lcom/miui/charge/container/MiuiChargeLogoView;

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v5, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->itemContainer:Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mChargeLogoView:Lcom/miui/charge/container/MiuiChargeLogoView;

    invoke-virtual {v5, v6, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-class v4, Lcom/android/systemui/plugins/miui/settings/IUserTracker;

    invoke-static {v4}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/plugins/miui/settings/IUserTracker;

    invoke-interface {v4}, Lcom/android/systemui/plugins/miui/settings/IUserTracker;->getUserContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c008a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    goto :goto_1

    :cond_0
    new-instance v4, Lcom/miui/charge/container/MiuiChargeIconView;

    invoke-direct {v4, p1}, Lcom/miui/charge/container/MiuiChargeIconView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mChargeIconView:Lcom/miui/charge/container/MiuiChargeIconView;

    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/utils/configs/MiuiConfigs;->isFlipTinyScreen(Landroid/content/Context;)Z

    move-result p1

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mChargeIconView:Lcom/miui/charge/container/MiuiChargeIconView;

    iget v2, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mIconPaddingTop:I

    iget-object v3, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mScreenSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0704c4

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sub-int/2addr v3, v5

    invoke-virtual {v1, v4, v2, v3, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    goto :goto_0

    :cond_1
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mChargeIconView:Lcom/miui/charge/container/MiuiChargeIconView;

    iget v2, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mIconPaddingTop:I

    invoke-virtual {v1, v4, v2, v4, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    :goto_0
    iget-object v1, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->itemContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mChargeIconView:Lcom/miui/charge/container/MiuiChargeIconView;

    invoke-virtual {v1, v2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    iget-object p1, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mParentContainer:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->itemContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public initScreenSize()V
    .registers 2

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mScreenSize:Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/miui/charge/container/MiuiChargeAnimationView;->updateSizeForScreenSizeChange()V

    return-void
.end method

.method public onBlurEmpty()V
    .registers 1

    return-void
.end method

.method public final onChargeAnimationStart()V
    .registers 7

    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->animationListener:Lcom/miui/charge/view/IChargeAnimationListener;

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mWireState:I

    check-cast v0, Lcom/miui/charge/MiuiChargeController;

    const-string v2, "onChargeAnimationStart: "

    const-string v3, "MiuiChargeController"

    invoke-static {v1, v2, v3}, Lcom/android/keyguard/clock/KeyguardClockContainer$carrierTextCallback$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/miui/charge/ChargeUtils;->sCharging:Z

    iget-object v0, v0, Lcom/miui/charge/MiuiChargeController;->mUpdateMonitorInjector:Lcom/android/keyguard/stub/MiuiKeyguardUpdateMonitorInjectorStub;

    iget-object v0, v0, Lcom/android/keyguard/stub/MiuiKeyguardUpdateMonitorInjectorStub;->mKeyguardUpdateMonitorInjector:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    iget-object v0, v0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->mMiuiCallbacks:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :cond_0
    :goto_0
    if-ge v4, v2, :cond_1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;

    if-eqz v5, :cond_0

    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    if-ge v3, v0, :cond_2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    check-cast v2, Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;

    invoke-interface {v2}, Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;->onChargeAnimationStart()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mDismissRunnable:Lcom/miui/charge/container/MiuiChargeAnimationView$4;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mTimeoutDismissJob:Lcom/miui/charge/container/MiuiChargeAnimationView$4;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mTimeoutDismissJob:Lcom/miui/charge/container/MiuiChargeAnimationView$4;

    invoke-virtual {p0}, Lcom/miui/charge/container/MiuiChargeAnimationView;->getAnimationDuration()I

    move-result p0

    add-int/lit16 p0, p0, -0x12c

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result p1

    and-int/lit16 p1, p1, 0x800

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mScreenSize:Landroid/graphics/Point;

    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    invoke-virtual {p0}, Lcom/miui/charge/container/MiuiChargeAnimationView;->updateSizeForScreenSizeChange()V

    invoke-virtual {p0}, Lcom/miui/charge/container/MiuiChargeAnimationView;->updateLayoutParamForScreenSizeChange()V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/charge/container/MiuiChargeAnimationView;->onDeviceConfigurationChanged()V

    return-void
.end method

.method public onCreateChargeView(Landroid/content/Context;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/miui/charge/container/MiuiChargeAnimationView;->initNormalChargeView(Landroid/content/Context;)V

    return-void
.end method

.method public onDeviceConfigurationChanged()V
    .registers 1

    return-void
.end method

.method public onDeviceSpecificInit(Landroid/content/Context;)V
    .registers 2

    return-void
.end method

.method public final onDismissAnimationEnd()V
    .registers 4

    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->animationListener:Lcom/miui/charge/view/IChargeAnimationListener;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mWireState:I

    iget-object v2, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mDismissReason:Ljava/lang/String;

    check-cast v0, Lcom/miui/charge/MiuiChargeController;

    invoke-virtual {v0, v1, v2}, Lcom/miui/charge/MiuiChargeController;->onChargeAnimationEnd(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->itemContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRotation()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mChargeContainerView:Lcom/miui/charge/container/MiuiChargeContainerView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getRotation()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->itemContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setRotation(F)V

    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mChargeContainerView:Lcom/miui/charge/container/MiuiChargeContainerView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setRotation(F)V

    :cond_2
    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mDismissRunnable:Lcom/miui/charge/container/MiuiChargeAnimationView$4;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mStartingDismissAnim:Z

    return-void
.end method

.method public onInitParentContainer(Landroid/content/Context;)V
    .registers 3

    invoke-static {p1}, Lcom/miui/utils/configs/MiuiConfigs;->isFlipTinyScreen(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/miui/charge/ChargeUtils;->supportShaderChargeAnimation()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-boolean p1, Lcom/miui/charge/ChargeUtils;->sDevelopAnimationEnable:Z

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mParentContainer:Landroid/view/ViewGroup;

    const/16 p1, 0xff

    const/4 v0, 0x0

    invoke-static {p1, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    return-void
.end method

.method public onProcessBlurAnimIsNullOrNotFlip(Ljava/lang/String;Landroid/animation/ObjectAnimator;Landroid/animation/ObjectAnimator;)V
    .registers 5

    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mUpdateMonitorInjector:Lcom/android/keyguard/stub/MiuiKeyguardUpdateMonitorInjectorStub;

    invoke-virtual {v0}, Lcom/android/keyguard/stub/MiuiKeyguardUpdateMonitorInjectorStub;->isKeyguardShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "dismiss_for_timeout"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mDismissAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0, p2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-void

    :cond_0
    iget-object p0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mDismissAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 p1, 0x2

    new-array p1, p1, [Landroid/animation/Animator;

    const/4 v0, 0x0

    aput-object p3, p1, v0

    const/4 p3, 0x1

    aput-object p2, p1, p3

    invoke-virtual {p0, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-void
.end method

.method public onProgressChanged(I)V
    .registers 2

    return-void
.end method

.method public onStartChargeAnimation(Landroid/animation/ValueAnimator;)V
    .registers 3

    new-instance v0, Lcom/miui/charge/container/MiuiChargeAnimationView$6;

    invoke-direct {v0, p0}, Lcom/miui/charge/container/MiuiChargeAnimationView$6;-><init>(Lcom/miui/charge/container/MiuiChargeAnimationView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public onStartDismiss(Ljava/lang/String;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public onSwitchChargeAnimation()V
    .registers 1

    return-void
.end method

.method public playChargeShowingAnimationSet(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V
    .registers 6

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mShowingAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x320

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mShowingAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mQuartOutInterpolator:Lcom/miui/maml/animation/interpolater/QuartEaseOutInterpolater;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mShowingAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/miui/charge/container/MiuiChargeAnimationView$2;

    invoke-direct {v1, p0}, Lcom/miui/charge/container/MiuiChargeAnimationView$2;-><init>(Lcom/miui/charge/container/MiuiChargeAnimationView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mShowingAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mShowingAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public final removeChargeView(Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "removeFromWindow: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "MiuiChargeAnimationView"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-class p1, Lcom/miui/systemui/statusbar/NotificationShadeWindowControllerDelegate;

    invoke-static {p1}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/systemui/statusbar/NotificationShadeWindowControllerDelegate;

    iget-object p1, p1, Lcom/miui/systemui/statusbar/NotificationShadeWindowControllerDelegate;->notificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    check-cast p1, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    iget-object p1, p1, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mWindowRootView:Lcom/android/systemui/scene/ui/view/WindowRootView;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "remove from window exception:"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setChargeAnimationListener(Lcom/miui/charge/view/IChargeAnimationListener;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->animationListener:Lcom/miui/charge/view/IChargeAnimationListener;

    return-void
.end method

.method public setProgress(I)V
    .registers 3

    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mChargePercentView:Lcom/miui/charge/view/MiuiChargePercentCountView;

    invoke-virtual {v0, p1}, Lcom/miui/charge/view/MiuiChargePercentCountView;->setProgress(I)V

    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mChargeContainerView:Lcom/miui/charge/container/MiuiChargeContainerView;

    invoke-virtual {v0, p1}, Lcom/miui/charge/container/MiuiChargeContainerView;->setProgress(I)V

    invoke-virtual {p0, p1}, Lcom/miui/charge/container/MiuiChargeAnimationView;->onProgressChanged(I)V

    return-void
.end method

.method public setSystemUIStat(Lcom/miui/interfaces/ISystemUIStat;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mSystemUIStat:Lcom/miui/interfaces/ISystemUIStat;

    return-void
.end method

.method public final startDismiss(Ljava/lang/String;)V
    .registers 14

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mStartingDismissAnim:Z

    if-eqz v3, :cond_0

    goto :goto_2

    :cond_0
    iget-object v3, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mShowingAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mShowingAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    iget-object v3, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mUpdateMonitorInjector:Lcom/android/keyguard/stub/MiuiKeyguardUpdateMonitorInjectorStub;

    const-string v4, "dismiss_for_timeout"

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "dismiss_for_screen_off"

    if-nez v4, :cond_3

    invoke-static {p1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    move v4, v1

    goto :goto_1

    :cond_3
    :goto_0
    move v4, v2

    :goto_1
    invoke-virtual {v3, v1, v4}, Lcom/android/keyguard/stub/MiuiKeyguardUpdateMonitorInjectorStub;->handleChargeAnimationShowingChanged(ZZ)V

    const-string v3, "startDismiss: reason: "

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "MiuiChargeAnimationView"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mDismissReason:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mTimeoutDismissJob:Lcom/miui/charge/container/MiuiChargeAnimationView$4;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v3, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mDismissRunnable:Lcom/miui/charge/container/MiuiChargeAnimationView$4;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0, p1}, Lcom/miui/charge/container/MiuiChargeAnimationView;->onStartDismiss(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_2
    return-void

    :cond_4
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    iget-object v4, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mParentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v4

    const/4 v6, 0x0

    new-array v7, v0, [F

    aput v4, v7, v1

    aput v6, v7, v2

    invoke-static {v3, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    iget-object v7, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mParentContainer:Landroid/view/ViewGroup;

    new-array v8, v2, [Landroid/animation/PropertyValuesHolder;

    aput-object v4, v8, v1

    invoke-static {v7, v8}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-object v7, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->itemContainer:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v7

    new-array v8, v0, [F

    aput v7, v8, v1

    aput v6, v8, v2

    invoke-static {v3, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    const-class v7, Lcom/miui/sysuiinterfaces/IDozeServiceHost;

    invoke-static {v7}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/sysuiinterfaces/IDozeServiceHost;

    check-cast v8, Lcom/android/keyguard/injector/DozeServiceHostInjector;

    iget-boolean v8, v8, Lcom/android/keyguard/injector/DozeServiceHostInjector;->mFullAodEnable:Z

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-static {v7}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/sysuiinterfaces/IDozeServiceHost;

    check-cast v7, Lcom/android/keyguard/injector/DozeServiceHostInjector;

    iget-boolean v7, v7, Lcom/android/keyguard/injector/DozeServiceHostInjector;->mScreenOffNeedLinkageAnim:Z

    if-eqz v7, :cond_5

    if-nez v8, :cond_5

    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->itemContainer:Landroid/view/ViewGroup;

    new-array v6, v2, [Landroid/animation/PropertyValuesHolder;

    aput-object v3, v6, v1

    invoke-static {v0, v6}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_3

    :cond_5
    sget-object v7, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    iget-object v9, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->itemContainer:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getScaleX()F

    move-result v9

    new-array v10, v0, [F

    aput v9, v10, v1

    aput v6, v10, v2

    invoke-static {v7, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    sget-object v9, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    iget-object v10, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->itemContainer:Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getScaleY()F

    move-result v10

    new-array v11, v0, [F

    aput v10, v11, v1

    aput v6, v11, v2

    invoke-static {v9, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    iget-object v9, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->itemContainer:Landroid/view/ViewGroup;

    const/4 v10, 0x3

    new-array v10, v10, [Landroid/animation/PropertyValuesHolder;

    aput-object v7, v10, v1

    aput-object v6, v10, v2

    aput-object v3, v10, v0

    invoke-static {v9, v10}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    :goto_3
    invoke-virtual {p0}, Lcom/miui/charge/container/MiuiChargeAnimationView;->onBlurEmpty()V

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mDismissAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    if-nez v8, :cond_6

    const-wide/16 v5, 0x64

    goto :goto_4

    :cond_6
    const-wide/16 v5, 0x258

    :goto_4
    iget-object v1, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mDismissAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mDismissAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mQuartOutInterpolator:Lcom/miui/maml/animation/interpolater/QuartEaseOutInterpolater;

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/miui/charge/container/MiuiChargeAnimationView$3;

    invoke-direct {v1, p0, p1}, Lcom/miui/charge/container/MiuiChargeAnimationView$3;-><init>(Lcom/miui/charge/container/MiuiChargeAnimationView;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mDismissAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0, p1, v0, v4}, Lcom/miui/charge/container/MiuiChargeAnimationView;->onProcessBlurAnimIsNullOrNotFlip(Ljava/lang/String;Landroid/animation/ObjectAnimator;Landroid/animation/ObjectAnimator;)V

    iget-object p1, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mDismissAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    iput-boolean v2, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mStartingDismissAnim:Z

    return-void
.end method

.method public updateLayoutParamForScreenSizeChange()V
    .registers 3

    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mChargeIconView:Lcom/miui/charge/container/MiuiChargeIconView;

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mIconPaddingTop:I

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0, v1, v1}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method public final updateOrientation(I)V
    .registers 4

    iget v0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mWireState:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mSupportWaveChargeAnimation:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "onOrientationChanged: "

    const-string v1, "MiuiChargeAnimationView"

    invoke-static {p1, v0, v1}, Lcom/android/keyguard/MiuiBleUnlockHelper$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->itemContainer:Landroid/view/ViewGroup;

    const/high16 v0, 0x43870000

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setRotation(F)V

    iget-object p0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mChargeContainerView:Lcom/miui/charge/container/MiuiChargeContainerView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setRotation(F)V

    return-void

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->itemContainer:Landroid/view/ViewGroup;

    const/high16 v0, 0x42b40000

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setRotation(F)V

    iget-object p0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mChargeContainerView:Lcom/miui/charge/container/MiuiChargeContainerView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setRotation(F)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->itemContainer:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setRotation(F)V

    iget-object p0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mChargeContainerView:Lcom/miui/charge/container/MiuiChargeContainerView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setRotation(F)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final updateSizeForScreenSizeChange()V
    .registers 6

    iget-boolean v0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mIsPadChargeVideo:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f071556

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mIconPaddingTop:I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mScreenSize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000

    mul-float v2, v0, v1

    const/high16 v3, 0x44870000

    div-float/2addr v2, v3

    iget-boolean v4, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mIsFoldChargeVideo:Z

    if-eqz v4, :cond_2

    cmpl-float v4, v2, v1

    if-lez v4, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    move v2, v1

    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    sget-boolean v1, Lcom/miui/utils/configs/MiuiConfigs;->IS_PAD:Z

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/miui/utils/configs/MiuiConfigs;->isLowEndDevice()Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x3f19999a

    mul-float/2addr v0, v1

    div-float v2, v0, v3

    :cond_3
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/utils/configs/MiuiConfigs;->isFlipTinyScreen(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    const v0, 0x43898000

    mul-float/2addr v2, v0

    float-to-int v0, v2

    iput v0, p0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mIconPaddingTop:I

    :cond_4
    return-void
.end method

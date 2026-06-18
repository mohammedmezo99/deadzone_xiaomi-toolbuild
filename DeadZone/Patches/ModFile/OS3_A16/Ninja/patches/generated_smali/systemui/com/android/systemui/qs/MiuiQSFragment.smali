.class public final Lcom/android/systemui/qs/MiuiQSFragment;
.super Lcom/android/systemui/util/LifecycleFragment;

# interfaces
.implements Lcom/android/systemui/qs/MiuiQS;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;
.implements Lcom/miui/systemui/controller/ControlCenterSettingsController$UseControlCenterChangeListener;


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final _qsComponent:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final animateHeaderSlidingInListener:Lcom/android/systemui/qs/MiuiQSFragment$animateHeaderSlidingOut$1;

.field public final bgHandler:Landroid/os/Handler;

.field public brightnessMirrorController:Lcom/android/systemui/qs/brightness/MiuiBrightnessMirrorController;

.field public final controlCenterController:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

.field public final foldNotifManager:Ldagger/Lazy;

.field public headerAnimating:Z

.field public final host:Lcom/android/systemui/qs/QSHost;

.field public lastDetailShowing:Z

.field public lastKeyguardAndExpanded:Z

.field public lastQSExpansion:F

.field public lastViewHeight:I

.field public layoutDirection:I

.field public listening:Z

.field public final miuiQSTouchHandler:Lcom/miui/systemui/qs/MiuiQSInterceptTouchHandler;

.field public notificationContainer:Lcom/android/systemui/shade/NotificationsQSContainerController;

.field public final onLayoutChangeListener:Lcom/android/systemui/qs/MiuiQSFragment$onViewCreated$3;

.field public panelView:Lcom/android/systemui/plugins/qs/QS$HeightListener;

.field public final panelViewController:Ldagger/Lazy;

.field public qqsPanelController:Lcom/android/systemui/qs/MiuiQuickQSPanelController;

.field public qsAnimator:Lcom/android/systemui/qs/MiuiQSAnimator;

.field public final qsBounds:Landroid/graphics/Rect;

.field public final qsComponentFactory:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiQSFragmentComponentFactory;

.field public qsContainer:Lcom/android/systemui/qs/MiuiQSContainer;

.field public qsContainerController:Lcom/android/systemui/qs/MiuiQSContainerController;

.field public final qsContainerLifecycle:Lcom/android/systemui/qs/MiuiQSFragment$qsContainerLifecycle$1;

.field public final qsController:Lcom/android/systemui/qs/MiuiQSController;

.field public qsCustomizerController:Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;

.field public final qsDetailCallbacks:Ljava/util/ArrayList;

.field public qsDisabled:Z

.field public qsExpanded:Z

.field public qsPanelController:Lcom/android/systemui/qs/MiuiQSPanelController;

.field public final remoteInputQuickSettingsDisabler:Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

.field public savedInstanceState:Landroid/os/Bundle;

.field public stackScrollerOverscrolling:Z

.field public final statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public final uiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-boolean v0, Lcom/miui/utils/configs/MiuiDebugConfig;->DEBUG_QUICK_SETTINGS:Z

    sput-boolean v0, Lcom/android/systemui/qs/MiuiQSFragment;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiQSFragmentComponentFactory;Lcom/android/systemui/qs/MiuiQSController;Ldagger/Lazy;Lcom/miui/systemui/qs/MiuiQSInterceptTouchHandler;Ldagger/Lazy;)V
    .registers 14

    invoke-direct {p0}, Lcom/android/systemui/util/LifecycleFragment;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->remoteInputQuickSettingsDisabler:Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

    iput-object p2, p0, Lcom/android/systemui/qs/MiuiQSFragment;->host:Lcom/android/systemui/qs/QSHost;

    iput-object p3, p0, Lcom/android/systemui/qs/MiuiQSFragment;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iput-object p5, p0, Lcom/android/systemui/qs/MiuiQSFragment;->controlCenterController:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    iput-object p7, p0, Lcom/android/systemui/qs/MiuiQSFragment;->bgHandler:Landroid/os/Handler;

    iput-object p8, p0, Lcom/android/systemui/qs/MiuiQSFragment;->uiHandler:Landroid/os/Handler;

    iput-object p9, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsComponentFactory:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiQSFragmentComponentFactory;

    iput-object p10, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsController:Lcom/android/systemui/qs/MiuiQSController;

    iput-object p11, p0, Lcom/android/systemui/qs/MiuiQSFragment;->foldNotifManager:Ldagger/Lazy;

    iput-object p12, p0, Lcom/android/systemui/qs/MiuiQSFragment;->miuiQSTouchHandler:Lcom/miui/systemui/qs/MiuiQSInterceptTouchHandler;

    iput-object p13, p0, Lcom/android/systemui/qs/MiuiQSFragment;->panelViewController:Ldagger/Lazy;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsBounds:Landroid/graphics/Rect;

    const/high16 p1, -0x40800000

    iput p1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->lastQSExpansion:F

    invoke-virtual {p6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    new-instance p1, Lcom/android/systemui/qs/MiuiQSFragment$onViewCreated$3;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/qs/MiuiQSFragment$onViewCreated$3;-><init>(Lcom/android/systemui/qs/MiuiQSFragment;I)V

    iput-object p1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->onLayoutChangeListener:Lcom/android/systemui/qs/MiuiQSFragment$onViewCreated$3;

    new-instance p1, Lcom/miui/systemui/util/FloatFlowAnimator;

    const/high16 p2, 0x3f800000

    const-string p3, "nss_cover_qs"

    const p5, 0x3b83126f

    invoke-direct {p1, p3, p5, p2}, Lcom/miui/systemui/util/FloatFlowAnimator;-><init>(Ljava/lang/String;FF)V

    const/4 p1, 0x0

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/qs/MiuiQSFragment;->_qsComponent:Lkotlinx/coroutines/flow/StateFlowImpl;

    new-instance p2, Lcom/android/systemui/qs/MiuiQSFragment$qsContainerLifecycle$1;

    invoke-direct {p2}, Lcom/android/systemui/qs/MiuiQSFragment$qsContainerLifecycle$1;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainerLifecycle:Lcom/android/systemui/qs/MiuiQSFragment$qsContainerLifecycle$1;

    iget-object p2, p0, Lcom/android/systemui/util/LifecycleFragment;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    invoke-interface {p4, p2, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/Lifecycle;Ljava/lang/Object;)V

    iget-object p2, p10, Lcom/android/systemui/qs/MiuiQSController;->qs:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2, p1, p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/android/systemui/util/LifecycleFragment;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    invoke-static {p2}, Landroidx/lifecycle/LifecycleKt;->getCoroutineScope(Landroidx/lifecycle/Lifecycle;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object p2

    new-instance p3, Lcom/android/systemui/qs/MiuiQSFragment$1;

    invoke-direct {p3, p0, p1}, Lcom/android/systemui/qs/MiuiQSFragment$1;-><init>(Lcom/android/systemui/qs/MiuiQSFragment;Lkotlin/coroutines/Continuation;)V

    const/4 p4, 0x3

    invoke-static {p2, p1, p3, p4}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    iget-object p2, p0, Lcom/android/systemui/util/LifecycleFragment;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    invoke-static {p2}, Landroidx/lifecycle/LifecycleKt;->getCoroutineScope(Landroidx/lifecycle/Lifecycle;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object p2

    new-instance p3, Lcom/android/systemui/qs/MiuiQSFragment$2;

    invoke-direct {p3, p0, p1}, Lcom/android/systemui/qs/MiuiQSFragment$2;-><init>(Lcom/android/systemui/qs/MiuiQSFragment;Lkotlin/coroutines/Continuation;)V

    invoke-static {p2, p1, p3, p4}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    iget-object p2, p0, Lcom/android/systemui/util/LifecycleFragment;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    invoke-static {p2}, Landroidx/lifecycle/LifecycleKt;->getCoroutineScope(Landroidx/lifecycle/Lifecycle;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object p2

    new-instance p3, Lcom/android/systemui/qs/MiuiQSFragment$3;

    invoke-direct {p3, p0, p1}, Lcom/android/systemui/qs/MiuiQSFragment$3;-><init>(Lcom/android/systemui/qs/MiuiQSFragment;Lkotlin/coroutines/Continuation;)V

    invoke-static {p2, p1, p3, p4}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    new-instance p1, Lcom/android/systemui/qs/MiuiQSFragment$animateHeaderSlidingOut$1;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/qs/MiuiQSFragment$animateHeaderSlidingOut$1;-><init>(Lcom/android/systemui/qs/MiuiQSFragment;I)V

    iput-object p1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->animateHeaderSlidingInListener:Lcom/android/systemui/qs/MiuiQSFragment$animateHeaderSlidingOut$1;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsDetailCallbacks:Ljava/util/ArrayList;

    return-void
.end method

.method private getUserRadius()F
    .registers 4

    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "QS_background_border_radius"

    const/16 v1, 0x18

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method private setBackgroundColor(III)V
    .registers 8

    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "panel_round_corner_bg"

    const-string v2, "drawable"

    const-string v3, "com.android.systemui"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz p1, :cond_2

    instance-of v2, v1, Landroid/graphics/drawable/GradientDrawable;

    if-nez v2, :cond_1

    :cond_0
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    :cond_1
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v1, p2, p3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-direct {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->getUserRadius()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    goto :goto_0

    :cond_2
    instance-of v2, v1, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v2, :cond_3

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, p2, p3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-direct {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->getUserRadius()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x2

    new-array v3, v2, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    aput-object v1, v3, v2

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v1, p2, p3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-direct {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->getUserRadius()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/4 v2, 0x1

    aput-object v1, v3, v2

    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v1, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_4
    if-nez p1, :cond_0

    goto :goto_0
.end method

.method private setBackgroundColorLightDarkDrawable(IIII)V
    .registers 10

    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v0, "panel_round_corner_bg"

    const-string v2, "drawable"

    const-string v3, "com.android.systemui"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v2, v1, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v2, :cond_0

    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->getUserRadius()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    goto :goto_1

    :cond_0
    instance-of v2, v1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v2

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_0

    :cond_1
    :goto_1
    if-lez p1, :cond_2

    div-int/lit16 v3, p1, 0x2

    add-int/lit16 v3, v3, 0x7f

    goto :goto_2

    :cond_2
    add-int/lit16 v3, p1, 0xff

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    div-int/lit16 v3, v3, 0x2

    :goto_2
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p2, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    const/4 v2, 0x3

    new-array v4, v2, [Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    aput-object v1, v4, v3

    const/4 v3, 0x1

    aput-object v0, v4, v3

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v0, p3, p4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-direct {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->getUserRadius()F

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/4 v3, 0x2

    aput-object v0, v4, v3

    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v1, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/LayerDrawable;->setPaddingMode(I)V

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/graphics/drawable/LayerDrawable;->setPadding(IIII)V

    :cond_3
    return-void
.end method

.method public static updateQsContent$default(Lcom/android/systemui/qs/MiuiQSFragment;Landroidx/lifecycle/Lifecycle$State;ZI)V
    .registers 8

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainerLifecycle:Lcom/android/systemui/qs/MiuiQSFragment$qsContainerLifecycle$1;

    iget-object p1, p1, Lcom/android/systemui/qs/MiuiQSFragment$qsContainerLifecycle$1;->lifecycle:Landroidx/lifecycle/LifecycleRegistry;

    iget-object p1, p1, Landroidx/lifecycle/LifecycleRegistry;->_currentStateFlow:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/Lifecycle$State;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/android/systemui/qs/MiuiQSFragment;->controlCenterController:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    invoke-virtual {p2}, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->getUseControlCenter()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p2

    check-cast p2, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-virtual {p2}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p3, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p1, p3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    const/4 p3, 0x0

    const-string v0, "QS"

    const/4 v1, 0x0

    if-ltz p1, :cond_31

    if-nez p2, :cond_31

    iget-object p1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainer:Lcom/android/systemui/qs/MiuiQSContainer;

    if-eqz p1, :cond_48

    invoke-virtual {p1}, Lcom/android/systemui/qs/MiuiQSContainer;->getContentAdded()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const-string p1, "addQSContent"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainer:Lcom/android/systemui/qs/MiuiQSContainer;

    if-nez p1, :cond_3

    move-object p1, v1

    :cond_3
    invoke-virtual {p1}, Lcom/android/systemui/qs/MiuiQSContainer;->addQSContent()V

    iget-object p1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsComponentFactory:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiQSFragmentComponentFactory;

    invoke-virtual {p1, p0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiQSFragmentComponentFactory;->create(Lcom/android/systemui/qs/MiuiQSFragment;)Lcom/android/systemui/qs/dagger/MiuiQSFragmentComponent;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiQSFragmentComponentImpl;

    invoke-virtual {p2}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiQSFragmentComponentImpl;->getViewLifecycleOwner()Lcom/android/systemui/lifecycle/ViewLifecycleOwner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/lifecycle/ViewLifecycleOwner;->onCreate()V

    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->_qsComponent:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v1, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiQSFragmentComponentImpl;->getQsContainerController()Lcom/android/systemui/qs/MiuiQSContainerController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainerController:Lcom/android/systemui/qs/MiuiQSContainerController;

    invoke-virtual {p2}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiQSFragmentComponentImpl;->getQsCustomizerController()Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsCustomizerController:Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;

    invoke-virtual {p2}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiQSFragmentComponentImpl;->getQsPanelController()Lcom/android/systemui/qs/MiuiQSPanelController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsPanelController:Lcom/android/systemui/qs/MiuiQSPanelController;

    invoke-virtual {p2}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$MiuiQSFragmentComponentImpl;->getQqsPanelController()Lcom/android/systemui/qs/MiuiQuickQSPanelController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qqsPanelController:Lcom/android/systemui/qs/MiuiQuickQSPanelController;

    iget-object p1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainerController:Lcom/android/systemui/qs/MiuiQSContainerController;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/android/systemui/util/ViewController;->init()V

    :cond_4
    iget-object p1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsCustomizerController:Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/android/systemui/util/ViewController;->init()V

    :cond_5
    iget-object p1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsPanelController:Lcom/android/systemui/qs/MiuiQSPanelController;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/android/systemui/util/ViewController;->init()V

    :cond_6
    iget-object p1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qqsPanelController:Lcom/android/systemui/qs/MiuiQuickQSPanelController;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/android/systemui/util/ViewController;->init()V

    :cond_7
    iget-object p1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainerController:Lcom/android/systemui/qs/MiuiQSContainerController;

    if-eqz p1, :cond_a

    iget-object p2, p0, Lcom/android/systemui/qs/MiuiQSFragment;->brightnessMirrorController:Lcom/android/systemui/qs/brightness/MiuiBrightnessMirrorController;

    iget-object v0, p1, Lcom/android/systemui/qs/MiuiQSContainerController;->brightnessMirrorController:Lcom/android/systemui/qs/brightness/MiuiBrightnessMirrorController;

    if-eqz v0, :cond_8

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirrorListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :cond_8
    iput-object p2, p1, Lcom/android/systemui/qs/MiuiQSContainerController;->brightnessMirrorController:Lcom/android/systemui/qs/brightness/MiuiBrightnessMirrorController;

    if-eqz p2, :cond_9

    iget-object p2, p2, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirrorListeners:Landroid/util/ArraySet;

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_9
    iget-object p2, p1, Lcom/android/systemui/qs/MiuiQSContainerController;->brightnessMirrorController:Lcom/android/systemui/qs/brightness/MiuiBrightnessMirrorController;

    if-eqz p2, :cond_a

    iget-object p1, p1, Lcom/android/systemui/qs/MiuiQSContainerController;->brightnessSlider:Lcom/android/systemui/settings/brightness/MiuiBrightnessSlider;

    invoke-virtual {p1, p2}, Lcom/android/systemui/settings/brightness/MiuiBrightnessSlider;->setMirrorControllerAndMirror(Lcom/android/systemui/qs/brightness/MiuiBrightnessMirrorController;)V

    :cond_a
    iget-object p1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainer:Lcom/android/systemui/qs/MiuiQSContainer;

    if-nez p1, :cond_b

    move-object p1, v1

    :cond_b
    invoke-virtual {p1}, Lcom/android/systemui/qs/MiuiQSContainer;->getQsPanelScrollView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_c

    iget-object p2, p0, Lcom/android/systemui/qs/MiuiQSFragment;->onLayoutChangeListener:Lcom/android/systemui/qs/MiuiQSFragment$onViewCreated$3;

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_c
    iget-object p1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainer:Lcom/android/systemui/qs/MiuiQSContainer;

    if-nez p1, :cond_d

    move-object p1, v1

    :cond_d
    invoke-virtual {p1}, Lcom/android/systemui/qs/MiuiQSContainer;->getQsPanelScrollView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_e

    new-instance p2, Lcom/android/systemui/qs/MiuiQSFragment$addQSContent$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/MiuiQSFragment$addQSContent$1;-><init>(Lcom/android/systemui/qs/MiuiQSFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    :cond_e
    iget-object p1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainer:Lcom/android/systemui/qs/MiuiQSContainer;

    if-nez p1, :cond_f

    move-object p1, v1

    :cond_f
    invoke-virtual {p1}, Lcom/android/systemui/qs/MiuiQSContainer;->getQsDetail()Lcom/android/systemui/qs/MiuiQSDetail;

    move-result-object p1

    if-eqz p1, :cond_14

    iget-object p2, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainer:Lcom/android/systemui/qs/MiuiQSContainer;

    if-nez p2, :cond_10

    move-object p2, v1

    :cond_10
    invoke-virtual {p2}, Lcom/android/systemui/qs/MiuiQSContainer;->getQsPanel()Lcom/android/systemui/qs/MiuiQSPanel;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainer:Lcom/android/systemui/qs/MiuiQSContainer;

    if-nez v0, :cond_11

    move-object v0, v1

    :cond_11
    invoke-virtual {v0}, Lcom/android/systemui/qs/MiuiQSContainer;->getHeader()Lcom/android/systemui/qs/MiuiNotificationShadeHeader;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainer:Lcom/android/systemui/qs/MiuiQSContainer;

    if-nez v2, :cond_12

    move-object v2, v1

    :cond_12
    invoke-virtual {v2}, Lcom/android/systemui/qs/MiuiQSContainer;->getQuickQSPanel()Lcom/android/systemui/qs/MiuiQuickQSPanel;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainer:Lcom/android/systemui/qs/MiuiQSContainer;

    if-nez v3, :cond_13

    move-object v3, v1

    :cond_13
    invoke-virtual {v3}, Lcom/android/systemui/qs/MiuiQSContainer;->getFooter()Lcom/android/systemui/qs/MiuiQSFooter;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {p1, p2, v0, v2, v3}, Lcom/android/systemui/qs/MiuiQSDetail;->setQsPanel(Lcom/android/systemui/qs/MiuiQSPanel;Lcom/android/systemui/qs/MiuiNotificationShadeHeader;Lcom/android/systemui/qs/MiuiQuickQSPanel;Landroid/view/View;)V

    :cond_14
    new-instance p1, Lcom/android/systemui/qs/MiuiQSAnimator;

    iget-object p2, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainer:Lcom/android/systemui/qs/MiuiQSContainer;

    if-nez p2, :cond_15

    move-object p2, v1

    :cond_15
    invoke-virtual {p2}, Lcom/android/systemui/qs/MiuiQSContainer;->getQuickQSPanel()Lcom/android/systemui/qs/MiuiQuickQSPanel;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainer:Lcom/android/systemui/qs/MiuiQSContainer;

    if-nez v0, :cond_16

    move-object v0, v1

    :cond_16
    invoke-virtual {v0}, Lcom/android/systemui/qs/MiuiQSContainer;->getQsPanel()Lcom/android/systemui/qs/MiuiQSPanel;

    move-result-object v0

    invoke-direct {p1, p0, p2, v0}, Lcom/android/systemui/qs/MiuiQSAnimator;-><init>(Lcom/android/systemui/qs/MiuiQSFragment;Lcom/android/systemui/qs/MiuiQuickQSPanel;Lcom/android/systemui/qs/MiuiQSPanel;)V

    iput-object p1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsAnimator:Lcom/android/systemui/qs/MiuiQSAnimator;

    iget-object p1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainer:Lcom/android/systemui/qs/MiuiQSContainer;

    if-nez p1, :cond_17

    move-object p1, v1

    :cond_17
    invoke-virtual {p1}, Lcom/android/systemui/qs/MiuiQSContainer;->getQsCustomizer()Lcom/android/systemui/qs/customize/MiuiQSCustomizer;

    move-result-object p1

    if-eqz p1, :cond_18

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->setQs(Lcom/android/systemui/qs/MiuiQS;)V

    :cond_18
    iget-object p1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainer:Lcom/android/systemui/qs/MiuiQSContainer;

    if-nez p1, :cond_19

    move-object p1, v1

    :cond_19
    invoke-virtual {p1}, Lcom/android/systemui/qs/MiuiQSContainer;->getQsDetail()Lcom/android/systemui/qs/MiuiQSDetail;

    move-result-object p1

    if-eqz p1, :cond_1a

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/MiuiQSDetail;->setQS(Lcom/android/systemui/qs/MiuiQS;)V

    :cond_1a
    iget-object p1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->savedInstanceState:Landroid/os/Bundle;

    if-eqz p1, :cond_1e

    const-string p2, "expanded"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/MiuiQSFragment;->setExpanded(Z)V

    const-string p2, "listening"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/MiuiQSFragment;->setListening(Z)V

    iget-object p2, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainerController:Lcom/android/systemui/qs/MiuiQSContainerController;

    if-eqz p2, :cond_1b

    const-string v0, "extra_slider_progress"

    invoke-virtual {p1, v0, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-object p2, p2, Lcom/android/systemui/qs/MiuiQSContainerController;->brightnessSlider:Lcom/android/systemui/settings/brightness/MiuiBrightnessSlider;

    invoke-virtual {p2, v0}, Lcom/android/systemui/settings/brightness/MiuiBrightnessSlider;->setValue(I)V

    :cond_1b
    iget-object p2, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsCustomizerController:Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;

    if-eqz p2, :cond_1c

    const-string v0, "qs_customizing"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p2, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;

    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p3, p2, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p3, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;

    new-instance v0, Lcom/android/systemui/qs/customize/MiuiQSCustomizerController$restoreInstanceState$1;

    invoke-direct {v0, p2}, Lcom/android/systemui/qs/customize/MiuiQSCustomizerController$restoreInstanceState$1;-><init>(Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;)V

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_1c
    iget-boolean p2, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsExpanded:Z

    if-eqz p2, :cond_1e

    iget-object p2, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainer:Lcom/android/systemui/qs/MiuiQSContainer;

    if-nez p2, :cond_1d

    move-object p2, v1

    :cond_1d
    invoke-virtual {p2}, Lcom/android/systemui/qs/MiuiQSContainer;->getQsPanel()Lcom/android/systemui/qs/MiuiQSPanel;

    move-result-object p2

    if-eqz p2, :cond_1e

    invoke-virtual {p2}, Lcom/android/systemui/qs/MiuiQSPanel;->getTileLayout()Lcom/android/systemui/qs/MiuiQSPanel$QSTileLayout;

    move-result-object p2

    if-eqz p2, :cond_1e

    invoke-interface {p2, p1}, Lcom/android/systemui/qs/MiuiQSPanel$QSTileLayout;->restoreInstanceState(Landroid/os/Bundle;)V

    :cond_1e
    iget-object p1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->host:Lcom/android/systemui/qs/QSHost;

    iget-object p2, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainer:Lcom/android/systemui/qs/MiuiQSContainer;

    if-nez p2, :cond_1f

    move-object p2, v1

    :cond_1f
    invoke-virtual {p2}, Lcom/android/systemui/qs/MiuiQSContainer;->getQsPanel()Lcom/android/systemui/qs/MiuiQSPanel;

    move-result-object p2

    if-eqz p2, :cond_20

    iget-object p3, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsCustomizerController:Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;

    invoke-virtual {p2, p1, p3}, Lcom/android/systemui/qs/MiuiQSPanel;->setHost(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;)V

    :cond_20
    iget-object p2, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainer:Lcom/android/systemui/qs/MiuiQSContainer;

    if-nez p2, :cond_21

    move-object p2, v1

    :cond_21
    invoke-virtual {p2}, Lcom/android/systemui/qs/MiuiQSContainer;->getFooter()Lcom/android/systemui/qs/MiuiQSFooter;

    move-result-object p2

    if-eqz p2, :cond_23

    iget-object p3, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainer:Lcom/android/systemui/qs/MiuiQSContainer;

    if-nez p3, :cond_22

    move-object p3, v1

    :cond_22
    invoke-virtual {p3}, Lcom/android/systemui/qs/MiuiQSContainer;->getQsPanel()Lcom/android/systemui/qs/MiuiQSPanel;

    move-result-object p3

    invoke-interface {p2, p3}, Lcom/android/systemui/qs/MiuiQSFooter;->setQSPanel(Lcom/android/systemui/qs/MiuiQSPanel;)V

    :cond_23
    iget-object p2, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainer:Lcom/android/systemui/qs/MiuiQSContainer;

    if-nez p2, :cond_24

    move-object p2, v1

    :cond_24
    invoke-virtual {p2}, Lcom/android/systemui/qs/MiuiQSContainer;->getQsDetail()Lcom/android/systemui/qs/MiuiQSDetail;

    move-result-object p2

    if-eqz p2, :cond_25

    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/MiuiQSDetail;->setHost(Lcom/android/systemui/qs/QSHost;)V

    :cond_25
    iget-object p2, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainer:Lcom/android/systemui/qs/MiuiQSContainer;

    if-nez p2, :cond_26

    move-object p2, v1

    :cond_26
    invoke-virtual {p2}, Lcom/android/systemui/qs/MiuiQSContainer;->getQuickQSPanel()Lcom/android/systemui/qs/MiuiQuickQSPanel;

    move-result-object p2

    if-eqz p2, :cond_28

    iget-object p3, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainer:Lcom/android/systemui/qs/MiuiQSContainer;

    if-nez p3, :cond_27

    move-object p3, v1

    :cond_27
    invoke-virtual {p3}, Lcom/android/systemui/qs/MiuiQSContainer;->getQsPanel()Lcom/android/systemui/qs/MiuiQSPanel;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/android/systemui/qs/MiuiQuickQSPanel;->setQSPanel(Lcom/android/systemui/qs/MiuiQSPanel;)V

    :cond_28
    iget-object p2, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainer:Lcom/android/systemui/qs/MiuiQSContainer;

    if-nez p2, :cond_29

    move-object p2, v1

    :cond_29
    invoke-virtual {p2}, Lcom/android/systemui/qs/MiuiQSContainer;->getQuickQSPanel()Lcom/android/systemui/qs/MiuiQuickQSPanel;

    move-result-object p2

    if-eqz p2, :cond_2a

    invoke-virtual {p2, p1, v1}, Lcom/android/systemui/qs/MiuiQuickQSPanel;->setHost(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;)V

    :cond_2a
    iget-object p2, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsAnimator:Lcom/android/systemui/qs/MiuiQSAnimator;

    if-eqz p2, :cond_2b

    iput-object p1, p2, Lcom/android/systemui/qs/MiuiQSAnimator;->mHost:Lcom/android/systemui/qs/QSHost;

    check-cast p1, Lcom/android/systemui/qs/pipeline/domain/adapter/MiuiQSHostAdapter;

    invoke-virtual {p1, p2}, Lcom/android/systemui/qs/pipeline/domain/adapter/MiuiQSHostAdapter;->addCallback(Lcom/android/systemui/plugins/miui/qs/MiuiQSHost$Callback;)V

    invoke-virtual {p2}, Lcom/android/systemui/qs/MiuiQSAnimator;->miuiUpdateAnimators()V

    :cond_2b
    iget-object p1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/MiuiQSFragment;->onStateChanged(I)V

    iget-object p1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->notificationContainer:Lcom/android/systemui/shade/NotificationsQSContainerController;

    if-eqz p1, :cond_2f

    iget-object p2, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainer:Lcom/android/systemui/qs/MiuiQSContainer;

    if-nez p2, :cond_2c

    move-object p2, v1

    :cond_2c
    invoke-virtual {p2}, Lcom/android/systemui/qs/MiuiQSContainer;->getQsCustomizer()Lcom/android/systemui/qs/customize/MiuiQSCustomizer;

    move-result-object p2

    if-eqz p2, :cond_2d

    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->setContainer(Lcom/android/systemui/shade/NotificationsQSContainerController;)V

    :cond_2d
    iget-object p2, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainer:Lcom/android/systemui/qs/MiuiQSContainer;

    if-nez p2, :cond_2e

    move-object p2, v1

    :cond_2e
    invoke-virtual {p2}, Lcom/android/systemui/qs/MiuiQSContainer;->getQsDetail()Lcom/android/systemui/qs/MiuiQSDetail;

    move-result-object p2

    if-eqz p2, :cond_2f

    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/MiuiQSDetail;->setContainer(Lcom/android/systemui/shade/NotificationsQSContainerController;)V

    :cond_2f
    iput-object v1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->savedInstanceState:Landroid/os/Bundle;

    iget-object p1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->miuiQSTouchHandler:Lcom/miui/systemui/qs/MiuiQSInterceptTouchHandler;

    iget-object p2, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainer:Lcom/android/systemui/qs/MiuiQSContainer;

    if-nez p2, :cond_30

    goto :goto_0

    :cond_30
    move-object v1, p2

    :goto_0
    iput-object v1, p1, Lcom/miui/systemui/qs/MiuiQSInterceptTouchHandler;->container:Lcom/android/systemui/qs/MiuiQSContainer;

    new-instance p2, Lcom/android/systemui/qs/MiuiQSFragment$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/systemui/qs/MiuiQSFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/MiuiQSFragment;)V

    iput-object p2, p1, Lcom/miui/systemui/qs/MiuiQSInterceptTouchHandler;->notificationContentBound:Lcom/android/systemui/qs/MiuiQSFragment$$ExternalSyntheticLambda0;

    return-void

    :cond_31
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_32

    goto :goto_2

    :cond_32
    iget-object p1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainer:Lcom/android/systemui/qs/MiuiQSContainer;

    if-eqz p1, :cond_48

    invoke-virtual {p1}, Lcom/android/systemui/qs/MiuiQSContainer;->getContentAdded()Z

    move-result p1

    if-nez p1, :cond_33

    goto :goto_2

    :cond_33
    const-string p1, "removeQSContent"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsAnimator:Lcom/android/systemui/qs/MiuiQSAnimator;

    if-eqz p1, :cond_36

    iget-object p2, p1, Lcom/android/systemui/qs/MiuiQSAnimator;->mQsPanel:Lcom/android/systemui/qs/MiuiQSPanel;

    if-eqz p2, :cond_34

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_34
    iget-object p2, p1, Lcom/android/systemui/qs/MiuiQSAnimator;->mQs:Lcom/android/systemui/qs/MiuiQSFragment;

    invoke-virtual {p2}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_35

    iget-object p2, p1, Lcom/android/systemui/qs/MiuiQSAnimator;->mQs:Lcom/android/systemui/qs/MiuiQSFragment;

    invoke-virtual {p2}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_35
    invoke-virtual {p1, v1}, Lcom/android/systemui/qs/MiuiQSAnimator;->onViewDetachedFromWindow(Landroid/view/View;)V

    :cond_36
    iput-object v1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsAnimator:Lcom/android/systemui/qs/MiuiQSAnimator;

    iget-object p1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainer:Lcom/android/systemui/qs/MiuiQSContainer;

    if-nez p1, :cond_37

    move-object p1, v1

    :cond_37
    invoke-virtual {p1}, Lcom/android/systemui/qs/MiuiQSContainer;->getQsPanelScrollView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_38

    iget-object p2, p0, Lcom/android/systemui/qs/MiuiQSFragment;->onLayoutChangeListener:Lcom/android/systemui/qs/MiuiQSFragment$onViewCreated$3;

    invoke-virtual {p1, p2}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_38
    iget-object p1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainer:Lcom/android/systemui/qs/MiuiQSContainer;

    if-nez p1, :cond_39

    move-object p1, v1

    :cond_39
    invoke-virtual {p1}, Lcom/android/systemui/qs/MiuiQSContainer;->getQsPanelScrollView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3a

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    :cond_3a
    iget-object p1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainer:Lcom/android/systemui/qs/MiuiQSContainer;

    if-nez p1, :cond_3b

    move-object p1, v1

    :cond_3b
    invoke-virtual {p1}, Lcom/android/systemui/qs/MiuiQSContainer;->getQsCustomizer()Lcom/android/systemui/qs/customize/MiuiQSCustomizer;

    move-result-object p1

    if-eqz p1, :cond_3c

    invoke-virtual {p1, v1}, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->setQs(Lcom/android/systemui/qs/MiuiQS;)V

    :cond_3c
    iget-object p1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainer:Lcom/android/systemui/qs/MiuiQSContainer;

    if-nez p1, :cond_3d

    move-object p1, v1

    :cond_3d
    iget-boolean p2, p1, Lcom/android/systemui/qs/MiuiQSContainer;->contentAdded:Z

    if-nez p2, :cond_3e

    goto :goto_1

    :cond_3e
    iget-object p2, p1, Lcom/android/systemui/qs/MiuiQSContainer;->qsContent:Lcom/android/systemui/qs/QSContent;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object p2, p1, Lcom/android/systemui/qs/MiuiQSContainer;->qsDetail:Lcom/android/systemui/qs/MiuiQSDetail;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object p2, p1, Lcom/android/systemui/qs/MiuiQSContainer;->qsCustomizer:Lcom/android/systemui/qs/customize/MiuiQSCustomizer;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iput-object v1, p1, Lcom/android/systemui/qs/MiuiQSContainer;->qsContent:Lcom/android/systemui/qs/QSContent;

    iput-object v1, p1, Lcom/android/systemui/qs/MiuiQSContainer;->qsDetail:Lcom/android/systemui/qs/MiuiQSDetail;

    iput-object v1, p1, Lcom/android/systemui/qs/MiuiQSContainer;->qsCustomizer:Lcom/android/systemui/qs/customize/MiuiQSCustomizer;

    iget-object p2, p1, Lcom/android/systemui/qs/MiuiQSContainer;->qsPanel:Lcom/android/systemui/qs/MiuiQSPanel;

    if-eqz p2, :cond_3f

    invoke-virtual {p2, v1}, Lcom/android/systemui/qs/MiuiQSPanel;->setMediaVisibilityChangedListener(Ljava/util/function/Consumer;)V

    :cond_3f
    iput-object v1, p1, Lcom/android/systemui/qs/MiuiQSContainer;->qsPanel:Lcom/android/systemui/qs/MiuiQSPanel;

    iget-object p2, p1, Lcom/android/systemui/qs/MiuiQSContainer;->quickQSPanel:Lcom/android/systemui/qs/MiuiQuickQSPanel;

    if-eqz p2, :cond_40

    invoke-virtual {p2, v1}, Lcom/android/systemui/qs/MiuiQSPanel;->setMediaVisibilityChangedListener(Ljava/util/function/Consumer;)V

    :cond_40
    iput-object v1, p1, Lcom/android/systemui/qs/MiuiQSContainer;->quickQSPanel:Lcom/android/systemui/qs/MiuiQuickQSPanel;

    iput-object v1, p1, Lcom/android/systemui/qs/MiuiQSContainer;->brightnessView:Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    iput-object v1, p1, Lcom/android/systemui/qs/MiuiQSContainer;->footer:Lcom/android/systemui/qs/MiuiQSFooter;

    iput-object v1, p1, Lcom/android/systemui/qs/MiuiQSContainer;->footerBundle:Landroid/view/ViewGroup;

    iput-object v1, p1, Lcom/android/systemui/qs/MiuiQSContainer;->dataUsage:Lcom/android/systemui/qs/datausage/QSFooterDataUsage;

    iput-object v1, p1, Lcom/android/systemui/qs/MiuiQSContainer;->qsPanelScrollView:Landroid/view/View;

    iput-object v1, p1, Lcom/android/systemui/qs/MiuiQSContainer;->qsDetail:Lcom/android/systemui/qs/MiuiQSDetail;

    iput-object v1, p1, Lcom/android/systemui/qs/MiuiQSContainer;->qsCustomizer:Lcom/android/systemui/qs/customize/MiuiQSCustomizer;

    iget-object p2, p1, Lcom/android/systemui/qs/MiuiQSContainer;->dragHandle:Landroid/widget/ImageView;

    if-eqz p2, :cond_41

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_41
    iput-object v1, p1, Lcom/android/systemui/qs/MiuiQSContainer;->dragHandle:Landroid/widget/ImageView;

    iput-object v1, p1, Lcom/android/systemui/qs/MiuiQSContainer;->indicatorDrawable:Lcom/android/systemui/qs/IndicatorDrawable;

    iput-object v1, p1, Lcom/android/systemui/qs/MiuiQSContainer;->qsBackground:Landroid/view/View;

    invoke-virtual {p1, p3}, Lcom/android/systemui/qs/MiuiQSContainer;->updateResources(Z)V

    iput-boolean p3, p1, Lcom/android/systemui/qs/MiuiQSContainer;->contentAdded:Z

    :goto_1
    iget-object p1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainerController:Lcom/android/systemui/qs/MiuiQSContainerController;

    if-eqz p1, :cond_42

    invoke-virtual {p1}, Lcom/android/systemui/qs/MiuiQSContainerController;->onViewDetached()V

    invoke-virtual {p1}, Lcom/android/systemui/util/ViewController;->destroy()V

    :cond_42
    iget-object p1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsCustomizerController:Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;

    if-eqz p1, :cond_43

    invoke-virtual {p1}, Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;->onViewDetached()V

    invoke-virtual {p1}, Lcom/android/systemui/util/ViewController;->destroy()V

    :cond_43
    iget-object p1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsPanelController:Lcom/android/systemui/qs/MiuiQSPanelController;

    if-eqz p1, :cond_44

    invoke-virtual {p1}, Lcom/android/systemui/qs/MiuiQSPanelControllerBase;->onViewDetached()V

    invoke-virtual {p1}, Lcom/android/systemui/util/ViewController;->destroy()V

    :cond_44
    iget-object p1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qqsPanelController:Lcom/android/systemui/qs/MiuiQuickQSPanelController;

    if-eqz p1, :cond_45

    invoke-virtual {p1}, Lcom/android/systemui/qs/MiuiQSPanelControllerBase;->onViewDetached()V

    invoke-virtual {p1}, Lcom/android/systemui/util/ViewController;->destroy()V

    :cond_45
    iget-boolean p1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->listening:Z

    if-eqz p1, :cond_46

    invoke-virtual {p0, p3}, Lcom/android/systemui/qs/MiuiQSFragment;->setListening(Z)V

    :cond_46
    iput-object v1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainerController:Lcom/android/systemui/qs/MiuiQSContainerController;

    iput-object v1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsCustomizerController:Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;

    iput-object v1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsPanelController:Lcom/android/systemui/qs/MiuiQSPanelController;

    iput-object v1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qqsPanelController:Lcom/android/systemui/qs/MiuiQuickQSPanelController;

    iget-object p1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->_qsComponent:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/dagger/MiuiQSFragmentComponent;

    if-eqz p1, :cond_47

    invoke-interface {p1}, Lcom/android/systemui/qs/dagger/MiuiQSFragmentComponent;->getViewLifecycleOwner()Lcom/android/systemui/lifecycle/ViewLifecycleOwner;

    move-result-object p1

    if-eqz p1, :cond_47

    invoke-virtual {p1}, Lcom/android/systemui/lifecycle/ViewLifecycleOwner;->onDestroy()V

    :cond_47
    iget-object p1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->_qsComponent:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p1, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->bgHandler:Landroid/os/Handler;

    sget-object p2, Lcom/android/systemui/qs/MiuiQSFragment$removeQSContent$5;->INSTANCE:Lcom/android/systemui/qs/MiuiQSFragment$removeQSContent$5;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->miuiQSTouchHandler:Lcom/miui/systemui/qs/MiuiQSInterceptTouchHandler;

    iput-object v1, p0, Lcom/miui/systemui/qs/MiuiQSInterceptTouchHandler;->container:Lcom/android/systemui/qs/MiuiQSContainer;

    iput-object v1, p0, Lcom/miui/systemui/qs/MiuiQSInterceptTouchHandler;->notificationContentBound:Lcom/android/systemui/qs/MiuiQSFragment$$ExternalSyntheticLambda0;

    :cond_48
    :goto_2
    return-void
.end method


# virtual methods
.method public final animateHeaderSlidingOut()V
    .registers 4

    sget-boolean v0, Lcom/android/systemui/qs/MiuiQSFragment;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "QS"

    const-string v1, "animateHeaderSlidingOut"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainer:Lcom/android/systemui/qs/MiuiQSContainer;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    move-object v1, v2

    :cond_1
    invoke-virtual {v1}, Lcom/android/systemui/qs/MiuiQSContainer;->getMinHeight()I

    move-result v1

    int-to-float v1, v1

    neg-float v1, v1

    cmpg-float v0, v0, v1

    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->headerAnimating:Z

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainer:Lcom/android/systemui/qs/MiuiQSContainer;

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    move-object v2, v1

    :goto_0
    invoke-virtual {v2}, Lcom/android/systemui/qs/MiuiQSContainer;->getMinHeight()I

    move-result v1

    int-to-float v1, v1

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x168

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/app/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/MiuiQSFragment$animateHeaderSlidingOut$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/qs/MiuiQSFragment$animateHeaderSlidingOut$1;-><init>(Lcom/android/systemui/qs/MiuiQSFragment;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public final clickTile(Landroid/content/ComponentName;)V
    .registers 6

    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->controlCenterController:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->isUseControlCenter()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    const-string v2, "command click tile: "

    const-string v3, "QS"

    invoke-static {v2, v1, v3}, Landroidx/fragment/app/Fragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainer:Lcom/android/systemui/qs/MiuiQSContainer;

    if-nez p0, :cond_3

    move-object p0, v0

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSContainer;->getQsPanel()Lcom/android/systemui/qs/MiuiQSPanel;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-static {p1}, Lcom/android/systemui/qs/external/CustomTile;->toSpec(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_5

    iget-object v3, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;

    iget-object v3, v3, Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v3}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;

    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {p0, v0}, Lcom/android/systemui/plugins/qs/QSTile;->click(Lcom/android/systemui/animation/Expandable;)V

    return-void

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    return-void
.end method

.method public final closeCustomizer()V
    .registers 1

    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsCustomizerController:Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;->hide$default(Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;)V

    :cond_0
    return-void
.end method

.method public final closeDetail()V
    .registers 4

    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainer:Lcom/android/systemui/qs/MiuiQSContainer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSContainer;->getQsPanel()Lcom/android/systemui/qs/MiuiQSPanel;

    move-result-object p0

    if-eqz p0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mCustomizePanel:Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;->hide(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mDetailRecord:Lcom/android/systemui/qs/MiuiQSPanel$TileRecord;

    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSPanel;->mHandler:Lcom/android/systemui/qs/MiuiQSPanel$H;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    return-void
.end method

.method public final disable(IIIZ)V
    .registers 8

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getDisplayId()I

    move-result p2

    if-eq p1, p2, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->remoteInputQuickSettingsDisabler:Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

    invoke-virtual {p1, p3}, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;->adjustDisableFlags(I)I

    move-result p1

    const/4 p2, 0x1

    and-int/2addr p1, p2

    const/4 p3, 0x0

    if-eqz p1, :cond_1

    move p4, p2

    goto :goto_0

    :cond_1
    move p4, p3

    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsDisabled:Z

    if-ne p4, v0, :cond_2

    :goto_1
    return-void

    :cond_2
    iput-boolean p4, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsDisabled:Z

    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainer:Lcom/android/systemui/qs/MiuiQSContainer;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    move-object v0, v1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    move p2, p3

    :goto_2
    iget-boolean p1, v0, Lcom/android/systemui/qs/MiuiQSContainer;->qsDisabled:Z

    const/16 v2, 0x8

    if-ne p2, p1, :cond_5

    goto :goto_5

    :cond_5
    iput-boolean p2, v0, Lcom/android/systemui/qs/MiuiQSContainer;->qsDisabled:Z

    iget-object p1, v0, Lcom/android/systemui/qs/MiuiQSContainer;->qsBackground:Landroid/view/View;

    if-eqz p1, :cond_7

    if-eqz p2, :cond_6

    move p2, v2

    goto :goto_3

    :cond_6
    move p2, p3

    :goto_3
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    iget-object p1, v0, Lcom/android/systemui/qs/MiuiQSContainer;->brightnessView:Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    if-eqz p1, :cond_9

    iget-boolean p2, v0, Lcom/android/systemui/qs/MiuiQSContainer;->qsDisabled:Z

    if-eqz p2, :cond_8

    move p2, v2

    goto :goto_4

    :cond_8
    move p2, p3

    :goto_4
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_9
    :goto_5
    iget-object p1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainer:Lcom/android/systemui/qs/MiuiQSContainer;

    if-nez p1, :cond_a

    move-object p1, v1

    :cond_a
    invoke-virtual {p1}, Lcom/android/systemui/qs/MiuiQSContainer;->getFooter()Lcom/android/systemui/qs/MiuiQSFooter;

    iget-object p1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainer:Lcom/android/systemui/qs/MiuiQSContainer;

    if-nez p1, :cond_b

    goto :goto_6

    :cond_b
    move-object v1, p1

    :goto_6
    invoke-virtual {v1}, Lcom/android/systemui/qs/MiuiQSContainer;->getQuickQSPanel()Lcom/android/systemui/qs/MiuiQuickQSPanel;

    move-result-object p1

    if-eqz p1, :cond_d

    iget-boolean p2, p1, Lcom/android/systemui/qs/MiuiQuickQSPanel;->mDisabledByPolicy:Z

    if-eq p4, p2, :cond_d

    iput-boolean p4, p1, Lcom/android/systemui/qs/MiuiQuickQSPanel;->mDisabledByPolicy:Z

    if-eqz p4, :cond_c

    move p3, v2

    :cond_c
    invoke-virtual {p1, p3}, Lcom/android/systemui/qs/MiuiQuickQSPanel;->setVisibility(I)V

    :cond_d
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->updateQsState()V

    return-void
.end method

.method public final getDesiredHeight()I
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainer:Lcom/android/systemui/qs/MiuiQSContainer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/qs/MiuiQSContainer;->getQsCustomizer()Lcom/android/systemui/qs/customize/MiuiQSCustomizer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->isCustomizing()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p0

    return p0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainer:Lcom/android/systemui/qs/MiuiQSContainer;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    invoke-virtual {v1}, Lcom/android/systemui/qs/MiuiQSContainer;->getQsDetail()Lcom/android/systemui/qs/MiuiQSDetail;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-boolean v1, v0, Lcom/android/systemui/qs/MiuiQSDetail;->mIsShowingDetail:Z

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p0

    return p0

    :cond_3
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    return p0
.end method

.method public final getHeader()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainer:Lcom/android/systemui/qs/MiuiQSContainer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSContainer;->getHeader()Lcom/android/systemui/qs/MiuiNotificationShadeHeader;

    move-result-object p0

    return-object p0
.end method

.method public final getHeightDiff()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final getQsMinExpansionHeight()I
    .registers 1

    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainer:Lcom/android/systemui/qs/MiuiQSContainer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSContainer;->getMinHeight()I

    move-result p0

    return p0
.end method

.method public final hideImmediately()V
    .registers 2

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->headerAnimating:Z

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainer:Lcom/android/systemui/qs/MiuiQSContainer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSContainer;->getMinHeight()I

    move-result p0

    int-to-float p0, p0

    neg-float p0, p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setY(F)V

    return-void
.end method

.method public final isCustomizing()Z
    .registers 1

    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainer:Lcom/android/systemui/qs/MiuiQSContainer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSContainer;->getQsCustomizer()Lcom/android/systemui/qs/customize/MiuiQSCustomizer;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->isCustomizing()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final isExpanded()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsExpanded:Z

    return p0
.end method

.method public final isFullyCollapsed()Z
    .registers 2

    iget p0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->lastQSExpansion:F

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, -0x40800000

    cmpg-float p0, p0, v0

    if-nez p0, :cond_1

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final isListening()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->listening:Z

    return p0
.end method

.method public final isShowingDetail()Z
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainer:Lcom/android/systemui/qs/MiuiQSContainer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/qs/MiuiQSContainer;->getQsDetail()Lcom/android/systemui/qs/MiuiQSDetail;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/android/systemui/qs/MiuiQSDetail;->mDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->isCustomizing()Z

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final notifyCustomizeChanged()V
    .registers 7

    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainer:Lcom/android/systemui/qs/MiuiQSContainer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/qs/MiuiQSContainer;->getQsCustomizer()Lcom/android/systemui/qs/customize/MiuiQSCustomizer;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v2, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainer:Lcom/android/systemui/qs/MiuiQSContainer;

    if-nez v2, :cond_1

    move-object v2, v1

    :cond_1
    invoke-virtual {v2}, Lcom/android/systemui/qs/MiuiQSContainer;->getQsPanelScrollView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->isCustomizing()Z

    move-result v5

    if-nez v5, :cond_2

    move v5, v4

    goto :goto_0

    :cond_2
    move v5, v3

    :goto_0
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainer:Lcom/android/systemui/qs/MiuiQSContainer;

    if-nez p0, :cond_4

    goto :goto_1

    :cond_4
    move-object v1, p0

    :goto_1
    invoke-virtual {v1}, Lcom/android/systemui/qs/MiuiQSContainer;->getFooter()Lcom/android/systemui/qs/MiuiQSFooter;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->isCustomizing()Z

    move-result v0

    if-nez v0, :cond_5

    move v3, v4

    :cond_5
    invoke-interface {p0, v3}, Lcom/android/systemui/qs/MiuiQSFooter;->setVisibility(I)V

    :cond_6
    return-void
.end method

.method public final notifyQSDetailChanged()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->isShowingDetail()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->lastDetailShowing:Z

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->isShowingDetail()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->lastDetailShowing:Z

    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/qs/MiuiQSFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/MiuiQSFragment$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/MiuiQSFragment;)V

    invoke-static {v0, v1}, Lcom/miui/utils/CommonExtensionsKt;->runOrPost(Landroid/os/Handler;Lkotlin/jvm/functions/Function0;)V

    :cond_0
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->layoutDirection:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->layoutDirection:I

    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsAnimator:Lcom/android/systemui/qs/MiuiQSAnimator;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSAnimator;->miuiUpdateAnimators()V

    :cond_0
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    new-instance p3, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f150735

    invoke-direct {p3, p0, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, p3}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const p1, 0x7f0e026c

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final onDestroy()V
    .registers 4

    invoke-super {p0}, Lcom/android/systemui/util/LifecycleFragment;->onDestroy()V

    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->controlCenterController:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p0, v2}, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;Lcom/miui/systemui/controller/ControlCenterSettingsController$UseControlCenterChangeListener;I)V

    iget-object v0, v0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->uiHandler:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/miui/utils/CommonExtensionsKt;->runOrPost(Landroid/os/Handler;Lkotlin/jvm/functions/Function0;)V

    iget-boolean v0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->listening:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/MiuiQSFragment;->setListening(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainer:Lcom/android/systemui/qs/MiuiQSContainer;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move-object v0, v1

    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/qs/MiuiQSContainer;->getQsCustomizer()Lcom/android/systemui/qs/customize/MiuiQSCustomizer;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->setQs(Lcom/android/systemui/qs/MiuiQS;)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainer:Lcom/android/systemui/qs/MiuiQSContainer;

    if-nez v0, :cond_3

    move-object v0, v1

    :cond_3
    invoke-virtual {v0}, Lcom/android/systemui/qs/MiuiQSContainer;->getQsDetail()Lcom/android/systemui/qs/MiuiQSDetail;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/MiuiQSDetail;->setQS(Lcom/android/systemui/qs/MiuiQS;)V

    :cond_4
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsDetailCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final onDestroyView()V
    .registers 2

    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainerLifecycle:Lcom/android/systemui/qs/MiuiQSFragment$qsContainerLifecycle$1;

    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSFragment$qsContainerLifecycle$1;->lifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->DESTROYED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/LifecycleRegistry;->setCurrentState(Landroidx/lifecycle/Lifecycle$State;)V

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_0
    const-string v0, "expanded"

    iget-boolean v1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsExpanded:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "listening"

    iget-boolean v1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->listening:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    const-string v1, "alpha"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    const-string v1, "trans_y"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsCustomizerController:Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;

    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;

    iget-boolean v1, v1, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->isShown:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-object v2, v0, Lcom/android/systemui/qs/customize/MiuiQSCustomizerController;->keyguardCallback:Lcom/android/systemui/qs/customize/MiuiQSCustomizerController$keyguardCallback$1;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->removeCallback(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->isCustomizing()Z

    move-result v0

    const-string v1, "qs_customizing"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainerController:Lcom/android/systemui/qs/MiuiQSContainerController;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/android/systemui/qs/MiuiQSContainerController;->brightnessSlider:Lcom/android/systemui/settings/brightness/MiuiBrightnessSlider;

    invoke-virtual {v0}, Lcom/android/systemui/settings/brightness/MiuiBrightnessSlider;->getValue()I

    move-result v0

    const-string v1, "extra_slider_progress"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsExpanded:Z

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainer:Lcom/android/systemui/qs/MiuiQSContainer;

    if-nez p0, :cond_4

    const/4 p0, 0x0

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSContainer;->getQsPanel()Lcom/android/systemui/qs/MiuiQSPanel;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSPanel;->getTileLayout()Lcom/android/systemui/qs/MiuiQSPanel$QSTileLayout;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-interface {p0, p1}, Lcom/android/systemui/qs/MiuiQSPanel$QSTileLayout;->saveInstanceState(Landroid/os/Bundle;)V

    :cond_5
    return-void
.end method

.method public final onStateChanged(I)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    sget-boolean p1, Lcom/android/systemui/qs/MiuiQSFragment;->DEBUG:Z

    if-eqz p1, :cond_1

    const-string p1, "setKeyguardShowing "

    const-string v2, "QS"

    invoke-static {p1, v2, v1}, Lcom/android/keyguard/clock/animation/TinyBubbleClockAnimation$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    const/high16 p1, -0x40800000

    iput p1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->lastQSExpansion:F

    iget-object p1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsAnimator:Lcom/android/systemui/qs/MiuiQSAnimator;

    if-eqz p1, :cond_3

    iput-boolean v1, p1, Lcom/android/systemui/qs/MiuiQSAnimator;->mOnKeyguard:Z

    iget-object v2, p1, Lcom/android/systemui/qs/MiuiQSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/MiuiQuickQSPanel;

    if-eqz v1, :cond_2

    const/4 v0, 0x4

    :cond_2
    invoke-virtual {v2, v0}, Lcom/android/systemui/qs/MiuiQuickQSPanel;->setVisibility(I)V

    iget-boolean v0, p1, Lcom/android/systemui/qs/MiuiQSAnimator;->mOnKeyguard:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/android/systemui/qs/MiuiQSAnimator;->clearAnimationState()V

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainer:Lcom/android/systemui/qs/MiuiQSContainer;

    if-nez p1, :cond_4

    const/4 p1, 0x0

    :cond_4
    invoke-virtual {p1}, Lcom/android/systemui/qs/MiuiQSContainer;->getFooter()Lcom/android/systemui/qs/MiuiQSFooter;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-interface {p1, v1}, Lcom/android/systemui/qs/MiuiQSFooter;->setKeyguardShowing(Z)V

    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->updateQsState()V

    return-void
.end method

.method public final onUseControlCenterChange(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainer:Lcom/android/systemui/qs/MiuiQSContainer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/MiuiQSContainer;->setShowQSPanel(Z)V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 7

    move-object v3, p0

    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/qs/MiuiQSContainer;

    iput-object v0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainer:Lcom/android/systemui/qs/MiuiQSContainer;

    iput-object p2, p0, Lcom/android/systemui/qs/MiuiQSFragment;->savedInstanceState:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainerLifecycle:Lcom/android/systemui/qs/MiuiQSFragment$qsContainerLifecycle$1;

    iget-object v1, v1, Lcom/android/systemui/qs/MiuiQSFragment$qsContainerLifecycle$1;->lifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/LifecycleRegistry;->setCurrentState(Landroidx/lifecycle/Lifecycle$State;)V

    iget-object v1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v1, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    if-eqz p2, :cond_0

    const-string v1, "alpha"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    const-string v1, "trans_y"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p2

    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :goto_0
    iget-object p2, p0, Lcom/android/systemui/qs/MiuiQSFragment;->controlCenterController:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    invoke-virtual {p2, p0}, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->addCallback(Lcom/miui/systemui/controller/ControlCenterSettingsController$UseControlCenterChangeListener;)V

    new-instance p2, Lcom/android/systemui/qs/MiuiQSFragment$onViewCreated$3;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/android/systemui/qs/MiuiQSFragment$onViewCreated$3;-><init>(Lcom/android/systemui/qs/MiuiQSFragment;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-virtual {v3}, Lcom/android/systemui/qs/MiuiQSFragment;->updateBackgroundColors()V

    return-void
.end method

.method public final remQsTile(Landroid/content/ComponentName;)V
    .registers 5

    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->controlCenterController:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->isUseControlCenter()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v1, "command remove tile: "

    const-string v2, "QS"

    invoke-static {v1, v0, v2}, Landroidx/fragment/app/Fragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_2

    :goto_1
    return-void

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->host:Lcom/android/systemui/qs/QSHost;

    check-cast p0, Lcom/android/systemui/qs/pipeline/domain/adapter/MiuiQSHostAdapter;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/pipeline/domain/adapter/MiuiQSHostAdapter;->removeTileByUser(Landroid/content/ComponentName;)V

    return-void
.end method

.method public final setCollapseExpandAction(Ljava/lang/Runnable;)V
    .registers 2

    return-void
.end method

.method public final setCollapsedMediaVisibilityChangedListener(Ljava/util/function/Consumer;)V
    .registers 2

    return-void
.end method

.method public final setContainerController(Lcom/android/systemui/plugins/qs/QSContainerController;)V
    .registers 4

    instance-of v0, p1, Lcom/android/systemui/shade/NotificationsQSContainerController;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/android/systemui/shade/NotificationsQSContainerController;

    iput-object p1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->notificationContainer:Lcom/android/systemui/shade/NotificationsQSContainerController;

    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainer:Lcom/android/systemui/qs/MiuiQSContainer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/qs/MiuiQSContainer;->getQsCustomizer()Lcom/android/systemui/qs/customize/MiuiQSCustomizer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->setContainer(Lcom/android/systemui/shade/NotificationsQSContainerController;)V

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainer:Lcom/android/systemui/qs/MiuiQSContainer;

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, p0

    :goto_0
    invoke-virtual {v1}, Lcom/android/systemui/qs/MiuiQSContainer;->getQsDetail()Lcom/android/systemui/qs/MiuiQSDetail;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/MiuiQSDetail;->setContainer(Lcom/android/systemui/shade/NotificationsQSContainerController;)V

    :cond_3
    return-void
.end method

.method public final setExpanded(Z)V
    .registers 5

    const-string v0, "setExpanded "

    const-string v1, "QS"

    invoke-static {v0, v1, p1}, Lcom/android/keyguard/clock/animation/TinyBubbleClockAnimation$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-boolean p1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsExpanded:Z

    iget-object p1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainer:Lcom/android/systemui/qs/MiuiQSContainer;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/qs/MiuiQSContainer;->getQsPanel()Lcom/android/systemui/qs/MiuiQSPanel;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->listening:Z

    iget-boolean v1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsExpanded:Z

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/qs/MiuiQSPanel;->setListening(ZZ)V

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainerController:Lcom/android/systemui/qs/MiuiQSContainerController;

    if-eqz p1, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->listening:Z

    iget-object v1, p1, Lcom/android/systemui/qs/MiuiQSContainerController;->controlCenterController:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->isUseControlCenter()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->isCollapsed()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/MiuiQSContainerController;->setBrightnessListening(Z)V

    iget-object p1, p1, Lcom/android/systemui/qs/MiuiQSContainerController;->qsFooterDataUsageController:Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;

    iget-boolean v1, p1, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;->listening:Z

    if-ne v1, v0, :cond_3

    goto :goto_0

    :cond_3
    iput-boolean v0, p1, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;->listening:Z

    invoke-virtual {p1}, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;->requestUpdate()V

    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->updateQsState()V

    return-void
.end method

.method public final setFancyClipping(IIIIIZZ)V
    .registers 8

    return-void
.end method

.method public final setHasNotifications(Z)V
    .registers 2

    return-void
.end method

.method public final setHeaderClickable(Z)V
    .registers 3

    sget-boolean p0, Lcom/android/systemui/qs/MiuiQSFragment;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "setHeaderClickable "

    const-string v0, "QS"

    invoke-static {p0, v0, p1}, Lcom/android/keyguard/clock/animation/TinyBubbleClockAnimation$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public final setHeaderListening(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->controlCenterController:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->isUseControlCenter()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainerController:Lcom/android/systemui/qs/MiuiQSContainerController;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/MiuiQSContainerController;->setBrightnessListening(Z)V

    iget-object v0, v0, Lcom/android/systemui/qs/MiuiQSContainerController;->qsFooterDataUsageController:Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;

    iget-boolean v1, v0, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;->listening:Z

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean p1, v0, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;->listening:Z

    invoke-virtual {v0}, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;->requestUpdate()V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainer:Lcom/android/systemui/qs/MiuiQSContainer;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    move-object v0, v1

    :cond_3
    invoke-virtual {v0}, Lcom/android/systemui/qs/MiuiQSContainer;->getFooter()Lcom/android/systemui/qs/MiuiQSFooter;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0, p1}, Lcom/android/systemui/qs/MiuiQSFooter;->setListening(Z)V

    :cond_4
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainer:Lcom/android/systemui/qs/MiuiQSContainer;

    if-nez p0, :cond_5

    goto :goto_1

    :cond_5
    move-object v1, p0

    :goto_1
    invoke-virtual {v1}, Lcom/android/systemui/qs/MiuiQSContainer;->getQuickQSPanel()Lcom/android/systemui/qs/MiuiQuickQSPanel;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/MiuiQSPanel;->setListening(Z)V

    :cond_6
    :goto_2
    return-void
.end method

.method public final setHeightOverride(I)V
    .registers 2

    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainer:Lcom/android/systemui/qs/MiuiQSContainer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/MiuiQSContainer;->setHeightOverride(I)V

    return-void
.end method

.method public final setInSplitShade(Z)V
    .registers 2

    return-void
.end method

.method public final setIsNotificationPanelFullWidth(Z)V
    .registers 2

    return-void
.end method

.method public final setListening(Z)V
    .registers 6

    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->controlCenterController:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->isUseControlCenter()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->listening:Z

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const-string v1, "setListening "

    const-string v2, "QS"

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainer:Lcom/android/systemui/qs/MiuiQSContainer;

    if-nez v0, :cond_1

    goto :goto_3

    :cond_1
    invoke-static {v1, v2, p1}, Lcom/android/keyguard/clock/animation/ClockBaseAnimation$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainer:Lcom/android/systemui/qs/MiuiQSContainer;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    move-object v0, v1

    :cond_2
    invoke-virtual {v0}, Lcom/android/systemui/qs/MiuiQSContainer;->getFooter()Lcom/android/systemui/qs/MiuiQSFooter;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Lcom/android/systemui/qs/MiuiQSFooter;->setListening(Z)V

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainer:Lcom/android/systemui/qs/MiuiQSContainer;

    if-nez v0, :cond_4

    move-object v0, v1

    :cond_4
    invoke-virtual {v0}, Lcom/android/systemui/qs/MiuiQSContainer;->getQsPanel()Lcom/android/systemui/qs/MiuiQSPanel;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-boolean v2, p0, Lcom/android/systemui/qs/MiuiQSFragment;->listening:Z

    iget-boolean v3, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsExpanded:Z

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/qs/MiuiQSPanel;->setListening(ZZ)V

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainerController:Lcom/android/systemui/qs/MiuiQSContainerController;

    if-eqz v0, :cond_8

    iget-object v2, v0, Lcom/android/systemui/qs/MiuiQSContainerController;->controlCenterController:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    invoke-virtual {v2}, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->isUseControlCenter()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->isCollapsed()Z

    move-result v2

    if-nez v2, :cond_6

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/MiuiQSContainerController;->setBrightnessListening(Z)V

    iget-object v0, v0, Lcom/android/systemui/qs/MiuiQSContainerController;->qsFooterDataUsageController:Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;

    iget-boolean v2, v0, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;->listening:Z

    if-ne v2, p1, :cond_7

    goto :goto_1

    :cond_7
    iput-boolean p1, v0, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;->listening:Z

    invoke-virtual {v0}, Lcom/android/systemui/qs/datausage/QSFooterDataUsageController;->requestUpdate()V

    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainer:Lcom/android/systemui/qs/MiuiQSContainer;

    if-nez v0, :cond_9

    move-object v0, v1

    :cond_9
    invoke-virtual {v0}, Lcom/android/systemui/qs/MiuiQSContainer;->getQuickQSPanel()Lcom/android/systemui/qs/MiuiQuickQSPanel;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/MiuiQSPanel;->setListening(Z)V

    :cond_a
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainer:Lcom/android/systemui/qs/MiuiQSContainer;

    if-nez p0, :cond_b

    goto :goto_2

    :cond_b
    move-object v1, p0

    :goto_2
    invoke-virtual {v1}, Lcom/android/systemui/qs/MiuiQSContainer;->getQuickQSPanel()Lcom/android/systemui/qs/MiuiQuickQSPanel;

    return-void

    :cond_c
    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " return"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final setOverscrolling(Z)V
    .registers 4

    sget-boolean v0, Lcom/android/systemui/qs/MiuiQSFragment;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "setOverscrolling "

    const-string v1, "QS"

    invoke-static {v0, v1, p1}, Lcom/android/keyguard/clock/animation/TinyBubbleClockAnimation$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->stackScrollerOverscrolling:Z

    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSFragment;->updateQsState()V

    return-void
.end method

.method public final setPanelView(Lcom/android/systemui/plugins/qs/QS$HeightListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->panelView:Lcom/android/systemui/plugins/qs/QS$HeightListener;

    return-void
.end method

.method public final setQsExpansion(FF)V
    .registers 12

    sget-boolean v0, Lcom/android/systemui/qs/MiuiQSFragment;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setQSExpansion "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QS"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainer:Lcom/android/systemui/qs/MiuiQSContainer;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move-object v0, v1

    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/MiuiQSContainer;->setExpansion(F)V

    const/4 v0, 0x1

    int-to-float v2, v0

    sub-float v2, p1, v2

    iget-object v3, p0, Lcom/android/systemui/qs/MiuiQSFragment;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v3}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v3

    const/4 v4, 0x0

    if-ne v3, v0, :cond_2

    move v3, v0

    goto :goto_0

    :cond_2
    move v3, v4

    :goto_0
    iget-boolean v5, p0, Lcom/android/systemui/qs/MiuiQSFragment;->headerAnimating:Z

    const/4 v6, 0x0

    if-nez v5, :cond_4

    if-eqz v3, :cond_5

    iget-object p2, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainer:Lcom/android/systemui/qs/MiuiQSContainer;

    if-nez p2, :cond_3

    move-object p2, v1

    :cond_3
    invoke-virtual {p2}, Lcom/android/systemui/qs/MiuiQSContainer;->getMinHeight()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, v2

    goto :goto_1

    :cond_4
    move p2, v6

    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsController:Lcom/android/systemui/qs/MiuiQSController;

    iget-object v2, v2, Lcom/android/systemui/qs/MiuiQSController;->_qsTranslation:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v1, p2}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    iget v2, p0, Lcom/android/systemui/qs/MiuiQSFragment;->lastQSExpansion:F

    cmpg-float v2, p1, v2

    if-nez v2, :cond_6

    iget-boolean v2, p0, Lcom/android/systemui/qs/MiuiQSFragment;->lastKeyguardAndExpanded:Z

    if-ne v2, v3, :cond_6

    iget v2, p0, Lcom/android/systemui/qs/MiuiQSFragment;->lastViewHeight:I

    if-ne v2, p2, :cond_6

    goto :goto_7

    :cond_6
    iput p1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->lastQSExpansion:F

    iput-boolean v3, p0, Lcom/android/systemui/qs/MiuiQSFragment;->lastKeyguardAndExpanded:Z

    iput p2, p0, Lcom/android/systemui/qs/MiuiQSFragment;->lastViewHeight:I

    const/high16 p2, 0x3f800000

    cmpg-float v2, p1, p2

    if-nez v2, :cond_7

    move v2, v0

    goto :goto_2

    :cond_7
    move v2, v4

    :goto_2
    cmpg-float v5, p1, v6

    if-nez v5, :cond_8

    goto :goto_3

    :cond_8
    move v0, v4

    :goto_3
    iget-object v5, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainer:Lcom/android/systemui/qs/MiuiQSContainer;

    if-nez v5, :cond_9

    move-object v5, v1

    :cond_9
    invoke-virtual {v5}, Lcom/android/systemui/qs/MiuiQSContainer;->getQuickQSPanel()Lcom/android/systemui/qs/MiuiQuickQSPanel;

    iget-object v5, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainer:Lcom/android/systemui/qs/MiuiQSContainer;

    if-nez v5, :cond_a

    move-object v5, v1

    :cond_a
    invoke-virtual {v5}, Lcom/android/systemui/qs/MiuiQSContainer;->getFooter()Lcom/android/systemui/qs/MiuiQSFooter;

    move-result-object v5

    if-eqz v5, :cond_c

    if-eqz v3, :cond_b

    move v3, p2

    goto :goto_4

    :cond_b
    move v3, p1

    :goto_4
    invoke-interface {v5, v3}, Lcom/android/systemui/qs/MiuiQSFooter;->setExpansion(F)V

    :cond_c
    iget-object v3, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainer:Lcom/android/systemui/qs/MiuiQSContainer;

    if-nez v3, :cond_d

    move-object v3, v1

    :cond_d
    invoke-virtual {v3}, Lcom/android/systemui/qs/MiuiQSContainer;->getQsPanel()Lcom/android/systemui/qs/MiuiQSPanel;

    move-result-object v3

    if-eqz v3, :cond_f

    invoke-virtual {v3}, Lcom/android/systemui/qs/MiuiQSPanel;->getQsTileRevealController()Lcom/android/systemui/qs/MiuiQSTileRevealController;

    move-result-object v3

    if-eqz v3, :cond_f

    cmpl-float v5, p1, p2

    iget-object v6, v3, Lcom/android/systemui/qs/MiuiQSTileRevealController;->mHandler:Landroid/os/Handler;

    iget-object v3, v3, Lcom/android/systemui/qs/MiuiQSTileRevealController;->mRevealQsTiles:Lcom/android/systemui/qs/MiuiQSTileRevealController$1;

    if-nez v5, :cond_e

    const-wide/16 v7, 0x1f4

    invoke-virtual {v6, v3, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_5

    :cond_e
    invoke-virtual {v6, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_f
    :goto_5
    iget-object v3, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainer:Lcom/android/systemui/qs/MiuiQSContainer;

    if-nez v3, :cond_10

    move-object v3, v1

    :cond_10
    invoke-virtual {v3}, Lcom/android/systemui/qs/MiuiQSContainer;->getQsPanel()Lcom/android/systemui/qs/MiuiQSPanel;

    move-result-object v3

    if-eqz v3, :cond_11

    invoke-virtual {v3}, Lcom/android/systemui/qs/MiuiQSPanel;->getTileLayout()Lcom/android/systemui/qs/MiuiQSPanel$QSTileLayout;

    move-result-object v3

    if-eqz v3, :cond_11

    invoke-interface {v3, p1}, Lcom/android/systemui/qs/MiuiQSPanel$QSTileLayout;->setExpansion(F)V

    :cond_11
    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainer:Lcom/android/systemui/qs/MiuiQSContainer;

    if-nez v0, :cond_12

    move-object v0, v1

    :cond_12
    invoke-virtual {v0}, Lcom/android/systemui/qs/MiuiQSContainer;->getQsPanelScrollView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v0, v4}, Landroid/view/View;->setScrollY(I)V

    :cond_13
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainer:Lcom/android/systemui/qs/MiuiQSContainer;

    if-nez v0, :cond_14

    move-object v0, v1

    :cond_14
    invoke-virtual {v0}, Lcom/android/systemui/qs/MiuiQSContainer;->getQsDetail()Lcom/android/systemui/qs/MiuiQSDetail;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/MiuiQSDetail;->setFullyExpanded(Z)V

    :cond_15
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainer:Lcom/android/systemui/qs/MiuiQSContainer;

    if-nez v0, :cond_16

    move-object v0, v1

    :cond_16
    invoke-virtual {v0}, Lcom/android/systemui/qs/MiuiQSContainer;->getQsPanelScrollView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_17

    if-nez v2, :cond_17

    iget-object v2, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v3

    neg-float v3, v3

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    :cond_17
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainer:Lcom/android/systemui/qs/MiuiQSContainer;

    if-nez v0, :cond_18

    goto :goto_6

    :cond_18
    move-object v1, v0

    :goto_6
    invoke-virtual {v1}, Lcom/android/systemui/qs/MiuiQSContainer;->getQsPanelScrollView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget v1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->lastQSExpansion:F

    cmpg-float p2, v1, p2

    if-nez p2, :cond_19

    iget-object p2, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p2, v4, v4, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    :cond_19
    iget-object p2, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    :cond_1a
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsAnimator:Lcom/android/systemui/qs/MiuiQSAnimator;

    if-eqz p0, :cond_1b

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/MiuiQSAnimator;->setPosition(F)V

    :cond_1b
    :goto_7
    return-void
.end method

.method public final setQsExpansion(FFFF)V
    .registers 5

    invoke-virtual {p0, p1, p3}, Lcom/android/systemui/qs/MiuiQSFragment;->setQsExpansion(FF)V

    return-void
.end method

.method public final setQsVisible(Z)V
    .registers 2

    return-void
.end method

.method public updateBackgroundColors()V
    .registers 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x0

    const-string v2, "QS_bg_color_show"

    invoke-static {v2, v0}, Landroid/preference/SettingsEliteHelper;->getIntofSettings(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const-string v2, "QS_bg_color"

    invoke-static {v2, v0}, Landroid/preference/SettingsEliteHelper;->getIntofSettings(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "QS_background_border_width"

    invoke-static {v3, v0}, Landroid/preference/SettingsEliteHelper;->getIntofSettings(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "QS_background_border_color"

    invoke-static {v4, v0}, Landroid/preference/SettingsEliteHelper;->getIntofSettings(Ljava/lang/String;I)I

    move-result v4

    const-string v2, "new_QS_background_color_force"

    invoke-static {v2, v0}, Landroid/preference/SettingsEliteHelper;->getIntofSettings(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "new_QS_background_alpha"

    invoke-static {v2, v0}, Landroid/preference/SettingsEliteHelper;->getIntofSettings(Ljava/lang/String;I)I

    move-result v2

    invoke-direct {p0, v2, v1, v3, v4}, Lcom/android/systemui/qs/MiuiQSFragment;->setBackgroundColorLightDarkDrawable(IIII)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1, v3, v4}, Lcom/android/systemui/qs/MiuiQSFragment;->setBackgroundColor(III)V

    :goto_0
    return-void
.end method

.method public final updateQsState()V
    .registers 9

    iget-boolean v0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsExpanded:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->stackScrollerOverscrolling:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->headerAnimating:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainer:Lcom/android/systemui/qs/MiuiQSContainer;

    const/4 v4, 0x0

    if-nez v3, :cond_2

    move-object v3, v4

    :cond_2
    invoke-virtual {v3}, Lcom/android/systemui/qs/MiuiQSContainer;->getQsPanel()Lcom/android/systemui/qs/MiuiQSPanel;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-boolean v5, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsExpanded:Z

    invoke-virtual {v3, v5}, Lcom/android/systemui/qs/MiuiQSPanel;->setExpanded(Z)V

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainer:Lcom/android/systemui/qs/MiuiQSContainer;

    if-nez v3, :cond_4

    move-object v3, v4

    :cond_4
    invoke-virtual {v3}, Lcom/android/systemui/qs/MiuiQSContainer;->getQsDetail()Lcom/android/systemui/qs/MiuiQSDetail;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-boolean v5, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsExpanded:Z

    invoke-virtual {v3, v5}, Lcom/android/systemui/qs/MiuiQSDetail;->setExpanded(Z)V

    :cond_5
    iget-object v3, p0, Lcom/android/systemui/qs/MiuiQSFragment;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v3}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v3

    if-ne v3, v1, :cond_6

    move v3, v1

    goto :goto_2

    :cond_6
    move v3, v2

    :goto_2
    iget-object v5, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainer:Lcom/android/systemui/qs/MiuiQSContainer;

    if-nez v5, :cond_7

    move-object v5, v4

    :cond_7
    invoke-virtual {v5}, Lcom/android/systemui/qs/MiuiQSContainer;->getHeader()Lcom/android/systemui/qs/MiuiNotificationShadeHeader;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainer:Lcom/android/systemui/qs/MiuiQSContainer;

    if-nez v5, :cond_8

    move-object v5, v4

    :cond_8
    invoke-virtual {v5}, Lcom/android/systemui/qs/MiuiQSContainer;->getQuickQSPanel()Lcom/android/systemui/qs/MiuiQuickQSPanel;

    move-result-object v5

    if-eqz v5, :cond_b

    if-eqz v3, :cond_9

    iget-boolean v7, p0, Lcom/android/systemui/qs/MiuiQSFragment;->headerAnimating:Z

    if-nez v7, :cond_9

    goto :goto_3

    :cond_9
    iget-boolean v7, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsExpanded:Z

    if-eqz v7, :cond_a

    iget-boolean v7, p0, Lcom/android/systemui/qs/MiuiQSFragment;->stackScrollerOverscrolling:Z

    if-nez v7, :cond_a

    :goto_3
    move v7, v1

    goto :goto_4

    :cond_a
    move v7, v2

    :goto_4
    invoke-virtual {v5, v7}, Lcom/android/systemui/qs/MiuiQSPanel;->setExpanded(Z)V

    :cond_b
    iget-object v5, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainer:Lcom/android/systemui/qs/MiuiQSContainer;

    if-nez v5, :cond_c

    move-object v5, v4

    :cond_c
    invoke-virtual {v5}, Lcom/android/systemui/qs/MiuiQSContainer;->getFooter()Lcom/android/systemui/qs/MiuiQSFooter;

    move-result-object v5

    if-eqz v5, :cond_f

    iget-boolean v7, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsDisabled:Z

    if-nez v7, :cond_e

    iget-boolean v7, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsExpanded:Z

    if-nez v7, :cond_d

    if-eqz v3, :cond_d

    iget-boolean v7, p0, Lcom/android/systemui/qs/MiuiQSFragment;->headerAnimating:Z

    if-nez v7, :cond_d

    goto :goto_5

    :cond_d
    move v7, v2

    goto :goto_6

    :cond_e
    :goto_5
    move v7, v6

    :goto_6
    invoke-interface {v5, v7}, Lcom/android/systemui/qs/MiuiQSFooter;->setVisibility(I)V

    :cond_f
    iget-object v5, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainer:Lcom/android/systemui/qs/MiuiQSContainer;

    if-nez v5, :cond_10

    move-object v5, v4

    :cond_10
    invoke-virtual {v5}, Lcom/android/systemui/qs/MiuiQSContainer;->getFooter()Lcom/android/systemui/qs/MiuiQSFooter;

    move-result-object v5

    if-eqz v5, :cond_13

    if-eqz v3, :cond_11

    iget-boolean v3, p0, Lcom/android/systemui/qs/MiuiQSFragment;->headerAnimating:Z

    if-nez v3, :cond_11

    goto :goto_7

    :cond_11
    iget-boolean v3, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsExpanded:Z

    if-eqz v3, :cond_12

    iget-boolean v3, p0, Lcom/android/systemui/qs/MiuiQSFragment;->stackScrollerOverscrolling:Z

    if-nez v3, :cond_12

    goto :goto_7

    :cond_12
    move v1, v2

    :goto_7
    invoke-interface {v5, v1}, Lcom/android/systemui/qs/MiuiQSFooter;->setExpanded(Z)V

    :cond_13
    iget-object v1, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsContainer:Lcom/android/systemui/qs/MiuiQSContainer;

    if-nez v1, :cond_14

    goto :goto_8

    :cond_14
    move-object v4, v1

    :goto_8
    invoke-virtual {v4}, Lcom/android/systemui/qs/MiuiQSContainer;->getQsPanel()Lcom/android/systemui/qs/MiuiQSPanel;

    move-result-object v1

    if-eqz v1, :cond_16

    iget-boolean p0, p0, Lcom/android/systemui/qs/MiuiQSFragment;->qsDisabled:Z

    if-nez p0, :cond_15

    if-eqz v0, :cond_15

    goto :goto_9

    :cond_15
    move v2, v6

    :goto_9
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_16
    return-void
.end method

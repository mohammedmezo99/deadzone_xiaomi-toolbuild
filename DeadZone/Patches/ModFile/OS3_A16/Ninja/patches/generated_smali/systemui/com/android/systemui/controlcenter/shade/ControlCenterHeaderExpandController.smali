.class public final Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;
.super Ljava/lang/Object;


# static fields
.field public static final DEBUG:Z


# instance fields
.field public batteryWidthDiff:I

.field public bouncerShowing:Z

.field public burnShakeTranX:F

.field public final carrierLocation:[I

.field public final cccc:Lcom/miui/systemui/controlcenter/container/ControlCenterContainerController;

.field public final configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final context:Landroid/content/Context;

.field public final controlCenter:Lcom/miui/systemui/controlcenter/ControlCenterImpl;

.field public final controlCenterCallback:Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController$controlCenterCallback$1;

.field public final controlCenterFakeViewController:Lcom/android/systemui/controlcenter/shade/ControlCenterFakeViewController;

.field public final controlCenterHeaderVisibility:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final dateViewLocation:[I

.field public final fakePrivacyLocation:[I

.field public headerControlOffset:I

.field public final headerController:Ldagger/Lazy;

.field public final headerLayoutChangeListener:Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController$headerLayoutChangeListener$1;

.field public isAddBatteryIsland:Z

.field public isControlCenterExpanding:Z

.field public islandShowing:Z

.field public final keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final keyguardUpdateMonitorCallback:Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController$keyguardUpdateMonitorCallback$1;

.field public final landShowingFolme:Lmiuix/animation/IStateStyle;

.field public landShowingTranX:F

.field public final mConfigurationListener:Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController$mConfigurationListener$1;

.field public final normaControlStatusBarLocation:[I

.field public normalControlCarrierTranslationX:I

.field public normalControlDateTranslationX:I

.field public normalControlPrivacyTranslationX:I

.field public normalControlPrivacyTranslationY:I

.field public normalControlStatusBarTranslationX:I

.field public normalControlStatusBarTranslationY:I

.field public final normalControlStatusIconsLocation:[I

.field public normalControlStatusIconsTranslationX:I

.field public final normalControlSystemIconsLocation:[I

.field public oldState:I

.field public final onIslandAddRemoveListener:Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController$onIslandAddRemoveListener$1;

.field public final onIslandStatusChangedListener:Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController$onIslandStatusChangedListener$1;

.field public realPrivacyDotLocation:[I

.field public final realPrivacyDotNotTranXLocation:[I

.field public realPromptIcon:Landroid/view/View;

.field public final realPromptIconLayoutChangeListener:Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController$headerLayoutChangeListener$1;

.field public final realStatusBarStatusIconsLocation:[I

.field public realStatusBarSystemIconsLocation:[I

.field public realStatusIcons:Landroid/view/View;

.field public realSystemIcons:Landroid/view/View;

.field public final scope:Lkotlinx/coroutines/CoroutineScope;

.field public final statusBarIslandControllerImp:Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;

.field public final statusBarLayoutChangeListener:Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController$headerLayoutChangeListener$1;

.field public final statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public final statusBarStateListener:Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController$statusBarStateListener$1;

.field public storeAddIslandShowing:Z

.field public storeIslandShowing:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-boolean v0, Lcom/miui/utils/configs/MiuiDebugConfig;->DEBUG_CONTROL_CENTER:Z

    sput-boolean v0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Ldagger/Lazy;Landroid/content/Context;Lcom/android/systemui/controlcenter/shade/ControlCenterFakeViewController;Lcom/miui/systemui/controlcenter/ControlCenterImpl;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/miui/systemui/controlcenter/container/ControlCenterContainerController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->scope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p2, p0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->headerController:Ldagger/Lazy;

    iput-object p3, p0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->context:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->controlCenterFakeViewController:Lcom/android/systemui/controlcenter/shade/ControlCenterFakeViewController;

    iput-object p5, p0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->controlCenter:Lcom/miui/systemui/controlcenter/ControlCenterImpl;

    iput-object p6, p0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p7, p0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iput-object p8, p0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->cccc:Lcom/miui/systemui/controlcenter/container/ControlCenterContainerController;

    iput-object p9, p0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iput-object p11, p0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->statusBarIslandControllerImp:Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;

    const/4 p2, 0x2

    new-array p4, p2, [I

    iput-object p4, p0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->normaControlStatusBarLocation:[I

    new-array p4, p2, [I

    iput-object p4, p0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->normalControlSystemIconsLocation:[I

    new-array p4, p2, [I

    iput-object p4, p0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->normalControlStatusIconsLocation:[I

    new-array p4, p2, [I

    iput-object p4, p0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->dateViewLocation:[I

    new-array p4, p2, [I

    iput-object p4, p0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->carrierLocation:[I

    new-array p4, p2, [I

    iput-object p4, p0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->fakePrivacyLocation:[I

    new-array p4, p2, [I

    iput-object p4, p0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->realStatusBarSystemIconsLocation:[I

    new-array p4, p2, [I

    iput-object p4, p0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->realStatusBarStatusIconsLocation:[I

    new-array p4, p2, [I

    iput-object p4, p0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->realPrivacyDotLocation:[I

    new-array p4, p2, [I

    iput-object p4, p0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->realPrivacyDotNotTranXLocation:[I

    const-string p4, "landShowingFolme"

    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object p4

    invoke-static {p4}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p4

    sget-object p5, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    const/4 p9, 0x0

    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p11

    filled-new-array {p5, p11}, [Ljava/lang/Object;

    move-result-object p5

    invoke-interface {p4, p5}, Lmiuix/animation/FolmeStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p4

    iput-object p4, p0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->landShowingFolme:Lmiuix/animation/IStateStyle;

    iget-boolean p4, p6, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerIsOrWillBeShowing:Z

    iput-boolean p4, p0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->bouncerShowing:Z

    invoke-interface {p7}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p4

    iput p4, p0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->oldState:I

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const p5, 0x7f070566

    invoke-virtual {p4, p5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p4

    iput p4, p0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->headerControlOffset:I

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f0718b5

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    new-instance p3, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController$mConfigurationListener$1;

    invoke-direct {p3, p0}, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController$mConfigurationListener$1;-><init>(Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;)V

    iput-object p3, p0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->mConfigurationListener:Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController$mConfigurationListener$1;

    new-instance p3, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController$headerLayoutChangeListener$1;

    invoke-direct {p3, p0, p9}, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController$headerLayoutChangeListener$1;-><init>(Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;I)V

    iput-object p3, p0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->headerLayoutChangeListener:Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController$headerLayoutChangeListener$1;

    new-instance p3, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController$headerLayoutChangeListener$1;

    invoke-direct {p3, p0, p2}, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController$headerLayoutChangeListener$1;-><init>(Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;I)V

    iput-object p3, p0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->statusBarLayoutChangeListener:Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController$headerLayoutChangeListener$1;

    new-instance p2, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController$headerLayoutChangeListener$1;

    const/4 p3, 0x1

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController$headerLayoutChangeListener$1;-><init>(Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;I)V

    iput-object p2, p0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->realPromptIconLayoutChangeListener:Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController$headerLayoutChangeListener$1;

    new-instance p2, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController$statusBarStateListener$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController$statusBarStateListener$1;-><init>(Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;)V

    iput-object p2, p0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->statusBarStateListener:Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController$statusBarStateListener$1;

    new-instance p2, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController$onIslandStatusChangedListener$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController$onIslandStatusChangedListener$1;-><init>(Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;)V

    iput-object p2, p0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->onIslandStatusChangedListener:Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController$onIslandStatusChangedListener$1;

    new-instance p2, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController$onIslandAddRemoveListener$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController$onIslandAddRemoveListener$1;-><init>(Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;)V

    iput-object p2, p0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->onIslandAddRemoveListener:Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController$onIslandAddRemoveListener$1;

    new-instance p2, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController$keyguardUpdateMonitorCallback$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController$keyguardUpdateMonitorCallback$1;-><init>(Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;)V

    iput-object p2, p0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->keyguardUpdateMonitorCallback:Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController$keyguardUpdateMonitorCallback$1;

    new-instance p2, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController$controlCenterCallback$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController$controlCenterCallback$1;-><init>(Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;)V

    iput-object p2, p0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->controlCenterCallback:Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController$controlCenterCallback$1;

    invoke-virtual {p10}, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->getUseControlCenter()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p2

    iget-object p3, p8, Lcom/miui/systemui/controlcenter/container/ControlCenterContainerController;->expandStateForWindow:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p4, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController$controlCenterHeaderVisibility$1;

    const/4 p5, 0x3

    const/4 p6, 0x0

    invoke-direct {p4, p5, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    new-instance p5, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-direct {p5, p2, p3, p4}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    sget-object p2, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Eagerly:Lkotlinx/coroutines/flow/StartedEagerly;

    const/4 p3, 0x4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p5, p1, p2, p3}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->controlCenterHeaderVisibility:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method

.method public static final access$sinOut(Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;F)F
    .registers 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    float-to-double p0, p1

    const-wide v0, 0x400921fb54442d18L

    mul-double/2addr p0, v0

    const/4 v0, 0x2

    int-to-double v0, v0

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static final access$startFolmeAnimationTranslationX(Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;Landroid/view/View;Lmiuix/animation/IFolme;IZ)V
    .registers 8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p4, :cond_0

    invoke-interface {p2}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p0

    sget-object p1, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    filled-new-array {p1}, [Lmiuix/animation/property/FloatProperty;

    move-result-object p4

    invoke-interface {p0, p4}, Lmiuix/animation/ICancelableStyle;->cancel([Lmiuix/animation/property/FloatProperty;)V

    invoke-interface {p2}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lmiuix/animation/FolmeStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    return-void

    :cond_0
    invoke-interface {p2}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p0

    sget-object p2, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const/4 v2, -0x2

    invoke-virtual {v0, v2, v1}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController$startFolmeAnimationTranslationX$1;

    invoke-direct {v1, p3, p1}, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController$startFolmeAnimationTranslationX$1;-><init>(ILandroid/view/View;)V

    filled-new-array {v1}, [Lmiuix/animation/listener/TransitionListener;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    filled-new-array {p2, p4, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lmiuix/animation/FolmeStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    return-void

    nop

    :array_0
    .array-data 4
        0x3f666666
        0x3ecccccd
    .end array-data
.end method

.method private getStatusBarBatteryMetterView(Landroid/view/View;)Landroid/view/View;
    .registers 6

    const-class v2, Lcom/android/systemui/newstatusbar/controllers/ElementController;

    invoke-static {v2}, Lcom/android/systemui/plugins/ControllerStorage;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/newstatusbar/controllers/ElementController;

    iget-object v0, v2, Lcom/android/systemui/newstatusbar/controllers/ElementController;->mainLayout:Lcom/android/systemui/newstatusbar/layouts/MainLayout;

    if-nez v0, :cond_0

    const-string v2, "Elitelogs"

    const-string v3, "getStatusBarBatteryMetterView: main = null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object p1

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "battery"

    invoke-static {v2, v3}, Landroid/Utils/Utils;->IDtoID(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v2, "Elitelogs"

    const-string v3, "getStatusBarBatteryMetterView: battery = null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move-object p1, v1

    goto :goto_0
.end method

.method public static startFolmeAnimationAlpha(Landroid/view/View;Lmiuix/animation/IFolme;FZ)V
    .registers 8

    if-nez p3, :cond_0

    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p0

    sget-object p3, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    filled-new-array {p3}, [Lmiuix/animation/property/FloatProperty;

    move-result-object v0

    invoke-interface {p0, v0}, Lmiuix/animation/ICancelableStyle;->cancel([Lmiuix/animation/property/FloatProperty;)V

    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p3, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lmiuix/animation/FolmeStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    return-void

    :cond_0
    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p1

    sget-object p3, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    new-instance v1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    const/4 v3, -0x2

    invoke-virtual {v1, v3, v2}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController$startFolmeAnimationAlpha$1;

    invoke-direct {v2, p2, p0}, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController$startFolmeAnimationAlpha$1;-><init>(FLandroid/view/View;)V

    filled-new-array {v2}, [Lmiuix/animation/listener/TransitionListener;

    move-result-object p0

    invoke-virtual {v1, p0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    filled-new-array {p3, v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, Lmiuix/animation/FolmeStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    return-void

    :array_0
    .array-data 4
        0x3f666666
        0x3e800000
    .end array-data
.end method


# virtual methods
.method public final updateFakeAlpha()V
    .registers 5

    iget v0, p0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->oldState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->headerController:Ldagger/Lazy;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/utils/configs/MiuiConfigs;->isFlipTinyScreen(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->bouncerShowing:Z

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->cccc:Lcom/miui/systemui/controlcenter/container/ControlCenterContainerController;

    iget-object p0, p0, Lcom/miui/systemui/controlcenter/container/ControlCenterContainerController;->expandStateForWindow:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p0, p0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast p0, Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;

    iget-object p0, p0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->controlCenterFakePrivacyContainer:Lcom/android/systemui/controlcenter/shade/MiuiFakePrivacyContainerView;

    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;

    iget-object v0, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->controlCenterFakePrivacyContainerFolme:Lmiuix/animation/IFolme;

    const/high16 v1, 0x3f800000

    invoke-static {p0, v0, v1, v2}, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->startFolmeAnimationAlpha(Landroid/view/View;Lmiuix/animation/IFolme;FZ)V

    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;

    iget-object p0, p0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->controlCenterFakeStatusBar:Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakeStatusIcons;

    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;

    iget-object v0, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->controlCenterFakeStatusBarFolme:Lmiuix/animation/IFolme;

    invoke-static {p0, v0, v1, v2}, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->startFolmeAnimationAlpha(Landroid/view/View;Lmiuix/animation/IFolme;FZ)V

    return-void

    :cond_2
    :goto_0
    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;

    iget-object p0, p0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->controlCenterFakePrivacyContainer:Lcom/android/systemui/controlcenter/shade/MiuiFakePrivacyContainerView;

    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;

    iget-object v0, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->controlCenterFakePrivacyContainerFolme:Lmiuix/animation/IFolme;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->startFolmeAnimationAlpha(Landroid/view/View;Lmiuix/animation/IFolme;FZ)V

    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;

    iget-object p0, p0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->controlCenterFakeStatusBar:Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakeStatusIcons;

    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;

    iget-object v0, v0, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->controlCenterFakeStatusBarFolme:Lmiuix/animation/IFolme;

    invoke-static {p0, v0, v1, v2}, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->startFolmeAnimationAlpha(Landroid/view/View;Lmiuix/animation/IFolme;FZ)V

    return-void
.end method

.method public final updateLocation()V
    .registers 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->headerController:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;

    sget-object v3, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->EASE_EDIT_HEADER_SHOW:Lmiuix/animation/utils/EaseManager$EaseStyle;

    iget-object v3, v2, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->controlCenterStatusBar:Lcom/android/systemui/controlcenter/phone/widget/ControlCenterStatusBarIcon;

    iget-object v4, v0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->normaControlStatusBarLocation:[I

    invoke-static {v3, v4}, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController$Companion;->getLocationInWindowWithoutTransform(Landroid/view/View;[I)V

    iget-object v3, v0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->normalControlSystemIconsLocation:[I

    iget-object v5, v2, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->controlCenterSystemIcons:Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;

    invoke-static {v5, v3}, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController$Companion;->getLocationInWindowWithoutTransform(Landroid/view/View;[I)V

    iget-object v5, v0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->normalControlStatusIconsLocation:[I

    iget-object v6, v2, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->controlCenterStatusIcons:Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;

    invoke-static {v6, v5}, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController$Companion;->getLocationInWindowWithoutTransform(Landroid/view/View;[I)V

    iget-object v6, v0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->dateViewLocation:[I

    iget-object v7, v2, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->controlCenterDateView:Lcom/android/systemui/statusbar/views/MiuiClock;

    invoke-static {v7, v6}, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController$Companion;->getLocationInWindowWithoutTransform(Landroid/view/View;[I)V

    iget-object v7, v0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->carrierLocation:[I

    iget-object v8, v2, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->controlCenterCarrierLayout:Lcom/android/systemui/controlcenter/shade/MiuiCarrierTextLayout;

    invoke-static {v8, v7}, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController$Companion;->getLocationInWindowWithoutTransform(Landroid/view/View;[I)V

    iget-object v2, v2, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->controlCenterFakePrivacyDot:Landroid/widget/ImageView;

    iget-object v8, v0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->fakePrivacyLocation:[I

    invoke-static {v2, v8}, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController$Companion;->getLocationInWindowWithoutTransform(Landroid/view/View;[I)V

    iget-object v2, v0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->controlCenterFakeViewController:Lcom/android/systemui/controlcenter/shade/ControlCenterFakeViewController;

    iget-object v9, v2, Lcom/android/systemui/controlcenter/shade/ControlCenterFakeViewController;->realSystemIcons:Landroid/view/View;

    iget-object v10, v0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->realStatusBarStatusIconsLocation:[I

    const v11, 0x7f0b0b66

    iget-object v12, v0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->controlCenterCallback:Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController$controlCenterCallback$1;

    if-eqz v9, :cond_6

    iget-object v13, v0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->realSystemIcons:Landroid/view/View;

    iget-object v14, v0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->statusBarLayoutChangeListener:Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController$headerLayoutChangeListener$1;

    if-ne v13, v9, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v13, :cond_1

    invoke-virtual {v13, v14}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_1
    iput-object v9, v0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->realSystemIcons:Landroid/view/View;

    invoke-virtual {v0}, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->updateLocation()V

    invoke-virtual {v12}, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController$controlCenterCallback$1;->updateProgress()V

    iget-object v13, v0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->realSystemIcons:Landroid/view/View;

    if-eqz v13, :cond_2

    invoke-virtual {v13, v14}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_2
    :goto_0
    invoke-virtual {v9}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v13

    iput-object v13, v0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->realStatusBarSystemIconsLocation:[I

    invoke-virtual {v9, v11}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v13

    iget-object v15, v0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->realStatusIcons:Landroid/view/View;

    if-ne v15, v13, :cond_3

    goto :goto_1

    :cond_3
    if-eqz v15, :cond_4

    invoke-virtual {v15, v14}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_4
    iput-object v13, v0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->realStatusIcons:Landroid/view/View;

    invoke-virtual {v0}, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->updateLocation()V

    invoke-virtual {v12}, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController$controlCenterCallback$1;->updateProgress()V

    iget-object v13, v0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->realStatusIcons:Landroid/view/View;

    if-eqz v13, :cond_5

    invoke-virtual {v13, v14}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_5
    :goto_1
    invoke-virtual {v9, v11}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-static {v9, v10}, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController$Companion;->getLocationInWindowWithoutTransform(Landroid/view/View;[I)V

    :cond_6
    iget-object v9, v2, Lcom/android/systemui/controlcenter/shade/ControlCenterFakeViewController;->realPromptIcon:Landroid/view/View;

    iget-object v13, v0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->realPrivacyDotNotTranXLocation:[I

    const v14, 0x7f0b0972

    if-eqz v9, :cond_a

    iget-object v15, v0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->realPromptIcon:Landroid/view/View;

    if-ne v15, v9, :cond_7

    goto :goto_2

    :cond_7
    iget-object v11, v0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->realPromptIconLayoutChangeListener:Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController$headerLayoutChangeListener$1;

    if-eqz v15, :cond_8

    invoke-virtual {v15, v11}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_8
    iput-object v9, v0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->realPromptIcon:Landroid/view/View;

    invoke-virtual {v0}, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->updateLocation()V

    invoke-virtual {v12}, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController$controlCenterCallback$1;->updateProgress()V

    iget-object v12, v0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->realPromptIcon:Landroid/view/View;

    if-eqz v12, :cond_9

    invoke-virtual {v12, v11}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_9
    :goto_2
    invoke-virtual {v9, v14}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/widget/ImageView;->getLocationOnScreen()[I

    move-result-object v11

    iput-object v11, v0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->realPrivacyDotLocation:[I

    invoke-virtual {v9, v14}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-static {v9, v13}, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController$Companion;->getLocationInWindowWithoutTransform(Landroid/view/View;[I)V

    :cond_a
    iget-object v9, v2, Lcom/android/systemui/controlcenter/shade/ControlCenterFakeViewController;->realSystemIcons:Landroid/view/View;

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eqz v9, :cond_b

    iget-object v15, v0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->realStatusBarSystemIconsLocation:[I

    aget v15, v15, v12

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    div-int/2addr v9, v11

    add-int/2addr v9, v15

    aget v4, v4, v12

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;

    iget-object v15, v15, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->controlCenterStatusBar:Lcom/android/systemui/controlcenter/phone/widget/ControlCenterStatusBarIcon;

    invoke-virtual {v15}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v15

    div-int/2addr v15, v11

    add-int/2addr v15, v4

    sub-int/2addr v9, v15

    iput v9, v0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->normalControlStatusBarTranslationY:I

    :cond_b
    iget-object v4, v2, Lcom/android/systemui/controlcenter/shade/ControlCenterFakeViewController;->realSystemIcons:Landroid/view/View;

    const/4 v9, 0x0

    if-eqz v4, :cond_18

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;

    invoke-static {}, Lcom/miui/utils/DeviceConfig;->isRTL()Z

    move-result v16

    if-eqz v16, :cond_c

    aget v17, v3, v9

    move/from16 v19, v17

    move/from16 v17, v9

    move/from16 v9, v19

    goto :goto_3

    :cond_c
    move/from16 v17, v9

    iget-object v9, v15, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->point:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    aget v18, v3, v17

    sub-int v9, v9, v18

    iget-object v14, v15, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->controlCenterSystemIcons:Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;

    invoke-virtual {v14}, Landroid/view/ViewGroup;->getWidth()I

    move-result v14

    sub-int/2addr v9, v14

    :goto_3
    if-eqz v16, :cond_d

    iget-object v14, v0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->realStatusBarSystemIconsLocation:[I

    aget v14, v14, v17

    goto :goto_4

    :cond_d
    iget-object v14, v15, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->point:Landroid/graphics/Point;

    iget v14, v14, Landroid/graphics/Point;->x:I

    iget-object v11, v0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->realStatusBarSystemIconsLocation:[I

    aget v11, v11, v17

    sub-int/2addr v14, v11

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v11

    sub-int/2addr v14, v11

    :goto_4
    sub-int/2addr v9, v14

    iput v9, v0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->normalControlStatusBarTranslationX:I

    if-eqz v16, :cond_e

    aget v5, v5, v17

    goto :goto_5

    :cond_e
    iget-object v9, v15, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->point:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    aget v5, v5, v17

    sub-int/2addr v9, v5

    iget-object v5, v15, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->controlCenterStatusIcons:Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v5

    sub-int v5, v9, v5

    :goto_5
    if-eqz v16, :cond_f

    aget v9, v10, v17

    goto :goto_6

    :cond_f
    iget-object v9, v15, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->point:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    aget v10, v10, v17

    sub-int/2addr v9, v10

    const v10, 0x7f0b0b66

    invoke-virtual {v4, v10}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v10

    sub-int/2addr v9, v10

    :goto_6
    sub-int/2addr v5, v9

    iput v5, v0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->normalControlStatusIconsTranslationX:I

    iget-object v5, v15, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->controlCenterSystemIcons:Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;

    const v9, 0x7f0b0180

    invoke-virtual {v5, v9}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;

    invoke-direct {v0, v5}, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->getStatusBarBatteryMetterView(Landroid/view/View;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;

    iget-boolean v9, v0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->isControlCenterExpanding:Z

    if-eqz v9, :cond_10

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->getBatteryStyle()I

    move-result v9

    if-eq v9, v12, :cond_11

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->getBatteryStyle()I

    move-result v9

    const/4 v10, 0x2

    if-eq v9, v10, :cond_11

    :cond_10
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v4

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v9

    sub-int/2addr v4, v9

    iput v4, v0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->batteryWidthDiff:I

    :cond_11
    iget-boolean v4, v0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->isAddBatteryIsland:Z

    if-eqz v4, :cond_12

    iget-object v4, v0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/miui/utils/configs/MiuiConfigs;->isFlipTinyScreen(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_12

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v4

    neg-int v4, v4

    iput v4, v0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->batteryWidthDiff:I

    :cond_12
    if-eqz v16, :cond_13

    aget v3, v3, v17

    iget-object v4, v15, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->controlCenterSystemIcons:Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    add-int/2addr v4, v3

    goto :goto_7

    :cond_13
    aget v4, v3, v17

    :goto_7
    if-eqz v16, :cond_14

    aget v3, v6, v17

    goto :goto_8

    :cond_14
    aget v3, v6, v17

    iget-object v5, v15, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->controlCenterDateView:Lcom/android/systemui/statusbar/views/MiuiClock;

    invoke-virtual {v5}, Landroid/widget/TextView;->getWidth()I

    move-result v5

    add-int/2addr v3, v5

    :goto_8
    sub-int v3, v4, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, v0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->headerControlOffset:I

    if-le v5, v6, :cond_15

    goto :goto_9

    :cond_15
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v6

    :goto_9
    iput v6, v0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->normalControlDateTranslationX:I

    aget v3, v7, v17

    iget-object v5, v15, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->controlCenterCarrierLayout:Lcom/android/systemui/controlcenter/shade/MiuiCarrierTextLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v5

    add-int/2addr v5, v3

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v5, v0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->headerControlOffset:I

    if-le v3, v5, :cond_16

    goto :goto_a

    :cond_16
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v5

    :goto_a
    iput v5, v0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->normalControlCarrierTranslationX:I

    iget-object v3, v0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/miui/utils/configs/MiuiConfigs;->isVerticalMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_17

    iget v3, v0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->normalControlStatusBarTranslationX:I

    iput v3, v0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->normalControlCarrierTranslationX:I

    :cond_17
    if-eqz v16, :cond_19

    iget v3, v0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->normalControlStatusBarTranslationX:I

    neg-int v3, v3

    iput v3, v0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->normalControlStatusBarTranslationX:I

    iget v3, v0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->normalControlStatusIconsTranslationX:I

    neg-int v3, v3

    iput v3, v0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->normalControlStatusIconsTranslationX:I

    iget v3, v0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->normalControlDateTranslationX:I

    neg-int v3, v3

    iput v3, v0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->normalControlDateTranslationX:I

    iget v3, v0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->normalControlCarrierTranslationX:I

    neg-int v3, v3

    iput v3, v0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->normalControlCarrierTranslationX:I

    iget v3, v0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->batteryWidthDiff:I

    neg-int v3, v3

    iput v3, v0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->batteryWidthDiff:I

    goto :goto_b

    :cond_18
    move/from16 v17, v9

    :cond_19
    :goto_b
    iget-object v2, v2, Lcom/android/systemui/controlcenter/shade/ControlCenterFakeViewController;->realPromptIcon:Landroid/view/View;

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;

    invoke-static {}, Lcom/miui/utils/DeviceConfig;->isRTL()Z

    move-result v3

    const v4, 0x7f0b0972

    invoke-virtual {v2, v4}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v4, v0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->realPrivacyDotLocation:[I

    aget v4, v4, v12

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    add-int/2addr v5, v4

    aget v4, v8, v12

    sub-int/2addr v5, v4

    iget-object v4, v1, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->controlCenterFakePrivacyDot:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    sub-int/2addr v5, v4

    iput v5, v0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->normalControlPrivacyTranslationY:I

    if-eqz v3, :cond_1a

    aget v2, v13, v17

    goto :goto_c

    :cond_1a
    iget-object v4, v1, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->point:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    aget v5, v13, v17

    sub-int/2addr v4, v5

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    sub-int v2, v4, v2

    :goto_c
    if-eqz v3, :cond_1b

    aget v1, v8, v17

    goto :goto_d

    :cond_1b
    iget-object v4, v1, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->point:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    aget v5, v8, v17

    sub-int/2addr v4, v5

    iget-object v1, v1, Lcom/android/systemui/controlcenter/shade/CombinedHeaderController;->controlCenterFakePrivacyDot:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    sub-int v1, v4, v1

    :goto_d
    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->normalControlPrivacyTranslationX:I

    if-eqz v3, :cond_1c

    neg-int v1, v1

    iput v1, v0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderExpandController;->normalControlPrivacyTranslationX:I

    :cond_1c
    return-void
.end method

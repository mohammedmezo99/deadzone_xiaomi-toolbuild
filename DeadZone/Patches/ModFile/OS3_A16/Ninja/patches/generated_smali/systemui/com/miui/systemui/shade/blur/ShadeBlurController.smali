.class public final Lcom/miui/systemui/shade/blur/ShadeBlurController;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/SnapshotManager$SnapshotListener;


# static fields
.field public static final DEBUG_USE_SCREENSHOT_BLUR:I


# instance fields
.field public final _miBlurOpened:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final blendBlurController:Lcom/miui/systemui/shade/blur/ShadeBlendBlurController;

.field public final combinedBlurRatio:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final configController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final configListener:Lcom/miui/systemui/shade/blur/ShadeBlurController$configListener$1;

.field public final context:Landroid/content/Context;

.field public final dumpManager:Lcom/miui/systemui/DumpManagerDelegate;

.field public final isFlipScreen:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public lastSnapshot:Ljava/lang/String;

.field public final miBlurOpen:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final screenshotBlur:Z

.field public final snapshotManager:Lcom/android/systemui/SnapshotManager;

.field public final solidBackgroundController:Lcom/miui/systemui/shade/blur/ShadeSolidBackgroundController;

.field public final startable:Lcom/miui/systemui/shade/ShadeStartable;

.field public final windowBlurController:Lcom/miui/systemui/shade/blur/ShadeWindowBlurController;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "debug.sysui.screenshot_blur"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/miui/systemui/shade/blur/ShadeBlurController;->DEBUG_USE_SCREENSHOT_BLUR:I

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Landroid/content/Context;Lcom/miui/systemui/shade/ShadeSwitchControllerImpl;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/miui/systemui/shade/blur/ShadeBlendBlurController;Lcom/miui/systemui/shade/blur/ShadeWindowBlurController;Lcom/miui/systemui/shade/blur/ShadeSolidBackgroundController;Lcom/miui/systemui/controller/SuperSaveModeControllerImpl;Lcom/miui/systemui/DumpManagerDelegate;Lcom/android/systemui/SnapshotManager;Lcom/miui/systemui/shade/ShadeStartable;)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/miui/systemui/shade/blur/ShadeBlurController;->context:Landroid/content/Context;

    iput-object p4, p0, Lcom/miui/systemui/shade/blur/ShadeBlurController;->configController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iput-object p5, p0, Lcom/miui/systemui/shade/blur/ShadeBlurController;->blendBlurController:Lcom/miui/systemui/shade/blur/ShadeBlendBlurController;

    iput-object p6, p0, Lcom/miui/systemui/shade/blur/ShadeBlurController;->windowBlurController:Lcom/miui/systemui/shade/blur/ShadeWindowBlurController;

    iput-object p7, p0, Lcom/miui/systemui/shade/blur/ShadeBlurController;->solidBackgroundController:Lcom/miui/systemui/shade/blur/ShadeSolidBackgroundController;

    iput-object p9, p0, Lcom/miui/systemui/shade/blur/ShadeBlurController;->dumpManager:Lcom/miui/systemui/DumpManagerDelegate;

    iput-object p10, p0, Lcom/miui/systemui/shade/blur/ShadeBlurController;->snapshotManager:Lcom/android/systemui/SnapshotManager;

    iput-object p11, p0, Lcom/miui/systemui/shade/blur/ShadeBlurController;->startable:Lcom/miui/systemui/shade/ShadeStartable;

    new-instance p4, Lcom/miui/systemui/shade/blur/ShadeBlurController$configListener$1;

    invoke-direct {p4, p0}, Lcom/miui/systemui/shade/blur/ShadeBlurController$configListener$1;-><init>(Lcom/miui/systemui/shade/blur/ShadeBlurController;)V

    iput-object p4, p0, Lcom/miui/systemui/shade/blur/ShadeBlurController;->configListener:Lcom/miui/systemui/shade/blur/ShadeBlurController$configListener$1;

    const/4 p4, 0x1

    const/4 p5, 0x0

    sget p6, Lcom/miui/systemui/shade/blur/ShadeBlurController;->DEBUG_USE_SCREENSHOT_BLUR:I

    if-nez p6, :cond_1

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p6

    const p7, 0x7f0500bb

    invoke-virtual {p6, p7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p6

    if-eqz p6, :cond_0

    goto :goto_0

    :cond_0
    move p4, p5

    goto :goto_0

    :cond_1
    if-lez p6, :cond_0

    :goto_0
    iput-boolean p4, p0, Lcom/miui/systemui/shade/blur/ShadeBlurController;->screenshotBlur:Z

    invoke-static {p2}, Lcom/miui/systemui/util/MiBlurCompat;->getBackgroundBlurOpened(Landroid/content/Context;)Z

    move-result p4

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    invoke-static {p4}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p4

    iput-object p4, p0, Lcom/miui/systemui/shade/blur/ShadeBlurController;->_miBlurOpened:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-static {p2}, Lcom/miui/utils/configs/MiuiConfigs;->isFlipTinyScreen(Landroid/content/Context;)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p2}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/systemui/shade/blur/ShadeBlurController;->isFlipScreen:Lkotlinx/coroutines/flow/StateFlowImpl;

    iget-object p2, p8, Lcom/miui/systemui/controller/SuperSaveModeControllerImpl;->activeState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p5, Lcom/miui/systemui/shade/blur/ShadeBlurController$miBlurOpen$1;

    const/4 p6, 0x0

    invoke-direct {p5, p0, p6}, Lcom/miui/systemui/shade/blur/ShadeBlurController$miBlurOpen$1;-><init>(Lcom/miui/systemui/shade/blur/ShadeBlurController;Lkotlin/coroutines/Continuation;)V

    new-instance p7, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-direct {p7, p4, p2, p5}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    sget-object p2, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Eagerly:Lkotlinx/coroutines/flow/StartedEagerly;

    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p7, p1, p2, p4}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p4

    iput-object p4, p0, Lcom/miui/systemui/shade/blur/ShadeBlurController;->miBlurOpen:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-virtual {p0}, Lcom/miui/systemui/shade/blur/ShadeBlurController;->getNotificationBlurRatioState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p4

    invoke-virtual {p0}, Lcom/miui/systemui/shade/blur/ShadeBlurController;->getControlCenterBlurRatioState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p5

    iget-object p7, p3, Lcom/miui/systemui/shade/ShadeSwitchControllerImpl;->switchingState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p8, Lcom/miui/systemui/shade/blur/ShadeBlurController$combinedBlurRatio$1;

    const/4 p9, 0x5

    invoke-direct {p8, p9, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    iget-object p3, p3, Lcom/miui/systemui/shade/ShadeSwitchControllerImpl;->switchProgressState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-static {p4, p5, p7, p3, p8}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function5;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    move-result-object p3

    const/4 p4, 0x0

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p4

    invoke-static {p3, p1, p2, p4}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/systemui/shade/blur/ShadeBlurController;->combinedBlurRatio:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    const-string p2, "ShadeBlurController state:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/systemui/shade/blur/ShadeBlurController;->getDebugMsg$5()Ljava/lang/String;

    move-result-object p2

    const-string v0, "  "

    invoke-static {p1, v0, p2}, Lcom/android/systemui/broadcast/ActionReceiver$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/miui/systemui/shade/blur/ShadeBlurController;->lastSnapshot:Ljava/lang/String;

    if-eqz p0, :cond_0

    const-string p2, "  lastSnapshot: "

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final getControlCenterBlurRatioState()Lkotlinx/coroutines/flow/StateFlow;
    .registers 1

    iget-object p0, p0, Lcom/miui/systemui/shade/blur/ShadeBlurController;->startable:Lcom/miui/systemui/shade/ShadeStartable;

    iget-object p0, p0, Lcom/miui/systemui/shade/ShadeStartable;->controlCenter:Lcom/miui/interfaces/shade/ShadeWrapper;

    invoke-interface {p0}, Lcom/miui/interfaces/shade/ShadeWrapper;->getExpandController()Lcom/miui/interfaces/shade/PanelExpandControllerExt;

    move-result-object p0

    invoke-interface {p0}, Lcom/miui/interfaces/shade/PanelExpandControllerExt;->getBlurRatioState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p0

    return-object p0
.end method

.method public final getDebugMsg$5()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/miui/systemui/shade/blur/ShadeBlurController;->miBlurOpen:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v0, v0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast v0, Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/systemui/shade/blur/ShadeBlurController;->combinedBlurRatio:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p0, p0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast p0, Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "miBlurOpen="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", combinedBlurRatio="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getNotificationBlurRatioState()Lkotlinx/coroutines/flow/StateFlow;
    .registers 1

    iget-object p0, p0, Lcom/miui/systemui/shade/blur/ShadeBlurController;->startable:Lcom/miui/systemui/shade/ShadeStartable;

    iget-object p0, p0, Lcom/miui/systemui/shade/ShadeStartable;->notification:Lcom/miui/interfaces/shade/ShadeWrapper;

    invoke-interface {p0}, Lcom/miui/interfaces/shade/ShadeWrapper;->getExpandController()Lcom/miui/interfaces/shade/PanelExpandControllerExt;

    move-result-object p0

    invoke-interface {p0}, Lcom/miui/interfaces/shade/PanelExpandControllerExt;->getBlurRatioState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p0

    return-object p0
.end method

.method public final onSnapshot()V
    .registers 4

    invoke-virtual {p0}, Lcom/miui/systemui/shade/blur/ShadeBlurController;->getDebugMsg$5()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSnapshot: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShadeBlurController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/miui/systemui/shade/blur/ShadeBlurController;->getDebugMsg$5()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/systemui/shade/blur/ShadeBlurController;->lastSnapshot:Ljava/lang/String;

    return-void
.end method

.method public final start()V
    .registers 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/systemui/shade/blur/ShadeBlurController;->configListener:Lcom/miui/systemui/shade/blur/ShadeBlurController$configListener$1;

    iget-object v2, v0, Lcom/miui/systemui/shade/blur/ShadeBlurController;->configController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v2, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/miui/systemui/shade/blur/ShadeBlurController;->snapshotManager:Lcom/android/systemui/SnapshotManager;

    invoke-virtual {v1, v0}, Lcom/android/systemui/SnapshotManager;->addListener(Lcom/android/systemui/SnapshotManager$SnapshotListener;)V

    iget-object v1, v0, Lcom/miui/systemui/shade/blur/ShadeBlurController;->dumpManager:Lcom/miui/systemui/DumpManagerDelegate;

    iget-object v1, v1, Lcom/miui/systemui/DumpManagerDelegate;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    const-string v2, "ShadeBlurController"

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/dump/DumpManager;->registerCriticalDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    new-instance v1, Lcom/miui/systemui/shade/blur/ShadeBlendBlurController$BlurProvider;

    iget-object v2, v0, Lcom/miui/systemui/shade/blur/ShadeBlurController;->blendBlurController:Lcom/miui/systemui/shade/blur/ShadeBlendBlurController;

    iget-object v3, v2, Lcom/miui/systemui/shade/blur/ShadeBlendBlurController;->shadeWindowView:Ldagger/Lazy;

    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-direct {v1, v3}, Lcom/miui/systemui/shade/blur/ShadeBlendBlurController$BlurProvider;-><init>(Landroid/view/View;)V

    iput-object v1, v2, Lcom/miui/systemui/shade/blur/ShadeBlendBlurController;->combinedBlurProvider:Lcom/miui/systemui/shade/blur/ShadeBlendBlurController$BlurProvider;

    new-instance v1, Lcom/miui/systemui/shade/blur/ShadeBlendBlurController$BlendBackground;

    iget-object v3, v2, Lcom/miui/systemui/shade/blur/ShadeBlendBlurController;->shadeWindowBackground:Ldagger/Lazy;

    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-direct {v1, v3}, Lcom/miui/systemui/shade/blur/ShadeBlendBlurController$BlendBackground;-><init>(Landroid/view/View;)V

    iput-object v1, v2, Lcom/miui/systemui/shade/blur/ShadeBlendBlurController;->combinedBlendBackground:Lcom/miui/systemui/shade/blur/ShadeBlendBlurController$BlendBackground;

    new-instance v1, Lcom/miui/systemui/shade/blur/ShadeBlendBlurController$BlurProvider;

    iget-object v3, v2, Lcom/miui/systemui/shade/blur/ShadeBlendBlurController;->notificationPanelView:Ldagger/Lazy;

    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-direct {v1, v3}, Lcom/miui/systemui/shade/blur/ShadeBlendBlurController$BlurProvider;-><init>(Landroid/view/View;)V

    iput-object v1, v2, Lcom/miui/systemui/shade/blur/ShadeBlendBlurController;->notificationBlurProvider:Lcom/miui/systemui/shade/blur/ShadeBlendBlurController$BlurProvider;

    new-instance v1, Lcom/miui/systemui/shade/blur/ShadeBlendBlurController$BlurProvider;

    iget-object v3, v2, Lcom/miui/systemui/shade/blur/ShadeBlendBlurController;->controlCenterContainer:Ldagger/Lazy;

    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-direct {v1, v3}, Lcom/miui/systemui/shade/blur/ShadeBlendBlurController$BlurProvider;-><init>(Landroid/view/View;)V

    iput-object v1, v2, Lcom/miui/systemui/shade/blur/ShadeBlendBlurController;->controlCenterBlurProvider:Lcom/miui/systemui/shade/blur/ShadeBlendBlurController$BlurProvider;

    new-instance v1, Lcom/miui/systemui/shade/blur/ShadeBlendBlurController$BlendBackground;

    iget-object v3, v2, Lcom/miui/systemui/shade/blur/ShadeBlendBlurController;->controlCenterBackground:Ldagger/Lazy;

    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-direct {v1, v3}, Lcom/miui/systemui/shade/blur/ShadeBlendBlurController$BlendBackground;-><init>(Landroid/view/View;)V

    iput-object v1, v2, Lcom/miui/systemui/shade/blur/ShadeBlendBlurController;->controlCenterBlendBackground:Lcom/miui/systemui/shade/blur/ShadeBlendBlurController$BlendBackground;

    new-instance v1, Lcom/miui/systemui/shade/blur/ShadeBlendBlurController$BlendBackground;

    iget-object v3, v2, Lcom/miui/systemui/shade/blur/ShadeBlendBlurController;->notificationPanelBackground:Ldagger/Lazy;

    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-direct {v1, v3}, Lcom/miui/systemui/shade/blur/ShadeBlendBlurController$BlendBackground;-><init>(Landroid/view/View;)V

    iput-object v1, v2, Lcom/miui/systemui/shade/blur/ShadeBlendBlurController;->notificationBlendBackground:Lcom/miui/systemui/shade/blur/ShadeBlendBlurController$BlendBackground;

    iget-object v1, v2, Lcom/miui/systemui/shade/blur/ShadeBlendBlurController;->configController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v1, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    iget-object v3, v2, Lcom/miui/systemui/shade/blur/ShadeBlendBlurController;->configListener:Lcom/miui/systemui/shade/blur/ShadeBlendBlurController$configListener$1;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    iget-object v1, v2, Lcom/miui/systemui/shade/blur/ShadeBlendBlurController;->dumpManager:Lcom/miui/systemui/DumpManagerDelegate;

    iget-object v1, v1, Lcom/miui/systemui/DumpManagerDelegate;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    const-string v3, "ShadeBlendBlurController"

    invoke-virtual {v1, v3, v2}, Lcom/android/systemui/dump/DumpManager;->registerCriticalDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    iget-object v1, v2, Lcom/miui/systemui/shade/blur/ShadeBlendBlurController;->snapshotManager:Lcom/android/systemui/SnapshotManager;

    invoke-virtual {v1, v2}, Lcom/android/systemui/SnapshotManager;->addListener(Lcom/android/systemui/SnapshotManager$SnapshotListener;)V

    invoke-virtual {v2}, Lcom/miui/systemui/shade/blur/ShadeBlendBlurController;->updateBlendColors()V

    iget-object v1, v2, Lcom/miui/systemui/shade/blur/ShadeBlendBlurController;->shadeBlurController:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/systemui/shade/blur/ShadeBlurController;

    iget-object v4, v3, Lcom/miui/systemui/shade/blur/ShadeBlurController;->combinedBlurRatio:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/systemui/shade/blur/ShadeBlurController;

    invoke-virtual {v3}, Lcom/miui/systemui/shade/blur/ShadeBlurController;->getNotificationBlurRatioState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v5

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/systemui/shade/blur/ShadeBlurController;

    iget-object v6, v3, Lcom/miui/systemui/shade/blur/ShadeBlurController;->miBlurOpen:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v3, v2, Lcom/miui/systemui/shade/blur/ShadeBlendBlurController;->keyguardDelegate:Ldagger/Lazy;

    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/keyguard/KeyguardDelegateImpl;

    iget-object v7, v7, Lcom/miui/keyguard/KeyguardDelegateImpl;->isKeyguardShowing:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/systemui/shade/blur/ShadeBlurController;

    iget-object v8, v8, Lcom/miui/systemui/shade/blur/ShadeBlurController;->isFlipScreen:Lkotlinx/coroutines/flow/StateFlowImpl;

    new-instance v9, Lcom/miui/systemui/shade/blur/ShadeBlendBlurController$start$1;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lcom/miui/systemui/shade/blur/ShadeBlendBlurController$start$1;-><init>(Lkotlin/coroutines/Continuation;)V

    invoke-static/range {v4 .. v9}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function6;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    move-result-object v4

    sget-object v5, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Eagerly:Lkotlinx/coroutines/flow/StartedEagerly;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    iget-object v8, v2, Lcom/miui/systemui/shade/blur/ShadeBlendBlurController;->scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v4, v8, v5, v7}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v4

    iput-object v4, v2, Lcom/miui/systemui/shade/blur/ShadeBlendBlurController;->combined:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v4, v2, Lcom/miui/systemui/shade/blur/ShadeBlendBlurController;->notifUnoccludedManager:Ldagger/Lazy;

    invoke-interface {v4}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/interfaces/notification/INotifUnoccludedManager;

    check-cast v4, Lcom/android/systemui/shade/NotifUnoccludedManagerImpl;

    iget-object v11, v4, Lcom/android/systemui/shade/NotifUnoccludedManagerImpl;->notifUnoccludedState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/systemui/shade/blur/ShadeBlurController;

    invoke-virtual {v4}, Lcom/miui/systemui/shade/blur/ShadeBlurController;->getNotificationBlurRatioState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v12

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/systemui/shade/blur/ShadeBlurController;

    iget-object v13, v4, Lcom/miui/systemui/shade/blur/ShadeBlurController;->miBlurOpen:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/keyguard/KeyguardDelegateImpl;

    iget-object v14, v4, Lcom/miui/keyguard/KeyguardDelegateImpl;->isKeyguardShowing:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v4, v2, Lcom/miui/systemui/shade/blur/ShadeBlendBlurController;->headsUpDelegate:Ldagger/Lazy;

    invoke-interface {v4}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/shade/HeadsUpDelegateImpl;

    iget-object v7, v7, Lcom/android/systemui/shade/HeadsUpDelegateImpl;->headsUpShowing$delegate:Lkotlin/Lazy;

    invoke-interface {v7}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v7

    move-object v15, v7

    check-cast v15, Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/systemui/shade/blur/ShadeBlurController;

    iget-object v7, v7, Lcom/miui/systemui/shade/blur/ShadeBlurController;->isFlipScreen:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-interface {v4}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/shade/HeadsUpDelegateImpl;

    iget-object v9, v9, Lcom/android/systemui/shade/HeadsUpDelegateImpl;->nsslInjector:Ldagger/Lazy;

    invoke-interface {v9}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutControllerInjectorImpl;

    iget-object v9, v9, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutControllerInjectorImpl;->hasVisibleNotifications:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-object/from16 v16, v7

    move-object/from16 v17, v9

    filled-new-array/range {v11 .. v17}, [Lkotlinx/coroutines/flow/Flow;

    move-result-object v7

    new-instance v9, Lcom/miui/systemui/shade/blur/ShadeBlendBlurController$start$$inlined$combine$1;

    invoke-direct {v9, v7}, Lcom/miui/systemui/shade/blur/ShadeBlendBlurController$start$$inlined$combine$1;-><init>([Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-static {v9, v8, v5, v7}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v7

    iput-object v7, v2, Lcom/miui/systemui/shade/blur/ShadeBlendBlurController;->notification:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/systemui/shade/blur/ShadeBlurController;

    invoke-virtual {v7}, Lcom/miui/systemui/shade/blur/ShadeBlurController;->getControlCenterBlurRatioState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v7

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/systemui/shade/blur/ShadeBlurController;

    iget-object v9, v9, Lcom/miui/systemui/shade/blur/ShadeBlurController;->miBlurOpen:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/keyguard/KeyguardDelegateImpl;

    iget-object v3, v3, Lcom/miui/keyguard/KeyguardDelegateImpl;->isKeyguardShowing:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v11, Lcom/miui/systemui/shade/blur/ShadeBlendBlurController$start$3;

    const/4 v12, 0x4

    invoke-direct {v11, v12, v10}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    invoke-static {v7, v9, v3, v11}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function4;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-static {v3, v8, v5, v7}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v3

    iput-object v3, v2, Lcom/miui/systemui/shade/blur/ShadeBlendBlurController;->ctrl:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v3, v2, Lcom/miui/systemui/shade/blur/ShadeBlendBlurController;->windowController:Ldagger/Lazy;

    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    check-cast v7, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    iget-object v7, v7, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mExt:Lcom/android/systemui/shade/NotificationShadeWindowControllerExt;

    iget-object v7, v7, Lcom/android/systemui/shade/NotificationShadeWindowControllerExt;->ctrlPassBlur:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    iget-object v9, v2, Lcom/miui/systemui/shade/blur/ShadeBlendBlurController;->ctrl:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    if-nez v9, :cond_0

    move-object v9, v10

    :cond_0
    new-instance v11, Lcom/miui/systemui/shade/blur/ShadeBlendBlurController$start$4;

    const/4 v12, 0x3

    invoke-direct {v11, v12, v10}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    new-instance v13, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-direct {v13, v7, v9, v11}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v13, v8, v5, v7}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v9

    iput-object v9, v2, Lcom/miui/systemui/shade/blur/ShadeBlendBlurController;->ctrlPassBlur:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    check-cast v3, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    iget-object v3, v3, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mExt:Lcom/android/systemui/shade/NotificationShadeWindowControllerExt;

    iget-object v3, v3, Lcom/android/systemui/shade/NotificationShadeWindowControllerExt;->ctrlPassBlur:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    iget-object v9, v2, Lcom/miui/systemui/shade/blur/ShadeBlendBlurController;->notification:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    if-nez v9, :cond_1

    move-object v9, v10

    :cond_1
    invoke-interface {v4}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/shade/HeadsUpDelegateImpl;

    iget-object v4, v4, Lcom/android/systemui/shade/HeadsUpDelegateImpl;->headsUpShowing$delegate:Lkotlin/Lazy;

    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/systemui/shade/blur/ShadeBlurController;

    iget-object v1, v1, Lcom/miui/systemui/shade/blur/ShadeBlurController;->isFlipScreen:Lkotlinx/coroutines/flow/StateFlowImpl;

    new-instance v11, Lcom/miui/systemui/shade/blur/ShadeBlendBlurController$start$5;

    const/4 v13, 0x5

    invoke-direct {v11, v13, v10}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    invoke-static {v3, v9, v4, v1, v11}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function5;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    move-result-object v1

    invoke-static {v1, v8, v5, v7}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v1

    iput-object v1, v2, Lcom/miui/systemui/shade/blur/ShadeBlendBlurController;->notifPassBlur:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v1, Lcom/miui/systemui/shade/blur/ShadeBlendBlurController$start$6$1;

    invoke-direct {v1, v2, v10}, Lcom/miui/systemui/shade/blur/ShadeBlendBlurController$start$6$1;-><init>(Lcom/miui/systemui/shade/blur/ShadeBlendBlurController;Lkotlin/coroutines/Continuation;)V

    invoke-static {v8, v10, v1, v12}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    new-instance v1, Lcom/miui/systemui/shade/blur/ShadeBlendBlurController$start$6$2;

    invoke-direct {v1, v2, v10}, Lcom/miui/systemui/shade/blur/ShadeBlendBlurController$start$6$2;-><init>(Lcom/miui/systemui/shade/blur/ShadeBlendBlurController;Lkotlin/coroutines/Continuation;)V

    invoke-static {v8, v10, v1, v12}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    new-instance v1, Lcom/miui/systemui/shade/blur/ShadeBlendBlurController$start$6$3;

    invoke-direct {v1, v2, v10}, Lcom/miui/systemui/shade/blur/ShadeBlendBlurController$start$6$3;-><init>(Lcom/miui/systemui/shade/blur/ShadeBlendBlurController;Lkotlin/coroutines/Continuation;)V

    invoke-static {v8, v10, v1, v12}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    new-instance v1, Lcom/miui/systemui/shade/blur/ShadeBlendBlurController$start$6$4;

    invoke-direct {v1, v2, v10}, Lcom/miui/systemui/shade/blur/ShadeBlendBlurController$start$6$4;-><init>(Lcom/miui/systemui/shade/blur/ShadeBlendBlurController;Lkotlin/coroutines/Continuation;)V

    invoke-static {v8, v10, v1, v12}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    new-instance v1, Lcom/miui/systemui/shade/blur/ShadeBlendBlurController$start$6$5;

    invoke-direct {v1, v2, v10}, Lcom/miui/systemui/shade/blur/ShadeBlendBlurController$start$6$5;-><init>(Lcom/miui/systemui/shade/blur/ShadeBlendBlurController;Lkotlin/coroutines/Continuation;)V

    invoke-static {v8, v10, v1, v12}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    new-instance v1, Lcom/miui/systemui/shade/blur/ShadeBlendBlurController$start$6$6;

    invoke-direct {v1, v2, v10}, Lcom/miui/systemui/shade/blur/ShadeBlendBlurController$start$6$6;-><init>(Lcom/miui/systemui/shade/blur/ShadeBlendBlurController;Lkotlin/coroutines/Continuation;)V

    invoke-static {v8, v10, v1, v12}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    iget-object v1, v0, Lcom/miui/systemui/shade/blur/ShadeBlurController;->windowBlurController:Lcom/miui/systemui/shade/blur/ShadeWindowBlurController;

    iget-object v2, v1, Lcom/miui/systemui/shade/blur/ShadeWindowBlurController;->dumpManager:Lcom/miui/systemui/DumpManagerDelegate;

    iget-object v2, v2, Lcom/miui/systemui/DumpManagerDelegate;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    const-string v3, "ShadeWindowBlurController"

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/dump/DumpManager;->registerCriticalDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    iget-object v2, v1, Lcom/miui/systemui/shade/blur/ShadeWindowBlurController;->context:Landroid/content/Context;

    const v3, 0x7f060cc7

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    shr-int/lit8 v3, v2, 0x18

    and-int/lit16 v3, v3, 0xff

    iput v3, v1, Lcom/miui/systemui/shade/blur/ShadeWindowBlurController;->dimAlpha:I

    shl-int/lit8 v3, v3, 0x18

    not-int v3, v3

    and-int/2addr v2, v3

    iput v2, v1, Lcom/miui/systemui/shade/blur/ShadeWindowBlurController;->dimRGB:I

    new-instance v2, Lcom/miui/systemui/shade/blur/ShadeWindowBlurController$start$1$1;

    invoke-direct {v2, v1, v10}, Lcom/miui/systemui/shade/blur/ShadeWindowBlurController$start$1$1;-><init>(Lcom/miui/systemui/shade/blur/ShadeWindowBlurController;Lkotlin/coroutines/Continuation;)V

    iget-object v3, v1, Lcom/miui/systemui/shade/blur/ShadeWindowBlurController;->scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v3, v10, v2, v12}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    new-instance v2, Lcom/miui/systemui/shade/blur/ShadeWindowBlurController$start$1$2;

    invoke-direct {v2, v1, v10}, Lcom/miui/systemui/shade/blur/ShadeWindowBlurController$start$1$2;-><init>(Lcom/miui/systemui/shade/blur/ShadeWindowBlurController;Lkotlin/coroutines/Continuation;)V

    invoke-static {v3, v10, v2, v12}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    new-instance v2, Lcom/miui/systemui/shade/blur/ShadeWindowBlurController$start$1$3;

    invoke-direct {v2, v1, v10}, Lcom/miui/systemui/shade/blur/ShadeWindowBlurController$start$1$3;-><init>(Lcom/miui/systemui/shade/blur/ShadeWindowBlurController;Lkotlin/coroutines/Continuation;)V

    invoke-static {v3, v10, v2, v12}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    new-instance v2, Lcom/miui/systemui/shade/blur/ShadeWindowBlurController$start$1$4;

    invoke-direct {v2, v1, v10}, Lcom/miui/systemui/shade/blur/ShadeWindowBlurController$start$1$4;-><init>(Lcom/miui/systemui/shade/blur/ShadeWindowBlurController;Lkotlin/coroutines/Continuation;)V

    invoke-static {v3, v10, v2, v12}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    new-instance v2, Lcom/miui/systemui/shade/blur/ShadeWindowBlurController$start$1$5;

    invoke-direct {v2, v1, v10}, Lcom/miui/systemui/shade/blur/ShadeWindowBlurController$start$1$5;-><init>(Lcom/miui/systemui/shade/blur/ShadeWindowBlurController;Lkotlin/coroutines/Continuation;)V

    invoke-static {v3, v10, v2, v12}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    new-instance v2, Lcom/miui/systemui/shade/blur/ShadeWindowBlurController$start$1$6;

    invoke-direct {v2, v1, v10}, Lcom/miui/systemui/shade/blur/ShadeWindowBlurController$start$1$6;-><init>(Lcom/miui/systemui/shade/blur/ShadeWindowBlurController;Lkotlin/coroutines/Continuation;)V

    invoke-static {v3, v10, v2, v12}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    sget-object v2, Lcom/miui/utils/configs/MiuiConfigs;->CUSTOMIZED_REGION:Ljava/lang/String;

    invoke-static {}, Lmiui/util/MiuiMultiDisplayTypeInfo;->isFlipDevice()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lcom/miui/systemui/shade/blur/ShadeWindowBlurController$start$1$7;

    invoke-direct {v2, v1, v10}, Lcom/miui/systemui/shade/blur/ShadeWindowBlurController$start$1$7;-><init>(Lcom/miui/systemui/shade/blur/ShadeWindowBlurController;Lkotlin/coroutines/Continuation;)V

    invoke-static {v3, v10, v2, v12}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_2
    iget-object v0, v0, Lcom/miui/systemui/shade/blur/ShadeBlurController;->solidBackgroundController:Lcom/miui/systemui/shade/blur/ShadeSolidBackgroundController;

    iget-object v1, v0, Lcom/miui/systemui/shade/blur/ShadeSolidBackgroundController;->configListener:Lcom/miui/systemui/shade/blur/ShadeSolidBackgroundController$configListener$1;

    iget-object v2, v0, Lcom/miui/systemui/shade/blur/ShadeSolidBackgroundController;->configController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v2, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/miui/systemui/shade/blur/ShadeSolidBackgroundController;->dumpManager:Lcom/miui/systemui/DumpManagerDelegate;

    iget-object v1, v1, Lcom/miui/systemui/DumpManagerDelegate;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    const-string v2, "ShadeSolidBackgroundController"

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/dump/DumpManager;->registerCriticalDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    iget-object v1, v0, Lcom/miui/systemui/shade/blur/ShadeSolidBackgroundController;->snapshotManager:Lcom/android/systemui/SnapshotManager;

    invoke-virtual {v1, v0}, Lcom/android/systemui/SnapshotManager;->addListener(Lcom/android/systemui/SnapshotManager$SnapshotListener;)V

    iget-object v1, v0, Lcom/miui/systemui/shade/blur/ShadeSolidBackgroundController;->context:Landroid/content/Context;

    const v3, 0x7f060ccd

    invoke-virtual {v1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v1

    shr-int/lit8 v3, v1, 0x18

    and-int/lit16 v3, v3, 0xff

    iput v3, v0, Lcom/miui/systemui/shade/blur/ShadeSolidBackgroundController;->solidAlpha:I

    shl-int/lit8 v3, v3, 0x18

    not-int v3, v3

    and-int/2addr v1, v3

    iput v1, v0, Lcom/miui/systemui/shade/blur/ShadeSolidBackgroundController;->solidRGB:I

    iget-object v1, v0, Lcom/miui/systemui/shade/blur/ShadeSolidBackgroundController;->shadeBlurController:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/systemui/shade/blur/ShadeBlurController;

    invoke-virtual {v3}, Lcom/miui/systemui/shade/blur/ShadeBlurController;->getControlCenterBlurRatioState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v3

    iget-object v4, v0, Lcom/miui/systemui/shade/blur/ShadeSolidBackgroundController;->keyguardDelegate:Ldagger/Lazy;

    invoke-interface {v4}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/keyguard/KeyguardDelegateImpl;

    iget-object v8, v8, Lcom/miui/keyguard/KeyguardDelegateImpl;->isKeyguardShowing:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miui/systemui/shade/blur/ShadeBlurController;

    iget-object v9, v9, Lcom/miui/systemui/shade/blur/ShadeBlurController;->miBlurOpen:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v11, v0, Lcom/miui/systemui/shade/blur/ShadeSolidBackgroundController;->windowBlurUtils:Lcom/miui/systemui/controller/WindowBlurUtils;

    check-cast v11, Lcom/miui/systemui/util/WindowBlurUtilsImpl;

    iget-object v13, v11, Lcom/miui/systemui/util/WindowBlurUtilsImpl;->windowBlurAvailableState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v14, Lcom/miui/systemui/shade/blur/ShadeSolidBackgroundController$start$1;

    invoke-direct {v14, v0, v10}, Lcom/miui/systemui/shade/blur/ShadeSolidBackgroundController$start$1;-><init>(Lcom/miui/systemui/shade/blur/ShadeSolidBackgroundController;Lkotlin/coroutines/Continuation;)V

    invoke-static {v3, v8, v9, v13, v14}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function5;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    iget-object v9, v0, Lcom/miui/systemui/shade/blur/ShadeSolidBackgroundController;->scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v3, v9, v5, v8}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v3

    iput-object v3, v0, Lcom/miui/systemui/shade/blur/ShadeSolidBackgroundController;->ctrl:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/systemui/shade/blur/ShadeBlurController;

    iget-object v13, v3, Lcom/miui/systemui/shade/blur/ShadeBlurController;->combinedBlurRatio:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/systemui/shade/blur/ShadeBlurController;

    invoke-virtual {v3}, Lcom/miui/systemui/shade/blur/ShadeBlurController;->getNotificationBlurRatioState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v14

    invoke-interface {v4}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/keyguard/KeyguardDelegateImpl;

    iget-object v15, v3, Lcom/miui/keyguard/KeyguardDelegateImpl;->isKeyguardShowing:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-interface {v4}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/keyguard/KeyguardDelegateImpl;

    iget-object v3, v3, Lcom/miui/keyguard/KeyguardDelegateImpl;->keyguardBlurInteractor:Ldagger/Lazy;

    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/blur/MiuiKeyguardBlurInteractor;

    iget-object v3, v3, Lcom/android/keyguard/blur/MiuiKeyguardBlurInteractor;->keyguardWindowBlurRatio$delegate:Lkotlin/Lazy;

    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Lkotlinx/coroutines/flow/Flow;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/systemui/shade/blur/ShadeBlurController;

    iget-object v3, v3, Lcom/miui/systemui/shade/blur/ShadeBlurController;->miBlurOpen:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v8, v11, Lcom/miui/systemui/util/WindowBlurUtilsImpl;->windowBlurAvailableState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-object/from16 v17, v3

    move-object/from16 v18, v8

    filled-new-array/range {v13 .. v18}, [Lkotlinx/coroutines/flow/Flow;

    move-result-object v3

    new-instance v8, Lcom/miui/systemui/shade/blur/ShadeSolidBackgroundController$start$$inlined$combine$1;

    invoke-direct {v8, v3, v0}, Lcom/miui/systemui/shade/blur/ShadeSolidBackgroundController$start$$inlined$combine$1;-><init>([Lkotlinx/coroutines/flow/Flow;Lcom/miui/systemui/shade/blur/ShadeSolidBackgroundController;)V

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v8, v9, v5, v3}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v3

    iput-object v3, v0, Lcom/miui/systemui/shade/blur/ShadeSolidBackgroundController;->window:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/systemui/shade/blur/ShadeBlurController;

    iget-boolean v1, v1, Lcom/miui/systemui/shade/blur/ShadeBlurController;->screenshotBlur:Z

    if-eqz v1, :cond_5

    sget-boolean v1, Lcom/miui/systemui/shade/blur/ShadeSolidBackgroundController;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "start screenshot blur."

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v1, v0, Lcom/miui/systemui/shade/blur/ShadeSolidBackgroundController;->statusBarDelegate:Lcom/android/systemui/statusbar/policy/StatusBarDelegateImpl;

    iget-object v13, v1, Lcom/android/systemui/statusbar/policy/StatusBarDelegateImpl;->statusBarState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v1, v0, Lcom/miui/systemui/shade/blur/ShadeSolidBackgroundController;->shadeStartable:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/systemui/shade/ShadeStartable;

    iget-object v2, v2, Lcom/miui/systemui/shade/ShadeStartable;->controlCenter:Lcom/miui/interfaces/shade/ShadeWrapper;

    invoke-interface {v2}, Lcom/miui/interfaces/shade/ShadeWrapper;->getExpandController()Lcom/miui/interfaces/shade/PanelExpandControllerExt;

    move-result-object v2

    invoke-interface {v2}, Lcom/miui/interfaces/shade/PanelExpandControllerExt;->getVisibleState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v14

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/systemui/shade/ShadeStartable;

    iget-object v1, v1, Lcom/miui/systemui/shade/ShadeStartable;->notification:Lcom/miui/interfaces/shade/ShadeWrapper;

    invoke-interface {v1}, Lcom/miui/interfaces/shade/ShadeWrapper;->getExpandController()Lcom/miui/interfaces/shade/PanelExpandControllerExt;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/interfaces/shade/PanelExpandControllerExt;->getVisibleState()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v15

    iget-object v1, v0, Lcom/miui/systemui/shade/blur/ShadeSolidBackgroundController;->shadeInteractorDelegate:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/systemui/shade/ShadeInteractorDelegate;

    iget-object v1, v1, Lcom/miui/systemui/shade/ShadeInteractorDelegate;->shadeInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;

    check-cast v1, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;

    iget-object v1, v1, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;->baseShadeInteractor:Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;

    invoke-interface {v1}, Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;->getQsExpansion()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v16

    iget-object v1, v0, Lcom/miui/systemui/shade/blur/ShadeSolidBackgroundController;->window:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    if-nez v1, :cond_4

    move-object/from16 v17, v10

    goto :goto_0

    :cond_4
    move-object/from16 v17, v1

    :goto_0
    iget-object v1, v0, Lcom/miui/systemui/shade/blur/ShadeSolidBackgroundController;->notifUnoccludedManager:Lcom/miui/interfaces/notification/INotifUnoccludedManager;

    check-cast v1, Lcom/android/systemui/shade/NotifUnoccludedManagerImpl;

    iget-object v1, v1, Lcom/android/systemui/shade/NotifUnoccludedManagerImpl;->notifUnoccludedState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-interface {v4}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/keyguard/KeyguardDelegateImpl;

    iget-object v2, v2, Lcom/miui/keyguard/KeyguardDelegateImpl;->bouncerIsOrWillBeShowing:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-object/from16 v18, v1

    move-object/from16 v19, v2

    filled-new-array/range {v13 .. v19}, [Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    new-instance v2, Lcom/miui/systemui/shade/blur/ShadeSolidBackgroundController$start$lambda$2$$inlined$combine$1;

    invoke-direct {v2, v1}, Lcom/miui/systemui/shade/blur/ShadeSolidBackgroundController$start$lambda$2$$inlined$combine$1;-><init>([Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {v2, v9, v5, v7}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v1

    new-instance v2, Lcom/miui/systemui/shade/blur/ShadeSolidBackgroundController$start$3$1;

    invoke-direct {v2, v1, v0, v10}, Lcom/miui/systemui/shade/blur/ShadeSolidBackgroundController$start$3$1;-><init>(Lkotlinx/coroutines/flow/StateFlow;Lcom/miui/systemui/shade/blur/ShadeSolidBackgroundController;Lkotlin/coroutines/Continuation;)V

    invoke-static {v9, v10, v2, v12}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    new-instance v1, Lcom/miui/systemui/shade/blur/ShadeSolidBackgroundController$start$3$2;

    invoke-direct {v1, v0, v10}, Lcom/miui/systemui/shade/blur/ShadeSolidBackgroundController$start$3$2;-><init>(Lcom/miui/systemui/shade/blur/ShadeSolidBackgroundController;Lkotlin/coroutines/Continuation;)V

    invoke-static {v9, v10, v1, v12}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_5
    new-instance v1, Lcom/miui/systemui/shade/blur/ShadeSolidBackgroundController$start$3$3;

    invoke-direct {v1, v0, v10}, Lcom/miui/systemui/shade/blur/ShadeSolidBackgroundController$start$3$3;-><init>(Lcom/miui/systemui/shade/blur/ShadeSolidBackgroundController;Lkotlin/coroutines/Continuation;)V

    invoke-static {v9, v10, v1, v12}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    new-instance v1, Lcom/miui/systemui/shade/blur/ShadeSolidBackgroundController$start$3$4;

    invoke-direct {v1, v0, v10}, Lcom/miui/systemui/shade/blur/ShadeSolidBackgroundController$start$3$4;-><init>(Lcom/miui/systemui/shade/blur/ShadeSolidBackgroundController;Lkotlin/coroutines/Continuation;)V

    invoke-static {v9, v10, v1, v12}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

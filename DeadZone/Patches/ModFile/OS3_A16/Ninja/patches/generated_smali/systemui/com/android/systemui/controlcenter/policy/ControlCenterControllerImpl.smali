.class public final Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/miui/systemui/controller/ControlCenterSettingsController;
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final combinedHeader:Ldagger/Lazy;

.field public final commandQueue:Ldagger/Lazy;

.field public final commandQueueCallback:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl$commandQueueCallback$1;

.field public final controlCenter:Lcom/miui/systemui/controlcenter/ControlCenterImpl;

.field public final controlCenterSettingsRepository:Lcom/miui/interfaces/controlcenter/data/repository/ControlCenterSettingsRepository;

.field public final headsUpDelegate:Ldagger/Lazy;

.field public final keyguardStateCallback:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl$keyguardStateCallback$1;

.field public final keyguardStateController:Ldagger/Lazy;

.field public keyguardStateIsShowing:Z

.field public final keyguardUpdateMonitor:Ldagger/Lazy;

.field public final keyguardUpdateMonitorInjector:Ldagger/Lazy;

.field public final keyguardViewMediator:Ldagger/Lazy;

.field public final listeners:Ljava/util/ArrayList;

.field public final miuiQSHostAdapter:Ldagger/Lazy;

.field public final qsTileHost:Ldagger/Lazy;

.field public final remoteOperationReceiver:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl$screenOffReceiver$1;

.field public final screenOffReceiver:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl$screenOffReceiver$1;

.field public final shadeInteractor:Ldagger/Lazy;

.field public final uiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-boolean v0, Lcom/miui/utils/configs/MiuiDebugConfig;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/os/Handler;Lcom/miui/systemui/controlcenter/ControlCenterImpl;Lcom/android/systemui/dump/DumpManager;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Lcom/miui/interfaces/controlcenter/data/repository/ControlCenterSettingsRepository;)V
    .registers 17

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->keyguardViewMediator:Ldagger/Lazy;

    iput-object p3, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->keyguardStateController:Ldagger/Lazy;

    iput-object p4, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->commandQueue:Ldagger/Lazy;

    iput-object p5, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->qsTileHost:Ldagger/Lazy;

    iput-object p6, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iput-object p7, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->uiHandler:Landroid/os/Handler;

    iput-object p8, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->controlCenter:Lcom/miui/systemui/controlcenter/ControlCenterImpl;

    iput-object p10, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->headsUpDelegate:Ldagger/Lazy;

    iput-object p11, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->keyguardUpdateMonitorInjector:Ldagger/Lazy;

    iput-object p12, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->keyguardUpdateMonitor:Ldagger/Lazy;

    iput-object p13, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->shadeInteractor:Ldagger/Lazy;

    iput-object p14, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->combinedHeader:Ldagger/Lazy;

    iput-object p15, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->miuiQSHostAdapter:Ldagger/Lazy;

    move-object/from16 p2, p16

    iput-object p2, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->controlCenterSettingsRepository:Lcom/miui/interfaces/controlcenter/data/repository/ControlCenterSettingsRepository;

    invoke-interface {p3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast p2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean p2, p2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    iput-boolean p2, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->keyguardStateIsShowing:Z

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->listeners:Ljava/util/ArrayList;

    new-instance p2, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl$screenOffReceiver$1;

    const/4 p3, 0x1

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl$screenOffReceiver$1;-><init>(Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;I)V

    iput-object p2, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->remoteOperationReceiver:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl$screenOffReceiver$1;

    new-instance p2, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl$commandQueueCallback$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl$commandQueueCallback$1;-><init>(Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;)V

    iput-object p2, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->commandQueueCallback:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl$commandQueueCallback$1;

    new-instance p2, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl$screenOffReceiver$1;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl$screenOffReceiver$1;-><init>(Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;I)V

    iput-object p2, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->screenOffReceiver:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl$screenOffReceiver$1;

    new-instance p2, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl$keyguardStateCallback$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl$keyguardStateCallback$1;-><init>(Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;)V

    iput-object p2, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->keyguardStateCallback:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl$keyguardStateCallback$1;

    const-string p2, "ControlCenterControllerImpl"

    invoke-virtual {p9, p2, p0}, Lcom/android/systemui/dump/DumpManager;->registerNormalDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    new-instance p2, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl$listenForUseControlCenter$1;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl$listenForUseControlCenter$1;-><init>(Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p1, p3, p2, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method


# virtual methods
.method public final addCallback(Lcom/miui/systemui/controller/ControlCenterSettingsController$UseControlCenterChangeListener;)V
    .registers 4

    new-instance v0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;Lcom/miui/systemui/controller/ControlCenterSettingsController$UseControlCenterChangeListener;I)V

    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->uiHandler:Landroid/os/Handler;

    invoke-static {p0, v0}, Lcom/miui/utils/CommonExtensionsKt;->runOrPost(Landroid/os/Handler;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final bridge synthetic addCallback(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/miui/systemui/controller/ControlCenterSettingsController$UseControlCenterChangeListener;

    invoke-virtual {p0, p1}, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->addCallback(Lcom/miui/systemui/controller/ControlCenterSettingsController$UseControlCenterChangeListener;)V

    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    const-string p2, "ControlCenterControllerImpl state:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->commandQueueCallback:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl$commandQueueCallback$1;

    invoke-virtual {p2}, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl$commandQueueCallback$1;->getPanelEnabled()Z

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  panelEnabled="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->getUseControlCenter()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-virtual {p0}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string p2, "  useControlCenter="

    invoke-static {p2, p0, p1}, Lcom/android/keyguard/panel/KeyguardPanelViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Object;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public final getUseControlCenter()Lkotlinx/coroutines/flow/StateFlow;
    .registers 1

    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->controlCenterSettingsRepository:Lcom/miui/interfaces/controlcenter/data/repository/ControlCenterSettingsRepository;

    check-cast p0, Lcom/miui/systemui/controlcenter/data/repository/ControlCenterSettingsRepositoryImpl;

    iget-object p0, p0, Lcom/miui/systemui/controlcenter/data/repository/ControlCenterSettingsRepositoryImpl;->useControlCenter:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-object p0
.end method

.method public final isCollapsed()Z
    .registers 1

    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->controlCenter:Lcom/miui/systemui/controlcenter/ControlCenterImpl;

    invoke-virtual {p0}, Lcom/miui/systemui/controlcenter/ControlCenterImpl;->getExpanded()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final isControlPanelSwitchSide()Z
    .registers 1

    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->controlCenterSettingsRepository:Lcom/miui/interfaces/controlcenter/data/repository/ControlCenterSettingsRepository;

    check-cast p0, Lcom/miui/systemui/controlcenter/data/repository/ControlCenterSettingsRepositoryImpl;

    iget-object p0, p0, Lcom/miui/systemui/controlcenter/data/repository/ControlCenterSettingsRepositoryImpl;->controlPanelSwitchSide:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-virtual {p0}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final isPanelEnabled()Z
    .registers 11

    iget-object v0, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->commandQueueCallback:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl$commandQueueCallback$1;

    invoke-virtual {v0}, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl$commandQueueCallback$1;->getPanelEnabled()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->headsUpDelegate:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shade/HeadsUpDelegateImpl;

    iget-object v2, v2, Lcom/android/systemui/shade/HeadsUpDelegateImpl;->npvc:Ldagger/Lazy;

    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v2, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotifInjector:Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;

    iget-object v2, v2, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->expandingFromHeadsUpState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v2, v2, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast v2, Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shade/HeadsUpDelegateImpl;

    iget-object v1, v1, Lcom/android/systemui/shade/HeadsUpDelegateImpl;->hasPinnedRows:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v1, v1, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast v1, Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    iget-object v2, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->controlCenterSettingsRepository:Lcom/miui/interfaces/controlcenter/data/repository/ControlCenterSettingsRepository;

    check-cast v2, Lcom/miui/systemui/controlcenter/data/repository/ControlCenterSettingsRepositoryImpl;

    iget-object v2, v2, Lcom/miui/systemui/controlcenter/data/repository/ControlCenterSettingsRepositoryImpl;->expandableInKeyguard:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v2, v2, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast v2, Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v5, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->keyguardViewMediator:Ldagger/Lazy;

    invoke-interface {v5}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-boolean v5, v5, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mShowing:Z

    iget-object v6, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->keyguardStateController:Ldagger/Lazy;

    invoke-interface {v6}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v7, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v7, v7, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardFadingAway:Z

    if-nez v7, :cond_3

    invoke-interface {v6}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v6, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v6, v6, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mMiKeyguardFadingAway:Z

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    move v6, v4

    goto :goto_3

    :cond_3
    :goto_2
    move v6, v3

    :goto_3
    iget-object v7, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->keyguardUpdateMonitorInjector:Ldagger/Lazy;

    invoke-interface {v7}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    iget-boolean v7, v7, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->mChargeAnimationShowing:Z

    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->keyguardUpdateMonitor:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    if-eqz v0, :cond_5

    if-nez v1, :cond_5

    if-nez v2, :cond_4

    if-nez v5, :cond_5

    :cond_4
    if-nez v6, :cond_5

    if-nez v7, :cond_5

    if-eqz p0, :cond_5

    goto :goto_4

    :cond_5
    move v3, v4

    :goto_4
    if-nez v3, :cond_6

    const-string v4, "isPanelEnabled: "

    const-string v8, ", disableWhenHeadsUpShowing: "

    const-string v9, ", expandableInKeyguard: "

    invoke-static {v4, v8, v9, v0, v1}, Lcom/android/keyguard/clock/animation/eastern/EasterArtACClockBaseAnimation$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", keyguardShowing: "

    const-string v4, ", keyguardFadingAway: "

    invoke-static {v0, v2, v1, v5, v4}, Lcom/android/keyguard/MiuiBleUnlockHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ", chargeAnimShowing: "

    const-string v2, ", isDeviceInteractive: "

    invoke-static {v0, v6, v1, v7, v2}, Lcom/android/keyguard/MiuiBleUnlockHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, "ControlCenterControllerImpl"

    invoke-static {v0, v1, p0}, Lcom/android/keyguard/injector/DozeServiceHostInjector$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    :cond_6
    return v3
.end method

.method public final isUseControlCenter()Z
    .registers 1

    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->controlCenterSettingsRepository:Lcom/miui/interfaces/controlcenter/data/repository/ControlCenterSettingsRepository;

    check-cast p0, Lcom/miui/systemui/controlcenter/data/repository/ControlCenterSettingsRepositoryImpl;

    iget-object p0, p0, Lcom/miui/systemui/controlcenter/data/repository/ControlCenterSettingsRepositoryImpl;->useControlCenter:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-virtual {p0}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final removeCallback(Ljava/lang/Object;)V
    .registers 4

    check-cast p1, Lcom/miui/systemui/controller/ControlCenterSettingsController$UseControlCenterChangeListener;

    new-instance v0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;Lcom/miui/systemui/controller/ControlCenterSettingsController$UseControlCenterChangeListener;I)V

    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->uiHandler:Landroid/os/Handler;

    invoke-static {p0, v0}, Lcom/miui/utils/CommonExtensionsKt;->runOrPost(Landroid/os/Handler;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

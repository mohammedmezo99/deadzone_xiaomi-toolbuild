.class public final Lcom/miui/systemui/common/ui/data/repository/MiuiConfigurationRepositoryImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/systemui/common/ui/data/repository/ConfigurationRepository;


# instance fields
.field public final synthetic $$delegate_0:Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl;

.field public final configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final context:Landroid/content/Context;

.field public final isNightMode:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final onScreenLayoutSizeChanged:Lkotlinx/coroutines/flow/Flow;

.field public final orientation:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final scaledTouchSlop:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/ConfigurationController;Landroid/content/Context;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl$SwitchingProvider$17;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p4, p2, p1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl$SwitchingProvider$17;->create(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/ConfigurationController;)Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl;

    move-result-object p4

    iput-object p4, p0, Lcom/miui/systemui/common/ui/data/repository/MiuiConfigurationRepositoryImpl;->$$delegate_0:Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl;

    iput-object p1, p0, Lcom/miui/systemui/common/ui/data/repository/MiuiConfigurationRepositoryImpl;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iput-object p2, p0, Lcom/miui/systemui/common/ui/data/repository/MiuiConfigurationRepositoryImpl;->context:Landroid/content/Context;

    new-instance p1, Lcom/miui/systemui/common/ui/data/repository/MiuiConfigurationRepositoryImpl$orientation$1;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/miui/systemui/common/ui/data/repository/MiuiConfigurationRepositoryImpl$orientation$1;-><init>(Lcom/miui/systemui/common/ui/data/repository/MiuiConfigurationRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1}, Lcom/android/systemui/utils/coroutines/flow/FlowConflatedKt;->conflatedCallbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    sget-object v1, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Eagerly:Lkotlinx/coroutines/flow/StartedEagerly;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1, p3, v1, v2}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/systemui/common/ui/data/repository/MiuiConfigurationRepositoryImpl;->orientation:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p1, Lcom/miui/systemui/common/ui/data/repository/MiuiConfigurationRepositoryImpl$isNightMode$1;

    invoke-direct {p1, p0, v0}, Lcom/miui/systemui/common/ui/data/repository/MiuiConfigurationRepositoryImpl$isNightMode$1;-><init>(Lcom/miui/systemui/common/ui/data/repository/MiuiConfigurationRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1}, Lcom/android/systemui/utils/coroutines/flow/FlowConflatedKt;->conflatedCallbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    invoke-static {p2}, Lcom/miui/utils/configs/MiuiConfigs;->isNightMode1(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p1, p3, v1, v2}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/systemui/common/ui/data/repository/MiuiConfigurationRepositoryImpl;->isNightMode:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p1, Lcom/miui/systemui/common/ui/data/repository/MiuiConfigurationRepositoryImpl$onScreenLayoutSizeChanged$1;

    invoke-direct {p1, p0, v0}, Lcom/miui/systemui/common/ui/data/repository/MiuiConfigurationRepositoryImpl$onScreenLayoutSizeChanged$1;-><init>(Lcom/miui/systemui/common/ui/data/repository/MiuiConfigurationRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1}, Lcom/android/systemui/utils/coroutines/flow/FlowConflatedKt;->conflatedCallbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/systemui/common/ui/data/repository/MiuiConfigurationRepositoryImpl;->onScreenLayoutSizeChanged:Lkotlinx/coroutines/flow/Flow;

    new-instance p1, Lcom/miui/systemui/common/ui/data/repository/MiuiConfigurationRepositoryImpl$scaledTouchSlop$lambda$1$$inlined$map$1;

    iget-object p4, p4, Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl;->onConfigurationChange:Lkotlinx/coroutines/flow/Flow;

    invoke-direct {p1, p4, p0}, Lcom/miui/systemui/common/ui/data/repository/MiuiConfigurationRepositoryImpl$scaledTouchSlop$lambda$1$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/miui/systemui/common/ui/data/repository/MiuiConfigurationRepositoryImpl;)V

    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p3, v1, p2}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/systemui/common/ui/data/repository/MiuiConfigurationRepositoryImpl;->scaledTouchSlop:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method


# virtual methods
.method public final getConfigurationValues()Lkotlinx/coroutines/flow/Flow;
    .registers 1

    iget-object p0, p0, Lcom/miui/systemui/common/ui/data/repository/MiuiConfigurationRepositoryImpl;->$$delegate_0:Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl;

    iget-object p0, p0, Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl;->configurationValues:Lkotlinx/coroutines/flow/Flow;

    return-object p0
.end method

.method public final getDimensionPixelSize(I)I
    .registers 2

    iget-object p0, p0, Lcom/miui/systemui/common/ui/data/repository/MiuiConfigurationRepositoryImpl;->$$delegate_0:Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl;

    invoke-virtual {p0, p1}, Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public final getOnAnyConfigurationChange()Lkotlinx/coroutines/flow/Flow;
    .registers 1

    iget-object p0, p0, Lcom/miui/systemui/common/ui/data/repository/MiuiConfigurationRepositoryImpl;->$$delegate_0:Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl;

    iget-object p0, p0, Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl;->onAnyConfigurationChange:Lkotlinx/coroutines/flow/Flow;

    return-object p0
.end method

.method public final getOnConfigurationChange()Lkotlinx/coroutines/flow/Flow;
    .registers 1

    iget-object p0, p0, Lcom/miui/systemui/common/ui/data/repository/MiuiConfigurationRepositoryImpl;->$$delegate_0:Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl;

    iget-object p0, p0, Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl;->onConfigurationChange:Lkotlinx/coroutines/flow/Flow;

    return-object p0
.end method

.method public final getOnMovedToDisplay()Lkotlinx/coroutines/flow/ReadonlyStateFlow;
    .registers 1

    iget-object p0, p0, Lcom/miui/systemui/common/ui/data/repository/MiuiConfigurationRepositoryImpl;->$$delegate_0:Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl;

    iget-object p0, p0, Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl;->onMovedToDisplay:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-object p0
.end method

.method public final getScaleForResolution()Lkotlinx/coroutines/flow/StateFlow;
    .registers 1

    iget-object p0, p0, Lcom/miui/systemui/common/ui/data/repository/MiuiConfigurationRepositoryImpl;->$$delegate_0:Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl;

    iget-object p0, p0, Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl;->scaleForResolution:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-object p0
.end method

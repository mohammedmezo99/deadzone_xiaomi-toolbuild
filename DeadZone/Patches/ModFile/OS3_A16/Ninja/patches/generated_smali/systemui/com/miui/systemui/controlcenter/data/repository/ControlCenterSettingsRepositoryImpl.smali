.class public final Lcom/miui/systemui/controlcenter/data/repository/ControlCenterSettingsRepositoryImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/miui/interfaces/controlcenter/data/repository/ControlCenterSettingsRepository;


# static fields
.field public static final DEBUG_USE_CONTROL_CENTER:I

.field public static final FORCE_USE_QS_PANEL:Z


# instance fields
.field public final controlPanelSwitchSide:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final expandableInKeyguard:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final forceUseControlCenter:Z

.field public final systemSettings:Lcom/android/systemui/util/settings/SystemSettingsImpl;

.field public final useControlCenter:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final useControlCenterDefaultValue:I

.field public final useControlCenterValue:Lkotlinx/coroutines/flow/Flow;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "debug.sysui.use_control_center"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/miui/systemui/controlcenter/data/repository/ControlCenterSettingsRepositoryImpl;->DEBUG_USE_CONTROL_CENTER:I

    invoke-static {}, Lcom/miui/utils/configs/MiuiConfigs;->isLite2Phone()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    sput-boolean v1, Lcom/miui/systemui/controlcenter/data/repository/ControlCenterSettingsRepositoryImpl;->FORCE_USE_QS_PANEL:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lcom/android/systemui/util/settings/SystemSettingsImpl;)V
    .registers 13

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/miui/systemui/controlcenter/data/repository/ControlCenterSettingsRepositoryImpl;->systemSettings:Lcom/android/systemui/util/settings/SystemSettingsImpl;

    sget-boolean v3, Lcom/miui/systemui/HyperOSCustFeatureHelper;->isHyperOSCustFeatureEnable:Z

    if-eqz v3, :cond_0

    const-string v3, "config_use_control_panel_setting_default"

    invoke-static {v3, v2}, Lmiui/os/HyperOSCustFeatureResolve;->getInt(Ljava/lang/String;I)I

    move-result v3

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0141

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    :goto_0
    iput v3, p0, Lcom/miui/systemui/controlcenter/data/repository/ControlCenterSettingsRepositoryImpl;->useControlCenterDefaultValue:I

    invoke-static {}, Lcom/miui/utils/configs/MiuiConfigs;->isLite2Phone()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v4, 0x7f0c007e

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    if-eqz p1, :cond_1

    if-eq v3, v2, :cond_3

    :cond_1
    sget-boolean p1, Lcom/miui/utils/configs/MiuiConfigs;->IS_PAD:Z

    if-nez p1, :cond_3

    sget-boolean p1, Lcom/miui/utils/configs/MiuiConfigs;->IS_FOLD:Z

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move p1, v1

    goto :goto_2

    :cond_3
    :goto_1
    move p1, v2

    :goto_2
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/systemui/controlcenter/data/repository/ControlCenterSettingsRepositoryImpl;->forceUseControlCenter:Z

    const-string p1, "use_control_panel"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, v1, p1}, Lcom/android/systemui/util/settings/SettingsProxyExt;->observerFlow(Lcom/android/systemui/util/settings/UserSettingsProxy;I[Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    new-instance v3, Lcom/miui/systemui/controlcenter/data/repository/ControlCenterSettingsRepositoryImpl$useControlCenterValue$1;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    new-instance v5, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    invoke-direct {v5, v3, p1}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    new-instance p1, Lcom/miui/systemui/controlcenter/data/repository/ControlCenterSettingsRepositoryImpl$special$$inlined$map$1;

    invoke-direct {p1, v5, p0, v1}, Lcom/miui/systemui/controlcenter/data/repository/ControlCenterSettingsRepositoryImpl$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/miui/systemui/controlcenter/data/repository/ControlCenterSettingsRepositoryImpl;I)V

    invoke-static {p1, p3}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/systemui/controlcenter/data/repository/ControlCenterSettingsRepositoryImpl;->useControlCenterValue:Lkotlinx/coroutines/flow/Flow;

    new-instance v3, Lcom/miui/systemui/controlcenter/data/repository/ControlCenterSettingsRepositoryImpl$special$$inlined$map$1;

    invoke-direct {v3, p1, p0, v0}, Lcom/miui/systemui/controlcenter/data/repository/ControlCenterSettingsRepositoryImpl$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/miui/systemui/controlcenter/data/repository/ControlCenterSettingsRepositoryImpl;I)V

    sget-object p1, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Eagerly:Lkotlinx/coroutines/flow/StartedEagerly;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v3, p2, p1, v5}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/systemui/controlcenter/data/repository/ControlCenterSettingsRepositoryImpl;->useControlCenter:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    const-string v3, "expandable_under_lock_screen"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {p4, v1, v3}, Lcom/android/systemui/util/settings/SettingsProxyExt;->observerFlow(Lcom/android/systemui/util/settings/UserSettingsProxy;I[Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v3

    new-instance v6, Lcom/miui/systemui/controlcenter/data/repository/ControlCenterSettingsRepositoryImpl$expandableInKeyguard$1;

    invoke-direct {v6, v0, v4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    new-instance v7, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    invoke-direct {v7, v6, v3}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    new-instance v3, Lcom/miui/systemui/controlcenter/data/repository/ControlCenterSettingsRepositoryImpl$special$$inlined$map$1;

    invoke-direct {v3, v7, p0, v2}, Lcom/miui/systemui/controlcenter/data/repository/ControlCenterSettingsRepositoryImpl$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/miui/systemui/controlcenter/data/repository/ControlCenterSettingsRepositoryImpl;I)V

    invoke-static {v3, p3}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v2

    invoke-static {v2, p2, p1, v5}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/systemui/controlcenter/data/repository/ControlCenterSettingsRepositoryImpl;->expandableInKeyguard:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    const-string v2, "control_panel_switch_side"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {p4, v1, v2}, Lcom/android/systemui/util/settings/SettingsProxyExt;->observerFlow(Lcom/android/systemui/util/settings/UserSettingsProxy;I[Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p4

    new-instance v1, Lcom/miui/systemui/controlcenter/data/repository/ControlCenterSettingsRepositoryImpl$controlPanelSwitchSide$1;

    invoke-direct {v1, v0, v4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    invoke-direct {v0, v1, p4}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    new-instance p4, Lcom/miui/systemui/controlcenter/data/repository/ControlCenterSettingsRepositoryImpl$special$$inlined$map$1;

    const/4 v1, 0x4

    invoke-direct {p4, v0, p0, v1}, Lcom/miui/systemui/controlcenter/data/repository/ControlCenterSettingsRepositoryImpl$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/miui/systemui/controlcenter/data/repository/ControlCenterSettingsRepositoryImpl;I)V

    invoke-static {p4, p3}, Lkotlinx/coroutines/flow/FlowKt;->flowOn(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p3

    invoke-static {p3, p2, p1, v3}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/systemui/controlcenter/data/repository/ControlCenterSettingsRepositoryImpl;->controlPanelSwitchSide:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    return-void
.end method

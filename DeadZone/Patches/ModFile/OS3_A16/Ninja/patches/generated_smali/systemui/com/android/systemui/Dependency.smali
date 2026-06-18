.class public final Lcom/android/systemui/Dependency;
.super Ljava/lang/Object;


# static fields
.field public static final BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

.field public static final TIME_TICK_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

.field public static sDependency:Lcom/android/systemui/Dependency;


# instance fields
.field public mAmbientStateLazy:Ldagger/Lazy;

.field public mAssistManager:Ldagger/Lazy;

.field public mBgLooper:Ldagger/Lazy;

.field public mBluetoothController:Ldagger/Lazy;

.field public mBroadcastDispatcher:Ldagger/Lazy;

.field public mCommandQueue:Ldagger/Lazy;

.field public mDarkIconDispatcher:Ldagger/Lazy;

.field public final mDependencies:Landroid/util/ArrayMap;

.field public mDeviceProvisionedController:Ldagger/Lazy;

.field public mDialogTransitionAnimatorLazy:Ldagger/Lazy;

.field public mDumpManager:Lcom/android/systemui/dump/DumpManager;

.field public mFeatureFlagsLazy:Ldagger/Lazy;

.field public mFragmentService:Ldagger/Lazy;

.field public mGroupExpansionManagerLazy:Ldagger/Lazy;

.field public mGroupMembershipManagerLazy:Ldagger/Lazy;

.field public mKeyguardUpdateMonitor:Ldagger/Lazy;

.field public mLauncherProxyService:Ldagger/Lazy;

.field public mLightBarController:Ldagger/Lazy;

.field public mMetricsLogger:Ldagger/Lazy;

.field public mMiuiLegacyDependency:Lcom/miui/systemui/LegacyDependency;

.field public mNavBarModeController:Ldagger/Lazy;

.field public mNavigationBarController:Ldagger/Lazy;

.field public mNotificationMediaManager:Ldagger/Lazy;

.field public mNotificationSectionsManagerLazy:Ldagger/Lazy;

.field public mPluginManager:Ldagger/Lazy;

.field public final mProviders:Landroid/util/ArrayMap;

.field public mScreenOffAnimationController:Ldagger/Lazy;

.field public mStatusBarStateController:Ldagger/Lazy;

.field public mStatusBarWindowControllerStoreLazy:Ldagger/Lazy;

.field public mSysUiStateFlagsContainer:Ldagger/Lazy;

.field public mSystemUIDialogManagerLazy:Ldagger/Lazy;

.field public mTimeTickHandler:Ldagger/Lazy;

.field public mTunerService:Ldagger/Lazy;

.field public mUiEventLogger:Ldagger/Lazy;

.field public mUiOffloadThread:Ldagger/Lazy;

.field public mUserTrackerLazy:Ldagger/Lazy;

.field public mVolumeDialogController:Ldagger/Lazy;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/systemui/Dependency$DependencyKey;

    const-string v1, "background_looper"

    invoke-direct {v0, v1}, Lcom/android/systemui/Dependency$DependencyKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    new-instance v0, Lcom/android/systemui/Dependency$DependencyKey;

    const-string v1, "time_tick_handler"

    invoke-direct {v0, v1}, Lcom/android/systemui/Dependency$DependencyKey;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/Dependency;->TIME_TICK_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/Dependency;->mDependencies:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    return-void
.end method

.method public static get(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lcom/android/systemui/Dependency;->mDependencies:Landroid/util/ArrayMap;

    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/systemui/Dependency;->createDependency(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/Dependency;->mDependencies:Landroid/util/ArrayMap;

    invoke-virtual {v2, p0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static setInstance(Lcom/android/systemui/Dependency;)V
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    sput-object p0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    return-void
.end method


# virtual methods
.method public createDependency(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    instance-of v0, p1, Lcom/android/systemui/Dependency$DependencyKey;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    iget-object v0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;

    if-eqz v0, :cond_2

    iget-object p0, v0, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda0;->f$0:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported dependency "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/Dependency;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " providers known."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final declared-synchronized getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/Dependency;->mDependencies:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/Dependency;->createDependency(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/Dependency;->mDependencies:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

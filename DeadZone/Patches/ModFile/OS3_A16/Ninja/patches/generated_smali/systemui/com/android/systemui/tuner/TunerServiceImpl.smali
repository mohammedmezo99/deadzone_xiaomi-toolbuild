.class public final Lcom/android/systemui/tuner/TunerServiceImpl;
.super Lcom/android/systemui/tuner/TunerService;


# static fields
.field public static final RESET_EXCEPTION_LIST:[Ljava/lang/String;


# instance fields
.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mContext:Landroid/content/Context;

.field public mCurrentUser:I

.field public mCurrentUserTracker:Lcom/android/systemui/settings/UserTracker$Callback;

.field public final mDemoModeController:Lcom/android/systemui/demomode/DemoModeController;

.field public final mLeakDetector:Lcom/android/systemui/util/leak/LeakDetector;

.field public final mListeningUris:Landroid/util/ArrayMap;

.field public final mObserver:Lcom/android/systemui/tuner/TunerServiceImpl$Observer;

.field public final mSystemUIDialogFactoryLazy:Ldagger/Lazy;

.field public final mTunableLookup:Ljava/util/concurrent/ConcurrentHashMap;

.field public final mTunables:Ljava/util/HashSet;

.field public final mTunerComponent:Landroid/content/ComponentName;

.field public mUserTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "doze_always_on"

    const-string v1, "qs_media_resumption"

    const-string v2, "sysui_qs_tiles"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/tuner/TunerServiceImpl;->RESET_EXCEPTION_LIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/systemui/util/leak/LeakDetector;Lcom/android/systemui/demomode/DemoModeController;Lcom/android/systemui/settings/UserTracker;Ldagger/Lazy;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/tuner/TunerServiceImpl$Observer;

    invoke-direct {v0, p0}, Lcom/android/systemui/tuner/TunerServiceImpl$Observer;-><init>(Lcom/android/systemui/tuner/TunerServiceImpl;)V

    iput-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mObserver:Lcom/android/systemui/tuner/TunerServiceImpl$Observer;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mListeningUris:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mTunableLookup:Ljava/util/concurrent/ConcurrentHashMap;

    sget-boolean v0, Lcom/android/systemui/util/leak/LeakDetector;->ENABLED:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mTunables:Ljava/util/HashSet;

    iput-object p1, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContext:Landroid/content/Context;

    iput-object p6, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mSystemUIDialogFactoryLazy:Ldagger/Lazy;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p6

    iput-object p6, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContentResolver:Landroid/content/ContentResolver;

    iput-object p3, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mLeakDetector:Lcom/android/systemui/util/leak/LeakDetector;

    iput-object p4, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mDemoModeController:Lcom/android/systemui/demomode/DemoModeController;

    iput-object p5, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    new-instance p3, Landroid/content/ComponentName;

    const-class p4, Lcom/android/systemui/tuner/TunerActivity;

    invoke-direct {p3, p1, p4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object p3, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mTunerComponent:Landroid/content/ComponentName;

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/UserInfo;

    invoke-virtual {p3}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p3

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p3

    iput p3, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mCurrentUser:I

    iget-object p4, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContentResolver:Landroid/content/ContentResolver;

    const-string p5, "sysui_tuner_version"

    const/4 p6, 0x0

    invoke-static {p4, p5, p6, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p3

    const/4 p4, 0x4

    if-eq p3, p4, :cond_1

    iget-object p3, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContentResolver:Landroid/content/ContentResolver;

    iget v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mCurrentUser:I

    invoke-static {p3, p5, p6, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p3

    const/4 p6, 0x1

    if-ge p3, p6, :cond_2

    iget-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContentResolver:Landroid/content/ContentResolver;

    iget v1, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mCurrentUser:I

    const-string v2, "icon_blacklist"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;->getIconHideList(Landroid/content/Context;Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    const-string v1, "rotate"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const-string v1, "headset"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, ","

    invoke-static {v3, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    iget v3, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mCurrentUser:I

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_2
    const/4 v0, 0x2

    if-ge p3, v0, :cond_3

    iget-object v1, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mTunerComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, v0, p6}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    :cond_3
    if-ge p3, p4, :cond_4

    iget p3, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mCurrentUser:I

    new-instance p6, Lcom/android/systemui/tuner/TunerServiceImpl$$ExternalSyntheticLambda1;

    invoke-direct {p6, p0, p3}, Lcom/android/systemui/tuner/TunerServiceImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/tuner/TunerServiceImpl;I)V

    const-wide/16 v0, 0x1388

    invoke-virtual {p2, p6, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    iget-object p3, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContentResolver:Landroid/content/ContentResolver;

    iget p6, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mCurrentUser:I

    invoke-static {p3, p5, p4, p6}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast p1, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mCurrentUser:I

    new-instance p1, Lcom/android/systemui/tuner/TunerServiceImpl$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/tuner/TunerServiceImpl$1;-><init>(Lcom/android/systemui/tuner/TunerServiceImpl;)V

    iput-object p1, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mCurrentUserTracker:Lcom/android/systemui/settings/UserTracker$Callback;

    iget-object p0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    new-instance p3, Landroid/os/HandlerExecutor;

    invoke-direct {p3, p2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    check-cast p0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p0, p1, p3}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public final varargs addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V
    .registers 14

    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_7

    aget-object v3, p2, v2

    iget-object v4, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mTunableLookup:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mTunableLookup:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v4, v3, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mTunableLookup:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-boolean v4, Lcom/android/systemui/util/leak/LeakDetector;->ENABLED:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mTunables:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mLeakDetector:Lcom/android/systemui/util/leak/LeakDetector;

    iget-object v5, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mTunables:Ljava/util/HashSet;

    iget-object v4, v4, Lcom/android/systemui/util/leak/LeakDetector;->mTrackedCollections:Lcom/android/systemui/util/leak/TrackedCollections;

    if-eqz v4, :cond_5

    monitor-enter v4

    :try_start_0
    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v6, v4, Lcom/android/systemui/util/leak/TrackedCollections;->mCollections:Lcom/android/systemui/util/leak/WeakIdentityHashMap;

    :goto_1
    iget-object v7, v6, Lcom/android/systemui/util/leak/WeakIdentityHashMap;->mRefQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v7}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v7

    if-eqz v7, :cond_1

    iget-object v8, v6, Lcom/android/systemui/util/leak/WeakIdentityHashMap;->mMap:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iget-object v6, v6, Lcom/android/systemui/util/leak/WeakIdentityHashMap;->mMap:Ljava/util/HashMap;

    new-instance v7, Lcom/android/systemui/util/leak/WeakIdentityHashMap$CmpWeakReference;

    invoke-direct {v7, v5}, Lcom/android/systemui/util/leak/WeakIdentityHashMap$CmpWeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/util/leak/TrackedCollections$CollectionState;

    const/4 v7, -0x1

    if-nez v6, :cond_3

    new-instance v6, Lcom/android/systemui/util/leak/TrackedCollections$CollectionState;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput v7, v6, Lcom/android/systemui/util/leak/TrackedCollections$CollectionState;->halfwayCount:I

    iput v7, v6, Lcom/android/systemui/util/leak/TrackedCollections$CollectionState;->lastCount:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, v6, Lcom/android/systemui/util/leak/TrackedCollections$CollectionState;->startUptime:J

    iget-object v8, v4, Lcom/android/systemui/util/leak/TrackedCollections;->mCollections:Lcom/android/systemui/util/leak/WeakIdentityHashMap;

    :goto_2
    iget-object v9, v8, Lcom/android/systemui/util/leak/WeakIdentityHashMap;->mRefQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v9}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v9

    if-eqz v9, :cond_2

    iget-object v10, v8, Lcom/android/systemui/util/leak/WeakIdentityHashMap;->mMap:Ljava/util/HashMap;

    invoke-virtual {v10, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    iget-object v9, v8, Lcom/android/systemui/util/leak/WeakIdentityHashMap;->mMap:Ljava/util/HashMap;

    new-instance v10, Lcom/android/systemui/util/leak/WeakIdentityHashMap$CmpWeakReference;

    iget-object v8, v8, Lcom/android/systemui/util/leak/WeakIdentityHashMap;->mRefQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v10, v5, v8}, Lcom/android/systemui/util/leak/WeakIdentityHashMap$CmpWeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-virtual {v9, v10, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_3
    :goto_3
    iget v8, v6, Lcom/android/systemui/util/leak/TrackedCollections$CollectionState;->halfwayCount:I

    if-ne v8, v7, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-wide v9, v6, Lcom/android/systemui/util/leak/TrackedCollections$CollectionState;->startUptime:J

    sub-long/2addr v7, v9

    const-wide/32 v9, 0x1b7740

    cmp-long v7, v7, v9

    if-lez v7, :cond_4

    iget v7, v6, Lcom/android/systemui/util/leak/TrackedCollections$CollectionState;->lastCount:I

    iput v7, v6, Lcom/android/systemui/util/leak/TrackedCollections$CollectionState;->halfwayCount:I

    :cond_4
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    iput v5, v6, Lcom/android/systemui/util/leak/TrackedCollections$CollectionState;->lastCount:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v4

    goto :goto_6

    :catchall_1
    move-exception p0

    goto :goto_5

    :goto_4
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    :goto_5
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :cond_5
    :goto_6
    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mListeningUris:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mListeningUris:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v6, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mObserver:Lcom/android/systemui/tuner/TunerServiceImpl$Observer;

    iget v7, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mCurrentUser:I

    invoke-virtual {v5, v4, v1, v6, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_6
    new-instance v4, Lcom/android/systemui/tuner/TunerServiceImpl$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v3}, Lcom/android/systemui/tuner/TunerServiceImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/tuner/TunerServiceImpl;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/android/systemui/DejankUtils;->whitelistIpcs(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {p1, v3, v4}, Lcom/android/systemui/tuner/TunerService$Tunable;->onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method public final clearAllFromUser(I)V
    .registers 7

    iget-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mDemoModeController:Lcom/android/systemui/demomode/DemoModeController;

    iget-object v1, v0, Lcom/android/systemui/demomode/DemoModeController;->globalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    check-cast v1, Lcom/android/systemui/util/settings/GlobalSettingsImpl;

    iget-object v1, v1, Lcom/android/systemui/util/settings/GlobalSettingsImpl;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "sysui_tuner_demo_on"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, v0, Lcom/android/systemui/demomode/DemoModeController;->globalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    check-cast v0, Lcom/android/systemui/util/settings/GlobalSettingsImpl;

    iget-object v0, v0, Lcom/android/systemui/util/settings/GlobalSettingsImpl;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "sysui_demo_allowed"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mTunableLookup:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/android/systemui/tuner/TunerServiceImpl;->RESET_EXCEPTION_LIST:[Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3, p1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final getValue(ILjava/lang/String;)I
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mContentResolver:Landroid/content/ContentResolver;

    iget p0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mCurrentUser:I

    invoke-static {v0, p2, p1, p0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public final removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mTunableLookup:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-boolean v0, Lcom/android/systemui/util/leak/LeakDetector;->ENABLED:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/tuner/TunerServiceImpl;->mTunables:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

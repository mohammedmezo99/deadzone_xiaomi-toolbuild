.class public Lcom/android/server/am/ActivityManagerServiceImpl;
.super Lcom/android/server/am/ActivityManagerServiceStub;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityManagerServiceImpl$StubBinder;
    }
.end annotation


# static fields
.field public static final BOOST_DURATION:J = 0xbb8L

.field private static final BOOST_TAG:Ljava/lang/String; = "Boost"

.field private static final CARLINK:Ljava/lang/String; = "com.miui.carlink"

.field private static final CARLINK_CARLIFE:Ljava/lang/String; = "com.baidu.carlife.xiaomi"

.field private static final CHROME_PKG:Ljava/lang/String; = "com.android.chrome"

.field private static final CPU_CORES_INDEX:[I

.field private static JOB_ANRS:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEEP_FOREGROUND_DURATION:J = 0x4e20L

.field static final MAX_NUM_RECEIVERS_TO_DUMP:I = 0x14

.field private static final MIDDLE_AND_BIG_CORES_INDEX:[I

.field public static final MIUI_APP_TAG:Ljava/lang/String; = "MIUIScout App"

.field private static final MIUI_NOTIFICATION:Ljava/lang/String; = "com.miui.notification"

.field private static final MIUI_VOICE:Ljava/lang/String; = "com.miui.voiceassist"

.field private static final MI_PUSH:Ljava/lang/String; = "com.xiaomi.mipush.sdk.PushMessageHandler"

.field private static final MI_VOICE:Ljava/lang/String; = "com.miui.voiceassist/com.xiaomi.voiceassistant.VoiceService"

.field private static final PHONE_CARWITH_CASTING:I = 0x1

.field private static final PROP_DISABLE_AUTORESTART_APP_PREFIX:Ljava/lang/String; = "sys.rescuepartyplus.disable_autorestart."

.field static final PUSH_SERVICE_WHITELIST_TIMEOUT:I = 0xea60

.field public static final SIGNAL_QUIT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ActivityManagerServiceImpl"

.field private static final TIME_FOR_BOOST:I = 0x96

.field private static final UCAR_CASTING_STATE:Ljava/lang/String; = "ucar_casting_state"

.field private static final WEIXIN:Ljava/lang/String; = "com.tencent.mm"

.field public static final WIDGET_PROVIDER_WHITE_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final XIAOMI_BLUETOOTH:Ljava/lang/String; = "com.xiaomi.bluetooth"

.field private static final XMSF:Ljava/lang/String; = "com.xiaomi.xmsf"

.field private static dumpFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static dumpTraceRequestList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mIgnoreAuthorityList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static requestDumpTraceCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final sCalleeWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greezer:Lcom/miui/server/greeze/GreezeManagerInternal;

.field private hasStopSelf:Z

.field mAmService:Lcom/android/server/am/ActivityManagerService;

.field private mAppAdditionalBindList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mBackupingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mBindConnections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mConnections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Lcom/android/server/am/ConnectionRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field private mDexPreloadDebuggable:Z

.field private mExpendCapacityAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mForceVkInternal:Lcom/xiaomi/vkmode/service/MiuiForceVkServiceInternal;

.field private mInstrUid:I

.field private mPackageManager:Landroid/content/pm/PackageManagerInternal;

.field private mPerfXRStub:Landroid/perf/PerfXRStub;

.field private mQosController:Landroid/urm/QosController;

.field private mSecurityInternal:Lmiui/security/SecurityManagerInternal;

.field protected mSmartPowerService:Lcom/miui/app/smartpower/SmartPowerServiceInternal;

.field private mStabilityLocalServiceInternal:Lcom/miui/server/stability/StabilityLocalServiceInternal;

.field private mStubBinder:Lcom/android/server/am/ActivityManagerServiceImpl$StubBinder;

.field mSystemReady:Z

.field private mTurboSchedManager:Lmiui/turbosched/TurboSchedManager;

.field private mUsingVibratorUids:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUxPerf:Landroid/util/BoostFramework;


# direct methods
.method public static synthetic $r8$lambda$73rnbuzKTHFrQ1lIGhEKx915m_8(Lcom/android/server/am/ActivityManagerServiceImpl;[I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityManagerServiceImpl;->lambda$boostPreloadThreadsForXring$0([I)V

    return-void
.end method

.method public static synthetic $r8$lambda$MEjw0rc8EWIns90_QHAMGHmfWIM(Lcom/android/server/am/ActivityManagerServiceImpl;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityManagerServiceImpl;->lambda$dumpSystemTraces$1(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Tu0CK7noQEXI5O_0fYWcNZX8m4E(Lcom/android/server/am/ActivityManagerServiceImpl;I)Ljava/lang/Boolean;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityManagerServiceImpl;->lambda$isThirdApp$2(I)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetrequestDumpTraceCount()Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    sget-object v0, Lcom/android/server/am/ActivityManagerServiceImpl;->requestDumpTraceCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/ActivityManagerServiceImpl;->sCalleeWhiteList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/ActivityManagerServiceImpl;->dumpTraceRequestList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/android/server/am/ActivityManagerServiceImpl;->requestDumpTraceCount:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/android/server/am/ActivityManagerServiceImpl;->dumpFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/ActivityManagerServiceImpl;->WIDGET_PROVIDER_WHITE_LIST:Ljava/util/List;

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/am/ActivityManagerServiceImpl;->CPU_CORES_INDEX:[I

    const/4 v0, 0x4

    const/4 v1, 0x5

    const/4 v2, 0x6

    const/4 v3, 0x7

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActivityManagerServiceImpl;->MIDDLE_AND_BIG_CORES_INDEX:[I

    sget-object v0, Lcom/android/server/am/ActivityManagerServiceImpl;->sCalleeWhiteList:Ljava/util/ArrayList;

    const-string v1, "com.google.android.apps.work.clouddpc"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/am/ActivityManagerServiceImpl;->sCalleeWhiteList:Ljava/util/ArrayList;

    const-string v1, "com.azure.authenticator"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/am/ActivityManagerServiceImpl;->WIDGET_PROVIDER_WHITE_LIST:Ljava/util/List;

    const-string v1, "com.android.calendar"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/am/ActivityManagerServiceImpl;->mIgnoreAuthorityList:Ljava/util/HashSet;

    sget-object v0, Lcom/android/server/am/ActivityManagerServiceImpl;->mIgnoreAuthorityList:Ljava/util/HashSet;

    const-string v1, "com.miui.securitycenter.zman.fileProvider"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/am/ActivityManagerServiceImpl;->mIgnoreAuthorityList:Ljava/util/HashSet;

    const-string v1, "com.xiaomi.misettings.FileProvider"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/am/ActivityManagerServiceImpl;->mIgnoreAuthorityList:Ljava/util/HashSet;

    const-string v1, "com.xiaomi.mirror.remoteprovider"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/am/ActivityManagerServiceImpl;->mIgnoreAuthorityList:Ljava/util/HashSet;

    const-string v1, "com.xiaomi.aiasst.service.fileProvider"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/am/ActivityManagerServiceImpl;->mIgnoreAuthorityList:Ljava/util/HashSet;

    const-string v1, "com.miui.bugreport.fileprovider"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/am/ActivityManagerServiceImpl;->mIgnoreAuthorityList:Ljava/util/HashSet;

    const-string v1, "com.miui.cleanmaster.fileProvider"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "No response to onStopJob"

    const-string v2, "required notification not provided"

    const-string v3, "Timed out while trying to bind"

    const-string v4, "No response to onStartJob"

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/am/ActivityManagerServiceImpl;->JOB_ANRS:Ljava/util/List;

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
    .end array-data
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerServiceStub;-><init>()V

    const-string v0, "persist.sys.dex_preload_debuggable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mDexPreloadDebuggable:Z

    nop

    invoke-static {}, Lxiaomi/platform/flags/Flags;->xringEnabled()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/perf/PerfXRStub;->newInstance()Landroid/perf/PerfXRStub;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    iput-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mPerfXRStub:Landroid/perf/PerfXRStub;

    nop

    invoke-static {}, Lxiaomi/platform/flags/Flags;->qcomEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    goto :goto_1

    :cond_1
    move-object v0, v2

    :goto_1
    iput-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mUxPerf:Landroid/util/BoostFramework;

    iput-object v2, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->greezer:Lcom/miui/server/greeze/GreezeManagerInternal;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mBackupingList:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mInstrUid:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mUsingVibratorUids:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mConnections:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mBindConnections:Ljava/util/Map;

    iput-boolean v1, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->hasStopSelf:Z

    return-void
.end method

.method private boostPreloadThreadsForQcomMTK([I)V
    .registers 8

    const/4 v0, 0x0

    aget v1, p1, v0

    iget-boolean v2, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mDexPreloadDebuggable:Z

    const-string v3, "ActivityManagerServiceImpl"

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Preload work thread Tid : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    invoke-static {v1, v0}, Lcom/android/server/am/ActivityManagerService;->scheduleAsFifoPriority(IZ)Z

    const/4 v0, 0x1

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mDexPreloadDebuggable:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "boost binder thread Tid : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v4, p1, v0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mTurboSchedManager:Lmiui/turbosched/TurboSchedManager;

    aget v4, p1, v0

    const/16 v5, 0x96

    invoke-virtual {v2, v4, v5}, Lmiui/turbosched/TurboSchedManager;->setDynamicVIPTaskIfNeeded(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "boostPreloadThreads failed"

    invoke-static {v3, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method private boostPreloadThreadsForXring([I)V
    .registers 9

    const/4 v0, 0x0

    aget v0, p1, v0

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    new-array v1, v1, [I

    iget-boolean v2, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mDexPreloadDebuggable:Z

    const-string v3, "ActivityManagerServiceImpl"

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Preload work thread Tid : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mQosController:Landroid/urm/QosController;

    const/16 v4, 0x13

    invoke-virtual {v2, v0, v4}, Landroid/urm/QosController;->setTidQos(II)V

    const/4 v2, 0x1

    :goto_0
    array-length v4, p1

    if-ge v2, v4, :cond_2

    iget-boolean v4, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mDexPreloadDebuggable:Z

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "boost binder thread Tid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, p1, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mQosController:Landroid/urm/QosController;

    aget v5, p1, v2

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Landroid/urm/QosController;->setTidQos(II)V

    add-int/lit8 v4, v2, -0x1

    aget v5, p1, v2

    aput v5, v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    array-length v2, v1

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v4, Lcom/android/server/am/ActivityManagerServiceImpl$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0, v1}, Lcom/android/server/am/ActivityManagerServiceImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/ActivityManagerServiceImpl;[I)V

    const-wide/16 v5, 0x96

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    goto :goto_1

    :catch_0
    move-exception v2

    const-string v4, "boostPreloadThreads failed"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method private checkServiceWakePath(Landroid/content/Intent;Ljava/lang/String;Lmiui/security/CallerInfo;I)Z
    .registers 14

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_4

    const-wide/16 v3, 0x400

    move-object v1, p1

    move-object v2, p2

    move v5, p4

    :try_start_1
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->resolveService(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ResolveInfo;

    move-result-object p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3

    if-eqz p1, :cond_0

    :try_start_2
    iget-object p4, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v3, p3

    goto :goto_3

    :cond_0
    const/4 p4, 0x0

    :goto_0
    move-object v6, p4

    :try_start_3
    const-class p4, Lcom/miui/app/smartpower/SmartPowerServiceInternal;

    invoke-static {p4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/miui/app/smartpower/SmartPowerServiceInternal;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    if-eqz p4, :cond_2

    :try_start_4
    invoke-interface {p4, v1, p3, v6}, Lcom/miui/app/smartpower/SmartPowerServiceInternal;->shouldInterceptService(Landroid/content/Intent;Lmiui/security/CallerInfo;Landroid/content/pm/ServiceInfo;)Z

    move-result v0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v3, p3

    goto :goto_2

    :cond_2
    :goto_1
    :try_start_5
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mAmService:Lcom/android/server/am/ActivityManagerService;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    const/4 v4, 0x0

    const/16 v7, 0x8

    move-object v3, p3

    move v8, v5

    move-object v5, v1

    move-object v1, p0

    :try_start_6
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/ActivityManagerServiceImpl;->checkWakePath(Lcom/android/server/am/ActivityManagerService;Lmiui/security/CallerInfo;Ljava/lang/String;Landroid/content/Intent;Landroid/content/pm/ComponentInfo;II)Z

    move-result p3
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    move-object v1, v5

    move v5, v8

    if-nez p3, :cond_3

    :goto_2
    const/4 p3, 0x0

    return p3

    :cond_3
    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, v5

    move v5, v8

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v3, p3

    goto :goto_3

    :catch_3
    move-exception v0

    move-object v3, p3

    move-object p2, v2

    goto :goto_3

    :catch_4
    move-exception v0

    move-object v1, p1

    move-object v3, p3

    move v5, p4

    :goto_3
    const/4 p1, 0x1

    return p1
.end method

.method private static checkThawTime(ILjava/lang/String;Lcom/miui/server/greeze/GreezeManagerInternal;)Z
    .registers 14

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkThawTime uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " report="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManagerServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    const/16 v0, 0x2710

    const-string v3, "Broadcast of"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "executing service"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "ContentProvider not"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v3, "Input dispatching"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v0, 0x1770

    goto :goto_1

    :cond_2
    const-string v3, "App requested: isolate_instructions:"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v0, 0x7d0

    goto :goto_1

    :cond_3
    sget-object v3, Lcom/android/server/am/ActivityManagerServiceImpl;->JOB_ANRS:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v0, 0x7d0

    goto :goto_1

    :cond_4
    const-string v3, "failed to complete startup"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v0, 0x2710

    goto :goto_1

    :cond_5
    return v2

    :cond_6
    :goto_0
    const/16 v0, 0x4e20

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkThawTime thawTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p2, p0, v4}, Lcom/miui/server/greeze/GreezeManagerInternal;->getLastThawedTime(II)J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " now="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2, p0, v4}, Lcom/miui/server/greeze/GreezeManagerInternal;->getLastThawedTime(II)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-lez v3, :cond_7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v5

    int-to-long v9, v0

    cmp-long v3, v7, v9

    if-gez v3, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "matched "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " app time uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_7
    return v2
.end method

.method private static doForegroundBoost(Lcom/android/server/am/ProcessRecord;J)Z
    .registers 7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/16 v2, 0x4e20

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurrentSchedulingGroup()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private static doTopAppBoost(Lcom/android/server/am/ProcessRecord;J)Z
    .registers 7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/16 v2, 0xbb8

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurrentSchedulingGroup()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurrentSchedulingGroup()I

    move-result v0

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Process is boosted to top app, processName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Boost"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private dumpAppLogText(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;I)Z
    .registers 14

    array-length v0, p3

    const/4 v1, 0x0

    if-ge p4, v0, :cond_3

    aget-object v0, p3, p4

    const/4 v2, 0x1

    add-int/2addr p4, v2

    array-length v3, p3

    if-ge p4, v3, :cond_2

    :try_start_0
    aget-object v3, p3, p4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mAmService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mAmService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5, v0, v3}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    move-result-object v5

    if-eqz v5, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\n** APP LOGGIN in pid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v5, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] **"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v7, v6

    if-eqz v6, :cond_0

    :try_start_2
    new-instance v6, Lcom/android/internal/os/TransferPipe;

    invoke-direct {v6}, Lcom/android/internal/os/TransferPipe;-><init>()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v6}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v8

    invoke-interface {v7, v8}, Landroid/app/IApplicationThread;->dumpLogText(Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual {v6, p1}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v6}, Lcom/android/internal/os/TransferPipe;->kill()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    nop

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    return v2

    :catchall_0
    move-exception v2

    :try_start_6
    invoke-virtual {v6}, Lcom/android/internal/os/TransferPipe;->kill()V

    nop

    throw v2
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catch_0
    move-exception v2

    :try_start_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Got RemoteException! "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    goto :goto_0

    :catch_1
    move-exception v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Got IoException! "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    nop

    :cond_0
    :goto_0
    nop

    monitor-exit v4

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "app-logging: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ") not running."

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v4

    return v1

    :catchall_1
    move-exception v2

    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v2
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_2

    :catch_2
    move-exception v2

    const-string v3, "app-logging: uid format is error, please input integer."

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :cond_2
    const-string v2, "app-logging: no uid specified."

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_1
    return v1

    :cond_3
    const-string v0, "app-logging: no process name specified"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1
.end method

.method private static ensureDeviceProvisioned(Landroid/content/Context;)V
    .registers 8

    invoke-static {p0}, Lcom/android/server/am/ActivityManagerServiceImpl;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-boolean v1, Lmiui/os/Build;->IS_MIUI:Z

    const-string v2, "com.android.provision.activities.DefaultActivity"

    const-string v3, "com.android.provision"

    if-nez v1, :cond_0

    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v3, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/content/ComponentName;

    const-string v4, "com.google.android.setupwizard"

    const-string v5, "com.google.android.setupwizard.SetupWizardActivity"

    invoke-direct {v1, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    const-string v4, "ActivityManagerServiceImpl"

    const-string v5, "The device provisioned state is inconsistent,try to restore."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "device_provisioned"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    sget-boolean v4, Lmiui/os/Build;->IS_MIUI:Z

    if-nez v4, :cond_1

    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, v3, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4, v6, v6}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "user_setup_complete"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    :goto_1
    return-void
.end method

.method private generateGroups(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/util/Pair;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, " "

    if-eqz p3, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, p4

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, p4

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_2
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private getGreezeService()Lcom/miui/server/greeze/GreezeManagerInternal;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->greezer:Lcom/miui/server/greeze/GreezeManagerInternal;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/server/greeze/GreezeManagerInternal;->getInstance()Lcom/miui/server/greeze/GreezeManagerInternal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->greezer:Lcom/miui/server/greeze/GreezeManagerInternal;

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->greezer:Lcom/miui/server/greeze/GreezeManagerInternal;

    return-object v0
.end method

.method public static getInstance()Lcom/android/server/am/ActivityManagerServiceImpl;
    .registers 1

    const-class v0, Lcom/android/server/am/ActivityManagerServiceStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityManagerServiceImpl;

    return-object v0
.end method

.method private static isDeviceProvisioned(Landroid/content/Context;)Z
    .registers 4

    nop

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private isProtectProcess(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 6

    const/16 v0, 0x1d8

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mSmartPowerService:Lcom/miui/app/smartpower/SmartPowerServiceInternal;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mSmartPowerService:Lcom/miui/app/smartpower/SmartPowerServiceInternal;

    invoke-interface {v1, p1, p3}, Lcom/miui/app/smartpower/SmartPowerServiceInternal;->isProcessPerceptible(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mSmartPowerService:Lcom/miui/app/smartpower/SmartPowerServiceInternal;

    invoke-interface {v1, v0, p2, p3}, Lcom/miui/app/smartpower/SmartPowerServiceInternal;->isProcessWhiteList(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    return v1

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private static isSystem(Ljava/lang/String;I)Z
    .registers 9

    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v3, 0x0

    const/16 v5, 0x3e8

    move-object v2, p0

    move v6, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/PackageManagerInternal;->getApplicationInfo(Ljava/lang/String;JII)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result p1

    if-nez p1, :cond_0

    iget p1, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    const/16 v0, 0x2710

    if-ge p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static isSystemPackage(Ljava/lang/String;I)Z
    .registers 6

    const/4 v0, 0x1

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v1, p0, v2, v3, p1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_2

    and-int/lit16 v3, v2, 0x80

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method private isThirdApp(I)Z
    .registers 5

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x2710

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mPackageManager:Landroid/content/pm/PackageManagerInternal;

    if-eqz v0, :cond_1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance v1, Lcom/android/server/am/ActivityManagerServiceImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/ActivityManagerServiceImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/ActivityManagerServiceImpl;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    nop

    :goto_0
    return v2
.end method

.method private synthetic lambda$boostPreloadThreadsForXring$0([I)V
    .registers 6

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mQosController:Landroid/urm/QosController;

    aget v2, p1, v0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/urm/QosController;->setTidQos(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic lambda$dumpReceiverCounts$3(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
    .registers 4

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method private synthetic lambda$dumpSystemTraces$1(Ljava/lang/String;)V
    .registers 8

    const-string v0, "MIUIScout App"

    sget v1, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    invoke-static {v0, v1}, Lcom/android/server/ScoutHelper;->CheckDState(Ljava/lang/String;I)Ljava/lang/Boolean;

    const-string v0, "MIUIScout App"

    const-string v1, "Start dumping system_server trace ..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const-string v1, "App Scout Exception"

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/am/ActivityManagerServiceImpl;->dumpOneProcessTraces(ILjava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v2, "MIUIScout App"

    const-string v3, "Dump scout system trace file successfully!"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v3, Lcom/android/server/am/ActivityManagerServiceImpl;->dumpTraceRequestList:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    sget-object v4, Lcom/android/server/am/ActivityManagerServiceImpl;->dumpTraceRequestList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    goto :goto_0

    :cond_0
    sget-object v4, Lcom/android/server/am/ActivityManagerServiceImpl;->dumpTraceRequestList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v3, Lcom/android/server/am/ActivityManagerServiceImpl;->dumpFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string v1, "MIUIScout App"

    const-string v3, "starting copying file"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/server/am/ActivityManagerServiceImpl;->requestDumpTraceCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    new-instance v1, Lcom/android/server/am/ActivityManagerServiceImpl$1;

    invoke-direct {v1, p0, v2, v0}, Lcom/android/server/am/ActivityManagerServiceImpl$1;-><init>(Lcom/android/server/am/ActivityManagerServiceImpl;Ljava/util/ArrayList;Ljava/io/File;)V

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerServiceImpl$1;->start()V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_2
    const-string v2, "MIUIScout App"

    const-string v3, "Dump scout system trace file fail!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/server/am/ActivityManagerServiceImpl;->dumpFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method private synthetic lambda$isThirdApp$2(I)Ljava/lang/Boolean;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mPackageManager:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(I)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmiui/content/pm/PreloadedAppPolicy;->isProtectedDataApp(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/server/am/ActivityManagerServiceImpl;->isSystem(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method private recordAppBehavior(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 12

    invoke-static {p3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x2710

    if-lt v0, v1, :cond_4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/server/am/ActivityManagerServiceImpl;->isSystem(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {p2, v0}, Lcom/android/server/am/ActivityManagerServiceImpl;->isSystem(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mSecurityInternal:Lmiui/security/SecurityManagerInternal;

    if-nez v0, :cond_0

    const-class v0, Lmiui/security/SecurityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManagerInternal;

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mSecurityInternal:Lmiui/security/SecurityManagerInternal;

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mSecurityInternal:Lmiui/security/SecurityManagerInternal;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mSecurityInternal:Lmiui/security/SecurityManagerInternal;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "@"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v2, 0x1e

    const-wide/16 v4, 0x1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lmiui/security/SecurityManagerInternal;->recordAppBehaviorAsync(ILjava/lang/String;JLjava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v3, p2

    goto :goto_0

    :cond_2
    move-object v3, p2

    goto :goto_0

    :cond_3
    move-object v3, p2

    goto :goto_0

    :cond_4
    move-object v3, p2

    :goto_0
    return-void
.end method


# virtual methods
.method public abortStickBroadcast(Lcom/android/server/am/BroadcastController$StickyBroadcast;Ljava/lang/String;I)Z
    .registers 7

    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mSystemReady:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    invoke-static {p3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v2, 0x2710

    if-lt v0, v2, :cond_4

    iget v0, p1, Lcom/android/server/am/BroadcastController$StickyBroadcast;->originalCallingUid:I

    if-ne p3, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mSecurityInternal:Lmiui/security/SecurityManagerInternal;

    if-nez v0, :cond_1

    const-class v0, Lmiui/security/SecurityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManagerInternal;

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mSecurityInternal:Lmiui/security/SecurityManagerInternal;

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mSecurityInternal:Lmiui/security/SecurityManagerInternal;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mSecurityInternal:Lmiui/security/SecurityManagerInternal;

    invoke-virtual {v0, p2}, Lmiui/security/SecurityManagerInternal;->stickBroadcastAllow(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget v0, p1, Lcom/android/server/am/BroadcastController$StickyBroadcast;->originalCallingUid:I

    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityManagerServiceImpl;->isThirdApp(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p3}, Lcom/android/server/am/ActivityManagerServiceImpl;->isThirdApp(I)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MIUILOG- abort "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/am/BroadcastController$StickyBroadcast;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManagerServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_3
    return v1

    :cond_4
    :goto_0
    return v1
.end method

.method public adaptPiOptions(Landroid/app/ActivityOptions;Lcom/android/server/am/PendingIntentRecord$Key;)V
    .registers 5

    if-eqz p1, :cond_0

    iget v0, p2, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p2, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerServiceStub;->isHomePackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/ActivityOptions;->setPendingIntentCreatorBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Allow "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " start activity from PendingIntent!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManagerServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public addBinderProxy(Landroid/os/IBinder;II)V
    .registers 6

    invoke-static {}, Lcom/miui/server/greeze/GreezeManagerInternal;->getInstance()Lcom/miui/server/greeze/GreezeManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "IApplicationThread"

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/miui/server/greeze/GreezeManagerInternal;->addBinderProxy(Landroid/os/IBinder;IILjava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public addConnection(ILcom/android/server/am/ConnectionRecord;)V
    .registers 8

    iget-object v0, p2, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v1, p2, Lcom/android/server/am/ConnectionRecord;->serviceDead:Z

    if-nez v1, :cond_3

    iget-object v1, p2, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v1, v1, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-boolean v1, v1, Lcom/android/server/am/ServiceRecord;->destroying:Z

    if-nez v1, :cond_3

    iget-object v1, p2, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v1, v1, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v1, v1, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v2, p2, Lcom/android/server/am/ConnectionRecord;->clientUid:I

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mConnections:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mConnections:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mConnections:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mConnections:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mBindConnections:Ljava/util/Map;

    monitor-enter v2

    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mBindConnections:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mBindConnections:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v2

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mBindConnections:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mBindConnections:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    :cond_3
    :goto_0
    return-void
.end method

.method public backupBind(IZ)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->greezer:Lcom/miui/server/greeze/GreezeManagerInternal;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x2710

    if-lt p1, v0, :cond_4

    const/16 v0, 0x4e1f

    if-le p1, v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mBackupingList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mBackupingList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->greezer:Lcom/miui/server/greeze/GreezeManagerInternal;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/miui/server/greeze/GreezeManagerInternal;->notifyBackup(IZ)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mBackupingList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p2, :cond_3

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mBackupingList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "uid"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "start"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/miui/whetstone/PowerKeeperPolicy;->getInstance()Lcom/miui/whetstone/PowerKeeperPolicy;

    move-result-object v1

    const/16 v2, 0x12

    invoke-virtual {v1, v2, v0}, Lcom/miui/whetstone/PowerKeeperPolicy;->notifyEvent(ILandroid/os/Bundle;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method public boostPreloadThreads([I)V
    .registers 3

    if-eqz p1, :cond_2

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lxiaomi/platform/flags/Flags;->xringEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityManagerServiceImpl;->boostPreloadThreadsForXring([I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityManagerServiceImpl;->boostPreloadThreadsForQcomMTK([I)V

    :goto_0
    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public checkAppDisableStatus(Ljava/lang/String;)Z
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sys.rescuepartyplus.disable_autorestart."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Disable App ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] auto start!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManagerServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public checkAppFrozenStatus(I)Z
    .registers 3

    invoke-static {}, Lcom/miui/server/greeze/GreezeManagerInternal;->getInstance()Lcom/miui/server/greeze/GreezeManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/server/greeze/GreezeManagerInternal;->checkAppFrozenStatusForJob(I)Z

    move-result v0

    return v0
.end method

.method public checkRunningCompatibility(Landroid/app/IApplicationThread;ILcom/android/server/am/ContentProviderRecord;I)Z
    .registers 16

    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mSystemReady:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p3, :cond_6

    iget-object v0, p3, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    if-nez v0, :cond_1

    move v9, p4

    goto :goto_2

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    move-object v6, v0

    iget-object v0, p3, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p3, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.UID"

    invoke-virtual {v6, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mAmService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLOSP(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v10

    if-eqz v10, :cond_2

    new-instance v2, Lmiui/security/CallerInfo;

    invoke-direct {v2}, Lmiui/security/CallerInfo;-><init>()V

    move-object v0, v2

    iget-object v2, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v2, v0, Lmiui/security/CallerInfo;->callerPkg:Ljava/lang/String;

    iget v2, v10, Lcom/android/server/am/ProcessRecord;->uid:I

    iput v2, v0, Lmiui/security/CallerInfo;->callerUid:I

    invoke-virtual {v10}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v2

    iput v2, v0, Lmiui/security/CallerInfo;->callerPid:I

    iget-object v2, v10, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iput-object v2, v0, Lmiui/security/CallerInfo;->callerProcessName:Ljava/lang/String;

    move-object v4, v0

    goto :goto_0

    :cond_2
    move-object v4, v0

    :goto_0
    if-nez v4, :cond_4

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mPackageManager:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManagerInternal;->getPackage(I)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    iget-object v0, v4, Lmiui/security/CallerInfo;->callerPkg:Ljava/lang/String;

    :goto_1
    invoke-static {}, Lcom/android/server/clipboard/ClipboardServiceStub;->get()Lcom/android/server/clipboard/ClipboardServiceStub;

    move-result-object v2

    iget-object v3, p3, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    invoke-virtual {v2, v0, p2, v3, p4}, Lcom/android/server/clipboard/ClipboardServiceStub;->checkProviderWakePathForClipboard(Ljava/lang/String;ILandroid/content/pm/ProviderInfo;I)Z

    move-result v2

    if-eqz v2, :cond_5

    return v1

    :cond_5
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mAmService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, p3, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    const/4 v8, 0x4

    const/4 v5, 0x0

    move-object v2, p0

    move v9, p4

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/am/ActivityManagerServiceImpl;->checkWakePath(Lcom/android/server/am/ActivityManagerService;Lmiui/security/CallerInfo;Ljava/lang/String;Landroid/content/Intent;Landroid/content/pm/ComponentInfo;II)Z

    move-result p4

    return p4

    :cond_6
    move v9, p4

    :goto_2
    return v1
.end method

.method public checkRunningCompatibility(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;I)Z
    .registers 7

    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mSystemReady:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mAmService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {v0, p1}, Lcom/android/server/wm/WindowProcessUtils;->getCallerInfo(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/app/IApplicationThread;)Lmiui/security/CallerInfo;

    move-result-object v0

    invoke-direct {p0, p2, p3, v0, p4}, Lcom/android/server/am/ActivityManagerServiceImpl;->checkServiceWakePath(Landroid/content/Intent;Ljava/lang/String;Lmiui/security/CallerInfo;I)Z

    move-result v1

    return v1
.end method

.method public checkRunningCompatibility(Landroid/app/IApplicationThread;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;ILjava/lang/String;)Z
    .registers 16

    if-nez p2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mAmService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {v0, p1}, Lcom/android/server/wm/WindowProcessUtils;->getCallerInfo(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/app/IApplicationThread;)Lmiui/security/CallerInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {}, Landroid/app/PrivacyTestModeStub;->get()Landroid/app/PrivacyTestModeStub;

    move-result-object v4

    iget-object v5, v3, Lmiui/security/CallerInfo;->callerProcessName:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mContext:Landroid/content/Context;

    move-object v6, p2

    move-object v7, p3

    move-object v8, p5

    invoke-virtual/range {v4 .. v9}, Landroid/app/PrivacyTestModeStub;->collectPrivacyTestModeInfo(Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Context;)V

    move-object v5, v7

    move-object v4, v8

    goto :goto_0

    :cond_1
    move-object v6, p2

    move-object v5, p3

    move-object v4, p5

    :goto_0
    iget-object p2, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mSecurityInternal:Lmiui/security/SecurityManagerInternal;

    if-nez p2, :cond_2

    const-class p2, Lmiui/security/SecurityManagerInternal;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmiui/security/SecurityManagerInternal;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mSecurityInternal:Lmiui/security/SecurityManagerInternal;

    :cond_2
    sget-boolean p2, Lmiui/os/Build;->IS_MIUI:Z

    if-eqz p2, :cond_3

    const-string p2, "com.android.chrome"

    invoke-static {v4, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_3

    iget-object p3, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p3, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    sget-object p2, Lcom/android/server/am/ActivityManagerServiceImpl;->sCalleeWhiteList:Ljava/util/ArrayList;

    iget-object p3, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p3, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mSecurityInternal:Lmiui/security/SecurityManagerInternal;

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mSecurityInternal:Lmiui/security/SecurityManagerInternal;

    invoke-virtual {p2}, Lmiui/security/SecurityManagerInternal;->isAllowedDeviceProvision()Z

    move-result p2

    if-nez p2, :cond_3

    const/4 p2, 0x0

    return p2

    :cond_3
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mAmService:Lcom/android/server/am/ActivityManagerService;

    const/4 v7, 0x1

    move-object v1, p0

    move v8, p4

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/ActivityManagerServiceImpl;->checkWakePath(Lcom/android/server/am/ActivityManagerService;Lmiui/security/CallerInfo;Ljava/lang/String;Landroid/content/Intent;Landroid/content/pm/ComponentInfo;II)Z

    move-result p2

    return p2
.end method

.method public checkRunningCompatibility(Landroid/content/ComponentName;III)Z
    .registers 18

    sget-boolean v0, Lmiui/os/Build;->IS_MIUI:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_d

    invoke-static {}, Landroid/miui/AppOpsUtils;->isXOptMode()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/miui/AppOpsUtils;->isExceptionByTestPolicy(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move/from16 v4, p3

    goto :goto_4

    :cond_1
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_c

    if-eqz v0, :cond_c

    const/16 v2, 0x7d0

    if-ne v0, v2, :cond_2

    move/from16 v4, p3

    goto :goto_3

    :cond_2
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mSecurityInternal:Lmiui/security/SecurityManagerInternal;

    if-nez v2, :cond_3

    const-class v2, Lmiui/security/SecurityManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/security/SecurityManagerInternal;

    iput-object v2, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mSecurityInternal:Lmiui/security/SecurityManagerInternal;

    :cond_3
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mSecurityInternal:Lmiui/security/SecurityManagerInternal;

    if-nez v2, :cond_4

    return v1

    :cond_4
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {p3 .. p3}, Lcom/android/server/am/ProcessUtils;->getProcessRecordByPid(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    const/4 v10, 0x0

    const-string v3, "ActivityManagerServiceImpl"

    if-eqz v2, :cond_b

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-nez v4, :cond_5

    goto :goto_2

    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ":widgetProvider"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    sget-object v4, Lcom/android/server/am/ActivityManagerServiceImpl;->WIDGET_PROVIDER_WHITE_LIST:Ljava/util/List;

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v11, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MIUILOG- Reject widget call from "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mSecurityInternal:Lmiui/security/SecurityManagerInternal;

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v6, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    const/4 v6, 0x0

    const/4 v9, 0x0

    move/from16 v8, p4

    invoke-virtual/range {v3 .. v9}, Lmiui/security/SecurityManagerInternal;->recordWakePathCall(Ljava/lang/String;Ljava/lang/String;IIIZ)V

    :cond_6
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_1

    :cond_7
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mPackageManager:Landroid/content/pm/PackageManagerInternal;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v7

    move-object v4, v5

    const-wide/16 v5, 0x0

    move/from16 v8, p4

    invoke-virtual/range {v3 .. v8}, Landroid/content/pm/PackageManagerInternal;->getApplicationInfo(Ljava/lang/String;JII)Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    move-object v5, v4

    if-eqz v12, :cond_9

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mAmService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v12, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v6, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3, v5, v4, v6}, Lcom/android/server/wm/WindowProcessUtils;->isPackageRunning(Lcom/android/server/wm/ActivityTaskManagerService;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_0

    :cond_8
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mSecurityInternal:Lmiui/security/SecurityManagerInternal;

    iget-object v1, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v1, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    const/4 v6, 0x0

    const/4 v9, 0x0

    move/from16 v8, p4

    invoke-virtual/range {v3 .. v9}, Lmiui/security/SecurityManagerInternal;->recordWakePathCall(Ljava/lang/String;Ljava/lang/String;IIIZ)V

    return v10

    :cond_9
    :goto_0
    return v1

    :cond_a
    :goto_1
    return v1

    :cond_b
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MIUILOG- Reject call from dying process "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v4, p3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    :cond_c
    move/from16 v4, p3

    :goto_3
    return v1

    :cond_d
    move/from16 v4, p3

    :goto_4
    return v1
.end method

.method public checkRunningCompatibility(Landroid/content/Intent;Ljava/lang/String;III)Z
    .registers 9

    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mSystemReady:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mAmService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {v0, p4, p3}, Lcom/android/server/wm/WindowProcessUtils;->getCallerInfo(Lcom/android/server/wm/ActivityTaskManagerService;II)Lmiui/security/CallerInfo;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {p4}, Lcom/android/server/am/ProcessUtils;->getProcessRecordByPid(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Lmiui/security/CallerInfo;

    invoke-direct {v2}, Lmiui/security/CallerInfo;-><init>()V

    move-object v0, v2

    iput p3, v0, Lmiui/security/CallerInfo;->callerUid:I

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v2, v0, Lmiui/security/CallerInfo;->callerPkg:Ljava/lang/String;

    iput p4, v0, Lmiui/security/CallerInfo;->callerPid:I

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iput-object v2, v0, Lmiui/security/CallerInfo;->callerProcessName:Ljava/lang/String;

    :cond_1
    invoke-direct {p0, p1, p2, v0, p5}, Lcom/android/server/am/ActivityManagerServiceImpl;->checkServiceWakePath(Landroid/content/Intent;Ljava/lang/String;Lmiui/security/CallerInfo;I)Z

    move-result v1

    return v1
.end method

.method public checkStartInputMethodSettingsActivity(Landroid/content/IIntentSender;)Z
    .registers 5

    instance-of v0, p1, Lcom/android/server/am/PendingIntentRecord;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/server/am/PendingIntentRecord;

    iget-object v1, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.settings.INPUT_METHOD_SETTINGS"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method checkWakePath(Lcom/android/server/am/ActivityManagerService;Lmiui/security/CallerInfo;Ljava/lang/String;Landroid/content/Intent;Landroid/content/pm/ComponentInfo;II)Z
    .registers 28

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v9, p6

    move/from16 v14, p7

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerServiceImpl;->mSecurityInternal:Lmiui/security/SecurityManagerInternal;

    if-nez v0, :cond_0

    const-class v0, Lmiui/security/SecurityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManagerInternal;

    iput-object v0, v1, Lcom/android/server/am/ActivityManagerServiceImpl;->mSecurityInternal:Lmiui/security/SecurityManagerInternal;

    :cond_0
    const/4 v15, 0x1

    if-eqz v2, :cond_17

    if-eqz v4, :cond_17

    if-eqz v5, :cond_17

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerServiceImpl;->mSecurityInternal:Lmiui/security/SecurityManagerInternal;

    if-nez v0, :cond_1

    move/from16 v17, v15

    goto :goto_a

    :cond_1
    const/4 v0, -0x1

    const-string v13, ""

    const-string v6, "ActivityManagerServiceImpl"

    const/4 v7, 0x4

    if-eqz v3, :cond_c

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v3, Lmiui/security/CallerInfo;->callerPkg:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ":widgetProvider"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v3, Lmiui/security/CallerInfo;->callerPkg:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":pushExtensionService"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/android/server/am/ActivityManagerServiceImpl;->WIDGET_PROVIDER_WHITE_LIST:Ljava/util/List;

    iget-object v12, v3, Lmiui/security/CallerInfo;->callerPkg:Ljava/lang/String;

    invoke-interface {v11, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    const/16 v16, 0x0

    if-nez v11, :cond_6

    iget-object v11, v3, Lmiui/security/CallerInfo;->callerProcessName:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    if-ne v9, v15, :cond_2

    iget-object v11, v3, Lmiui/security/CallerInfo;->callerPkg:Ljava/lang/String;

    invoke-static {v11}, Lcom/android/server/am/PendingIntentRecordImpl;->containsPendingIntent(Ljava/lang/String;)Z

    move-result v11

    xor-int/2addr v11, v15

    move/from16 v17, v15

    move v15, v11

    goto :goto_0

    :cond_2
    if-ne v9, v7, :cond_3

    iget-object v11, v5, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    iget-object v12, v5, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v11, v12}, Lcom/android/server/am/ProcessUtils;->isProcessRunning(Ljava/lang/String;I)Z

    move-result v11

    xor-int/2addr v11, v15

    move/from16 v17, v15

    move v15, v11

    goto :goto_0

    :cond_3
    iget-object v11, v2, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v12, v5, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    move/from16 v17, v15

    iget-object v15, v5, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v11, v12, v15}, Lcom/android/server/wm/WindowProcessUtils;->isProcessRunning(Lcom/android/server/wm/ActivityTaskManagerService;Ljava/lang/String;I)Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    move v15, v11

    :goto_0
    if-eqz v15, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MIUILOG- Reject widget call from "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v11, v3, Lmiui/security/CallerInfo;->callerPkg:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v1, Lcom/android/server/am/ActivityManagerServiceImpl;->mSecurityInternal:Lmiui/security/SecurityManagerInternal;

    iget-object v7, v3, Lmiui/security/CallerInfo;->callerPkg:Ljava/lang/String;

    move-object v11, v8

    iget-object v8, v5, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget v12, v3, Lmiui/security/CallerInfo;->callerUid:I

    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    move/from16 v18, v0

    iget-object v0, v5, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    move-object/from16 v17, v10

    move v10, v12

    const/4 v12, 0x0

    move-object/from16 v19, v11

    move v11, v0

    move-object/from16 v0, v17

    invoke-virtual/range {v6 .. v12}, Lmiui/security/SecurityManagerInternal;->recordWakePathCall(Ljava/lang/String;Ljava/lang/String;IIIZ)V

    move v8, v9

    return v16

    :cond_4
    move/from16 v18, v0

    move-object/from16 v19, v8

    move v8, v9

    move-object v0, v10

    goto :goto_4

    :cond_5
    move/from16 v18, v0

    move-object/from16 v19, v8

    move v8, v9

    move-object v0, v10

    move/from16 v17, v15

    goto :goto_1

    :cond_6
    move/from16 v18, v0

    move-object/from16 v19, v8

    move v8, v9

    move-object v0, v10

    move/from16 v17, v15

    :goto_1
    iget-object v9, v3, Lmiui/security/CallerInfo;->callerProcessName:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/4 v9, 0x1

    if-ne v8, v7, :cond_9

    iget-object v10, v5, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    iget-object v11, v5, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v10, v11}, Lcom/android/server/am/ProcessUtils;->isProcessRunning(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_8

    iget-object v10, v5, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-static {v10, v14}, Lcom/android/server/am/ActivityManagerServiceImpl;->isSystemPackage(Ljava/lang/String;I)Z

    move-result v10

    if-nez v10, :cond_7

    goto :goto_2

    :cond_7
    move/from16 v10, v16

    goto :goto_3

    :cond_8
    :goto_2
    move/from16 v10, v17

    :goto_3
    move v9, v10

    :cond_9
    if-eqz v9, :cond_b

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MIUILOG- Reject onepush call from "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v16

    :cond_a
    :goto_4
    nop

    :cond_b
    iget-object v9, v3, Lmiui/security/CallerInfo;->callerPkg:Ljava/lang/String;

    iget v0, v3, Lmiui/security/CallerInfo;->callerUid:I

    goto :goto_5

    :cond_c
    move/from16 v18, v0

    move v8, v9

    move/from16 v17, v15

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    if-ne v8, v7, :cond_f

    const-string v0, "android.intent.extra.UID"

    const/4 v9, -0x1

    invoke-virtual {v4, v0, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    if-eq v10, v9, :cond_e

    :try_start_0
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerServiceImpl;->mPackageManager:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManagerInternal;->getPackage(I)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v13, v9

    :cond_d
    move v0, v10

    move-object v9, v13

    goto :goto_5

    :catch_0
    move-exception v0

    const-string v9, "getPackage exception!"

    invoke-static {v6, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v9, "android"

    move v0, v10

    goto :goto_5

    :cond_e
    const-string v9, "android"

    move v0, v10

    goto :goto_5

    :cond_f
    move-object/from16 v9, p3

    move/from16 v0, v18

    :goto_5
    const/4 v10, -0x1

    move v11, v10

    iget-object v10, v5, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v12, v5, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    iget-object v15, v5, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v15, :cond_10

    iget-object v15, v5, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v15, Landroid/content/pm/ApplicationInfo;->uid:I

    move v15, v11

    goto :goto_6

    :cond_10
    move v15, v11

    :goto_6
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_16

    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_11

    move v11, v0

    move-object v8, v12

    move-object v7, v13

    move v12, v15

    goto :goto_9

    :cond_11
    if-ltz v15, :cond_15

    const/4 v11, 0x0

    if-ne v8, v7, :cond_12

    iget-object v7, v5, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    invoke-static {v10, v7, v15}, Lcom/android/server/am/ProcessUtils;->isPackageRunning(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v7

    move/from16 v16, v0

    move v0, v7

    goto :goto_7

    :cond_12
    iget-object v7, v2, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    move/from16 v16, v0

    iget-object v0, v5, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    invoke-static {v7, v10, v0, v15}, Lcom/android/server/wm/WindowProcessUtils;->isPackageRunning(Lcom/android/server/wm/ActivityTaskManagerService;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v7

    move v0, v7

    :goto_7
    if-eqz v0, :cond_14

    move-object v7, v6

    iget-object v6, v1, Lcom/android/server/am/ActivityManagerServiceImpl;->mSecurityInternal:Lmiui/security/SecurityManagerInternal;

    move-object v8, v12

    invoke-static/range {p6 .. p6}, Lmiui/security/WakePathRuleInfo;->getCallAliveWakeTypeByBlock(I)I

    move-result v12

    move-object v11, v7

    move-object v7, v13

    const/4 v13, 0x1

    move-object v2, v11

    move v11, v14

    move/from16 v14, p6

    invoke-virtual/range {v6 .. v13}, Lmiui/security/SecurityManagerInternal;->calleeAliveMatchBlackRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_13

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "MIUILOG-Reject alive wakepath call "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " caller= "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " callee= "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " classname="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " action="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " wakeType="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    return v6

    :cond_14
    move-object v7, v13

    move v11, v14

    move v14, v8

    move-object v8, v12

    goto :goto_8

    :cond_15
    move/from16 v16, v0

    move-object v7, v13

    move v11, v14

    move v14, v8

    move-object v8, v12

    :goto_8
    iget-object v6, v1, Lcom/android/server/am/ActivityManagerServiceImpl;->mSecurityInternal:Lmiui/security/SecurityManagerInternal;

    move v13, v14

    move v12, v15

    move v14, v11

    move/from16 v11, v16

    invoke-virtual/range {v6 .. v14}, Lmiui/security/SecurityManagerInternal;->isAllowedByWakePathRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)Z

    move-result v0

    return v0

    :cond_16
    move v11, v0

    move-object v8, v12

    move-object v7, v13

    move v12, v15

    :goto_9
    return v17

    :cond_17
    move/from16 v17, v15

    :goto_a
    return v17
.end method

.method public doBoostEx(Lcom/android/server/am/ProcessRecord;J)Z
    .registers 7

    const/4 v0, 0x0

    invoke-static {p1, p2, p3}, Lcom/android/server/am/ActivityManagerServiceImpl;->doTopAppBoost(Lcom/android/server/am/ProcessRecord;J)Z

    move-result v1

    or-int/2addr v0, v1

    const-string v1, "com.tencent.mm"

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1, p2, p3}, Lcom/android/server/am/ActivityManagerServiceImpl;->doForegroundBoost(Lcom/android/server/am/ProcessRecord;J)Z

    move-result v1

    or-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZZLjava/lang/String;)Z
    .registers 10

    const-string v0, "logging"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p3}, Lcom/android/server/am/ActivityManagerServiceImpl;->dumpLogText(Ljava/io/PrintWriter;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string v0, "app-logging"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/server/am/ActivityManagerServiceImpl;->dumpAppLogText(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public dumpAppStackTraces(Ljava/util/ArrayList;Landroid/util/SparseArray;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/io/File;"
        }
    .end annotation

    move-object/from16 v1, p4

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dumpStackTraces pids="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v3, p2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " nativepids="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v4, p3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "MIUIScout App"

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    move-object/from16 v6, p5

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v7, v0

    :try_start_0
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/16 v8, 0x180

    const/4 v9, -0x1

    invoke-static {v0, v8, v9, v9}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    nop

    if-eqz v1, :cond_1

    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v8, 0x1

    invoke-direct {v0, v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v8, v0

    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Subject: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, "\n"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v9, v0

    :try_start_4
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-virtual {v9, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v9
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    const-string v8, "Exception writing subject to scout dump file:"

    invoke-static {v5, v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    nop

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v11

    invoke-static {v2}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v10, p1

    invoke-static/range {v9 .. v14}, Lcom/android/server/am/StackTracesDumpHelper;->dumpStackTraces(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;Lcom/android/internal/os/anr/AnrLatencyTracker;)J

    return-object v7

    :catch_1
    move-exception v0

    const-string v8, "Exception creating scout dump file:"

    invoke-static {v5, v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v5, 0x0

    return-object v5
.end method

.method public dumpConnections()Ljava/lang/String;
    .registers 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bindconnections:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mBindConnections:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mBindConnections:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "-->"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    nop

    goto :goto_0

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v1, "connections:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mConnections:Ljava/util/Map;

    monitor-enter v2

    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mConnections:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "-->"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ConnectionRecord;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/android/server/am/ConnectionRecord;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    nop

    goto :goto_1

    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method public dumpLogText(Ljava/io/PrintWriter;)V
    .registers 7

    const-string v0, "ACTIVITY MANAGER LOGGING (dumpsys activity logging)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Landroid/util/Pair;

    const-string v1, ""

    invoke-direct {v0, v1, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BACKGROUND_CHECK:Z

    const-string v4, "DEBUG_BACKGROUND_CHECK"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerServiceImpl;->generateGroups(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    const-string v4, "DEBUG_BROADCAST"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerServiceImpl;->generateGroups(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_LIGHT:Z

    const-string v4, "DEBUG_BROADCAST_LIGHT"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerServiceImpl;->generateGroups(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROVIDER:Z

    const-string v4, "DEBUG_PROVIDER"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerServiceImpl;->generateGroups(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    const-string v4, "DEBUG_SERVICE"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerServiceImpl;->generateGroups(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    const-string v4, "DEBUG_FOREGROUND_SERVICE"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerServiceImpl;->generateGroups(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE_EXECUTING:Z

    const-string v4, "DEBUG_SERVICE_EXECUTING"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerServiceImpl;->generateGroups(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALLOWLISTS:Z

    const-string v4, "DEBUG_ALLOWLISTS"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerServiceImpl;->generateGroups(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    const-string v4, "DEBUG_RECENTS"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerServiceImpl;->generateGroups(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS_TRIM_TASKS:Z

    const-string v4, "DEBUG_RECENTS_TRIM_TASKS"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerServiceImpl;->generateGroups(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ROOT_TASK:Z

    const-string v4, "DEBUG_ROOT_TASK"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerServiceImpl;->generateGroups(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    const-string v4, "DEBUG_SWITCH"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerServiceImpl;->generateGroups(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TRANSITION:Z

    const-string v4, "DEBUG_TRANSITION"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerServiceImpl;->generateGroups(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    const-string v4, "DEBUG_VISIBILITY"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerServiceImpl;->generateGroups(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_APP:Z

    const-string v4, "DEBUG_APP"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerServiceImpl;->generateGroups(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_IDLE:Z

    const-string v4, "DEBUG_IDLE"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerServiceImpl;->generateGroups(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RELEASE:Z

    const-string v4, "DEBUG_RELEASE"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerServiceImpl;->generateGroups(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_USER_LEAVING:Z

    const-string v4, "DEBUG_USER_LEAVING"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerServiceImpl;->generateGroups(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PERMISSIONS_REVIEW:Z

    const-string v4, "DEBUG_PERMISSIONS_REVIEW"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerServiceImpl;->generateGroups(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RESULTS:Z

    const-string v4, "DEBUG_RESULTS"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerServiceImpl;->generateGroups(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    const-string v4, "DEBUG_ACTIVITY_STARTS"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerServiceImpl;->generateGroups(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CLEANUP:Z

    const-string v4, "DEBUG_CLEANUP"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerServiceImpl;->generateGroups(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_METRICS:Z

    const-string v4, "DEBUG_METRICS"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerServiceImpl;->generateGroups(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    const-string v1, "Enabled log groups:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v1, "Disabled log groups:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public dumpMiuiJavaTrace(I)V
    .registers 5

    invoke-static {p1}, Landroid/os/Process;->getThreadGroupLeader(I)I

    move-result v0

    if-ne v0, p1, :cond_0

    const-string v0, "MIUI ANR"

    invoke-static {v0, p1}, Lcom/android/server/ScoutHelper;->getOomAdjOfPid(Ljava/lang/String;I)I

    move-result v1

    const/16 v2, -0x3e8

    if-le v1, v2, :cond_0

    const/4 v1, 0x3

    invoke-static {p1, v1}, Landroid/os/Process;->sendSignal(II)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Scout] Send SIGNAL_QUIT to generate java stack dump. Pid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public dumpMiuiStackTraces([I)Ljava/lang/String;
    .registers 18

    move-object/from16 v0, p1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_6

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v2, v4, :cond_0

    return-object v3

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    const/4 v5, 0x3

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    move-object v6, v2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v5, 0x0

    :goto_0
    array-length v7, v0

    if-ge v5, v7, :cond_4

    const-string v7, "ActivityManagerServiceImpl"

    aget v8, v0, v5

    invoke-static {v7, v8}, Lcom/android/server/ScoutHelper;->getOomAdjOfPid(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v7}, Lcom/android/server/ScoutHelper;->checkIsJavaOrNativeProcess(I)I

    move-result v8

    if-nez v8, :cond_1

    goto :goto_1

    :cond_1
    if-ne v8, v4, :cond_2

    aget v9, v0, v5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const/4 v9, 0x2

    if-ne v8, v9, :cond_3

    aget v9, v0, v5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    nop

    invoke-static {v2}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v9

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const-string v11, "App Scout Exception"

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v6 .. v15}, Lcom/android/server/am/StackTracesDumpHelper;->dumpStackTraces(Ljava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseBooleanArray;Ljava/util/concurrent/Future;Ljava/io/StringWriter;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/util/concurrent/Executor;Lcom/android/internal/os/anr/AnrLatencyTracker;)Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_5
    return-object v3

    :cond_6
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Only the system process can call dumpMiuiStackTraces, received request from uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public dumpMiuiStackTracesForCmdlines([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 21

    move-object/from16 v1, p1

    const-string v2, "ActivityManagerServiceImpl"

    if-eqz v1, :cond_a

    array-length v0, v1

    const/4 v3, 0x1

    if-lt v0, v3, :cond_a

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object/from16 v7, p2

    move-object/from16 v10, p3

    goto :goto_7

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v5, 0x3e8

    const-string v6, "MIUIScout App"

    if-eq v0, v5, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only system process can call dumpMiuiStackTracesForCmdlines, received request from uid:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static {v1}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    move-result-object v5

    if-eqz v5, :cond_9

    array-length v0, v5

    if-ge v0, v3, :cond_2

    move-object/from16 v7, p2

    move-object/from16 v10, p3

    goto :goto_6

    :cond_2
    new-instance v0, Ljava/io/File;

    move-object/from16 v7, p2

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v8, v0

    :try_start_0
    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/16 v9, 0x180

    const/4 v10, -0x1

    invoke-static {v0, v9, v10, v10}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :cond_3
    nop

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v8, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v9, v0

    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Subject: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v10, p3

    :try_start_3
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, "\n"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v11}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v10, p3

    :goto_0
    move-object v11, v0

    :try_start_5
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    :try_start_6
    invoke-virtual {v11, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v11
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v10, p3

    :goto_2
    const-string v9, "Exception writing subject to scout dump file:"

    invoke-static {v6, v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :cond_4
    move-object/from16 v10, p3

    :goto_3
    new-instance v0, Ljava/util/ArrayList;

    const/4 v6, 0x4

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    move-object v12, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v6, 0x0

    :goto_4
    array-length v9, v5

    if-ge v6, v9, :cond_8

    aget v9, v5, v6

    invoke-static {v2, v9}, Lcom/android/server/ScoutHelper;->getOomAdjOfPid(Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Lcom/android/server/ScoutHelper;->checkIsJavaOrNativeProcess(I)I

    move-result v11

    if-nez v11, :cond_5

    goto :goto_5

    :cond_5
    if-ne v11, v3, :cond_6

    aget v13, v5, v6

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_6
    const/4 v13, 0x2

    if-ne v11, v13, :cond_7

    aget v13, v5, v6

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_8
    nop

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v11 .. v16}, Lcom/android/server/am/StackTracesDumpHelper;->dumpStackTraces(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;Lcom/android/internal/os/anr/AnrLatencyTracker;)J

    return-void

    :catch_2
    move-exception v0

    move-object/from16 v10, p3

    const-string v2, "Exception creating scout dump file:"

    invoke-static {v6, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_9
    move-object/from16 v7, p2

    move-object/from16 v10, p3

    :goto_6
    const-string v0, "dumpStackTraces failed, no pid found, "

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    move-object/from16 v7, p2

    move-object/from16 v10, p3

    :goto_7
    const-string v0, "dumpStackTraces failed, Invalidate param!"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public dumpOneProcessTraces(ILjava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 15

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    const-string v0, "ActivityManagerServiceImpl"

    invoke-static {v0, p1}, Lcom/android/server/ScoutHelper;->getOomAdjOfPid(Ljava/lang/String;I)I

    move-result v8

    invoke-static {v8}, Lcom/android/server/ScoutHelper;->checkIsJavaOrNativeProcess(I)I

    move-result v9

    const/4 v1, 0x0

    const-string v3, "MIUIScout App"

    const/4 v0, 0x1

    if-ne v9, v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    if-ne v9, v4, :cond_3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v10, v4

    :try_start_0
    invoke-virtual {v10}, Ljava/io/File;->createNewFile()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x180

    const/4 v6, -0x1

    invoke-static {v4, v5, v6, v6}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    nop

    if-eqz p3, :cond_2

    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v10, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Subject: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v4, v0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v4
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "Exception writing subject to scout dump file:"

    invoke-static {v3, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_2
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/StackTracesDumpHelper;->dumpStackTraces(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;Lcom/android/internal/os/anr/AnrLatencyTracker;)J

    return-object v10

    :catch_1
    move-exception v0

    const-string v4, "Exception creating scout dump file:"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can not distinguish for this process\'s adj"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public dumpReceiverCounts(Landroid/util/ArraySet;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/am/ReceiverList;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ReceiverList;

    invoke-virtual {v2}, Lcom/android/server/am/ReceiverList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/am/ReceiverList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/BroadcastFilter;

    invoke-virtual {v4}, Lcom/android/server/am/BroadcastFilter;->getReceiverClassName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    nop

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Ljava/util/Map$Entry;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/util/Map$Entry;

    new-instance v2, Lcom/android/server/am/ActivityManagerServiceImpl$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/server/am/ActivityManagerServiceImpl$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x14

    array-length v4, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    aget-object v5, v1, v4

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v4

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Receivers descriptor histogram (top"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "):"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ActivityManagerServiceImpl"

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public dumpSystemTraces(Ljava/lang/String;)V
    .registers 6

    sget-object v0, Lcom/android/server/am/ActivityManagerServiceImpl;->requestDumpTraceCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    sget-object v0, Lcom/android/server/am/ActivityManagerServiceImpl;->requestDumpTraceCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_2

    sget-object v0, Lcom/android/server/am/ActivityManagerServiceImpl;->dumpFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/server/am/ActivityManagerServiceImpl;->requestDumpTraceCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    sget-object v0, Lcom/android/server/am/ActivityManagerServiceImpl;->dumpFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    :try_start_0
    new-instance v1, Lcom/android/server/am/ActivityManagerServiceImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/ActivityManagerServiceImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/ActivityManagerServiceImpl;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "MIUIScout App"

    const-string v2, "dumpSystemTraces finally shutdown."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "MIUIScout App"

    const-string v3, "Exception occurs while dumping system scout trace file:"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    const-string v1, "MIUIScout App"

    const-string v2, "dumpSystemTraces finally shutdown."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :goto_1
    goto :goto_3

    :goto_2
    const-string v2, "MIUIScout App"

    const-string v3, "dumpSystemTraces finally shutdown."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_1
    throw v1

    :cond_2
    sget-object v0, Lcom/android/server/am/ActivityManagerServiceImpl;->dumpTraceRequestList:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_2
    sget-object v1, Lcom/android/server/am/ActivityManagerServiceImpl;->dumpTraceRequestList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    :goto_3
    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public enableAmsDebugConfig(Ljava/lang/String;Z)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableAMSDebugConfig, config=:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", enable=:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManagerServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "DEBUG_OOM_ADJ"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_1

    :sswitch_1
    const-string v0, "DEBUG_POWER"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto :goto_1

    :sswitch_2
    const-string v0, "DEBUG_PROVIDER"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto :goto_1

    :sswitch_3
    const-string v0, "DEBUG_SWITCH"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1c

    goto :goto_1

    :sswitch_4
    const-string v0, "DEBUG_USAGE_STATS"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16

    goto :goto_1

    :sswitch_5
    const-string v0, "DEBUG_BACKGROUND_CHECK"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_6
    const-string v0, "DEBUG_FOREGROUND_SERVICE"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    goto :goto_1

    :sswitch_7
    const-string v0, "DEBUG_MU"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_8
    const-string v0, "DEBUG_POWER_QUICK"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto :goto_1

    :sswitch_9
    const-string v0, "DEBUG_PROCESS_OBSERVERS"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto :goto_1

    :sswitch_a
    const-string v0, "DEBUG_BACKUP"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_b
    const-string v0, "DEBUG_SERVICE"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto :goto_1

    :sswitch_c
    const-string v0, "DEBUG_ROOT_TASK"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1b

    goto :goto_1

    :sswitch_d
    const-string v0, "DEBUG_NETWORK"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_e
    const-string v0, "DEBUG_ACTIVITY_STARTS"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x25

    goto :goto_1

    :sswitch_f
    const-string v0, "DEBUG_PROCESSES"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto :goto_1

    :sswitch_10
    const-string v0, "DEBUG_BROADCAST_LIGHT"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_11
    const-string v0, "DEBUG_RESULTS"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x24

    goto :goto_1

    :sswitch_12
    const-string v0, "DEBUG_RELEASE"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x21

    goto :goto_1

    :sswitch_13
    const-string v0, "DEBUG_RECENTS"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x19

    goto :goto_1

    :sswitch_14
    const-string v0, "DEBUG_PERMISSIONS_REVIEW_ATMS"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x23

    goto :goto_1

    :sswitch_15
    const-string v0, "DEBUG_BROADCAST"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_16
    const-string v0, "DEBUG_USER_LEAVING"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x22

    goto :goto_1

    :sswitch_17
    const-string v0, "DEBUG_RECENTS_TRIM_TASKS"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1a

    goto :goto_1

    :sswitch_18
    const-string v0, "DEBUG_METRICS"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x27

    goto :goto_1

    :sswitch_19
    const-string v0, "DEBUG_CLEANUP"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x26

    goto :goto_1

    :sswitch_1a
    const-string v0, "DEBUG_PERMISSIONS_REVIEW"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x17

    goto :goto_1

    :sswitch_1b
    const-string v0, "DEBUG_SERVICE_EXECUTING"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    goto :goto_1

    :sswitch_1c
    const-string v0, "DEBUG_COMPACTION"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_1d
    const-string v0, "DEBUG_OOM_ADJ_REASON"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto :goto_1

    :sswitch_1e
    const-string v0, "DEBUG_UID_OBSERVERS"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    goto :goto_1

    :sswitch_1f
    const-string v0, "DEBUG_ALLOWLISTS"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x18

    goto :goto_1

    :sswitch_20
    const-string v0, "DEBUG_IDLE"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    goto :goto_1

    :sswitch_21
    const-string v0, "DEBUG_TRANSITION"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1d

    goto :goto_1

    :sswitch_22
    const-string v0, "DEBUG_FREEZER"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_23
    const-string v0, "DEBUG_PSS"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto :goto_1

    :sswitch_24
    const-string v0, "DEBUG_LRU"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_25
    const-string v0, "DEBUG_APP"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1f

    goto :goto_1

    :sswitch_26
    const-string v0, "DEBUG_ANR"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_27
    const-string v0, "DEBUG_VISIBILITY"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1e

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0  #0x27
    sput-boolean p2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_METRICS:Z

    goto :goto_2

    :pswitch_1  #0x26
    sput-boolean p2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CLEANUP:Z

    goto :goto_2

    :pswitch_2  #0x25
    sput-boolean p2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ACTIVITY_STARTS:Z

    goto :goto_2

    :pswitch_3  #0x24
    sput-boolean p2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RESULTS:Z

    goto :goto_2

    :pswitch_4  #0x23
    sput-boolean p2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_PERMISSIONS_REVIEW:Z

    goto :goto_2

    :pswitch_5  #0x22
    sput-boolean p2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_USER_LEAVING:Z

    goto :goto_2

    :pswitch_6  #0x21
    sput-boolean p2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RELEASE:Z

    goto :goto_2

    :pswitch_7  #0x20
    sput-boolean p2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_IDLE:Z

    goto :goto_2

    :pswitch_8  #0x1f
    sput-boolean p2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_APP:Z

    goto :goto_2

    :pswitch_9  #0x1e
    sput-boolean p2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    goto :goto_2

    :pswitch_a  #0x1d
    sput-boolean p2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TRANSITION:Z

    goto :goto_2

    :pswitch_b  #0x1c
    sput-boolean p2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    goto :goto_2

    :pswitch_c  #0x1b
    sput-boolean p2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ROOT_TASK:Z

    goto :goto_2

    :pswitch_d  #0x1a
    sput-boolean p2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS_TRIM_TASKS:Z

    goto :goto_2

    :pswitch_e  #0x19
    sput-boolean p2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    goto :goto_2

    :pswitch_f  #0x18
    sput-boolean p2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ALLOWLISTS:Z

    goto :goto_2

    :pswitch_10  #0x17
    sput-boolean p2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PERMISSIONS_REVIEW:Z

    goto :goto_2

    :pswitch_11  #0x16
    sput-boolean p2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_USAGE_STATS:Z

    goto :goto_2

    :pswitch_12  #0x15
    sput-boolean p2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_UID_OBSERVERS:Z

    goto :goto_2

    :pswitch_13  #0x14
    sput-boolean p2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE_EXECUTING:Z

    goto :goto_2

    :pswitch_14  #0x13
    sput-boolean p2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    goto :goto_2

    :pswitch_15  #0x12
    sput-boolean p2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z

    goto :goto_2

    :pswitch_16  #0x11
    sput-boolean p2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    goto :goto_2

    :pswitch_17  #0x10
    sput-boolean p2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROVIDER:Z

    goto :goto_2

    :pswitch_18  #0xf
    sput-boolean p2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    goto :goto_2

    :pswitch_19  #0xe
    sput-boolean p2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESS_OBSERVERS:Z

    goto :goto_2

    :pswitch_1a  #0xd
    sput-boolean p2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_POWER_QUICK:Z

    goto :goto_2

    :pswitch_1b  #0xc
    sput-boolean p2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_POWER:Z

    goto :goto_2

    :pswitch_1c  #0xb
    sput-boolean p2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    goto :goto_2

    :pswitch_1d  #0xa
    sput-boolean p2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    goto :goto_2

    :pswitch_1e  #0x9
    sput-boolean p2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_NETWORK:Z

    goto :goto_2

    :pswitch_1f  #0x8
    sput-boolean p2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_MU:Z

    goto :goto_2

    :pswitch_20  #0x7
    sput-boolean p2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    goto :goto_2

    :pswitch_21  #0x6
    sput-boolean p2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FREEZER:Z

    goto :goto_2

    :pswitch_22  #0x5
    sput-boolean p2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    goto :goto_2

    :pswitch_23  #0x4
    sput-boolean p2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST_LIGHT:Z

    goto :goto_2

    :pswitch_24  #0x3
    sput-boolean p2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BROADCAST:Z

    goto :goto_2

    :pswitch_25  #0x2
    sput-boolean p2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BACKUP:Z

    goto :goto_2

    :pswitch_26  #0x1
    sput-boolean p2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BACKGROUND_CHECK:Z

    goto :goto_2

    :pswitch_27  #0x0
    sput-boolean p2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_ANR:Z

    nop

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7caac762 -> :sswitch_27
        -0x65a58647 -> :sswitch_26
        -0x65a5860b -> :sswitch_25
        -0x65a55c7d -> :sswitch_24
        -0x65a54d5c -> :sswitch_23
        -0x609ef971 -> :sswitch_22
        -0x5725bd1f -> :sswitch_21
        -0x4f07c5a0 -> :sswitch_20
        -0x3fa7c488 -> :sswitch_1f
        -0x33a5061e -> :sswitch_1e
        -0x2bd2be66 -> :sswitch_1d
        -0x2384c46f -> :sswitch_1c
        -0x13398d64 -> :sswitch_1b
        -0x105f7ae1 -> :sswitch_1a
        -0x990bb88 -> :sswitch_19
        -0x3a95169 -> :sswitch_18
        -0x3a5b41c -> :sswitch_17
        -0x2a29454 -> :sswitch_16
        0x31bad95 -> :sswitch_15
        0x32a6039 -> :sswitch_14
        0x3e0734c -> :sswitch_13
        0x45f15db -> :sswitch_12
        0x4c929ca -> :sswitch_11
        0x95409cc -> :sswitch_10
        0x22591031 -> :sswitch_f
        0x2d964575 -> :sswitch_e
        0x313f4802 -> :sswitch_d
        0x31af5fb6 -> :sswitch_c
        0x39a1b489 -> :sswitch_b
        0x47b2f94e -> :sswitch_a
        0x48e2e741 -> :sswitch_9
        0x497569e7 -> :sswitch_8
        0x4f4d3f34 -> :sswitch_7
        0x52bdf925 -> :sswitch_6
        0x55e50723 -> :sswitch_5
        0x655e1835 -> :sswitch_4
        0x65ee3ac0 -> :sswitch_3
        0x6d83d27d -> :sswitch_2
        0x6e76dfd9 -> :sswitch_1
        0x76d6c1a9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_27  #00000000
        :pswitch_26  #00000001
        :pswitch_25  #00000002
        :pswitch_24  #00000003
        :pswitch_23  #00000004
        :pswitch_22  #00000005
        :pswitch_21  #00000006
        :pswitch_20  #00000007
        :pswitch_1f  #00000008
        :pswitch_1e  #00000009
        :pswitch_1d  #0000000a
        :pswitch_1c  #0000000b
        :pswitch_1b  #0000000c
        :pswitch_1a  #0000000d
        :pswitch_19  #0000000e
        :pswitch_18  #0000000f
        :pswitch_17  #00000010
        :pswitch_16  #00000011
        :pswitch_15  #00000012
        :pswitch_14  #00000013
        :pswitch_13  #00000014
        :pswitch_12  #00000015
        :pswitch_11  #00000016
        :pswitch_10  #00000017
        :pswitch_f  #00000018
        :pswitch_e  #00000019
        :pswitch_d  #0000001a
        :pswitch_c  #0000001b
        :pswitch_b  #0000001c
        :pswitch_a  #0000001d
        :pswitch_9  #0000001e
        :pswitch_8  #0000001f
        :pswitch_7  #00000020
        :pswitch_6  #00000021
        :pswitch_5  #00000022
        :pswitch_4  #00000023
        :pswitch_3  #00000024
        :pswitch_2  #00000025
        :pswitch_1  #00000026
        :pswitch_0  #00000027
    .end packed-switch
.end method

.method public enableAppDebugConfig(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;ZLjava/lang/String;I)V
    .registers 10

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_2

    if-eqz v0, :cond_2

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "ActivityManagerServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " can not enable activity thread debug config."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    :goto_0
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1, p4, p5}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    if-eqz v2, :cond_3

    :try_start_1
    invoke-interface {v3, p2, p3}, Landroid/app/IApplicationThread;->enableDebugConfig(Ljava/lang/String;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    :cond_3
    :goto_1
    :try_start_2
    monitor-exit p0

    :goto_2
    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_4
    :goto_3
    return-void
.end method

.method finishBooting()V
    .registers 8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Lmiui/mqsas/sdk/BootEventManager;->getInstance()Lmiui/mqsas/sdk/BootEventManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lmiui/mqsas/sdk/BootEventManager;->setUIReady(J)V

    invoke-static {}, Lmiui/mqsas/sdk/BootEventManager;->getInstance()Lmiui/mqsas/sdk/BootEventManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lmiui/mqsas/sdk/BootEventManager;->setBootComplete(J)V

    invoke-static {}, Lmiui/mqsas/sdk/BootEventManager;->getInstance()Lmiui/mqsas/sdk/BootEventManager;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/mqsas/sdk/BootEventManager;->getBootDexopt()J

    move-result-wide v2

    invoke-static {}, Lcom/android/server/pm/DexOptHelperStub;->get()Lcom/android/server/pm/DexOptHelperStub;

    move-result-object v4

    invoke-virtual {v4, v2, v3, v0, v1}, Lcom/android/server/pm/DexOptHelperStub;->reportBootAfterOtaJobStats(JJ)V

    invoke-static {}, Lcom/miui/server/xspace/XSpaceManagerServiceStub;->getInstance()Lcom/miui/server/xspace/XSpaceManagerServiceStub;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/miui/server/xspace/XSpaceManagerServiceStub;->init(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/server/wm/AppResurrectionServiceStub;->getInstance()Lcom/android/server/wm/AppResurrectionServiceStub;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/AppResurrectionServiceStub;->init(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/server/MiWLCStub;->getInstance()Lcom/android/server/MiWLCStub;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/android/server/MiWLCStub;->init(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lmiui/drm/DrmBroadcast;->getInstance(Landroid/content/Context;)Lmiui/drm/DrmBroadcast;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/drm/DrmBroadcast;->broadcast()V

    new-instance v4, Landroid/content/Intent;

    const-string v5, "miui.intent.action.FINISH_BOOTING"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v5, 0x10000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v5, v4, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-static {}, Lcom/android/server/wm/MiuiSplitScreenStub;->getInstance()Lcom/android/server/wm/MiuiSplitScreenStub;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/android/server/wm/MiuiSplitScreenStub;->updateResizeBlackList(Landroid/content/Context;)V

    sget-boolean v5, Lmiui/mqsas/scout/ScoutUtils;->REBOOT_COREDUMP:Z

    if-nez v5, :cond_0

    invoke-static {}, Lmiui/mqsas/scout/ScoutUtils;->isLibraryTest()Z

    :cond_0
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mStabilityLocalServiceInternal:Lcom/miui/server/stability/StabilityLocalServiceInternal;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mStabilityLocalServiceInternal:Lcom/miui/server/stability/StabilityLocalServiceInternal;

    iget-object v6, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-interface {v5, v6}, Lcom/miui/server/stability/StabilityLocalServiceInternal;->initContext(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mStabilityLocalServiceInternal:Lcom/miui/server/stability/StabilityLocalServiceInternal;

    invoke-interface {v5}, Lcom/miui/server/stability/StabilityLocalServiceInternal;->startMemoryMonitor()V

    :cond_1
    invoke-static {}, Lcom/android/server/LiteFactoryResetStub;->getInstance()Lcom/android/server/LiteFactoryResetStub;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/android/server/LiteFactoryResetStub;->initContext(Landroid/content/Context;)V

    invoke-static {}, Lcom/miui/server/greeze/GreezeManagerInternal;->getInstance()Lcom/miui/server/greeze/GreezeManagerInternal;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/server/greeze/GreezeManagerInternal;->bootCompleted()V

    invoke-static {}, Lcom/android/server/am/SystemPressureControllerStub;->getInstance()Lcom/android/server/am/SystemPressureControllerStub;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/SystemPressureControllerStub;->finishBooting()V

    return-void
.end method

.method public finishBootingAsUser(I)V
    .registers 4

    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->get()Lcom/android/server/wm/ActivityTaskManagerServiceStub;

    move-result-object v0

    const-string v1, "finishBooting"

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->restartSubScreenUiIfNeeded(ILjava/lang/String;)V

    return-void
.end method

.method public getAppAdditionalBindList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mAppAdditionalBindList:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mAppAdditionalBindList:Ljava/util/List;

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mAppAdditionalBindList:Ljava/util/List;

    const-string v1, "activity_task"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mAppAdditionalBindList:Ljava/util/List;

    const-string v1, "device_policy"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mAppAdditionalBindList:Ljava/util/List;

    const-string v1, "miui.stability.rms"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mAppAdditionalBindList:Ljava/util/List;

    const-string v1, "device_state"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mAppAdditionalBindList:Ljava/util/List;

    const-string v1, "turbosched"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mAppAdditionalBindList:Ljava/util/List;

    const-string v1, "voiceinteraction"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mAppAdditionalBindList:Ljava/util/List;

    const-string v1, "autofill"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mAppAdditionalBindList:Ljava/util/List;

    const-string v1, "HyperPackageManager"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mAppAdditionalBindList:Ljava/util/List;

    const-string v1, "security"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mAppAdditionalBindList:Ljava/util/List;

    const-string v1, "MiuiInit"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mAppAdditionalBindList:Ljava/util/List;

    const-string v1, "MiuiInputManager"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mAppAdditionalBindList:Ljava/util/List;

    const-string v1, "smartpower"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mAppAdditionalBindList:Ljava/util/List;

    const-string v1, "vibrator_manager"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mAppAdditionalBindList:Ljava/util/List;

    const-string v1, "uimode"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mAppAdditionalBindList:Ljava/util/List;

    const-string v1, "wifi"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mAppAdditionalBindList:Ljava/util/List;

    const-string v1, "perfshielder"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mAppAdditionalBindList:Ljava/util/List;

    const-string v1, "telephony.registry"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mAppAdditionalBindList:Ljava/util/List;

    const-string v1, "batterystats"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mAppAdditionalBindList:Ljava/util/List;

    const-string v1, "batteryproperties"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mAppAdditionalBindList:Ljava/util/List;

    const-string v1, "thermalservice"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mAppAdditionalBindList:Ljava/util/List;

    const-string v1, "clipboard"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mAppAdditionalBindList:Ljava/util/List;

    const-string v1, "legacy_permission"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mAppAdditionalBindList:Ljava/util/List;

    const-string v1, "audio"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mAppAdditionalBindList:Ljava/util/List;

    const-string v1, "appwidget"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mAppAdditionalBindList:Ljava/util/List;

    const-string v1, "location"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mAppAdditionalBindList:Ljava/util/List;

    return-object v0
.end method

.method public getAppStartMode(IIILjava/lang/String;)I
    .registers 21

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    const-string v0, "com.xiaomi.xmsf"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_2

    const-string v0, "com.miui.voiceassist"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "com.miui.carlink"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "com.baidu.carlife.xiaomi"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "ucar_casting_state"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v4, 0x1

    if-eq v4, v0, :cond_2

    :cond_0
    const-string v0, "com.miui.notification"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "com.xiaomi.bluetooth"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return p2

    :cond_2
    :goto_0
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerServiceImpl;->mAmService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    move/from16 v4, p1

    invoke-virtual {v0, v4}, Lcom/android/server/am/ProcessList;->getUidRecordLOSP(I)Lcom/android/server/am/UidRecord;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/android/server/am/UidRecord;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v5}, Lcom/android/server/am/UidRecord;->isCurAllowListed()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerServiceImpl;->mAmService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v6

    :try_start_0
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerServiceImpl;->mAmService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v7, p3

    :try_start_1
    invoke-virtual {v0, v7}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_3

    iget v6, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    goto :goto_1

    :cond_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    :goto_1
    move v15, v6

    iget-object v8, v1, Lcom/android/server/am/ActivityManagerServiceImpl;->mAmService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v9

    const-string v13, "push-service-launch"

    const/4 v14, 0x0

    const-wide/32 v10, 0xea60

    const/16 v12, 0x65

    invoke-virtual/range {v8 .. v15}, Lcom/android/server/am/ActivityManagerService;->tempAllowlistUidLocked(IJILjava/lang/String;II)V

    goto :goto_3

    :catchall_0
    move-exception v0

    move/from16 v7, p3

    :goto_2
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    :cond_4
    move/from16 v7, p3

    :goto_3
    return v3
.end method

.method public getBroadcastProcessQueue(Ljava/lang/String;I)Lcom/android/server/am/BroadcastProcessQueue;
    .registers 4

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCPUCores(Ljava/lang/String;)[I
    .registers 11

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "persist.sys.dexpreload.cpu_cores"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lcom/android/server/am/ActivityManagerServiceImpl;->CPU_CORES_INDEX:[I

    return-object v0

    :cond_0
    const-string v2, "persist.sys.dexpreload.other_cores"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v0, Lcom/android/server/am/ActivityManagerServiceImpl;->MIDDLE_AND_BIG_CORES_INDEX:[I

    return-object v0

    :cond_1
    return-object v0

    :cond_2
    :try_start_0
    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    if-lez v3, :cond_6

    const/4 v3, -0x1

    const/4 v4, -0x1

    array-length v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v5, v7, :cond_3

    aget-object v5, v2, v6

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v3, v5

    aget-object v5, v2, v6

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v4, v5

    goto :goto_0

    :cond_3
    array-length v5, v2

    const/4 v8, 0x2

    if-ne v5, v8, :cond_4

    aget-object v5, v2, v6

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v3, v5

    aget-object v5, v2, v7

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v4, v5

    :cond_4
    :goto_0
    if-ltz v3, :cond_6

    if-ltz v4, :cond_6

    if-lt v4, v3, :cond_6

    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x4

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    move v6, v3

    :goto_1
    if-gt v6, v4, :cond_5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v6

    new-instance v7, Lcom/android/server/am/ActivityManagerServiceImpl$$ExternalSyntheticLambda4;

    invoke-direct {v7}, Lcom/android/server/am/ActivityManagerServiceImpl$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_6
    goto :goto_2

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load cpu cores property failed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityManagerServiceImpl"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-object v0
.end method

.method public getDefaultMaxCachedProcesses()I
    .registers 10

    const-wide/32 v0, 0x40000000

    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    move-result-wide v2

    const-wide/32 v4, 0x40000000

    div-long/2addr v2, v4

    const-string v4, "persist.sys.spc.enabled"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-wide/16 v5, 0x4

    if-eqz v4, :cond_1

    cmp-long v4, v2, v5

    const/16 v5, 0x3e8

    if-gtz v4, :cond_0

    const-string v4, "persist.sys.mms.lowermem.cache_limit"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    return v4

    :cond_0
    const-string v4, "persist.sys.mms.cache_limit"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    return v4

    :cond_1
    const-string v4, "persist.sys.mms.bg_apps_limit"

    const/16 v7, 0x20

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    const-wide/16 v7, 0x2

    cmp-long v7, v2, v7

    if-gez v7, :cond_2

    const/16 v5, 0xc

    return v5

    :cond_2
    const-wide/16 v7, 0x3

    cmp-long v7, v2, v7

    if-gtz v7, :cond_3

    const/16 v5, 0x10

    return v5

    :cond_3
    cmp-long v5, v2, v5

    if-gtz v5, :cond_4

    const/16 v5, 0x18

    return v5

    :cond_4
    return v4
.end method

.method public getOomAdjOfPid(I)I
    .registers 6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_0

    const-string v1, "ActivityManagerServiceImpl"

    invoke-static {v1, p1}, Lcom/android/server/ScoutHelper;->getOomAdjOfPid(Ljava/lang/String;I)I

    move-result v1

    return v1

    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Only the system process can call getOomAdjOfPid, received request from uid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getPackageHoldOn(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 9

    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    :try_start_0
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    const/16 v4, 0x3e8

    if-eq v3, v4, :cond_0

    const-string v3, ""

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const-string v3, "ActivityManagerServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Permission Denial: getPackageHoldOn() not from system "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->get()Lcom/android/server/wm/ActivityTaskManagerServiceStub;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->getPackageHoldOn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    const/4 v3, 0x1

    return v3

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getPackageNameByPid(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Lcom/android/server/am/ProcessUtils;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackageNameForPid(I)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mAmService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mAmService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getProcessNameByPid(I)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Lcom/android/server/am/ProcessUtils;->getProcessNameByPid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceStub(Ljava/lang/String;)Landroid/os/IBinder;
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "window"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_1
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_2

    :pswitch_0  #0x1
    invoke-static {}, Lcom/android/server/wm/WindowManagerServiceStub;->get()Lcom/android/server/wm/WindowManagerServiceStub;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerServiceImpl;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerServiceImpl;->getStubBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_2

    :pswitch_1  #0x0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mStubBinder:Lcom/android/server/am/ActivityManagerServiceImpl$StubBinder;

    :goto_2
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x62b40cf1 -> :sswitch_1
        -0x2ef42410 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1  #00000000
        :pswitch_0  #00000001
    .end packed-switch
.end method

.method public handleIntentByTestPolicy(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;
    .registers 4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/android/server/am/ActivityManagerServiceImpl;->isExceptionByTestPolicy(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mAmService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    return-object p1
.end method

.method public heldConnectionByUids(I)Ljava/util/Set;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mBindConnections:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mBindConnections:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    goto :goto_0

    :cond_1
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public holdConnectionUids(I)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mBindConnections:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mBindConnections:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public ignoreSpecifiedAuthority(Ljava/lang/String;)Z
    .registers 3

    sget-object v0, Lcom/android/server/am/ActivityManagerServiceImpl;->mIgnoreAuthorityList:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method init(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V
    .registers 6

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mAmService:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/urm/QosController;

    invoke-direct {v0}, Landroid/urm/QosController;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mQosController:Landroid/urm/QosController;

    new-instance v0, Lmiui/turbosched/TurboSchedManager;

    invoke-direct {v0, p2}, Lmiui/turbosched/TurboSchedManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mTurboSchedManager:Lmiui/turbosched/TurboSchedManager;

    new-instance v0, Lcom/android/server/am/ActivityManagerServiceImpl$StubBinder;

    invoke-direct {v0, p0}, Lcom/android/server/am/ActivityManagerServiceImpl$StubBinder;-><init>(Lcom/android/server/am/ActivityManagerServiceImpl;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mStubBinder:Lcom/android/server/am/ActivityManagerServiceImpl$StubBinder;

    invoke-static {}, Lcom/android/server/am/MiuiWarnings;->getInstance()Lcom/android/server/am/MiuiWarnings;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/am/MiuiWarnings;->init(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/server/am/BroadcastQueueModernStubImpl;->getInstance()Lcom/android/server/am/BroadcastQueueModernStubImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mAmService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/BroadcastQueueModernStubImpl;->init(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V

    sget-boolean v0, Lmiui/mqsas/scout/ScoutUtils;->ENABLED_SCOUT:Z

    const-string v1, "ActivityManagerServiceImpl"

    if-eqz v0, :cond_0

    sget-boolean v0, Lmiui/mqsas/scout/ScoutUtils;->ENABLED_LT_SCOUT:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/am/DumpScoutTraceThread;

    const-string v2, "DumpScoutTraceThread"

    invoke-direct {v0, v2, p0}, Lcom/android/server/am/DumpScoutTraceThread;-><init>(Ljava/lang/String;Lcom/android/server/am/ActivityManagerServiceImpl;)V

    invoke-virtual {v0}, Lcom/android/server/am/DumpScoutTraceThread;->start()V

    const-string v0, "DumpScoutTraceThread begin running."

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Lmiui/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_1

    const-string v0, "debug.block_system"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "boot monitor system_watchdog..."

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    :cond_1
    const-class v0, Lcom/miui/app/smartpower/SmartPowerServiceInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/app/smartpower/SmartPowerServiceInternal;

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mSmartPowerService:Lcom/miui/app/smartpower/SmartPowerServiceInternal;

    const-class v0, Lcom/miui/server/stability/StabilityLocalServiceInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/server/stability/StabilityLocalServiceInternal;

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mStabilityLocalServiceInternal:Lcom/miui/server/stability/StabilityLocalServiceInternal;

    return-void
.end method

.method public initExpendCapacityAppList()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "expend_heap_size_pkg_list"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mExpendCapacityAppList:Ljava/util/List;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11030124

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mExpendCapacityAppList:Ljava/util/List;

    :goto_0
    return-void
.end method

.method public isActiveInstruUid(I)Z
    .registers 3

    iget v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mInstrUid:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAllowedOperatorGetPhoneNumber(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;)Z
    .registers 15

    const-string v0, ";"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-ne v1, v2, :cond_2

    const/4 v1, 0x3

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/android/server/am/ProcessUtils;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v3

    :cond_0
    aget-object v2, v0, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v2, 0x2

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iget-object v4, p1, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/appop/AppOpsService;

    const-string v10, "ActivityManagerServiceImpl#isAllowedOperatorGetPhoneNumber"

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/appop/AppOpsService;->noteOperation(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Landroid/app/SyncNotedAppOp;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/SyncNotedAppOp;->getOpMode()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_2
    return v3
.end method

.method public isBackuping(I)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mBackupingList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isBoostNeeded(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->callerPackage:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/am/ActivityManagerServiceImpl;->isSystemPackage(Ljava/lang/String;I)Z

    move-result v2

    const-string v3, "service"

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    const-string v3, "com.xiaomi.mipush.sdk.PushMessageHandler"

    invoke-virtual {p3, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "com.xiaomi.xmsf"

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    const-string v5, "com.miui.voiceassist/com.xiaomi.voiceassistant.VoiceService"

    invoke-virtual {v5, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v5, v1

    goto :goto_2

    :cond_2
    :goto_1
    move v5, v4

    :goto_2
    const-string v3, "com.miui.notification"

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz v5, :cond_4

    :cond_3
    move v1, v4

    :cond_4
    const-string v3, "com.tencent.mm"

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v1, 0x1

    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hostingType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", hostingName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", callerPackage="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isSystem="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isBoostNeeded="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Boost"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public isBoundWidgetPackage(Ljava/lang/String;I)Z
    .registers 10

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, -0x1

    const/4 v2, 0x1

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mAmService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0}, Lcom/android/server/am/UserController;->getUsers()[I

    move-result-object v0

    goto :goto_0

    :cond_1
    new-array v0, v2, [I

    aput p2, v0, v1

    :goto_0
    array-length v3, v0

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_3

    aget v5, v0, v4

    iget-object v6, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v6, p1, v5}, Landroid/appwidget/AppWidgetManager;->isBoundWidgetPackage(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_2

    return v2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    return v1

    :cond_4
    :goto_2
    return v1
.end method

.method public isExceptionByTestPolicy(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p1}, Landroid/miui/AppOpsUtils;->isExceptionByTestPolicy(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isGame(Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/server/MiWLCStub;->getInstance()Lcom/android/server/MiWLCStub;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/MiWLCStub;->isGame(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    iget v3, v1, Landroid/content/pm/ApplicationInfo;->category:I

    if-eqz v3, :cond_1

    iget v3, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v4, 0x2000000

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_2

    :cond_1
    move v0, v2

    :cond_2
    return v0

    :cond_3
    nop

    return v0

    :catch_0
    move-exception v1

    return v0
.end method

.method public isKillProvider(Lcom/android/server/am/ContentProviderRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)Z
    .registers 7

    iget-object v0, p3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v0

    const/16 v1, 0xfa

    if-le v0, v1, :cond_0

    invoke-static {p3}, Lcom/android/server/am/ProcessUtils;->isHomeProcess(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p3, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v1, p3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/am/ActivityManagerServiceImpl;->isProtectProcess(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p3}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->isPreviousProcess()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "visible app "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " depends on provider "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in dying proc "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "??"

    if-eqz p2, :cond_1

    iget-object v2, p2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " (adj "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p2, :cond_2

    iget-object v1, p2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManagerServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public isRestrictBackgroundAction(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Z
    .registers 13

    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerServiceImpl;->getGreezeService()Lcom/miui/server/greeze/GreezeManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerServiceImpl;->getGreezeService()Lcom/miui/server/greeze/GreezeManagerInternal;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/miui/server/greeze/GreezeManagerInternal;->isRestrictBackgroundAction(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    move-object v2, p1

    const/4 p1, 0x1

    return p1
.end method

.method isStartWithBackupRestriction(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;)Z
    .registers 6

    invoke-virtual {p3}, Lcom/android/server/am/ProcessRecord;->getActiveInstrumentation()Lcom/android/server/am/ActiveInstrumentation;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/android/server/am/ProcessRecord;->getActiveInstrumentation()Lcom/android/server/am/ActiveInstrumentation;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActiveInstrumentation;->mTargetInfo:Landroid/content/pm/ApplicationInfo;

    goto :goto_0

    :cond_0
    iget-object v0, p3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    :goto_0
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p1, v1}, Lmiui/app/backup/BackupManager;->isSysAppForBackup(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public isSystemApp(I)Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mAmService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mAmService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isVibratorActive(I)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mUsingVibratorUids:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public judgeExpendCapacityApp(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mExpendCapacityAppList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mExpendCapacityAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mExpendCapacityAppList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public killPackageProcesses(Ljava/lang/String;IILjava/lang/String;)Z
    .registers 23

    move-object/from16 v1, p0

    const/4 v2, 0x0

    iget-object v3, v1, Lcom/android/server/am/ActivityManagerServiceImpl;->mAmService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerServiceImpl;->mAmService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    const/16 v15, 0xd

    const/16 v16, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v17, p4

    invoke-virtual/range {v4 .. v17}, Lcom/android/server/am/ProcessList;->killPackageProcessesLSP(Ljava/lang/String;IIIZZZZZZIILjava/lang/String;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v4, "ActivityManagerServiceImpl"

    const-string v5, "invoke killPackageProcessesLocked error:"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    monitor-exit v3

    return v2

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public killProcessDueToResolutionChanged()V
    .registers 3

    new-instance v0, Lmiui/process/ProcessConfig;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Lmiui/process/ProcessConfig;-><init>(I)V

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lmiui/process/ProcessConfig;->setPriority(I)V

    invoke-static {v0}, Lmiui/process/ProcessManager;->kill(Lmiui/process/ProcessConfig;)Z

    return-void
.end method

.method public loadBitmapIfNeeded(Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Lcom/android/server/wm/PreStartingManager;->getInstance()Lcom/android/server/wm/PreStartingManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/PreStartingManager;->loadBitmapIfNeeded(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method markAmsReady()V
    .registers 4

    invoke-static {}, Lmiui/mqsas/sdk/BootEventManager;->getInstance()Lmiui/mqsas/sdk/BootEventManager;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lmiui/mqsas/sdk/BootEventManager;->setAmsReady(J)V

    return-void
.end method

.method markUIReady()V
    .registers 4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Lmiui/mqsas/sdk/BootEventManager;->getInstance()Lmiui/mqsas/sdk/BootEventManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lmiui/mqsas/sdk/BootEventManager;->setUIReady(J)V

    invoke-static {}, Lmiui/mqsas/sdk/BootEventManager;->getInstance()Lmiui/mqsas/sdk/BootEventManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lmiui/mqsas/sdk/BootEventManager;->setBootComplete(J)V

    return-void
.end method

.method public moveUserToForeground(I)V
    .registers 4

    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->get()Lcom/android/server/wm/ActivityTaskManagerServiceStub;

    move-result-object v0

    const-string v1, "moveUserToForeground"

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->restartSubScreenUiIfNeeded(ILjava/lang/String;)V

    return-void
.end method

.method public notifyCrashToVkService(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mForceVkInternal:Lcom/xiaomi/vkmode/service/MiuiForceVkServiceInternal;

    if-nez v0, :cond_0

    const-class v0, Lcom/xiaomi/vkmode/service/MiuiForceVkServiceInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/vkmode/service/MiuiForceVkServiceInternal;

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mForceVkInternal:Lcom/xiaomi/vkmode/service/MiuiForceVkServiceInternal;

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mForceVkInternal:Lcom/xiaomi/vkmode/service/MiuiForceVkServiceInternal;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mForceVkInternal:Lcom/xiaomi/vkmode/service/MiuiForceVkServiceInternal;

    invoke-interface {v0, p1, p2, p3}, Lcom/xiaomi/vkmode/service/MiuiForceVkServiceInternal;->onAppCrashed(Ljava/lang/String;ZLjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public notifyDumpAllInfo()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->greezer:Lcom/miui/server/greeze/GreezeManagerInternal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->greezer:Lcom/miui/server/greeze/GreezeManagerInternal;

    invoke-virtual {v0}, Lcom/miui/server/greeze/GreezeManagerInternal;->notifyDumpAllInfo()V

    :cond_0
    return-void
.end method

.method public notifyDumpAppInfo(II)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->greezer:Lcom/miui/server/greeze/GreezeManagerInternal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->greezer:Lcom/miui/server/greeze/GreezeManagerInternal;

    invoke-virtual {v0, p1, p2}, Lcom/miui/server/greeze/GreezeManagerInternal;->notifyDumpAppInfo(II)V

    :cond_0
    return-void
.end method

.method public notifyExcuteServices(Lcom/android/server/am/ProcessRecord;ZLjava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->greezer:Lcom/miui/server/greeze/GreezeManagerInternal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->greezer:Lcom/miui/server/greeze/GreezeManagerInternal;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v1, p2, p3}, Lcom/miui/server/greeze/GreezeManagerInternal;->notifyExcuteServices(IZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onGrantUriPermission(Ljava/lang/String;Ljava/lang/String;ILcom/android/server/uri/GrantUri;)V
    .registers 6

    invoke-virtual {p4}, Lcom/android/server/uri/GrantUri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/am/ActivityManagerServiceImpl;->recordAppBehavior(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public onProcessStart(IILjava/lang/String;)V
    .registers 5

    invoke-static {}, Lcom/android/server/appop/flags/Flags;->enableJingyue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_MIUI:Z

    if-nez v0, :cond_0

    const-class v0, Lmiui/security/SecurityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManagerInternal;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p3, p1, p2}, Lmiui/security/SecurityManagerInternal;->handleIsolateAppMountState(Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method onSystemReady()V
    .registers 4

    invoke-static {}, Lmiui/mqsas/sdk/BootEventManager;->getInstance()Lmiui/mqsas/sdk/BootEventManager;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lmiui/mqsas/sdk/BootEventManager;->setAmsReady(J)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mSystemReady:Z

    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mPackageManager:Landroid/content/pm/PackageManagerInternal;

    const-class v0, Lmiui/security/SecurityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManagerInternal;

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mSecurityInternal:Lmiui/security/SecurityManagerInternal;

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mContext:Landroid/content/Context;

    const-class v1, Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetManager;

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerServiceImpl;->ensureDeviceProvisioned(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ActivityManagerServiceImpl"

    const-string v2, "ensureDeviceProvisioned occurs Exception."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-static {}, Lcom/android/server/am/MemoryStandardProcessControlStub;->getInstance()Lcom/android/server/am/MemoryStandardProcessControlStub;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mAmService:Lcom/android/server/am/ActivityManagerService;

    invoke-interface {v0, v1, v2}, Lcom/android/server/am/MemoryStandardProcessControlStub;->init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)Z

    invoke-static {}, Lcom/android/server/am/MemoryFreezeStub;->getInstance()Lcom/android/server/am/MemoryFreezeStub;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mAmService:Lcom/android/server/am/ActivityManagerService;

    invoke-interface {v0, v1, v2}, Lcom/android/server/am/MemoryFreezeStub;->init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    invoke-static {}, Lcom/android/server/am/ProcessProphetStub;->getInstance()Lcom/android/server/am/ProcessProphetStub;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mAmService:Lcom/android/server/am/ActivityManagerService;

    invoke-interface {v0, v1, v2}, Lcom/android/server/am/ProcessProphetStub;->init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    invoke-static {}, Lcom/android/server/wm/MiuiFreezeStub;->getInstance()Lcom/android/server/wm/MiuiFreezeStub;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mAmService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-interface {v0, v1}, Lcom/android/server/wm/MiuiFreezeStub;->init(Lcom/android/server/wm/ActivityTaskManagerService;)V

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerServiceImpl;->initExpendCapacityAppList()V

    invoke-static {}, Lcom/android/server/am/PreShutdownHelper;->getInstance()Lcom/android/server/am/PreShutdownHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/PreShutdownHelper;->compressAndCleanupLog()V

    return-void
.end method

.method public onTransact(Lcom/android/server/am/ActivityManagerService;ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 7

    const v0, 0xfffffe

    if-ne p2, v0, :cond_0

    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/am/ActivityManagerServiceImpl;->setPackageHoldOn(Lcom/android/server/am/ActivityManagerService;Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    :cond_0
    const v0, 0xfffffd

    if-ne p2, v0, :cond_1

    invoke-virtual {p0, p3, p4}, Lcom/android/server/am/ActivityManagerServiceImpl;->getPackageHoldOn(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public perfHintForAttachApplication(ILcom/android/server/am/ProcessRecord;)V
    .registers 15

    invoke-static {}, Lxiaomi/platform/flags/Flags;->qcomEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mUxPerf:Landroid/util/BoostFramework;

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/HostingRecord;->isTopApp()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mUxPerf:Landroid/util/BoostFramework;

    invoke-virtual {v0}, Landroid/util/BoostFramework;->getPerfHalVersion()D

    move-result-wide v0

    const-wide v2, 0x4002666660000000L

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mUxPerf:Landroid/util/BoostFramework;

    iget-object v4, p2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const/4 v0, 0x0

    filled-new-array {v0}, [I

    move-result-object v8

    const/4 v2, -0x1

    const/16 v3, 0x1081

    const/16 v6, 0x67

    const/4 v7, 0x1

    move v5, p1

    invoke-virtual/range {v1 .. v8}, Landroid/util/BoostFramework;->perfHintAsync(IILjava/lang/String;III[I)V

    goto :goto_0

    :cond_0
    move v5, p1

    iget-object p1, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mUxPerf:Landroid/util/BoostFramework;

    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const/16 v1, 0x67

    const/16 v2, 0x1081

    invoke-virtual {p1, v2, v0, v5, v1}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    goto :goto_0

    :cond_1
    move v5, p1

    goto :goto_0

    :cond_2
    move v5, p1

    invoke-static {}, Lxiaomi/platform/flags/Flags;->xringEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mPerfXRStub:Landroid/perf/PerfXRStub;

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/am/HostingRecord;->isTopApp()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object v6, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mPerfXRStub:Landroid/perf/PerfXRStub;

    const/4 v10, 0x0

    iget-object v11, p2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-wide/16 v7, 0x0

    const/4 v9, 0x3

    invoke-interface/range {v6 .. v11}, Landroid/perf/PerfXRStub;->perfHintAcquireV2(JIILjava/lang/String;)J

    :cond_3
    :goto_0
    return-void
.end method

.method public preserveCrimeScene()Z
    .registers 4

    const-string v0, "persist.sys.stop_uat"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/ScoutHelper;->getProcessCmdline(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.commands.monkey"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lmiui/mqsas/scout/ScoutUtils;->isUatTest()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ScoutHelper;->killProcess([Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->hasStopSelf:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->hasStopSelf:Z

    const-string v0, "ActivityManagerServiceImpl"

    const-string v2, "try to stop system server to stop uat test"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    const/16 v2, 0x13

    invoke-static {v0, v2}, Landroid/os/Process;->sendSignal(II)V

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public recordBroadcastLog(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 11

    const/4 v0, 0x5

    const-string v1, ". Callers="

    const-string v2, " pkg "

    const-string v3, "Sending non-protected broadcast "

    const-string v4, "ActivityManagerServiceImpl"

    if-eqz p1, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " from system "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p3, :cond_1

    const-string v2, "android"

    invoke-virtual {v2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " from system uid "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p4}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public removeAllConnections(ILjava/util/Set;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Lcom/android/server/am/ConnectionRecord;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mConnections:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mConnections:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mConnections:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mConnections:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2, p2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mConnections:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ConnectionRecord;

    iget-object v4, v3, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v4, v4, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v4, v4, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mBindConnections:Ljava/util/Map;

    monitor-enter v2

    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mBindConnections:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mBindConnections:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    goto :goto_1

    :cond_2
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mBindConnections:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mBindConnections:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mBindConnections:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mConnections:Ljava/util/Map;

    monitor-enter v1

    :try_start_2
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mConnections:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mConnections:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mConnections:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    monitor-exit v1

    goto :goto_3

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    :catchall_2
    move-exception v2

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v2

    :cond_6
    :goto_3
    return-void
.end method

.method public removeBinderProxy(Landroid/os/IBinder;I)V
    .registers 5

    invoke-static {}, Lcom/miui/server/greeze/GreezeManagerInternal;->getInstance()Lcom/miui/server/greeze/GreezeManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "IApplicationThread"

    invoke-virtual {v0, p1, p2, v1}, Lcom/miui/server/greeze/GreezeManagerInternal;->removeBinderProxy(Landroid/os/IBinder;ILjava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public removeConnection(ILcom/android/server/am/ConnectionRecord;)V
    .registers 9

    iget-object v0, p2, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mConnections:Ljava/util/Map;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mConnections:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v2

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mConnections:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mConnections:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2

    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mConnections:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    monitor-exit v2

    return-void

    :cond_2
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mConnections:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ConnectionRecord;

    iget-object v5, v4, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v5, v5, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v5, v5, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mBindConnections:Ljava/util/Map;

    monitor-enter v3

    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mBindConnections:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mBindConnections:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mBindConnections:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mBindConnections:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mConnections:Ljava/util/Map;

    monitor-enter v2

    :try_start_2
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mConnections:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mConnections:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mConnections:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    :catchall_2
    move-exception v3

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v3
.end method

.method reportBootEvent()V
    .registers 1

    invoke-static {}, Lmiui/mqsas/sdk/BootEventManager;->getInstance()Lmiui/mqsas/sdk/BootEventManager;

    invoke-static {}, Lmiui/mqsas/sdk/BootEventManager;->reportBootEvent()V

    return-void
.end method

.method public setActiveInstrumentation(Landroid/content/ComponentName;)V
    .registers 6

    const/4 v0, -0x1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    iget v0, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    :cond_1
    iput v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mInstrUid:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    goto :goto_1

    :cond_2
    iput v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mInstrUid:I

    :goto_1
    return-void
.end method

.method public setPackageHoldOn(Lcom/android/server/am/ActivityManagerService;Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 10

    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_0

    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->get()Lcom/android/server/wm/ActivityTaskManagerServiceStub;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->setPackageHoldOn(Lcom/android/server/wm/ActivityTaskManagerService;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v3, "ActivityManagerServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Permission Denial: setPackageHoldOn() not from system uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public setVibratorState(IZ)V
    .registers 5

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mUsingVibratorUids:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mUsingVibratorUids:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public sha256([B)Ljava/lang/String;
    .registers 9

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    move-object v0, v1

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    array-length v3, v1

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    aget-byte v4, v1, v3

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    const/16 v5, 0x30

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    nop

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    const-string v1, ""

    return-object v1
.end method

.method public skipFrozenAppAnr(Landroid/content/pm/ApplicationInfo;ILjava/lang/String;)Z
    .registers 15

    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerServiceImpl;->getGreezeService()Lcom/miui/server/greeze/GreezeManagerInternal;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    iget v3, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v4, "ActivityManagerServiceImpl"

    if-eq p2, v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "skipFrozenAppAnr uid="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " info.uid="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/16 v3, 0x3e8

    if-gt v2, v3, :cond_2

    return v1

    :cond_2
    const-class v3, Lcom/miui/app/smartpower/SmartPowerServiceInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/app/smartpower/SmartPowerServiceInternal;

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    invoke-interface {v3, p1, p2, p3}, Lcom/miui/app/smartpower/SmartPowerServiceInternal;->skipFrozenAppAnr(Landroid/content/pm/ApplicationInfo;ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    return v5

    :cond_3
    invoke-virtual {v0, p2}, Lcom/miui/server/greeze/GreezeManagerInternal;->isUidFrozen(I)Z

    move-result v6

    if-eqz v6, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " matched appid is "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_4
    invoke-static {p2, p3, v0}, Lcom/android/server/am/ActivityManagerServiceImpl;->checkThawTime(ILjava/lang/String;Lcom/miui/server/greeze/GreezeManagerInternal;)Z

    move-result v6

    if-eqz v6, :cond_5

    return v5

    :cond_5
    sget v5, Lcom/miui/server/greeze/GreezeManagerInternal;->GREEZER_MODULE_ALL:I

    invoke-virtual {v0, v5}, Lcom/miui/server/greeze/GreezeManagerInternal;->getFrozenUids(I)[I

    move-result-object v5

    sget v6, Lcom/miui/server/greeze/GreezeManagerInternal;->GREEZER_MODULE_ALL:I

    invoke-virtual {v0, v6}, Lcom/miui/server/greeze/GreezeManagerInternal;->getFrozenPids(I)[I

    move-result-object v6

    array-length v7, v5

    if-lez v7, :cond_6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "frozen uids:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v5}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    :goto_0
    array-length v9, v6

    if-ge v8, v9, :cond_7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "pid: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget v10, v6, v8

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/uid:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget v10, v6, v8

    invoke-static {v10}, Landroid/os/Process;->getUidForPid(I)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "frozen procs: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public skipFrozenServiceTimeout(Lcom/android/server/am/ProcessRecord;Z)Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->greezer:Lcom/miui/server/greeze/GreezeManagerInternal;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->greezer:Lcom/miui/server/greeze/GreezeManagerInternal;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v1}, Lcom/miui/server/greeze/GreezeManagerInternal;->isUidFrozen(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skip Frozen Uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " service Timeout! fg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManagerServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public skipPruneOldTraces()Z
    .registers 2

    invoke-static {}, Lmiui/mqsas/scout/ScoutUtils;->isLibraryTest()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public startLockScreenApp(Landroid/content/Context;)V
    .registers 6

    const-string v0, "config_lockscreen_quick_launch"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/os/HyperOSCustFeatureResolve;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.airfind.lockscreen.FirstScreenOverlayService.ACTIVITY_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.telcelam.lockscreen"

    const-string v2, "com.airfind.lockscreen.FirstScreenOverlayService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "ActivityManagerServiceImpl"

    const-string v3, "startLockScreenApp"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public startProcessLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->callerPackage:Ljava/lang/String;

    const-string v1, "com.xiaomi.xmsf"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.miui.notification"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mAmService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v1, v2}, Lcom/android/server/am/ProcessList;->getUidRecordLOSP(I)Lcom/android/server/am/UidRecord;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/am/UidRecord;->isIdle()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/android/server/am/UidRecord;->isCurAllowListed()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mAmService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v4

    const-string v8, "push-service-launch"

    const/4 v9, 0x0

    const-wide/32 v5, 0xea60

    const/16 v7, 0x65

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/am/ActivityManagerService;->tempAllowlistUidLocked(IJILjava/lang/String;II)V

    :cond_1
    return-void
.end method

.method public syncFontForWebView()V
    .registers 1

    invoke-static {}, Lmiui/util/font/SymlinkUtils;->onAttachApplication()V

    return-void
.end method

.method public uidGoneConnections(I)V
    .registers 9

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mBindConnections:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mBindConnections:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mBindConnections:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    nop

    goto :goto_1

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mConnections:Ljava/util/Map;

    monitor-enter v2

    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mConnections:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ConnectionRecord;

    iget-object v6, v5, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v6, v6, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v6, v6, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v6, p1, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    :cond_3
    goto :goto_3

    :cond_4
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    if-nez v5, :cond_5

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_5
    goto :goto_2

    :cond_6
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerServiceImpl;->mConnections:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    nop

    goto :goto_4

    :cond_7
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.class public Lcom/android/server/am/ProcessManagerService;
.super Lmiui/process/ProcessManagerNative;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ProcessManagerService$MainHandler;,
        Lcom/android/server/am/ProcessManagerService$LocalService;,
        Lcom/android/server/am/ProcessManagerService$ProcessMangaerShellCommand;,
        Lcom/android/server/am/ProcessManagerService$Lifecycle;
    }
.end annotation


# static fields
.field private static final BINDER_MONITOR_FD_PATH:Ljava/lang/String; = "/proc/mi_log/binder_delay"

.field private static final DEBUG:Z = true

.field private static final HOME_PACKAGE:Ljava/lang/String;

.field static final MAX_PROCESS_CONFIG_HISTORY:I = 0x1e

.field static final RESTORE_AI_PROCESSES_INFO_MSG:I = 0x1

.field static final SKIP_PRELOAD_COUNT_LIMIT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ProcessManager"

.field static final USER_OWNER:I = 0x0

.field static final USER_XSPACE:I = 0x3e7

.field private static final USE_INTEGRATED_MEMORY_RECLAIM:Z

.field public static enableProcStartFlag:Z

.field private static final isHomeBoostEnabled:Z

.field private static final mUniReclaimPropEnable:Z


# instance fields
.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mBinderDelayWriter:Ljava/io/FileWriter;

.field private mContext:Landroid/content/Context;

.field private mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field private mForegroundInfoManager:Lcom/android/server/wm/ForegroundInfoManager;

.field final mHandler:Lcom/android/server/am/ProcessManagerService$MainHandler;

.field mHistoryNext:I

.field private final mInternal:Lcom/miui/server/process/ProcessManagerInternal;

.field private mLruProcesses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mMemcgSwapService:Lcom/android/server/am/MiuiMemcgSwapServiceStub;

.field private mMiuiApplicationThreadManager:Lcom/android/server/am/MiuiApplicationThreadManager;

.field private mNotificationManager:Landroid/app/INotificationManager;

.field private mPerfService:Lcom/android/internal/app/IPerfShielder;

.field private mPkms:Landroid/content/pm/PackageManager;

.field private mPreloadAppController:Lcom/android/server/am/PreloadAppControllerImpl;

.field final mProcessConfigHistory:[Lmiui/process/ProcessConfig;

.field private mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

.field private mProcessKiller:Lcom/android/server/am/ProcessKiller;

.field final mProcessManagerThreadId:I

.field private mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

.field private mProcessStarter:Lcom/android/server/am/ProcessStarter;

.field private mQosController:Landroid/urm/QosController;

.field private mSchedBoostService:Lcom/miui/server/rtboost/SchedBoostManagerInternal;

.field final mServiceThread:Lcom/android/server/ServiceThread;

.field private mSmartPowerService:Lcom/miui/app/smartpower/SmartPowerServiceInternal;

.field private mSystemSignatures:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmActivityManagerService(Lcom/android/server/am/ProcessManagerService;)Lcom/android/server/am/ActivityManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBinderDelayWriter(Lcom/android/server/am/ProcessManagerService;)Ljava/io/FileWriter;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/ProcessManagerService;->mBinderDelayWriter:Ljava/io/FileWriter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmForegroundInfoManager(Lcom/android/server/am/ProcessManagerService;)Lcom/android/server/wm/ForegroundInfoManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/ProcessManagerService;->mForegroundInfoManager:Lcom/android/server/wm/ForegroundInfoManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMiuiApplicationThreadManager(Lcom/android/server/am/ProcessManagerService;)Lcom/android/server/am/MiuiApplicationThreadManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/ProcessManagerService;->mMiuiApplicationThreadManager:Lcom/android/server/am/MiuiApplicationThreadManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreloadAppController(Lcom/android/server/am/ProcessManagerService;)Lcom/android/server/am/PreloadAppControllerImpl;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/ProcessManagerService;->mPreloadAppController:Lcom/android/server/am/PreloadAppControllerImpl;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProcessPolicy(Lcom/android/server/am/ProcessManagerService;)Lcom/android/server/am/ProcessPolicy;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProcessStarter(Lcom/android/server/am/ProcessManagerService;)Lcom/android/server/am/ProcessStarter;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/ProcessManagerService;->mProcessStarter:Lcom/android/server/am/ProcessStarter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmQosController(Lcom/android/server/am/ProcessManagerService;)Landroid/urm/QosController;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/ProcessManagerService;->mQosController:Landroid/urm/QosController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgenerateRunningProcessInfo(Lcom/android/server/am/ProcessManagerService;Lcom/android/server/am/ProcessRecord;)Lmiui/process/RunningProcessInfo;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/ProcessManagerService;->generateRunningProcessInfo(Lcom/android/server/am/ProcessRecord;)Lmiui/process/RunningProcessInfo;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misAppHasForegroundServices(Lcom/android/server/am/ProcessManagerService;Lcom/android/server/am/ProcessRecord;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/ProcessManagerService;->isAppHasForegroundServices(Lcom/android/server/am/ProcessRecord;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mnotifyAmsProcessKill(Lcom/android/server/am/ProcessManagerService;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ProcessManagerService;->notifyAmsProcessKill(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyProcessDied(Lcom/android/server/am/ProcessManagerService;Lcom/android/server/am/ProcessRecord;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/ProcessManagerService;->notifyProcessDied(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyProcessStarted(Lcom/android/server/am/ProcessManagerService;Lcom/android/server/am/ProcessRecord;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/ProcessManagerService;->notifyProcessStarted(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartProcessParallelized(Lcom/android/server/am/ProcessManagerService;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroid/content/ComponentName;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/ProcessManagerService;->startProcessParallelized(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroid/content/ComponentName;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 4

    nop

    const-string v0, "persist.sys.turbosched.home_boost"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ProcessManagerService;->isHomeBoostEnabled:Z

    nop

    const-string v0, "ro.miui.product.home"

    const-string v2, "com.miui.home"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ProcessManagerService;->HOME_PACKAGE:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/ProcessManagerService;->enableProcStartFlag:Z

    nop

    const-string v2, "persist.sys.umms"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/server/am/ProcessManagerService;->mUniReclaimPropEnable:Z

    nop

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "persist.sys.mms.use_integrated_memory_reclaim"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v1, v0

    :cond_1
    sput-boolean v1, Lcom/android/server/am/ProcessManagerService;->USE_INTEGRATED_MEMORY_RECLAIM:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    invoke-direct {p0}, Lmiui/process/ProcessManagerNative;-><init>()V

    const/16 v0, 0x1e

    new-array v0, v0, [Lmiui/process/ProcessConfig;

    iput-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mProcessConfigHistory:[Lmiui/process/ProcessConfig;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/ProcessManagerService;->mHistoryNext:I

    iput-object p1, p0, Lcom/android/server/am/ProcessManagerService;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mContext:Landroid/content/Context;

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mNotificationManager:Landroid/app/INotificationManager;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityManagerService;

    iput-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mContext:Landroid/content/Context;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mPkms:Landroid/content/pm/PackageManager;

    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList;->getLruProcessesLOSP()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mLruProcesses:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/ServiceThread;

    const-string v1, "ProcessManager"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mServiceThread:Lcom/android/server/ServiceThread;

    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mServiceThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    new-instance v0, Lcom/android/server/am/ProcessManagerService$MainHandler;

    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mServiceThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/ProcessManagerService$MainHandler;-><init>(Lcom/android/server/am/ProcessManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mHandler:Lcom/android/server/am/ProcessManagerService$MainHandler;

    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mServiceThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->getThreadId()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ProcessManagerService;->mProcessManagerThreadId:I

    invoke-static {}, Lcom/android/server/am/PreloadAppControllerImpl;->getInstance()Lcom/android/server/am/PreloadAppControllerImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mPreloadAppController:Lcom/android/server/am/PreloadAppControllerImpl;

    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mPreloadAppController:Lcom/android/server/am/PreloadAppControllerImpl;

    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/am/ProcessManagerService;->mServiceThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/server/am/PreloadAppControllerImpl;->init(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessManagerService;Lcom/android/server/ServiceThread;)V

    new-instance v0, Lcom/android/server/am/ProcessKiller;

    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/am/ProcessKiller;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mProcessKiller:Lcom/android/server/am/ProcessKiller;

    new-instance v0, Lcom/android/server/am/ProcessPolicy;

    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/am/ProcessManagerService;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v3, p0, Lcom/android/server/am/ProcessManagerService;->mServiceThread:Lcom/android/server/ServiceThread;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/server/am/ProcessPolicy;-><init>(Lcom/android/server/am/ProcessManagerService;Lcom/android/server/am/ActivityManagerService;Landroid/view/accessibility/AccessibilityManager;Lcom/android/server/ServiceThread;)V

    iput-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    new-instance v0, Lcom/android/server/am/ProcessStarter;

    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/am/ProcessManagerService;->mHandler:Lcom/android/server/am/ProcessManagerService$MainHandler;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/am/ProcessStarter;-><init>(Lcom/android/server/am/ProcessManagerService;Lcom/android/server/am/ActivityManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mProcessStarter:Lcom/android/server/am/ProcessStarter;

    invoke-static {}, Lcom/android/server/am/PreStartFeedbackImpl;->get()Lcom/android/server/am/PreStartFeedbackImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/ProcessManagerService;->mServiceThread:Lcom/android/server/ServiceThread;

    iget-object v3, p0, Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/android/server/am/PreStartFeedbackImpl;->init(Landroid/content/Context;Lcom/android/server/ServiceThread;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessManagerService;)V

    invoke-static {}, Lcom/android/server/power/stats/BatteryStatsManagerStub;->getInstance()Lcom/android/server/power/stats/BatteryStatsManagerStub;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    invoke-interface {v0, v1}, Lcom/android/server/power/stats/BatteryStatsManagerStub;->setActiveCallback(Lcom/android/server/power/stats/BatteryStatsManagerStub$ActiveCallback;)V

    new-instance v0, Lcom/android/server/am/MiuiApplicationThreadManager;

    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/am/MiuiApplicationThreadManager;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mMiuiApplicationThreadManager:Lcom/android/server/am/MiuiApplicationThreadManager;

    new-instance v0, Lcom/android/server/wm/ForegroundInfoManager;

    invoke-direct {v0, p0}, Lcom/android/server/wm/ForegroundInfoManager;-><init>(Lcom/android/server/am/ProcessManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mForegroundInfoManager:Lcom/android/server/wm/ForegroundInfoManager;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessManagerService;->systemReady()V

    new-instance v0, Lcom/android/server/am/ProcessManagerService$LocalService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/ProcessManagerService$LocalService;-><init>(Lcom/android/server/am/ProcessManagerService;Lcom/android/server/am/ProcessManagerService-IA;)V

    iput-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mInternal:Lcom/miui/server/process/ProcessManagerInternal;

    const-class v0, Lcom/miui/server/process/ProcessManagerInternal;

    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mInternal:Lcom/miui/server/process/ProcessManagerInternal;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    const-class v0, Lcom/miui/app/smartpower/SmartPowerServiceInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/app/smartpower/SmartPowerServiceInternal;

    iput-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mSmartPowerService:Lcom/miui/app/smartpower/SmartPowerServiceInternal;

    invoke-virtual {p0}, Lcom/android/server/am/ProcessManagerService;->probeCgroupVersion()V

    new-instance v0, Lcom/android/internal/os/ProcessCpuTracker;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/internal/os/ProcessCpuTracker;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    new-instance v0, Landroid/urm/QosController;

    invoke-direct {v0}, Landroid/urm/QosController;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mQosController:Landroid/urm/QosController;

    return-void
.end method

.method private addConfigToHistory(Lmiui/process/ProcessConfig;)V
    .registers 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lmiui/process/ProcessConfig;->setKillingClockTime(J)V

    iget v0, p0, Lcom/android/server/am/ProcessManagerService;->mHistoryNext:I

    const/4 v1, 0x1

    const/16 v2, 0x1e

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/am/ProcessManagerService;->ringAdvance(III)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ProcessManagerService;->mHistoryNext:I

    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mProcessConfigHistory:[Lmiui/process/ProcessConfig;

    iget v1, p0, Lcom/android/server/am/ProcessManagerService;->mHistoryNext:I

    aput-object p1, v0, v1

    return-void
.end method

.method private fillRunningProcessInfoList(Ljava/util/List;Lcom/android/server/am/ProcessRecord;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmiui/process/RunningProcessInfo;",
            ">;",
            "Lcom/android/server/am/ProcessRecord;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/android/server/am/ProcessManagerService;->generateRunningProcessInfo(Lcom/android/server/am/ProcessRecord;)Lmiui/process/RunningProcessInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private generateActiveUidInfoLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessPolicy$ActiveUidRecord;)Lmiui/process/ActiveUidInfo;
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessErrorStateRecord;->isCrashing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessErrorStateRecord;->isNotResponding()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lmiui/process/ActiveUidInfo;

    invoke-direct {v1}, Lmiui/process/ActiveUidInfo;-><init>()V

    move-object v0, v1

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, v0, Lmiui/process/ActiveUidInfo;->packageName:Ljava/lang/String;

    iget v1, p2, Lcom/android/server/am/ProcessPolicy$ActiveUidRecord;->uid:I

    iput v1, v0, Lmiui/process/ActiveUidInfo;->uid:I

    iget v1, p2, Lcom/android/server/am/ProcessPolicy$ActiveUidRecord;->flag:I

    iput v1, v0, Lmiui/process/ActiveUidInfo;->flag:I

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v1

    iput v1, v0, Lmiui/process/ActiveUidInfo;->curAdj:I

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v1

    iput v1, v0, Lmiui/process/ActiveUidInfo;->curProcState:I

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessServiceRecord;->hasForegroundServices()Z

    move-result v1

    iput-boolean v1, v0, Lmiui/process/ActiveUidInfo;->foregroundServices:Z

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getUidRecord()Lcom/android/server/am/UidRecord;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/UidRecord;->getLastBackgroundTime()J

    move-result-wide v1

    iput-wide v1, v0, Lmiui/process/ActiveUidInfo;->lastBackgroundTime:J

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getUidRecord()Lcom/android/server/am/UidRecord;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/UidRecord;->getNumOfProcs()I

    move-result v1

    iput v1, v0, Lmiui/process/ActiveUidInfo;->numProcs:I

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmiui/process/ActiveUidInfo;->pkgList:[Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method private generateRunningProcessInfo(Lcom/android/server/am/ProcessRecord;)Lmiui/process/RunningProcessInfo;
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessErrorStateRecord;->isCrashing()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessErrorStateRecord;->isNotResponding()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lmiui/process/RunningProcessInfo;

    invoke-direct {v1}, Lmiui/process/RunningProcessInfo;-><init>()V

    move-object v0, v1

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iput-object v1, v0, Lmiui/process/RunningProcessInfo;->mProcessName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v1

    iput v1, v0, Lmiui/process/RunningProcessInfo;->mPid:I

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iput v1, v0, Lmiui/process/RunningProcessInfo;->mUid:I

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v1

    iput v1, v0, Lmiui/process/RunningProcessInfo;->mAdj:I

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v1

    iput v1, v0, Lmiui/process/RunningProcessInfo;->mProcState:I

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->hasForegroundActivities()Z

    move-result v1

    iput-boolean v1, v0, Lmiui/process/RunningProcessInfo;->mHasForegroundActivities:Z

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessServiceRecord;->hasForegroundServices()Z

    move-result v1

    iput-boolean v1, v0, Lmiui/process/RunningProcessInfo;->mHasForegroundServices:Z

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmiui/process/RunningProcessInfo;->mPkgList:[Ljava/lang/String;

    iget-boolean v1, v0, Lmiui/process/RunningProcessInfo;->mHasForegroundServices:Z

    if-nez v1, :cond_1

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessServiceRecord;->getForegroundServiceTypes()I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, v0, Lmiui/process/RunningProcessInfo;->mLocationForeground:Z

    :cond_2
    return-object v0
.end method

.method private getAppNotificationWithFlag(Ljava/lang/String;II)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mNotificationManager:Landroid/app/INotificationManager;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-interface {v1, p1, v2}, Landroid/app/INotificationManager;->getAppActiveNotifications(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/StatusBarNotification;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget v6, v5, Landroid/app/Notification;->flags:I

    and-int/2addr v6, p3

    if-eqz v6, :cond_1

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :cond_2
    goto :goto_2

    :cond_3
    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    :goto_2
    return-object v0
.end method

.method private getKillReason(I)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0  #0x8, 0x9, 0x13, 0x14, 0x15, 0x16
    const-string v0, "Unknown"

    goto :goto_0

    :pswitch_1  #0x17
    const-string v0, "BackCoverClosedClean"

    goto :goto_0

    :pswitch_2  #0x12
    const-string v0, "DisplaySizeChanged"

    goto :goto_0

    :pswitch_3  #0x11
    const-string v0, "AutoLockOffCleanByPriority"

    goto :goto_0

    :pswitch_4  #0x10
    const-string v0, "AutoSystemAbnormalClean"

    goto :goto_0

    :pswitch_5  #0xf
    const-string v0, "AutoLockOffClean"

    goto :goto_0

    :pswitch_6  #0xe
    const-string v0, "AutoSleepClean"

    goto :goto_0

    :pswitch_7  #0xd
    const-string v0, "AutoIdleKill"

    goto :goto_0

    :pswitch_8  #0xc
    const-string v0, "AutoThermalKill"

    goto :goto_0

    :pswitch_9  #0xb
    const-string v0, "AutoPowerKill"

    goto :goto_0

    :pswitch_a  #0xa
    const-string v0, "UserDefined"

    goto :goto_0

    :pswitch_b  #0x7
    const-string v0, "SwipeUpClean"

    goto :goto_0

    :pswitch_c  #0x6
    const-string v0, "GarbageClean"

    goto :goto_0

    :pswitch_d  #0x5
    const-string v0, "OptimizationClean"

    goto :goto_0

    :pswitch_e  #0x4
    const-string v0, "GameClean"

    goto :goto_0

    :pswitch_f  #0x3
    const-string v0, "LockScreenClean"

    goto :goto_0

    :pswitch_10  #0x2
    const-string v0, "ForceClean"

    goto :goto_0

    :pswitch_11  #0x1
    const-string v0, "OneKeyClean"

    nop

    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11  #00000001
        :pswitch_10  #00000002
        :pswitch_f  #00000003
        :pswitch_e  #00000004
        :pswitch_d  #00000005
        :pswitch_c  #00000006
        :pswitch_b  #00000007
        :pswitch_0  #00000008
        :pswitch_0  #00000009
        :pswitch_a  #0000000a
        :pswitch_9  #0000000b
        :pswitch_8  #0000000c
        :pswitch_7  #0000000d
        :pswitch_6  #0000000e
        :pswitch_5  #0000000f
        :pswitch_4  #00000010
        :pswitch_3  #00000011
        :pswitch_2  #00000012
        :pswitch_0  #00000013
        :pswitch_0  #00000014
        :pswitch_0  #00000015
        :pswitch_0  #00000016
        :pswitch_1  #00000017
    .end packed-switch
.end method

.method private getPackageNameByPid(I)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessManagerService;->getProcessRecordByPid(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private increaseRecordCount(Ljava/lang/String;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v0, v1

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private isAppHasForegroundServices(Lcom/android/server/am/ProcessRecord;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessServiceRecord;->hasForegroundServices()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isPackageInList(Ljava/lang/String;I)Z
    .registers 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lmiui/enterprise/ApplicationHelperStub;->getInstance()Lmiui/enterprise/IApplicationHelper;

    move-result-object v1

    invoke-interface {v1, p1}, Lmiui/enterprise/IApplicationHelper;->isKeepLiveWhiteApp(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    invoke-virtual {v1, p2}, Lcom/android/server/am/ProcessPolicy;->getWhiteList(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    return v2

    :cond_2
    goto :goto_0

    :cond_3
    return v0
.end method

.method private isSystemApp(I)Z
    .registers 4

    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessManagerService;->getProcessRecordByPid(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/am/ProcessManagerService;->isSystemApp(Lcom/android/server/am/ProcessRecord;)Z

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private isSystemApp(Lcom/android/server/am/ProcessRecord;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x81

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    return v0
.end method

.method private isUidSystem(I)Z
    .registers 3

    const v0, 0x186a0

    rem-int/2addr p1, v0

    const/16 v0, 0x2710

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private notifyAmsProcessKill(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .registers 8

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "notifyProcessDied"

    invoke-static {v1, v0}, Lcom/android/server/camera/CameraOpt;->callMethod(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mPreloadAppController:Lcom/android/server/am/PreloadAppControllerImpl;

    invoke-virtual {v1, p2, v0}, Lcom/android/server/am/PreloadAppControllerImpl;->onProcessKilled(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mProcessStarter:Lcom/android/server/am/ProcessStarter;

    invoke-virtual {v1, v0, p2}, Lcom/android/server/am/ProcessStarter;->recordKillProcessIfNeeded(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/server/am/ProcessManagerService;->USE_INTEGRATED_MEMORY_RECLAIM:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mProcessStarter:Lcom/android/server/am/ProcessStarter;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/am/ProcessStarter;->recordKillProcessIfNeededForImr(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    :cond_1
    const-class v1, Lcom/miui/server/migard/MiGardInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/server/migard/MiGardInternal;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v3

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, p2}, Lcom/miui/server/migard/MiGardInternal;->onProcessKilled(IILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/MiProcessTracker;->getInstance()Lcom/android/server/am/MiProcessTracker;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/server/am/MiProcessTracker;->recordAmKillProcess(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/PreStartFeedbackStub;->getInstance()Lcom/android/server/am/PreStartFeedbackStub;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, p1, v3, p2}, Lcom/android/server/am/PreStartFeedbackStub;->reportProcDiedLocked(Lcom/android/server/am/ProcessRecord;ZLjava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method private notifyProcessDied(Lcom/android/server/am/ProcessRecord;)V
    .registers 10

    if-eqz p1, :cond_3

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-static {}, Lcom/android/server/am/OomAdjusterImpl;->getInstance()Lcom/android/server/am/OomAdjusterImpl;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/am/OomAdjusterImpl;->notifyProcessDied(Lcom/android/server/am/ProcessRecord;)V

    iget-object v3, p0, Lcom/android/server/am/ProcessManagerService;->mProcessStarter:Lcom/android/server/am/ProcessStarter;

    invoke-virtual {v3, v0, v2, v1}, Lcom/android/server/am/ProcessStarter;->restartCameraIfNeeded(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/android/server/am/ProcessManagerService;->mProcessStarter:Lcom/android/server/am/ProcessStarter;

    invoke-virtual {v3, v0, v2, v1}, Lcom/android/server/am/ProcessStarter;->recordDiedProcessIfNeeded(Ljava/lang/String;Ljava/lang/String;I)V

    const-class v3, Lcom/miui/server/migard/MiGardInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/server/migard/MiGardInternal;

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/miui/server/migard/MiGardInternal;->notifyProcessDied(I)V

    :cond_1
    iget v4, p1, Lcom/android/server/am/ProcessRecord;->mPid:I

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/server/am/ProcessManagerService;->enableBinderMonitor(II)V

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v7, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    filled-new-array {v4, v5, v6, v7}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "notifyProcessDied"

    invoke-static {v5, v4}, Lcom/android/server/camera/CameraOpt;->callMethod(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/miui/server/damon/MiuiDamonServiceStub;->getInstance()Lcom/miui/server/damon/MiuiDamonServiceStub;

    move-result-object v4

    invoke-interface {v4, p1}, Lcom/miui/server/damon/MiuiDamonServiceStub;->reportAppDied(Lcom/android/server/am/ProcessRecord;)V

    iget-object v4, p0, Lcom/android/server/am/ProcessManagerService;->mPerfService:Lcom/android/internal/app/IPerfShielder;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/am/ProcessManagerService;->mPerfService:Lcom/android/internal/app/IPerfShielder;

    check-cast v4, Lcom/miui/server/PerfShielderService;

    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/miui/server/PerfShielderService;->onProcessDied(Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method private notifyProcessStarted(Lcom/android/server/am/ProcessRecord;)V
    .registers 7

    const-class v0, Lcom/miui/server/migard/MiGardInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/server/migard/MiGardInternal;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v2

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/miui/server/migard/MiGardInternal;->onProcessStart(IILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mPerfService:Lcom/android/internal/app/IPerfShielder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mPerfService:Lcom/android/internal/app/IPerfShielder;

    check-cast v1, Lcom/miui/server/PerfShielderService;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/miui/server/PerfShielderService;->onProcessStart(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private reduceRecordCountDelay(Ljava/lang/String;Ljava/util/Map;J)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;J)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mHandler:Lcom/android/server/am/ProcessManagerService$MainHandler;

    new-instance v1, Lcom/android/server/am/ProcessManagerService$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/am/ProcessManagerService$1;-><init>(Lcom/android/server/am/ProcessManagerService;Ljava/util/Map;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p3, p4}, Lcom/android/server/am/ProcessManagerService$MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private final ringAdvance(III)I
    .registers 5

    add-int/2addr p1, p2

    if-gez p1, :cond_0

    add-int/lit8 v0, p3, -0x1

    return v0

    :cond_0
    if-lt p1, p3, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    return p1
.end method

.method private startProcessParallelized(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroid/content/ComponentName;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mProcessStarter:Lcom/android/server/am/ProcessStarter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/ProcessStarter;->startProcessParallelized(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Landroid/content/ComponentName;)V

    return-void
.end method


# virtual methods
.method public addMiuiApplicationThread(Lmiui/process/IMiuiApplicationThread;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mMiuiApplicationThreadManager:Lcom/android/server/am/MiuiApplicationThreadManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/MiuiApplicationThreadManager;->addMiuiApplicationThread(Lmiui/process/IMiuiApplicationThread;I)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: ProcessManager.addMiuiApplicationThread() from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProcessManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public beginSchedThreads([IJIII)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/am/ProcessManagerService;->checkPermission()Z

    move-result v0

    const-string v2, "ProcessManager"

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/am/ProcessManagerService;->checkSystemSignature()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x3

    if-ne p5, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission Denial: ProcessManager.beginSchedThreads() from pid="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", uid="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mSchedBoostService:Lcom/miui/server/rtboost/SchedBoostManagerInternal;

    if-nez v0, :cond_2

    const-class v0, Lcom/miui/server/rtboost/SchedBoostManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/server/rtboost/SchedBoostManagerInternal;

    iput-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mSchedBoostService:Lcom/miui/server/rtboost/SchedBoostManagerInternal;

    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mSchedBoostService:Lcom/miui/server/rtboost/SchedBoostManagerInternal;

    if-eqz v0, :cond_a

    if-eqz p1, :cond_9

    array-length v0, p1

    const/4 v3, 0x1

    if-ge v0, v3, :cond_3

    goto :goto_3

    :cond_3
    if-gez p4, :cond_4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    move v6, v0

    goto :goto_1

    :cond_4
    move v6, p4

    :goto_1
    invoke-virtual {p0, v6}, Lcom/android/server/am/ProcessManagerService;->getProcessRecordByPid(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v7

    const/4 v0, 0x0

    if-eqz v7, :cond_5

    iget-object v4, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_5

    iget-object v4, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object v4, v0

    goto :goto_2

    :cond_5
    move-object v4, v0

    :goto_2
    sget-boolean v0, Lcom/android/server/am/ProcessManagerService;->isHomeBoostEnabled:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x4

    if-eq p5, v0, :cond_6

    if-ne p5, v3, :cond_7

    :cond_6
    if-lez v6, :cond_7

    sget-object v0, Lcom/android/server/am/ProcessManagerService;->HOME_PACKAGE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lmiui/turbosched/TurboSchedMonitor;->getInstance()Lmiui/turbosched/TurboSchedMonitor;

    move-result-object v0

    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->getRenderThreadTid()I

    move-result v3

    const/16 v8, 0x320

    invoke-virtual {v0, v6, v3, v8}, Lmiui/turbosched/TurboSchedMonitor;->boostHomeAnimation(III)V

    :cond_7
    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mSchedBoostService:Lcom/miui/server/rtboost/SchedBoostManagerInternal;

    invoke-interface {v0, v4}, Lcom/miui/server/rtboost/SchedBoostManagerInternal;->checkCallerPermission(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_8

    const-string v0, "beginSchedThreads is not Enabled"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8
    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mSchedBoostService:Lcom/miui/server/rtboost/SchedBoostManagerInternal;

    move-object v1, p1

    move-wide v2, p2

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/miui/server/rtboost/SchedBoostManagerInternal;->beginSchedThreads([IJLjava/lang/String;I)V

    goto :goto_4

    :cond_9
    :goto_3
    return-void

    :cond_a
    move v6, p4

    :goto_4
    return-void
.end method

.method public checkAppHeapSize(Ljava/lang/String;IJJJ)V
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/am/SystemPressureController;->getInstance()Lcom/android/server/am/SystemPressureController;

    move-result-object v0

    iget-object v1, v0, Lcom/android/server/am/SystemPressureController;->mProcessCleaner:Lcom/android/server/am/ProcessMemoryCleaner;

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    move-wide/from16 v8, p7

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/am/ProcessMemoryCleaner;->checkAppHeapSize(Ljava/lang/String;IJJJ)V

    :cond_0
    return-void
.end method

.method checkPermission()Z
    .registers 7

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x7d0

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    return v3

    :cond_0
    const/16 v2, 0x2710

    const/4 v4, 0x1

    if-ge v1, v2, :cond_1

    return v4

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessManagerService;->getProcessRecordByPid(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/am/ProcessManagerService;->isSystemApp(Lcom/android/server/am/ProcessRecord;)Z

    move-result v5

    if-eqz v5, :cond_2

    return v4

    :cond_2
    return v3
.end method

.method checkSystemSignature()Z
    .registers 3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mSmartPowerService:Lcom/miui/app/smartpower/SmartPowerServiceInternal;

    invoke-interface {v1, v0}, Lcom/miui/app/smartpower/SmartPowerServiceInternal;->checkSystemSignature(I)Z

    move-result v1

    return v1
.end method

.method public disableAutoStartProc()V
    .registers 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/ProcessManagerService;->enableProcStartFlag:Z

    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10

    invoke-virtual {p0}, Lcom/android/server/am/ProcessManagerService;->checkPermission()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump ProcessManager from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "Process Config:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ProcessManagerService;->mHistoryNext:I

    iget v1, p0, Lcom/android/server/am/ProcessManagerService;->mHistoryNext:I

    const/4 v2, 0x0

    :cond_1
    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/server/am/ProcessManagerService;->mProcessConfigHistory:[Lmiui/process/ProcessConfig;

    aget-object v4, v4, v1

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    const-string v5, "  #"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4}, Lmiui/process/ProcessConfig;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v5, 0x1e

    invoke-direct {p0, v1, v3, v5}, Lcom/android/server/am/ProcessManagerService;->ringAdvance(III)I

    move-result v1

    nop

    add-int/lit8 v2, v2, 0x1

    if-ne v1, v0, :cond_1

    :goto_0
    iget-object v3, p0, Lcom/android/server/am/ProcessManagerService;->mForegroundInfoManager:Lcom/android/server/wm/ForegroundInfoManager;

    const-string v4, "    "

    invoke-virtual {v3, p2, v4}, Lcom/android/server/wm/ForegroundInfoManager;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    invoke-virtual {v3, p2, v4}, Lcom/android/server/am/ProcessPolicy;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/PreStartFeedbackStub;->getInstance()Lcom/android/server/am/PreStartFeedbackStub;

    move-result-object v3

    invoke-interface {v3, p2, v4}, Lcom/android/server/am/PreStartFeedbackStub;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public enableAutoStartProc()V
    .registers 2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/ProcessManagerService;->enableProcStartFlag:Z

    return-void
.end method

.method public enableBinderMonitor(II)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mHandler:Lcom/android/server/am/ProcessManagerService$MainHandler;

    new-instance v1, Lcom/android/server/am/ProcessManagerService$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/am/ProcessManagerService$7;-><init>(Lcom/android/server/am/ProcessManagerService;II)V

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public foregroundInfoChanged(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mProcessStarter:Lcom/android/server/am/ProcessStarter;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ProcessStarter;->foregroundActivityChanged(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/OomAdjusterImpl;->getInstance()Lcom/android/server/am/OomAdjusterImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/OomAdjusterImpl;->foregroundInfoChanged(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)V

    return-void
.end method

.method public frequentlyKilledForPreload(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mProcessStarter:Lcom/android/server/am/ProcessStarter;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ProcessStarter;->frequentlyKilledForPreload(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getActiveUidInfo(I)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lmiui/process/ActiveUidInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/am/ProcessManagerService;->checkPermission()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ProcessPolicy;->getActiveUidRecordList(I)Ljava/util/List;

    move-result-object v0

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iget-object v2, p0, Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessPolicy$ActiveUidRecord;

    iget v5, v4, Lcom/android/server/am/ProcessPolicy$ActiveUidRecord;->uid:I

    invoke-virtual {p0, v5}, Lcom/android/server/am/ProcessManagerService;->getProcessRecordByUid(I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    iget v8, v4, Lcom/android/server/am/ProcessPolicy$ActiveUidRecord;->uid:I

    invoke-virtual {v1, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmiui/process/ActiveUidInfo;

    move-object v9, v8

    if-eqz v8, :cond_1

    iget-object v8, v7, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v8

    iget v10, v9, Lmiui/process/ActiveUidInfo;->curAdj:I

    if-ge v8, v10, :cond_0

    iget-object v8, v7, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v8

    iput v8, v9, Lmiui/process/ActiveUidInfo;->curAdj:I

    :cond_0
    iget-object v8, v7, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v8

    iget v10, v9, Lmiui/process/ActiveUidInfo;->curProcState:I

    if-ge v8, v10, :cond_2

    iget-object v8, v7, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v8

    iput v8, v9, Lmiui/process/ActiveUidInfo;->curProcState:I

    goto :goto_2

    :cond_1
    invoke-direct {p0, v7, v4}, Lcom/android/server/am/ProcessManagerService;->generateActiveUidInfoLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessPolicy$ActiveUidRecord;)Lmiui/process/ActiveUidInfo;

    move-result-object v8

    if-eqz v8, :cond_2

    iget v9, v4, Lcom/android/server/am/ProcessPolicy$ActiveUidRecord;->uid:I

    invoke-virtual {v1, v9, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    :goto_2
    goto :goto_1

    :cond_3
    goto :goto_0

    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/process/ActiveUidInfo;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    monitor-exit v2

    return-object v3

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: ProcessManager.getActiveUidInfo() from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProcessManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getAutoStartProcFlag()Z
    .registers 2

    sget-boolean v0, Lcom/android/server/am/ProcessManagerService;->enableProcStartFlag:Z

    return v0
.end method

.method public getForegroundApplicationThread()Lmiui/process/IMiuiApplicationThread;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/am/ProcessManagerService;->checkPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/wm/WindowProcessUtils;->getTopRunningPidLocked()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mMiuiApplicationThreadManager:Lcom/android/server/am/MiuiApplicationThreadManager;

    invoke-virtual {v1, v0}, Lcom/android/server/am/MiuiApplicationThreadManager;->getMiuiApplicationThread(I)Lmiui/process/IMiuiApplicationThread;

    move-result-object v1

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: ProcessManager.getForegroundApplicationThread() from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProcessManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getForegroundInfo()Lmiui/process/ForegroundInfo;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/am/ProcessManagerService;->checkPermission()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/am/ProcessManagerService;->checkSystemSignature()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/am/ProcessManagerService;->isWhiteListForForegroundChange()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: ProcessManager.getForegroundInfo() from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProcessManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mForegroundInfoManager:Lcom/android/server/wm/ForegroundInfoManager;

    invoke-virtual {v0}, Lcom/android/server/wm/ForegroundInfoManager;->getForegroundInfo()Lmiui/process/ForegroundInfo;

    move-result-object v0

    return-object v0
.end method

.method public getInternal()Lcom/miui/server/process/ProcessManagerInternal;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mInternal:Lcom/miui/server/process/ProcessManagerInternal;

    return-object v0
.end method

.method protected getKillReason(Lmiui/process/ProcessConfig;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->getPolicy()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->getReason()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/am/ProcessManagerService;->getKillReason(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getLockedApplication(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ProcessPolicy;->getLockedApplication(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getProcessCpuState()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmiui/process/ProcessCpuState;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v1}, Lcom/android/internal/os/ProcessCpuTracker;->update()V

    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v1}, Lcom/android/internal/os/ProcessCpuTracker;->countWorkingStats()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lcom/android/server/am/ProcessManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v3, v2}, Lcom/android/internal/os/ProcessCpuTracker;->getWorkingStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;

    move-result-object v3

    new-instance v4, Lmiui/process/ProcessCpuState;

    invoke-direct {v4}, Lmiui/process/ProcessCpuState;-><init>()V

    iget v5, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    iget v6, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget-wide v6, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_uptime:J

    long-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Lmiui/process/ProcessCpuState;->setCpuUsage(F)V

    iget v5, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v4, v5}, Lmiui/process/ProcessCpuState;->setPid(I)V

    iget v5, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    invoke-virtual {v4, v5}, Lmiui/process/ProcessCpuState;->setUid(I)V

    iget-object v5, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lmiui/process/ProcessCpuState;->setProcessName(Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getProcessKiller()Lcom/android/server/am/ProcessKiller;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mProcessKiller:Lcom/android/server/am/ProcessKiller;

    return-object v0
.end method

.method getProcessPolicy()Lcom/android/server/am/ProcessPolicy;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    return-object v0
.end method

.method public getProcessRecord(Ljava/lang/String;)Lcom/android/server/am/ProcessRecord;
    .registers 6

    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/am/ProcessManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    monitor-exit v0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getProcessRecord(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;
    .registers 7

    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/am/ProcessManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    if-ne v3, p2, :cond_0

    monitor-exit v0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getProcessRecordByPid(I)Lcom/android/server/am/ProcessRecord;
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getProcessRecordByUid(I)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ProcessManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    iget-object v3, p0, Lcom/android/server/am/ProcessManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v4, p1, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, -0x1

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

.method public getProcessRecordList(Ljava/lang/String;I)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ProcessManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    iget-object v3, p0, Lcom/android/server/am/ProcessManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, v3, Lcom/android/server/am/ProcessRecord;->userId:I

    if-ne v4, p2, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, -0x1

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

.method public getProcessRecordListByPackageAndUid(Ljava/lang/String;I)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ProcessManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    iget-object v3, p0, Lcom/android/server/am/ProcessManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v4, p2, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, -0x1

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

.method public getRenderThreadTidByPid(I)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/am/ProcessManagerService;->checkPermission()Z

    move-result v0

    const-string v1, "ProcessManager"

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRenderThreadTidByPid, caller="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/android/server/am/ProcessListStubImpl;->getInstance()Lcom/android/server/am/ProcessListStubImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ProcessListStubImpl;->getSystemRenderThreadTid()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessManagerService;->getProcessRecordByPid(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getRenderThreadTid()I

    move-result v1

    return v1

    :cond_1
    const/4 v1, 0x0

    return v1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: ProcessManager.updateConfig() from pid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", uid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getRunningProcessInfo(IILjava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lmiui/process/RunningProcessInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/am/ProcessManagerService;->checkPermission()Z

    move-result v0

    if-eqz v0, :cond_7

    if-gtz p5, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p5

    move v0, p5

    goto :goto_0

    :cond_0
    move v0, p5

    :goto_0
    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    move-object v1, p5

    iget-object v2, p0, Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    if-lez p1, :cond_1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessManagerService;->getProcessRecordByPid(I)Lcom/android/server/am/ProcessRecord;

    move-result-object p5

    invoke-direct {p0, v1, p5}, Lcom/android/server/am/ProcessManagerService;->fillRunningProcessInfoList(Ljava/util/List;Lcom/android/server/am/ProcessRecord;)V

    monitor-exit v2

    return-object v1

    :cond_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-nez p5, :cond_2

    invoke-virtual {p0, p4, v0}, Lcom/android/server/am/ProcessManagerService;->getProcessRecord(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    move-result-object p5

    invoke-direct {p0, v1, p5}, Lcom/android/server/am/ProcessManagerService;->fillRunningProcessInfoList(Ljava/util/List;Lcom/android/server/am/ProcessRecord;)V

    monitor-exit v2

    return-object v1

    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-nez p5, :cond_4

    if-lez p2, :cond_4

    invoke-virtual {p0, p3, p2}, Lcom/android/server/am/ProcessManagerService;->getProcessRecordListByPackageAndUid(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p5

    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    invoke-direct {p0, v1, v4}, Lcom/android/server/am/ProcessManagerService;->fillRunningProcessInfoList(Ljava/util/List;Lcom/android/server/am/ProcessRecord;)V

    goto :goto_1

    :cond_3
    monitor-exit v2

    return-object v1

    :cond_4
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-nez p5, :cond_5

    invoke-virtual {p0, p3, v0}, Lcom/android/server/am/ProcessManagerService;->getProcessRecordList(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p5

    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    invoke-direct {p0, v1, v4}, Lcom/android/server/am/ProcessManagerService;->fillRunningProcessInfoList(Ljava/util/List;Lcom/android/server/am/ProcessRecord;)V

    goto :goto_2

    :cond_5
    if-lez p2, :cond_6

    invoke-virtual {p0, p2}, Lcom/android/server/am/ProcessManagerService;->getProcessRecordByUid(I)Ljava/util/List;

    move-result-object p5

    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    invoke-direct {p0, v1, v4}, Lcom/android/server/am/ProcessManagerService;->fillRunningProcessInfoList(Ljava/util/List;Lcom/android/server/am/ProcessRecord;)V

    goto :goto_3

    :cond_6
    monitor-exit v2

    return-object v1

    :catchall_0
    move-exception p5

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p5

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: ProcessManager.getRunningProcessInfo() from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProcessManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method isAllowAutoStart(Ljava/lang/String;I)Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v1, 0x2718

    invoke-virtual {v0, v1, p2, p1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method isAppDisabledForPkms(Ljava/lang/String;)Z
    .registers 6

    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mPkms:Landroid/content/pm/PackageManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mPkms:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    return v2

    :cond_0
    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_0
    return v2
.end method

.method public isForceStopEnable(Lcom/android/server/am/ProcessRecord;I)Z
    .registers 7

    const/16 v0, 0xd

    const/4 v1, 0x1

    if-ne p2, v0, :cond_0

    return v1

    :cond_0
    sget-boolean v0, Lmiui/os/Build;->IS_MIUI:Z

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/am/ProcessManagerService;->isSystemApp(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v0, v3}, Lcom/android/server/am/ProcessManagerService;->isAllowAutoStart(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    :cond_3
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v3, 0x22

    invoke-direct {p0, v0, v3}, Lcom/android/server/am/ProcessManagerService;->isPackageInList(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    return v2

    :cond_4
    return v1
.end method

.method public isInSystemPkgCompactionBlackList(Ljava/lang/String;)Z
    .registers 3

    sget-boolean v0, Lcom/android/server/am/ProcessManagerService;->mUniReclaimPropEnable:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mMemcgSwapService:Lcom/android/server/am/MiuiMemcgSwapServiceStub;

    invoke-interface {v0}, Lcom/android/server/am/MiuiMemcgSwapServiceStub;->isUseMemcgSwap()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ProcessPolicy;->isInSystemPkgCompactionBlackList(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isInSystemProcCompactionBlackList(Ljava/lang/String;)Z
    .registers 3

    sget-boolean v0, Lcom/android/server/am/ProcessManagerService;->mUniReclaimPropEnable:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mMemcgSwapService:Lcom/android/server/am/MiuiMemcgSwapServiceStub;

    invoke-interface {v0}, Lcom/android/server/am/MiuiMemcgSwapServiceStub;->isUseMemcgSwap()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ProcessPolicy;->isInSystemProcCompactionBlackList(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method isInWhiteList(Lcom/android/server/am/ProcessRecord;II)Z
    .registers 10

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    const/16 v1, 0x3ea

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.android.cts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "android.devicepolicy.cts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    invoke-virtual {v0, p3}, Lcom/android/server/am/ProcessPolicy;->getPolicyFlags(I)I

    move-result v0

    sget-boolean v1, Lcom/miui/enterprise/settings/EnterpriseSettings;->ENTERPRISE_ACTIVATED:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lmiui/enterprise/EnterpriseManagerStub;->ENTERPRISE_ACTIVATED:Z

    if-eqz v1, :cond_3

    :cond_2
    or-int/lit16 v0, v0, 0x1000

    :cond_3
    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/android/server/am/ProcessPolicy;->isInOnePushBlackSet(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    return v3

    :cond_4
    packed-switch p3, :pswitch_data_0

    :pswitch_0  #0x8, 0x9, 0xa, 0xb, 0xc, 0xd, 0xf, 0x11
    goto :goto_1

    :pswitch_1  #0x15
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/android/server/am/ProcessManagerService;->isPackageInList(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/android/server/am/ProcessPolicy;->isInProcessStaticWhiteList(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ProcessPolicy;->isProcessImportant(Lcom/android/server/am/ProcessRecord;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/android/server/am/ProcessPolicy;->isInExtraPackageList(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/android/server/am/ProcessPolicy;->isInSystemCleanWhiteList(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_5
    return v2

    :pswitch_2  #0x12
    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/am/ProcessPolicy;->isInDisplaySizeWhiteList(Ljava/lang/String;)Z

    move-result v1

    return v1

    :pswitch_3  #0x7
    const/4 v0, 0x5

    sget-boolean v1, Lcom/miui/enterprise/settings/EnterpriseSettings;->ENTERPRISE_ACTIVATED:Z

    if-eqz v1, :cond_6

    or-int/lit16 v0, v0, 0x1000

    :cond_6
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/android/server/am/ProcessManagerService;->isPackageInList(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/android/server/am/ProcessPolicy;->isInProcessStaticWhiteList(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ProcessPolicy;->isProcessImportant(Lcom/android/server/am/ProcessRecord;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v4, v5, v2}, Lcom/android/server/am/ProcessPolicy;->isFastBootEnable(Ljava/lang/String;IZ)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_7
    return v2

    :pswitch_4  #0x1, 0x3, 0x4, 0x5, 0x6, 0xe, 0x10, 0x16
    const/4 v0, 0x5

    sget-boolean v1, Lcom/miui/enterprise/settings/EnterpriseSettings;->ENTERPRISE_ACTIVATED:Z

    if-eqz v1, :cond_8

    or-int/lit16 v0, v0, 0x1000

    :cond_8
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/android/server/am/ProcessManagerService;->isPackageInList(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/android/server/am/ProcessPolicy;->isInProcessStaticWhiteList(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4, p2}, Lcom/android/server/am/ProcessPolicy;->isLockedApplication(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ProcessPolicy;->isProcessImportant(Lcom/android/server/am/ProcessRecord;)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v4, v5, v2}, Lcom/android/server/am/ProcessPolicy;->isFastBootEnable(Ljava/lang/String;IZ)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_0

    :cond_9
    :pswitch_5  #0x2, 0x13, 0x14
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/android/server/am/ProcessManagerService;->isPackageInList(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/android/server/am/ProcessPolicy;->isInProcessStaticWhiteList(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ProcessPolicy;->isProcessImportant(Lcom/android/server/am/ProcessRecord;)Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_a
    return v2

    :cond_b
    :goto_0
    return v2

    :cond_c
    :goto_1
    return v3

    :cond_d
    :goto_2
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4  #00000001
        :pswitch_5  #00000002
        :pswitch_4  #00000003
        :pswitch_4  #00000004
        :pswitch_4  #00000005
        :pswitch_4  #00000006
        :pswitch_3  #00000007
        :pswitch_0  #00000008
        :pswitch_0  #00000009
        :pswitch_0  #0000000a
        :pswitch_0  #0000000b
        :pswitch_0  #0000000c
        :pswitch_0  #0000000d
        :pswitch_4  #0000000e
        :pswitch_0  #0000000f
        :pswitch_4  #00000010
        :pswitch_0  #00000011
        :pswitch_2  #00000012
        :pswitch_5  #00000013
        :pswitch_5  #00000014
        :pswitch_1  #00000015
        :pswitch_4  #00000016
    .end packed-switch
.end method

.method public isLockedApplication(Ljava/lang/String;I)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/ProcessPolicy;->isLockedApplication(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isTrimMemoryEnable(Ljava/lang/String;)Z
    .registers 3

    const/16 v0, 0x10

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/ProcessManagerService;->isPackageInList(Ljava/lang/String;I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isUniReclaimEnableOnCloud()Z
    .registers 2

    sget-boolean v0, Lcom/android/server/am/ProcessManagerService;->mUniReclaimPropEnable:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessPolicy;->isUniReclaimEnableOnCloud()Z

    move-result v0

    return v0
.end method

.method isWhiteListForForegroundChange()Z
    .registers 4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/am/ProcessManagerService;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.miui.notes"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public kill(Lmiui/process/ProcessConfig;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "ProcessManager"

    if-nez p1, :cond_0

    const-string v2, "kill: config is null, aborting operation"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {v2}, Lcom/android/server/am/ProcessUtils;->getProcessNameByPid(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/am/ProcessManagerService;->checkPermission()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/android/server/am/ProcessManagerService;->checkSystemSignature()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    invoke-virtual {v3, v2}, Lcom/android/server/am/ProcessPolicy;->isInSystemPermissionWhiteList(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: ProcessManager.kill() from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/am/ProcessManagerService;->addConfigToHistory(Lmiui/process/ProcessConfig;)V

    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lcom/android/server/am/ProcessPolicy;->resetWhiteList(Landroid/content/Context;I)V

    invoke-static {}, Lcom/android/server/am/SystemPressureController;->getInstance()Lcom/android/server/am/SystemPressureController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/am/SystemPressureController;->kill(Lmiui/process/ProcessConfig;)Z

    move-result v0

    invoke-static {}, Lcom/android/server/am/ProcessRecordStub;->get()Lcom/android/server/am/ProcessRecordStub;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/am/ProcessRecordStub;->reportAppPss()V

    return v0
.end method

.method public killAllBackgroundExceptLocked(Lmiui/process/ProcessConfig;)Z
    .registers 15

    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->isPriorityInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "priority:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->getPriority()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is invalid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProcessManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->getPriority()I

    move-result v0

    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->getPolicy()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/am/ProcessManagerService;->getKillReason(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->getReason()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/android/server/am/ProcessManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessList;->getProcessNamesLOSP()Lcom/android/server/am/ProcessList$MyProcessMap;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/ProcessList$MyProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_7

    invoke-virtual {v4}, Lcom/android/server/am/ProcessList;->getProcessNamesLOSP()Lcom/android/server/am/ProcessList$MyProcessMap;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/ProcessList$MyProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v8, :cond_6

    invoke-virtual {v7, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v10}, Lcom/android/server/am/ProcessRecord;->isRemoved()Z

    move-result v11

    if-nez v11, :cond_4

    if-ltz v0, :cond_2

    iget-object v11, v10, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v11

    if-le v11, v0, :cond_3

    :cond_2
    iget-object v11, v10, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v11}, Lcom/android/server/am/ProcessStateRecord;->hasShownUi()Z

    move-result v11

    if-nez v11, :cond_4

    :cond_3
    invoke-static {}, Lcom/android/server/display/DisplayManagerServiceStub;->getInstance()Lcom/android/server/display/DisplayManagerServiceStub;

    move-result-object v11

    iget-object v12, v10, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/android/server/display/DisplayManagerServiceStub;->isInResolutionSwitchBlackList(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    :cond_4
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_7
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_3
    const/4 v8, 0x1

    if-ge v7, v6, :cond_9

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ProcessRecord;

    invoke-static {}, Lcom/android/server/display/DisplayManagerServiceStub;->getInstance()Lcom/android/server/display/DisplayManagerServiceStub;

    move-result-object v10

    iget-object v11, v9, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/android/server/display/DisplayManagerServiceStub;->isInResolutionSwitchProtectList(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    goto :goto_4

    :cond_8
    iget-object v10, p0, Lcom/android/server/am/ProcessManagerService;->mProcessKiller:Lcom/android/server/am/ProcessKiller;

    invoke-virtual {v10, v9, v1, v8}, Lcom/android/server/am/ProcessKiller;->forceStopPackage(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Z)V

    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_9
    monitor-exit v2

    return v8

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public killPreloadApp(Ljava/lang/String;)I
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mPreloadAppController:Lcom/android/server/am/PreloadAppControllerImpl;

    invoke-virtual {v0, p1}, Lcom/android/server/am/PreloadAppControllerImpl;->killPreloadApp(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public notifyActivityChanged(Landroid/content/ComponentName;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mHandler:Lcom/android/server/am/ProcessManagerService$MainHandler;

    new-instance v1, Lcom/android/server/am/ProcessManagerService$6;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/ProcessManagerService$6;-><init>(Lcom/android/server/am/ProcessManagerService;Landroid/content/ComponentName;)V

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public notifyAppStopped(I)V
    .registers 3

    invoke-static {}, Lcom/android/server/am/SystemPressureController;->getInstance()Lcom/android/server/am/SystemPressureController;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/SystemPressureController;->mProcessCleaner:Lcom/android/server/am/ProcessMemoryCleaner;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ProcessMemoryCleaner;->notifyAppStopped(I)V

    return-void
.end method

.method public notifyBluetoothEvent(ZIIILjava/lang/String;I)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mSmartPowerService:Lcom/miui/app/smartpower/SmartPowerServiceInternal;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/miui/app/smartpower/SmartPowerServiceInternal;->onBluetoothEvent(ZIIILjava/lang/String;I)V

    return-void
.end method

.method public notifyForegroundInfoChanged(Lcom/android/server/wm/FgActivityChangedInfo;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mHandler:Lcom/android/server/am/ProcessManagerService$MainHandler;

    new-instance v1, Lcom/android/server/am/ProcessManagerService$4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/ProcessManagerService$4;-><init>(Lcom/android/server/am/ProcessManagerService;Lcom/android/server/wm/FgActivityChangedInfo;)V

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public notifyForegroundWindowChanged(Lcom/android/server/wm/FgWindowChangedInfo;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mHandler:Lcom/android/server/am/ProcessManagerService$MainHandler;

    new-instance v1, Lcom/android/server/am/ProcessManagerService$5;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/ProcessManagerService$5;-><init>(Lcom/android/server/am/ProcessManagerService;Lcom/android/server/wm/FgWindowChangedInfo;)V

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public notifyHeapException(ILjava/lang/String;)V
    .registers 4

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/am/SystemPressureController;->getInstance()Lcom/android/server/am/SystemPressureController;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/SystemPressureController;->mProcessCleaner:Lcom/android/server/am/ProcessMemoryCleaner;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/ProcessMemoryCleaner;->notifyHeapException(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/am/ProcessManagerService$ProcessMangaerShellCommand;

    invoke-direct {v0, p0}, Lcom/android/server/am/ProcessManagerService$ProcessMangaerShellCommand;-><init>(Lcom/android/server/am/ProcessManagerService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ProcessManagerService$ProcessMangaerShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public onePushUpdateWhitelist(Ljava/lang/String;Z)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessPolicy;->isOnePushEnable()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "ProcessManager"

    if-nez v0, :cond_0

    const-string v0, "onePush: is not support"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    if-nez p1, :cond_1

    const-string v0, "onePush: pkg is null, aborting operation"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/ProcessManagerService;->checkPermission()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/am/ProcessManagerService;->checkSystemSignature()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission Denial: updateKeepAliveWhiteList() from pid="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", uid="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/ProcessPolicy;->updateOnePushBlackSet(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const-string v3, "onePush: updateKeepAliveWhiteList failed"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public preStartProcess(Ljava/lang/String;Landroid/content/Intent;I)V
    .registers 12

    invoke-static {}, Lcom/android/server/am/PreStartFeedbackImpl;->get()Lcom/android/server/am/PreStartFeedbackImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/PreStartFeedbackImpl;->checkPermission()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/server/am/ProcessManagerService;->mProcessManagerThreadId:I

    const/16 v1, -0x14

    invoke-static {v0, v1}, Landroid/os/Process;->setThreadPriority(II)V

    invoke-static {}, Lxiaomi/platform/flags/Flags;->xringEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mQosController:Landroid/urm/QosController;

    iget v1, p0, Lcom/android/server/am/ProcessManagerService;->mProcessManagerThreadId:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/urm/QosController;->setTidQos(II)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lmiui/turbosched/TurboSchedMonitor;->getInstance()Lmiui/turbosched/TurboSchedMonitor;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/ProcessManagerService;->mProcessManagerThreadId:I

    const-string v2, "ProcessManager"

    const/16 v3, 0x32

    invoke-virtual {v0, v1, v2, v3}, Lmiui/turbosched/TurboSchedMonitor;->setDynamicVIPTask(ILjava/lang/String;I)V

    :goto_0
    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mHandler:Lcom/android/server/am/ProcessManagerService$MainHandler;

    new-instance v2, Lcom/android/server/am/ProcessManagerService$3;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/ProcessManagerService$3;-><init>(Lcom/android/server/am/ProcessManagerService;Ljava/lang/String;Landroid/content/Intent;IZ)V

    invoke-virtual {v0, v2}, Lcom/android/server/am/ProcessManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, Lcom/android/server/am/ActivityManagerServiceStub;->get()Lcom/android/server/am/ActivityManagerServiceStub;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/android/server/am/ActivityManagerServiceStub;->loadBitmapIfNeeded(Ljava/lang/String;)V

    return-void
.end method

.method public protectCurrentProcess(ZI)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessManagerService;->getProcessRecordByPid(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/am/ProcessPolicy;->isInAppProtectList(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    invoke-virtual {v1, v0, p1}, Lcom/android/server/am/ProcessPolicy;->protectCurrentProcess(Lcom/android/server/am/ProcessRecord;Z)Z

    move-result v1

    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/ProcessManagerService;->mHandler:Lcom/android/server/am/ProcessManagerService$MainHandler;

    new-instance v3, Lcom/android/server/am/ProcessManagerService$2;

    invoke-direct {v3, p0, v0}, Lcom/android/server/am/ProcessManagerService$2;-><init>(Lcom/android/server/am/ProcessManagerService;Lcom/android/server/am/ProcessRecord;)V

    int-to-long v4, p2

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/am/ProcessManagerService$MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return v1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: ProcessManager.protectCurrentProcess() from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ProcessManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public registerActivityChangeListener(Ljava/util/List;Ljava/util/List;Lmiui/process/IActivityChangeListener;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lmiui/process/IActivityChangeListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/am/ProcessManagerService;->checkPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mForegroundInfoManager:Lcom/android/server/wm/ForegroundInfoManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/ForegroundInfoManager;->registerActivityChangeListener(Ljava/util/List;Ljava/util/List;Lmiui/process/IActivityChangeListener;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: ProcessManager.registerActivityChangeListener() from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProcessManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public registerForegroundInfoListener(Lmiui/process/IForegroundInfoListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/am/ProcessManagerService;->checkPermission()Z

    move-result v0

    const-string v1, "ProcessManager"

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/am/ProcessManagerService;->checkSystemSignature()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/am/ProcessManagerService;->isWhiteListForForegroundChange()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: ProcessManager.registerForegroundInfoListener() from pid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", uid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerForegroundInfoListener, caller="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", listener="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mForegroundInfoManager:Lcom/android/server/wm/ForegroundInfoManager;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ForegroundInfoManager;->registerForegroundInfoListener(Lmiui/process/IForegroundInfoListener;)V

    return-void
.end method

.method public registerForegroundWindowListener(Lmiui/process/IForegroundWindowListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/am/ProcessManagerService;->checkPermission()Z

    move-result v0

    const-string v1, "ProcessManager"

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/am/ProcessManagerService;->isWhiteListForForegroundChange()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: ProcessManager.registerForegroundWindowListener() from pid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", uid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerForegroundWindowListener, caller="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", listener="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mForegroundInfoManager:Lcom/android/server/wm/ForegroundInfoManager;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ForegroundInfoManager;->registerForegroundWindowListener(Lmiui/process/IForegroundWindowListener;)V

    return-void
.end method

.method public registerPreloadCallback(Lmiui/process/IPreloadCallback;I)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mPreloadAppController:Lcom/android/server/am/PreloadAppControllerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/PreloadAppControllerImpl;->registerPreloadCallback(Lmiui/process/IPreloadCallback;I)V

    return-void
.end method

.method public reportGameScene(Ljava/lang/String;II)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/am/ProcessManagerService;->checkPermission()Z

    move-result v0

    const-string v1, "ProcessManager"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pms : packageName = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " gameScene ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " appState = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/am/OomAdjusterImpl;->getInstance()Lcom/android/server/am/OomAdjusterImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/OomAdjusterImpl;->updateGameSceneRecordMap(Ljava/lang/String;II)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: ProcessManager.reportGameScene() from pid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", uid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public reportTrackStatus(IIIZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mSmartPowerService:Lcom/miui/app/smartpower/SmartPowerServiceInternal;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/miui/app/smartpower/SmartPowerServiceInternal;->reportTrackStatus(IIIZ)V

    return-void
.end method

.method public setProcessMaxAdjLock(ILcom/android/server/am/ProcessRecord;II)V
    .registers 7

    if-nez p2, :cond_0

    return-void

    :cond_0
    sget v0, Lmiui/process/ProcessManager;->LOCKED_MAX_ADJ:I

    if-le p3, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    iget-object v1, p2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/am/ProcessPolicy;->isLockedApplication(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget p3, Lmiui/process/ProcessManager;->LOCKED_MAX_ADJ:I

    sget p4, Lmiui/process/ProcessManager;->LOCKED_MAX_PROCESS_STATE:I

    :cond_1
    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0, p3}, Lcom/android/server/am/ProcessStateRecord;->setMaxAdj(I)V

    invoke-static {p2, p4}, Lcom/android/server/am/IProcessPolicy;->setAppMaxProcState(Lcom/android/server/am/ProcessRecord;I)V

    return-void
.end method

.method public shutdown()V
    .registers 1

    return-void
.end method

.method public skipCurrentProcessInBackup(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;I)Z
    .registers 8

    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiui/app/backup/BackupManager;->getBackupManager(Landroid/content/Context;)Lmiui/app/backup/BackupManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/backup/BackupManager;->getState()I

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lmiui/app/backup/BackupManager;->getCurrentRunningPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    if-ne v2, p3, :cond_3

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "skip kill:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_2

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object v3, p2

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for Backup app"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ProcessManager"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    return v2

    :cond_3
    const/4 v1, 0x0

    return v1
.end method

.method public startPreloadApp(Ljava/lang/String;ZZLmiui/process/LifecycleConfig;)I
    .registers 6

    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mPreloadAppController:Lcom/android/server/am/PreloadAppControllerImpl;

    invoke-virtual {v0, p1, p2, p4}, Lcom/android/server/am/PreloadAppControllerImpl;->preloadAppEnqueue(Ljava/lang/String;ZLmiui/process/LifecycleConfig;)V

    const/16 v0, 0x1f4

    return v0
.end method

.method public startProcesses(Ljava/util/List;IZII)I
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmiui/process/PreloadProcessData;",
            ">;IZII)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/am/ProcessManagerService;->checkPermission()Z

    move-result v0

    const-string v1, "ProcessManager"

    if-eqz v0, :cond_5

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, p2, :cond_3

    const/4 v0, 0x0

    if-nez p3, :cond_0

    invoke-static {}, Lcom/android/server/am/ProcessUtils;->isLowMemory()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "low memory! skip start process!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    if-gtz p2, :cond_1

    const-string v2, "startProcessCount <= 0, skip start process!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mProcessStarter:Lcom/android/server/am/ProcessStarter;

    invoke-virtual {v1, p1, p5}, Lcom/android/server/am/ProcessStarter;->isAllowPreloadProcess(Ljava/util/List;I)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    :cond_2
    iget-object v2, p0, Lcom/android/server/am/ProcessManagerService;->mProcessStarter:Lcom/android/server/am/ProcessStarter;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ProcessStarter;->startProcesses(Ljava/util/List;IZII)I

    move-result p1

    return p1

    :cond_3
    move-object v3, p1

    move v4, p2

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "illegal start number!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "packageNames cannot be null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    move-object v3, p1

    move v4, p2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Permission Denial: ProcessManager.startMutiProcesses() from pid="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", uid="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Ljava/lang/SecurityException;

    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method protected systemReady()V
    .registers 3

    nop

    const-string v0, "perfshielder"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IPerfShielder$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IPerfShielder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mPerfService:Lcom/android/internal/app/IPerfShielder;

    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mPerfService:Lcom/android/internal/app/IPerfShielder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mPerfService:Lcom/android/internal/app/IPerfShielder;

    check-cast v0, Lcom/miui/server/PerfShielderService;

    invoke-virtual {v0}, Lcom/miui/server/PerfShielderService;->systemReady()V

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessPolicy;->systemReady(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mProcessStarter:Lcom/android/server/am/ProcessStarter;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStarter;->systemReady()V

    invoke-static {}, Lcom/android/server/am/MiProcessTracker;->getInstance()Lcom/android/server/am/MiProcessTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/am/MiProcessTracker;->systemReady(Landroid/content/Context;)V

    :try_start_0
    new-instance v0, Ljava/io/FileWriter;

    const-string v1, "/proc/mi_log/binder_delay"

    invoke-direct {v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mBinderDelayWriter:Ljava/io/FileWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    invoke-static {}, Lcom/android/server/am/MiuiMemcgSwapServiceStub;->get()Lcom/android/server/am/MiuiMemcgSwapServiceStub;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mMemcgSwapService:Lcom/android/server/am/MiuiMemcgSwapServiceStub;

    return-void
.end method

.method public unregisterActivityChangeListener(Lmiui/process/IActivityChangeListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/am/ProcessManagerService;->checkPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mForegroundInfoManager:Lcom/android/server/wm/ForegroundInfoManager;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ForegroundInfoManager;->unregisterActivityChangeListener(Lmiui/process/IActivityChangeListener;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: ProcessManager.unregisterActivityChangeListener() from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProcessManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public unregisterForegroundInfoListener(Lmiui/process/IForegroundInfoListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/am/ProcessManagerService;->checkPermission()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/am/ProcessManagerService;->checkSystemSignature()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/am/ProcessManagerService;->isWhiteListForForegroundChange()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: ProcessManager.unregisterForegroundInfoListener() from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProcessManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mForegroundInfoManager:Lcom/android/server/wm/ForegroundInfoManager;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ForegroundInfoManager;->unregisterForegroundInfoListener(Lmiui/process/IForegroundInfoListener;)V

    return-void
.end method

.method public unregisterForegroundWindowListener(Lmiui/process/IForegroundWindowListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/am/ProcessManagerService;->checkPermission()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/am/ProcessManagerService;->isWhiteListForForegroundChange()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: ProcessManager.unregisterForegroundWindowListener() from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProcessManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mForegroundInfoManager:Lcom/android/server/wm/ForegroundInfoManager;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ForegroundInfoManager;->unregisterForegroundWindowListener(Lmiui/process/IForegroundWindowListener;)V

    return-void
.end method

.method public updateApplicationLockedState(Ljava/lang/String;IZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/am/ProcessManagerService;->checkPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p2, p1, p3}, Lcom/android/server/am/ProcessPolicy;->updateApplicationLockedState(Landroid/content/Context;ILjava/lang/String;Z)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: ProcessManager.updateApplicationLockedState() from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProcessManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public updateCloudData(Lmiui/process/ProcessCloudData;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/am/ProcessManagerService;->checkPermission()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ProcessPolicy;->updateCloudData(Lmiui/process/ProcessCloudData;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cloudData cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: ProcessManager.updateCloudWhiteList() from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProcessManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public updateConfig(Lmiui/process/ProcessConfig;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/am/ProcessManagerService;->checkPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: ProcessManager.updateConfig() from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProcessManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

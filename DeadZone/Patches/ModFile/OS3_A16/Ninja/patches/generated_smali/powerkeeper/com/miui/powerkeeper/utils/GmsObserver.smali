.class public Lcom/miui/powerkeeper/utils/GmsObserver;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/powerkeeper/utils/GmsObserver$StatusCallback;,
        Lcom/miui/powerkeeper/utils/GmsObserver$GmsControlObserver;
    }
.end annotation


# static fields
.field private static final GMS_BACKUP_PKG:Ljava/lang/String; = "com.google.android.backuptransport"

.field private static final GOOGLE_ACCOUNT_TYPE:Ljava/lang/String; = "com.google"

.field private static final MSG_UPDATE_CLOUD:I = 0x0

.field private static final MSG_UPDATE_GMS_STATE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PowerKeeper.GMS"

.field private static final debug:Z = true


# instance fields
.field private defaultState:Z

.field private mBackupManager:Landroid/app/backup/IBackupManager;

.field private mBackupSet:Z

.field private mBackupStatusChanged:Z

.field private final mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/powerkeeper/utils/GmsObserver$StatusCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mCloudFunctionConfig:Lcom/miui/powerkeeper/cloudcontrol/CloudFunctionConfig;

.field private mContext:Landroid/content/Context;

.field private mEnableGms:Z

.field private mFeedBackCallback:Lcom/miui/powerkeeper/PowerKeeperInterface$e;

.field private mFeedBackControl:Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

.field private mFeedBackGoogleNetworkListener:Lcom/miui/powerkeeper/PowerKeeperInterface$p;

.field private mFunctionListener:Lcom/miui/powerkeeper/cloudcontrol/CloudFunctionConfig$ICloudFunctionListener;

.field private mGmsAppEnabled:Z

.field private final mGmsApps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGmsBlocked:Z

.field private mGmsControlEnabled:Z

.field private mGmsControlInited:Z

.field private mGmsControlObserver:Lcom/miui/powerkeeper/utils/GmsObserver$GmsControlObserver;

.field private final mGmsCoreApps:[Ljava/lang/String;

.field private mGmsInstalled:Z

.field private mGmsUid:I

.field private mGmsUserConfigure:Lcom/miui/powerkeeper/provider/UserConfigureHelper;

.field private mHandler:Landroid/os/Handler;

.field private mLastGoogleReachable:Z

.field private mLastGoogleReachableUsed:Z

.field private mReachabilityHistoryLog:Landroid/util/LocalLog;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mWakelockBlockHistoryLog:Landroid/util/LocalLog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mGmsApps:Ljava/util/Set;

    const-string v0, "com.google.android.gsf.login"

    const-string v1, "com.android.vending"

    const-string v2, "com.google.android.gms"

    const-string v3, "com.google.android.gsf"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mGmsCoreApps:[Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mGmsControlInited:Z

    sget-boolean v1, Lmiui/os/Build;->IS_MIUI:Z

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->defaultState:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mCallbacks:Ljava/util/List;

    new-instance v1, Landroid/util/LocalLog;

    const/16 v3, 0x32

    invoke-direct {v1, v3}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v1, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mReachabilityHistoryLog:Landroid/util/LocalLog;

    new-instance v1, Landroid/util/LocalLog;

    const/16 v3, 0x100

    invoke-direct {v1, v3}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v1, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mWakelockBlockHistoryLog:Landroid/util/LocalLog;

    new-instance v1, Lcom/miui/powerkeeper/utils/GmsObserver$1;

    invoke-direct {v1, p0}, Lcom/miui/powerkeeper/utils/GmsObserver$1;-><init>(Lcom/miui/powerkeeper/utils/GmsObserver;)V

    iput-object v1, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/miui/powerkeeper/utils/GmsObserver$2;

    invoke-static {}, Lcom/miui/powerkeeper/PowerKeeperManager;->getThread()Landroid/os/HandlerThread;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/miui/powerkeeper/utils/GmsObserver$2;-><init>(Lcom/miui/powerkeeper/utils/GmsObserver;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/powerkeeper/utils/GmsObserver$3;

    invoke-direct {v1, p0}, Lcom/miui/powerkeeper/utils/GmsObserver$3;-><init>(Lcom/miui/powerkeeper/utils/GmsObserver;)V

    iput-object v1, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mFunctionListener:Lcom/miui/powerkeeper/cloudcontrol/CloudFunctionConfig$ICloudFunctionListener;

    new-instance v1, Lcom/miui/powerkeeper/utils/GmsObserver$5;

    invoke-direct {v1, p0}, Lcom/miui/powerkeeper/utils/GmsObserver$5;-><init>(Lcom/miui/powerkeeper/utils/GmsObserver;)V

    iput-object v1, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mFeedBackGoogleNetworkListener:Lcom/miui/powerkeeper/PowerKeeperInterface$p;

    const-string v1, "PowerKeeper.GMS"

    const-string v3, "gms observer created"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mContext:Landroid/content/Context;

    invoke-static {p1, v2}, Lcom/miui/powerkeeper/utils/PackageUtil;->getUidByPackageName(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mGmsUid:I

    iput-boolean v0, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mGmsBlocked:Z

    return-void
.end method

.method static bridge synthetic a(Lcom/miui/powerkeeper/utils/GmsObserver;)Lcom/miui/powerkeeper/cloudcontrol/CloudFunctionConfig;
    .registers 1

    iget-object p0, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mCloudFunctionConfig:Lcom/miui/powerkeeper/cloudcontrol/CloudFunctionConfig;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/miui/powerkeeper/utils/GmsObserver;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mEnableGms:Z

    return p0
.end method

.method static bridge synthetic c(Lcom/miui/powerkeeper/utils/GmsObserver;)Lcom/miui/powerkeeper/cloudcontrol/CloudFunctionConfig$ICloudFunctionListener;
    .registers 1

    iget-object p0, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mFunctionListener:Lcom/miui/powerkeeper/cloudcontrol/CloudFunctionConfig$ICloudFunctionListener;

    return-object p0
.end method

.method private checkReady()V
    .registers 2

    iget-boolean v0, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mEnableGms:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mFeedBackControl:Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/powerkeeper/utils/GmsObserver;->registerPackageReceiver()V

    invoke-direct {p0}, Lcom/miui/powerkeeper/utils/GmsObserver;->isGmsAppInstalled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mGmsInstalled:Z

    invoke-direct {p0}, Lcom/miui/powerkeeper/utils/GmsObserver;->isGmsCoreAppEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mGmsAppEnabled:Z

    invoke-direct {p0}, Lcom/miui/powerkeeper/utils/GmsObserver;->initGmsControl()V

    iget-boolean v0, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mGmsInstalled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mGmsAppEnabled:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/powerkeeper/utils/GmsObserver;->startGetFeedback()V

    :cond_0
    return-void
.end method

.method static bridge synthetic d(Lcom/miui/powerkeeper/utils/GmsObserver;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mGmsAppEnabled:Z

    return p0
.end method

.method private disableGms()V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/powerkeeper/utils/GmsObserver;->updateGoogleReletivesWakelock(Z)V

    invoke-direct {p0, v0}, Lcom/miui/powerkeeper/utils/GmsObserver;->updateGmsState(Z)V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/miui/powerkeeper/utils/GmsObserver;->updateGoogleBackup(Z)V

    invoke-direct {p0}, Lcom/miui/powerkeeper/utils/GmsObserver;->stopGetFeedback()V

    invoke-direct {p0}, Lcom/miui/powerkeeper/utils/GmsObserver;->unRegisterPackageReceiver()V

    iget-object v1, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mGmsControlObserver:Lcom/miui/powerkeeper/utils/GmsObserver$GmsControlObserver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mGmsControlObserver:Lcom/miui/powerkeeper/utils/GmsObserver$GmsControlObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    iput-boolean v0, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mGmsControlInited:Z

    return-void
.end method

.method static bridge synthetic e(Lcom/miui/powerkeeper/utils/GmsObserver;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mGmsBlocked:Z

    return p0
.end method

.method private enableGms()V
    .registers 1

    invoke-direct {p0}, Lcom/miui/powerkeeper/utils/GmsObserver;->checkReady()V

    return-void
.end method

.method private enabledSettingToString(I)Ljava/lang/String;
    .registers 2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    const-string p0, "unknown"

    return-object p0

    :cond_0
    const-string p0, "disabled"

    return-object p0

    :cond_1
    const-string p0, "enabled"

    return-object p0
.end method

.method static bridge synthetic f(Lcom/miui/powerkeeper/utils/GmsObserver;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mGmsControlEnabled:Z

    return p0
.end method

.method static bridge synthetic g(Lcom/miui/powerkeeper/utils/GmsObserver;)[Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mGmsCoreApps:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic h(Lcom/miui/powerkeeper/utils/GmsObserver;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mGmsInstalled:Z

    return p0
.end method

.method static bridge synthetic i(Lcom/miui/powerkeeper/utils/GmsObserver;)Lcom/miui/powerkeeper/provider/UserConfigureHelper;
    .registers 1

    iget-object p0, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mGmsUserConfigure:Lcom/miui/powerkeeper/provider/UserConfigureHelper;

    return-object p0
.end method

.method private init()V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mBackupStatusChanged:Z

    iput-boolean v0, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mBackupSet:Z

    const-string v1, "backup"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mBackupManager:Landroid/app/backup/IBackupManager;

    iput-boolean v0, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mLastGoogleReachable:Z

    iput-boolean v0, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mLastGoogleReachableUsed:Z

    iget-object v0, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mContext:Landroid/content/Context;

    const-string v1, "gms_control"

    iget-boolean v2, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->defaultState:Z

    invoke-static {v0, v1, v2}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mEnableGms:Z

    invoke-direct {p0, v0}, Lcom/miui/powerkeeper/utils/GmsObserver;->updateGmsApps(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init: gms control enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mEnableGms:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerKeeper.GMS"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/miui/powerkeeper/PowerKeeperInterface$e;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mFeedBackGoogleNetworkListener:Lcom/miui/powerkeeper/PowerKeeperInterface$p;

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/miui/powerkeeper/PowerKeeperInterface$e;-><init>(Landroid/os/Handler;Lcom/miui/powerkeeper/PowerKeeperInterface$o;Lcom/miui/powerkeeper/PowerKeeperInterface$q;Lcom/miui/powerkeeper/PowerKeeperInterface$p;)V

    iput-object v0, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mFeedBackCallback:Lcom/miui/powerkeeper/PowerKeeperInterface$e;

    iget-object v0, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/powerkeeper/FeedBackManager;->getInstance(Landroid/content/Context;)Lcom/miui/powerkeeper/FeedBackManager;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mFeedBackCallback:Lcom/miui/powerkeeper/PowerKeeperInterface$e;

    invoke-virtual {v0, p0}, Lcom/miui/powerkeeper/FeedBackManager;->registerFeedBackListener(Lcom/miui/powerkeeper/PowerKeeperInterface$e;)V

    return-void
.end method

.method private initGmsControl()V
    .registers 5

    iget-boolean v0, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mEnableGms:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mGmsControlInited:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mGmsInstalled:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mContext:Landroid/content/Context;

    const-string v1, "com.google.android.gms"

    invoke-static {v0, v1}, Lcom/miui/powerkeeper/utils/PackageUtil;->getUidByPackageName(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mGmsUid:I

    new-instance v0, Lcom/miui/powerkeeper/utils/GmsObserver$GmsControlObserver;

    iget-object v1, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/miui/powerkeeper/utils/GmsObserver$GmsControlObserver;-><init>(Lcom/miui/powerkeeper/utils/GmsObserver;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mGmsControlObserver:Lcom/miui/powerkeeper/utils/GmsObserver$GmsControlObserver;

    invoke-direct {p0}, Lcom/miui/powerkeeper/utils/GmsObserver;->isGmsControlEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mGmsControlEnabled:Z

    iget-object v0, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/powerkeeper/provider/UserConfigure;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mGmsControlObserver:Lcom/miui/powerkeeper/utils/GmsObserver$GmsControlObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget v0, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mGmsUid:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/miui/powerkeeper/utils/NetdExecutor;->CHAIN_GMS_WALL:Ljava/lang/String;

    const-string v2, "REJECT"

    invoke-static {v1, v0, v2}, Lcom/miui/powerkeeper/utils/NetdExecutor;->initGmsChain(Ljava/lang/String;ILjava/lang/String;)V

    iput-boolean v3, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mGmsControlInited:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private isGmsApp(Ljava/lang/String;)Z
    .registers 3

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mGmsApps:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mGmsApps:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    monitor-exit v0

    goto :goto_1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method private isGmsAppInstalled()Z
    .registers 8

    iget-object v0, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mGmsCoreApps:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_1

    aget-object v5, v0, v3

    iget-object v6, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Lcom/miui/powerkeeper/utils/PackageUtil;->checkPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    return v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mGmsApps:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mGmsApps:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v5, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mContext:Landroid/content/Context;

    invoke-static {v5, v3}, Lcom/miui/powerkeeper/utils/PackageUtil;->checkPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    monitor-exit v0

    return v4

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_3
    monitor-exit v0

    return v2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private isGmsControlEnabled()Z
    .registers 3

    iget-object v0, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mContext:Landroid/content/Context;

    const-string v1, "com.android.vending"

    invoke-static {v0, v1}, Lcom/miui/powerkeeper/provider/UserConfigureHelper;->getUserConfigureHelperByPkg(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/powerkeeper/provider/UserConfigureHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mGmsUserConfigure:Lcom/miui/powerkeeper/provider/UserConfigureHelper;

    invoke-virtual {v0}, Lcom/miui/powerkeeper/provider/UserConfigureHelper;->getBgControl()Ljava/lang/String;

    move-result-object p0

    const-string v0, "noRestrict"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    const/4 p0, 0x0

    return p0
.end method

.method private isGmsCoreAppEnabled()Z
    .registers 7

    iget-object v0, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mGmsCoreApps:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    iget-object v5, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mContext:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/miui/powerkeeper/utils/PackageUtil;->checkPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method static bridge synthetic j(Lcom/miui/powerkeeper/utils/GmsObserver;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic k(Lcom/miui/powerkeeper/utils/GmsObserver;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mLastGoogleReachable:Z

    return p0
.end method

.method static bridge synthetic l(Lcom/miui/powerkeeper/utils/GmsObserver;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mLastGoogleReachableUsed:Z

    return p0
.end method

.method static bridge synthetic m(Lcom/miui/powerkeeper/utils/GmsObserver;Lcom/miui/powerkeeper/cloudcontrol/CloudFunctionConfig;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mCloudFunctionConfig:Lcom/miui/powerkeeper/cloudcontrol/CloudFunctionConfig;

    return-void
.end method

.method static bridge synthetic n(Lcom/miui/powerkeeper/utils/GmsObserver;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mGmsControlEnabled:Z

    return-void
.end method

.method static bridge synthetic o(Lcom/miui/powerkeeper/utils/GmsObserver;)V
    .registers 1

    invoke-direct {p0}, Lcom/miui/powerkeeper/utils/GmsObserver;->checkReady()V

    return-void
.end method

.method static bridge synthetic p(Lcom/miui/powerkeeper/utils/GmsObserver;)V
    .registers 1

    invoke-direct {p0}, Lcom/miui/powerkeeper/utils/GmsObserver;->init()V

    return-void
.end method

.method static bridge synthetic q(Lcom/miui/powerkeeper/utils/GmsObserver;Ljava/lang/String;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/utils/GmsObserver;->isGmsApp(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic r(Lcom/miui/powerkeeper/utils/GmsObserver;)Z
    .registers 1

    invoke-direct {p0}, Lcom/miui/powerkeeper/utils/GmsObserver;->isGmsAppInstalled()Z

    move-result p0

    return p0
.end method

.method private registerPackageReceiver()V
    .registers 4

    iget-boolean v0, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mEnableGms:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "PowerKeeper.GMS"

    const-string v1, "register package receiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x4

    invoke-virtual {v1, p0, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method private restoreGoogleBackup()V
    .registers 6

    const-string v0, "PowerKeeper.GMS"

    iget-boolean v1, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mBackupStatusChanged:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mBackupManager:Landroid/app/backup/IBackupManager;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z

    move-result v1

    iget-object v2, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mBackupManager:Landroid/app/backup/IBackupManager;

    const/4 v3, 0x0

    xor-int/lit8 v4, v1, 0x1

    invoke-interface {v2, v4}, Landroid/app/backup/IBackupManager;->setBackupEnabled(Z)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set google backup enabled = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mBackupStatusChanged:Z

    iput-boolean v3, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mBackupSet:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "restore backup option failed"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static bridge synthetic s(Lcom/miui/powerkeeper/utils/GmsObserver;)Z
    .registers 1

    invoke-direct {p0}, Lcom/miui/powerkeeper/utils/GmsObserver;->isGmsControlEnabled()Z

    move-result p0

    return p0
.end method

.method private setGmsBackupEnableState(I)V
    .registers 12

    const-string v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p0, "TAG"

    const-string p1, "get PackageManger failed"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v2, "com.google.android.backuptransport"

    move-object v0, v2

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    const/4 v7, 0x0

    const-string v8, " new state: "

    const-string v9, "PowerKeeper.GMS"

    if-nez v2, :cond_1

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GmsObserver:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v3, p1

    move-object v2, v0

    invoke-interface/range {v1 .. v6}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1, v0, v7}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/powerkeeper/utils/GmsObserver;->enabledSettingToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v9, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    move v3, p1

    iget-object p1, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v1 .. v6}, Landroid/content/pm/IPackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;IIILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Component "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1, v2, v7}, Landroid/content/pm/IPackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/powerkeeper/utils/GmsObserver;->enabledSettingToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v9, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private setGoogleBackup(Z)V
    .registers 4

    const-string v0, "PowerKeeper.GMS"

    iget-boolean v1, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mBackupSet:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mBackupManager:Landroid/app/backup/IBackupManager;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z

    move-result v1

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v1, p1}, Landroid/app/backup/IBackupManager;->setBackupEnabled(Z)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mBackupStatusChanged:Z

    iput-boolean v1, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mBackupSet:Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set google backup enabled = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "set backup option failed"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private startGetFeedback()V
    .registers 4

    iget-object v0, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mFeedBackControl:Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    if-eqz v0, :cond_0

    const-string v0, "request feedback for gms"

    const-string v1, "PowerKeeper.GMS"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object p0, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mFeedBackControl:Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    invoke-interface {p0}, Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;->getControlFeature()I

    move-result v0

    or-int/lit16 v0, v0, 0x200

    invoke-interface {p0, v0}, Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;->setControlFeature(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private stopGetFeedback()V
    .registers 4

    iget-object v0, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mFeedBackControl:Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    if-eqz v0, :cond_0

    const-string v0, "stop feedback for gms"

    const-string v1, "PowerKeeper.GMS"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object p0, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mFeedBackControl:Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    invoke-interface {p0}, Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;->getControlFeature()I

    move-result v0

    and-int/lit16 v0, v0, -0x201

    invoke-interface {p0, v0}, Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;->setControlFeature(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static bridge synthetic t(Lcom/miui/powerkeeper/utils/GmsObserver;)Z
    .registers 1

    invoke-direct {p0}, Lcom/miui/powerkeeper/utils/GmsObserver;->isGmsCoreAppEnabled()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic u(Lcom/miui/powerkeeper/utils/GmsObserver;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/utils/GmsObserver;->updateGmsEnabled(Z)V

    return-void
.end method

.method private unRegisterPackageReceiver()V
    .registers 3

    const-string v0, "PowerKeeper.GMS"

    const-string v1, "un-register package receiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private updateGmsAlarm(Z)V
    .registers 8

    invoke-static {}, Lcom/miui/powerkeeper/PowerKeeperManager;->getInstance()Lcom/miui/powerkeeper/PowerKeeperManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/powerkeeper/PowerKeeperManager;->getPackageUidsMap(I)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mGmsApps:Ljava/util/Set;

    monitor-enter v2

    :try_start_0
    iget-object p0, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mGmsApps:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    new-instance v4, Lcom/miui/whetstone/AlarmPolicy;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v4, v5, p1}, Lcom/miui/whetstone/AlarmPolicy;-><init>(I[Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0xa

    invoke-static {v5, v4}, Landroid/os/UserHandle;->getUid(II)I

    move-result v4

    new-instance v5, Lcom/miui/whetstone/AlarmPolicy;

    invoke-direct {v5, v4, p1}, Lcom/miui/whetstone/AlarmPolicy;-><init>(I[Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x3e7

    invoke-static {v4, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    new-instance v4, Lcom/miui/whetstone/AlarmPolicy;

    invoke-direct {v4, v3, p1}, Lcom/miui/whetstone/AlarmPolicy;-><init>(I[Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/miui/powerkeeper/PowerKeeperManager;->getInstance()Lcom/miui/powerkeeper/PowerKeeperManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/powerkeeper/PowerKeeperManager;->getAlarmController()Lcom/miui/powerkeeper/controller/AlarmController;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/miui/powerkeeper/controller/AlarmController;->setAppsAlarmState(Ljava/util/ArrayList;)V

    return-void

    :goto_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private updateGmsApps(Z)V
    .registers 5

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    iget-object p1, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mContext:Landroid/content/Context;

    const-string v0, "gms_control"

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/miui/powerkeeper/cloudcontrol/CloudFunctionConfig;->getFunctionParameters(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "PowerKeeper.GMS"

    const-string v1, "params updated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mGmsApps:Ljava/util/Set;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mGmsApps:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mGmsApps:Ljava/util/Set;

    iget-object p0, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mGmsCoreApps:[Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mGmsApps:Ljava/util/Set;

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    const-string v0, "PowerKeeper.GMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error to parse para:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method private updateGmsEnabled(Z)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update GMS enabled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerKeeper.GMS"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mGmsAppEnabled:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean p1, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mGmsAppEnabled:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mEnableGms:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/miui/powerkeeper/utils/GmsObserver;->startGetFeedback()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/miui/powerkeeper/utils/GmsObserver;->stopGetFeedback()V

    return-void
.end method

.method private updateGmsInstalled(Z)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GMS installed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerKeeper.GMS"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mGmsInstalled:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/miui/powerkeeper/utils/GmsObserver;->checkReady()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/miui/powerkeeper/utils/GmsObserver;->stopGetFeedback()V

    return-void
.end method

.method private updateGmsNetWork(Z)V
    .registers 3

    sget-object v0, Lcom/miui/powerkeeper/utils/NetdExecutor;->CHAIN_GMS_WALL:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/miui/powerkeeper/utils/NetdExecutor;->setGmsChainState(Ljava/lang/String;Z)V

    iget p0, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mGmsUid:I

    invoke-static {p0, p1}, Lcom/miui/powerkeeper/utils/NetdExecutor;->setGmsDnsBlockerState(IZ)V

    return-void
.end method

.method private updateGmsState(Z)V
    .registers 6

    iget-boolean v0, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mGmsControlInited:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mGmsControlEnabled:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    :goto_0
    return-void

    :cond_1
    iput-boolean p1, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mGmsBlocked:Z

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/utils/GmsObserver;->updateGmsNetWork(Z)V

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/utils/GmsObserver;->updateGmsAlarm(Z)V

    iget-object v0, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mCallbacks:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/powerkeeper/utils/GmsObserver$StatusCallback;

    iget v3, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mGmsUid:I

    invoke-interface {v2, v3, p1}, Lcom/miui/powerkeeper/utils/GmsObserver$StatusCallback;->onGmsStatusChanged(IZ)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private updateGoogleBackup(Z)V
    .registers 2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/utils/GmsObserver;->setGmsBackupEnableState(I)V

    invoke-direct {p0}, Lcom/miui/powerkeeper/utils/GmsObserver;->restoreGoogleBackup()V

    return-void

    :cond_0
    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/utils/GmsObserver;->setGmsBackupEnableState(I)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/utils/GmsObserver;->setGoogleBackup(Z)V

    return-void
.end method

.method private updateGoogleReletivesWakelock(Z)V
    .registers 10

    const-string v0, "PowerKeeper.GMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateGoogleReletivesWakelock: isBlocked = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mGmsApps:Ljava/util/Set;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mGmsApps:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/miui/powerkeeper/utils/PackageUtil;->getUidByPackageName(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    const-string v4, "PowerKeeper.GMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "uid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v3, p1}, Lcom/miui/powerkeeper/utils/GmsObserver;->updateWakelockBlockedUid(IZ)V

    const/16 v4, 0xa

    invoke-static {v4, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v4

    const-string v5, "PowerKeeper.GMS"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "secondUid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v4, p1}, Lcom/miui/powerkeeper/utils/GmsObserver;->updateWakelockBlockedUid(IZ)V

    const/16 v4, 0x3e7

    invoke-static {v4, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    const-string v4, "PowerKeeper.GMS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "spaceXUid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v3, p1}, Lcom/miui/powerkeeper/utils/GmsObserver;->updateWakelockBlockedUid(IZ)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private updateGoogleSync(Z)V
    .registers 2

    sget-boolean p0, Lmiui/os/Build;->IS_MIUI:Z

    return-void
.end method

.method private updateWakelockBlockedUid(IZ)V
    .registers 9

    const-string v0, ", isBlocked = "

    const-string v1, "PowerKeeper.GMS"

    :try_start_0
    invoke-static {}, Lcom/miui/powerkeeper/PowerKeeperManager;->getInstance()Lcom/miui/powerkeeper/PowerKeeperManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/powerkeeper/PowerKeeperManager;->getWakelockManagerInterface()Lcom/miui/powerkeeper/IWakelockManager;

    move-result-object v2

    if-nez v2, :cond_0

    const-string p0, "wakelockManagerInterface is null"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mContext:Landroid/content/Context;

    const-class v5, Lcom/miui/powerkeeper/utils/GmsObserver;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v4, 0x0

    invoke-interface {v2, p2, v3, p1, v4}, Lcom/miui/powerkeeper/IWakelockManager;->setWakelockBlock(ZLandroid/content/ComponentName;ILjava/util/List;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateWakelockBlockedUid, uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mWakelockBlockHistoryLog:Landroid/util/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PowerKeeper.GMS: uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "mWakelockManager work abnormal"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static bridge synthetic v(Lcom/miui/powerkeeper/utils/GmsObserver;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/utils/GmsObserver;->updateGmsInstalled(Z)V

    return-void
.end method

.method static bridge synthetic w(Lcom/miui/powerkeeper/utils/GmsObserver;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/utils/GmsObserver;->updateGmsState(Z)V

    return-void
.end method

.method static bridge synthetic x(Lcom/miui/powerkeeper/utils/GmsObserver;IZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/miui/powerkeeper/utils/GmsObserver;->updateWakelockBlockedUid(IZ)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    const-string p2, "#######dump GMS Observer#######"

    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Gms observer is enabled: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mEnableGms:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Gms application control enabled: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mGmsControlEnabled:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "Google Reachability History:"

    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object p2, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mReachabilityHistoryLog:Landroid/util/LocalLog;

    invoke-virtual {p2, p1, v0, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string p2, "Gms wakelock block History:"

    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object p2, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mWakelockBlockHistoryLog:Landroid/util/LocalLog;

    invoke-virtual {p2, p1, v0, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string p1, "Gms Apps List from Cloud:"

    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object p1, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mGmsApps:Ljava/util/Set;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mGmsApps:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string p3, "\n"

    const-string v1, ""

    invoke-virtual {p2, p3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string p0, "end#######dump GMS Observer#######end"

    invoke-virtual {v0, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void

    :goto_1
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onCloudUpdated()V
    .registers 4

    iget-object v0, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mContext:Landroid/content/Context;

    const-string v1, "gms_control"

    iget-boolean v2, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->defaultState:Z

    invoke-static {v0, v1, v2}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gms control enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PowerKeeper.GMS"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/miui/powerkeeper/utils/GmsObserver;->updateGmsApps(Z)V

    iget-boolean v1, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mEnableGms:Z

    if-ne v1, v0, :cond_0

    const-string p0, "gms control not change"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput-boolean v0, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mEnableGms:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/miui/powerkeeper/utils/GmsObserver;->enableGms()V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/miui/powerkeeper/utils/GmsObserver;->disableGms()V

    return-void
.end method

.method public onCreate(Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;)V
    .registers 3

    iput-object p1, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mFeedBackControl:Lcom/miui/powerkeeper/feedbackcontrol/IFeedbackControl;

    iget-object p1, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/miui/powerkeeper/utils/GmsObserver$4;

    invoke-direct {v0, p0}, Lcom/miui/powerkeeper/utils/GmsObserver$4;-><init>(Lcom/miui/powerkeeper/utils/GmsObserver;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onGoogleReachabilityChanged(Z)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGoogleReachabilityChanged :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerKeeper.GMS"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mLastGoogleReachableUsed:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mLastGoogleReachable:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mLastGoogleReachableUsed:Z

    iput-boolean p1, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mLastGoogleReachable:Z

    xor-int/lit8 v0, p1, 0x1

    iget-object v2, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mReachabilityHistoryLog:Landroid/util/LocalLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PowerKeeper.GMS: reach --> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/miui/powerkeeper/utils/GmsObserver;->updateGoogleReletivesWakelock(Z)V

    iget-object v2, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v2, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/utils/GmsObserver;->updateGoogleSync(Z)V

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/utils/GmsObserver;->updateGoogleBackup(Z)V

    return-void
.end method

.method public registerGmsStatusCallback(Lcom/miui/powerkeeper/utils/GmsObserver$StatusCallback;)V
    .registers 5

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mCallbacks:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "PowerKeeper.GMS"

    const-string p1, "gms StatusCallback already registered"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mGmsUid:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    iget-boolean p0, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mGmsBlocked:Z

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    invoke-interface {p1, v1, p0}, Lcom/miui/powerkeeper/utils/GmsObserver$StatusCallback;->onGmsStatusChanged(IZ)V

    :cond_2
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    return-void
.end method

.method public unregisterGmsStatusCallback(Lcom/miui/powerkeeper/utils/GmsObserver$StatusCallback;)V
    .registers 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mCallbacks:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget p0, p0, Lcom/miui/powerkeeper/utils/GmsObserver;->mGmsUid:I

    const/4 v1, 0x0

    invoke-interface {p1, p0, v1}, Lcom/miui/powerkeeper/utils/GmsObserver$StatusCallback;->onGmsStatusChanged(IZ)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    return-void
.end method

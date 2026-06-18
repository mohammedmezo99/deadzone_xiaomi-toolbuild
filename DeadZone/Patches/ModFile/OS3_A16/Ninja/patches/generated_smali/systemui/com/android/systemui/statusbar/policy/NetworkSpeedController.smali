.class public final Lcom/android/systemui/statusbar/policy/NetworkSpeedController;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/systemui/statusbar/policy/MinimalismModeController$MinimalismModeListener;
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/NetworkSpeedController$WorkHandler;
    }
.end annotation


# static fields
.field public static final SSDF:Ljava/text/SimpleDateFormat;


# instance fields
.field public final EMPTY:[Ljava/lang/String;

.field private isChangeVisibleCC_LC:Z

.field private isDouble:Z

.field private isStok:Z

.field private final kil:I

.field private final mBgHandler:Landroid/os/Handler;

.field public final mContext:Landroid/content/Context;

.field public volatile mCurrentUserId:I

.field private final mHandler:Landroid/os/Handler;

.field public final mHistory:[Ljava/lang/String;

.field public mHistoryIndex:I

.field public mIsMinimalismModeOn:Z

.field public mLastDiffSpeed:Ljava/lang/String;

.field public mLastTime:J

.field public mLastUpdateVisible:Ljava/lang/String;

.field public final mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field public mNetworkConnected:Z

.field public final mNetworkSpeedState:Lcom/android/systemui/statusbar/policy/NetworkSpeedState;

.field private mNetworkUpdateInterval:I

.field public final mNetworks:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRxBytes:J

.field public mShowNetworkSpeed:Z

.field public final mShowNetworkSpeedObserver:Landroid/database/ContentObserver;

.field public final mStatusBarIconController:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;

.field private mTotalBytes:J

.field private mTxBytes:J

.field public final mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

.field private final meg:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->SSDF:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;Ljava/util/concurrent/Executor;Lcom/android/systemui/settings/UserTracker;Landroid/net/ConnectivityManager;Lcom/android/systemui/statusbar/policy/MinimalismModeController;Lcom/android/systemui/dump/DumpManager;)V
    .registers 21

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->isStok:Z

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->isChangeVisibleCC_LC:Z

    const-string v4, ""

    iput-object v4, v0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mLastDiffSpeed:Ljava/lang/String;

    iput-object v4, v0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mLastUpdateVisible:Ljava/lang/String;

    new-instance v4, Lcom/android/systemui/statusbar/policy/NetworkSpeedController$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/systemui/statusbar/policy/NetworkSpeedController$1;-><init>(Lcom/android/systemui/statusbar/policy/NetworkSpeedController;Landroid/os/Looper;)V

    iput-object v4, v0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/systemui/statusbar/policy/NetworkSpeedController$2;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/policy/NetworkSpeedController$2;-><init>(Lcom/android/systemui/statusbar/policy/NetworkSpeedController;)V

    iput-object v4, v0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    new-instance v5, Lcom/android/systemui/statusbar/policy/NetworkSpeedController$3;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/policy/NetworkSpeedController$3;-><init>(Lcom/android/systemui/statusbar/policy/NetworkSpeedController;)V

    iput-object v5, v0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    iput-object v6, v0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mNetworks:Ljava/util/HashSet;

    const-string v6, "0.00"

    const-string v7, "KB/s"

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->EMPTY:[Ljava/lang/String;

    const/16 v7, 0x80

    new-array v7, v7, [Ljava/lang/String;

    iput-object v7, v0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mHistory:[Ljava/lang/String;

    iput v3, v0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mHistoryIndex:I

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mContext:Landroid/content/Context;

    const-string v7, "kilobyte_per_second"

    invoke-static {p1, v7}, Landroid/Utils/Utils;->StringToID(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    iput v7, v0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->kil:I

    const-string v7, "megabyte_per_second"

    invoke-static {p1, v7}, Landroid/Utils/Utils;->StringToID(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    iput v7, v0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->meg:I

    iput-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mStatusBarIconController:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;

    new-instance v7, Lcom/android/systemui/statusbar/policy/NetworkSpeedState;

    invoke-direct {v7}, Lcom/android/systemui/statusbar/policy/NetworkSpeedState;-><init>()V

    iput-object v7, v0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mNetworkSpeedState:Lcom/android/systemui/statusbar/policy/NetworkSpeedState;

    aget-object v3, v6, v3

    iput-object v3, v7, Lcom/android/systemui/statusbar/policy/NetworkSpeedState;->networkSpeedNumber:Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v8, v6, v3

    iput-object v8, v7, Lcom/android/systemui/statusbar/policy/NetworkSpeedState;->networkSpeedUnit:Ljava/lang/String;

    move-object v8, v2

    check-cast v8, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;

    invoke-virtual {v8, v7}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->setNetworkSpeedIcon(Lcom/android/systemui/statusbar/policy/NetworkSpeedState;)V

    new-instance v7, Lcom/android/systemui/statusbar/policy/NetworkSpeedController$WorkHandler;

    move-object v8, p2

    invoke-direct {v7, p0, p2}, Lcom/android/systemui/statusbar/policy/NetworkSpeedController$WorkHandler;-><init>(Lcom/android/systemui/statusbar/policy/NetworkSpeedController;Landroid/os/Looper;)V

    iput-object v7, v0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mBgHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/systemui/statusbar/policy/NetworkSpeedController$4;

    invoke-direct {v9, p0, v7}, Lcom/android/systemui/statusbar/policy/NetworkSpeedController$4;-><init>(Lcom/android/systemui/statusbar/policy/NetworkSpeedController;Landroid/os/Handler;)V

    iput-object v9, v0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mShowNetworkSpeedObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "status_bar_show_network_speed"

    invoke-static {v11}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v10, v11, v3, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "status_bar_network_speed_interval"

    invoke-static {v11}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v10, v11, v3, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "network_speed_visible_cc_and_lock_screen"

    invoke-static {v11}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v10, v11, v3, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    move-object/from16 v3, p7

    invoke-virtual {v3, p0}, Lcom/android/systemui/statusbar/policy/MinimalismModeController;->addListener(Lcom/android/systemui/statusbar/policy/MinimalismModeController$MinimalismModeListener;)V

    move-object/from16 v9, p5

    check-cast v9, Lcom/android/systemui/settings/UserTrackerImpl;

    move-object/from16 v10, p4

    invoke-virtual {v9, v5, v10}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v9}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v5

    iput v5, v0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mCurrentUserId:I

    new-instance v5, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v5}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v5}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v5

    move-object/from16 v11, p6

    invoke-virtual {v11, v5, v4, v7}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    move-object/from16 v4, p8

    invoke-virtual {v4, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Lcom/android/systemui/Dumpable;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/NetworkSpeedController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->postUpdateNetworkSpeed()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/NetworkSpeedController;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mBgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/policy/NetworkSpeedController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->updateInterval()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/NetworkSpeedController;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->isChangeVisibleCC_LC:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/policy/NetworkSpeedController;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->isChangeVisibleCC_LC:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/NetworkSpeedController;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->isStok:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/NetworkSpeedController;)I
    .registers 2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->meg:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/NetworkSpeedController;)I
    .registers 2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->kil:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/policy/NetworkSpeedController;Landroid/net/Network;)I
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->getNetId(Landroid/net/Network;)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/policy/NetworkSpeedController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->updateNetworks()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/policy/NetworkSpeedController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->updateShowNetworkSpeed()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/policy/NetworkSpeedController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->updateNetworkSpeed()V

    return-void
.end method

.method public static formatSpeed(Landroid/content/Context;JZ)Ljava/lang/String;
    .registers 13

    if-eqz p3, :cond_0

    const-string v0, "kilobyte_per_second"

    goto :goto_0

    :cond_0
    const-string v0, "kilobyte_per_second_double"

    :goto_0
    invoke-static {p0, v0}, Landroid/Utils/Utils;->StringToID(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    long-to-float v1, p1

    const/high16 v2, 0x44800000

    div-float/2addr v1, v2

    const v3, 0x4479c000

    cmpl-float v3, v1, v3

    if-lez v3, :cond_2

    if-eqz p3, :cond_1

    const-string v3, "megabyte_per_second"

    goto :goto_1

    :cond_1
    const-string v3, "megabyte_per_second_double"

    :goto_1
    invoke-static {p0, v3}, Landroid/Utils/Utils;->StringToID(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    div-float/2addr v1, v2

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "network_speed_suffix"

    invoke-static {p0, v3}, Landroid/Utils/Utils;->StringToID(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/high16 v5, 0x42c80000

    cmpg-float v5, v1, v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-gez v5, :cond_4

    const/high16 v5, 0x41200000

    cmpg-float v5, v1, v5

    if-gez v5, :cond_3

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v5, v7

    const-string v8, "%.2f"

    invoke-static {v8, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_3
    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v5, v7

    const-string v8, "%.1f"

    invoke-static {v8, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_4
    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v5, v7

    const-string v8, "%.0f"

    invoke-static {v8, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    :goto_2
    aput-object v5, v4, v7

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getNetId(Landroid/net/Network;)I
    .registers 7

    const/4 v0, 0x0

    :try_start_0
    const-class v1, Landroid/net/Network;

    const-string v2, "getNetId"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    return v0
.end method

.method private getTotalByte(I)J
    .registers 8

    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v0

    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v2

    if-nez p1, :cond_0

    move-wide v4, v0

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    if-ne p1, v4, :cond_1

    move-wide v4, v2

    goto :goto_0

    :cond_1
    add-long v4, v0, v2

    :goto_0
    return-wide v4
.end method

.method public static m0(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .registers 4

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static m1(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .registers 5

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static m2(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 4

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static m3(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method private postUpdateNetworkSpeed()V
    .registers 3

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->postUpdateNetworkSpeedDelay(J)V

    return-void
.end method

.method private postUpdateNetworkSpeedDelay(J)V
    .registers 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mBgHandler:Landroid/os/Handler;

    const v1, 0x30d41

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private updateInterval()V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "status_bar_network_speed_interval"

    const/16 v2, 0x3e8

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mNetworkUpdateInterval:I

    return-void
.end method

.method private updateNetworkSpeed()V
    .registers 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mHandler:Landroid/os/Handler;

    const v2, 0x186a4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->isDouble:Z

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->isStok:Z

    if-nez v2, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->updateNetworkSpeedMod()V

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x3

    invoke-direct {v0, v4}, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->getTotalByte(I)J

    move-result-wide v4

    iget-wide v6, v0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mLastTime:J

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    cmp-long v12, v6, v10

    if-eqz v12, :cond_1

    cmp-long v12, v2, v6

    if-lez v12, :cond_1

    iget-wide v12, v0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mTotalBytes:J

    cmp-long v14, v12, v10

    if-eqz v14, :cond_1

    cmp-long v10, v4, v10

    if-eqz v10, :cond_1

    cmp-long v10, v4, v12

    if-lez v10, :cond_1

    sub-long v10, v4, v12

    const-wide/16 v14, 0x3e8

    mul-long/2addr v10, v14

    sub-long v14, v2, v6

    div-long v8, v10, v14

    :cond_1
    const-string v10, "time="

    const-string v11, "-"

    invoke-static {v10, v2, v3, v11}, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->m3(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v12, v0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mLastTime:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, ", bytes= "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mTotalBytes:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mLastDiffSpeed:Ljava/lang/String;

    iput-wide v2, v0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mLastTime:J

    iput-wide v4, v0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mTotalBytes:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    iput-object v11, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    iget v11, v0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mNetworkUpdateInterval:I

    int-to-long v11, v11

    invoke-direct {v0, v11, v12}, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->postUpdateNetworkSpeedDelay(J)V

    const-wide/16 v11, 0xa

    cmp-long v11, v8, v11

    if-ltz v11, :cond_2

    iget-object v11, v0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mHistory:[Ljava/lang/String;

    iget v12, v0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mHistoryIndex:I

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->SSDF:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ": "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    iget v11, v0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mHistoryIndex:I

    add-int/lit8 v11, v11, 0x1

    rem-int/lit16 v11, v11, 0x80

    iput v11, v0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mHistoryIndex:I

    :cond_2
    return-void
.end method

.method private updateNetworkSpeedMod()V
    .registers 22

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mHandler:Landroid/os/Handler;

    const v2, 0x186a4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-direct {v0, v4}, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->getTotalByte(I)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-nez v9, :cond_0

    iput-wide v7, v0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mLastTime:J

    iput-wide v7, v0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mRxBytes:J

    invoke-direct {v0, v4}, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->getTotalByte(I)J

    move-result-wide v5

    :cond_0
    const-wide/16 v9, 0x0

    iget-wide v11, v0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mLastTime:J

    cmp-long v13, v11, v7

    if-eqz v13, :cond_1

    cmp-long v13, v2, v11

    if-lez v13, :cond_1

    iget-wide v14, v0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mRxBytes:J

    cmp-long v13, v14, v7

    if-eqz v13, :cond_1

    cmp-long v13, v5, v7

    if-eqz v13, :cond_1

    cmp-long v13, v5, v14

    if-lez v13, :cond_1

    sub-long v13, v5, v14

    const-wide/16 v15, 0x3e8

    mul-long/2addr v13, v15

    sub-long v11, v2, v11

    div-long v9, v13, v11

    :cond_1
    const/4 v11, 0x1

    invoke-direct {v0, v11}, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->getTotalByte(I)J

    move-result-wide v12

    cmp-long v14, v12, v7

    if-nez v14, :cond_2

    iput-wide v7, v0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mLastTime:J

    iput-wide v7, v0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mTxBytes:J

    invoke-direct {v0, v11}, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->getTotalByte(I)J

    move-result-wide v12

    :cond_2
    const-wide/16 v14, 0x0

    move-wide/from16 v17, v5

    iget-wide v4, v0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mLastTime:J

    cmp-long v6, v4, v7

    if-eqz v6, :cond_3

    cmp-long v6, v2, v4

    if-lez v6, :cond_3

    move-wide/from16 v19, v12

    iget-wide v11, v0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mTxBytes:J

    cmp-long v13, v11, v7

    if-eqz v13, :cond_4

    cmp-long v7, v19, v7

    if-eqz v7, :cond_4

    cmp-long v7, v19, v11

    if-lez v7, :cond_4

    sub-long v12, v19, v11

    const-wide/16 v7, 0x3e8

    mul-long/2addr v12, v7

    sub-long v4, v2, v4

    div-long v14, v12, v4

    goto :goto_0

    :cond_3
    move-wide/from16 v19, v12

    :cond_4
    :goto_0
    const-string v4, "time="

    const-string v5, "-"

    invoke-static {v4, v2, v3, v5}, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->m3(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v7, v0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mLastTime:J

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", bytes= "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-long v7, v17, v19

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mTotalBytes:J

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mLastDiffSpeed:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Long;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v5, v8

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v6, 0x1

    aput-object v7, v5, v6

    iput-object v5, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    iput-wide v2, v0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mLastTime:J

    move-wide/from16 v5, v17

    iput-wide v5, v0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mRxBytes:J

    move-wide/from16 v12, v19

    iput-wide v12, v0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mTxBytes:J

    iget v7, v0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mNetworkUpdateInterval:I

    int-to-long v7, v7

    invoke-direct {v0, v7, v8}, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->postUpdateNetworkSpeedDelay(J)V

    return-void
.end method

.method private updateNetworks()V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mNetworks:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const v2, 0x186a1

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private updateShowNetworkSpeed()V
    .registers 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "status_bar_show_network_speed"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v3, 0x2

    if-lt v0, v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->isDouble:Z

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->isStok:Z

    const-class v3, Lcom/android/systemui/newstatusbar/controllers/NetSpeedColorSizeController;

    invoke-static {v3}, Lcom/android/systemui/plugins/ControllerStorage;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/newstatusbar/controllers/NetSpeedColorSizeController;

    const-string v4, "net_speed_color"

    invoke-virtual {v3, v4}, Lcom/android/systemui/newstatusbar/controllers/NetSpeedColorSizeController;->onCustomChanged(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mHandler:Landroid/os/Handler;

    const v4, 0x186a2

    if-lez v0, :cond_2

    move v2, v1

    :cond_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 14

    const-string v0, "NetworkSpeedController"

    const-string v1, "  visible="

    invoke-static {p1, v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->m0(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mNetworkSpeedState:Lcom/android/systemui/statusbar/policy/NetworkSpeedState;

    iget-boolean v2, v1, Lcom/android/systemui/statusbar/policy/NetworkSpeedState;->visible:Z

    const-string v3, "  lastTime="

    invoke-static {v0, v2, p1, v3}, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->m1(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mLastTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", totalBytes="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mTotalBytes:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  lastDiffSpeed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mLastDiffSpeed:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  lastUpdateVisible="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mLastUpdateVisible:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "  showNetworkSpeed="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mShowNetworkSpeed:Z

    const-string v5, "  networkConnected="

    invoke-static {v3, v4, p1, v5}, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->m1(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mNetworkConnected:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", network="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mNetworks:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mNetworks:Ljava/util/HashSet;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  networkSpeedNumber="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/systemui/statusbar/policy/NetworkSpeedState;->networkSpeedNumber:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  networkSpeedUnit="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/systemui/statusbar/policy/NetworkSpeedState;->networkSpeedUnit:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v4, "  dump speed history (ignore speed < 10 byte): "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mHistory:[Ljava/lang/String;

    const/16 v7, 0x80

    if-lt v4, v7, :cond_1

    nop

    iget v8, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mHistoryIndex:I

    add-int/lit8 v8, v8, 0x7f

    :goto_1
    iget v9, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mHistoryIndex:I

    add-int/2addr v9, v7

    sub-int/2addr v9, v5

    if-lt v8, v9, :cond_0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "    ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mHistoryIndex:I

    add-int/2addr v10, v7

    sub-int/2addr v10, v8

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    and-int/lit8 v10, v8, 0x7f

    aget-object v10, v6, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    :cond_0
    return-void

    :cond_1
    aget-object v7, v6, v4

    if-eqz v7, :cond_2

    add-int/lit8 v5, v5, 0x1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public final onMinimalismModeChanged(Z)V
    .registers 3

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mIsMinimalismModeOn:Z

    const-string v0, "mode"

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->updateVisibility(Ljava/lang/String;)V

    return-void
.end method

.method public final updateText([Ljava/lang/String;)V
    .registers 8

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mNetworkSpeedState:Lcom/android/systemui/statusbar/policy/NetworkSpeedState;

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkSpeedState;->networkSpeedNumber:Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v5, p1, v4

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    aget-object v3, p1, v4

    iput-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkSpeedState;->networkSpeedNumber:Ljava/lang/String;

    const/4 v1, 0x1

    :cond_0
    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkSpeedState;->networkSpeedUnit:Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v5, p1, v4

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    aget-object v3, p1, v4

    iput-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkSpeedState;->networkSpeedUnit:Ljava/lang/String;

    :goto_0
    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mStatusBarIconController:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;

    check-cast v3, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->setNetworkSpeedIcon(Lcom/android/systemui/statusbar/policy/NetworkSpeedState;)V

    :cond_2
    return-void
.end method

.method public final updateVisibility(Ljava/lang/String;)V
    .registers 7

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mShowNetworkSpeed:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mNetworkConnected:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mIsMinimalismModeOn:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mNetworkSpeedState:Lcom/android/systemui/statusbar/policy/NetworkSpeedState;

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/policy/NetworkSpeedState;->visible:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mShowNetworkSpeed:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mNetworkConnected:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mIsMinimalismModeOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mLastUpdateVisible:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mHandler:Landroid/os/Handler;

    const v3, 0x186a4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mLastTime:J

    iput-wide v2, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mTotalBytes:J

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->EMPTY:[Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->updateText([Ljava/lang/String;)V

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mStatusBarIconController:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;

    check-cast v2, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->setNetworkSpeedIcon(Lcom/android/systemui/statusbar/policy/NetworkSpeedState;)V

    const-class v2, Lcom/android/systemui/newstatusbar/controllers/ElementController;

    invoke-static {v2}, Lcom/android/systemui/plugins/ControllerStorage;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/newstatusbar/controllers/ElementController;

    invoke-virtual {v2, v0}, Lcom/android/systemui/newstatusbar/controllers/ElementController;->updateShowNetworkSpeed(Z)V

    return-void
.end method

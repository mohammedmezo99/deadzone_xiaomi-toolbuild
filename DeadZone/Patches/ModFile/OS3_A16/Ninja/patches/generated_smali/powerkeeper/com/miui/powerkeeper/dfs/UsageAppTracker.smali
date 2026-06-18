.class public Lcom/miui/powerkeeper/dfs/UsageAppTracker;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/powerkeeper/dfs/UsageAppTracker$TrackingData;,
        Lcom/miui/powerkeeper/dfs/UsageAppTracker$AbnormalReason;
    }
.end annotation


# static fields
.field public static final MSG_DELAY_FOR_STABILIZED:I = 0x0

.field public static final REASONS:[Ljava/lang/String;

.field public static final REASON_INDEX_RADIO_SIGNAL:I = 0x1

.field public static final REASON_INDEX_WIFI_SIGNAL:I = 0x0

.field public static final TAG:Ljava/lang/String; = "DFS-AppUsageTracker"

.field public static final TRACKING_APPS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCloudData:Lcom/miui/powerkeeper/dfs/CloudData;

.field private final mContext:Landroid/content/Context;

.field private mDebugReasonList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/powerkeeper/dfs/UsageAppTracker$AbnormalReason;",
            ">;"
        }
    .end annotation
.end field

.field private mFgInfo:Lmiui/process/ForegroundInfo;

.field private final mHandler:Landroid/os/Handler;

.field private mOnBattery:Z

.field private mScreenOff:Z

.field private volatile mTracking:Z

.field private mTrackingData:Lcom/miui/powerkeeper/dfs/UsageAppTracker$TrackingData;

.field private final mTrackingLock:Ljava/lang/Object;

.field mUsageManager:Lcom/miui/powerkeeper/dfs/UsageManager;

.field private volatile mVpnEnabled:Z

.field private mVpnTimer:Lk/c;

.field private mWifiApDurationMs:J

.field private mWifiApEnabled:Z

.field private mWifiApStartTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "wifi_signal_poor"

    const-string v1, "radio_signal_poor"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->REASONS:[Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->TRACKING_APPS:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/miui/powerkeeper/dfs/CloudData;Lcom/miui/powerkeeper/dfs/UsageManager;Landroid/os/Looper;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mTrackingLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mTrackingData:Lcom/miui/powerkeeper/dfs/UsageAppTracker$TrackingData;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mOnBattery:Z

    iput-boolean v0, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mScreenOff:Z

    iput-boolean v0, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mVpnEnabled:Z

    iput-boolean v0, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mWifiApEnabled:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mWifiApDurationMs:J

    iput-wide v0, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mWifiApStartTime:J

    iput-object p1, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mCloudData:Lcom/miui/powerkeeper/dfs/CloudData;

    iput-object p2, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mUsageManager:Lcom/miui/powerkeeper/dfs/UsageManager;

    invoke-static {}, Lcom/miui/powerkeeper/PowerKeeperApplication;->b()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mContext:Landroid/content/Context;

    sget-boolean p2, Lmiui/os/Build;->IS_MIUI:Z

    if-eqz p2, :cond_0

    const p2, 0x7f010001

    goto :goto_0

    :cond_0
    const/high16 p2, 0x7f010000

    :goto_0
    sget-object v0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->TRACKING_APPS:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lcom/miui/powerkeeper/PowerKeeperManager;->getInstance()Lcom/miui/powerkeeper/PowerKeeperManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/powerkeeper/PowerKeeperManager;->isCharging()Z

    move-result p2

    const/4 v0, 0x1

    xor-int/2addr p2, v0

    iput-boolean p2, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mOnBattery:Z

    const-class p2, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/wifi/WifiManager;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result p2

    iput-boolean p2, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mWifiApEnabled:Z

    :cond_1
    const/16 p2, 0x68

    invoke-static {p2}, Lcom/miui/powerkeeper/siming/Subdivisions;->isDisabled(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/miui/powerkeeper/siming/SiMing;->getInstance()Lcom/miui/powerkeeper/siming/SiMing;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Lcom/miui/powerkeeper/siming/SiMing;->update(IZ)V

    :cond_2
    new-instance p2, Lcom/miui/powerkeeper/dfs/UsageAppTracker$1;

    invoke-direct {p2, p0, p3}, Lcom/miui/powerkeeper/dfs/UsageAppTracker$1;-><init>(Lcom/miui/powerkeeper/dfs/UsageAppTracker;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Lcom/miui/powerkeeper/dfs/UsageMonitor;->getInstance(Landroid/content/Context;)Lcom/miui/powerkeeper/dfs/UsageMonitor;

    move-result-object p1

    new-instance p2, Lcom/miui/powerkeeper/dfs/c;

    invoke-direct {p2, p0}, Lcom/miui/powerkeeper/dfs/c;-><init>(Lcom/miui/powerkeeper/dfs/UsageAppTracker;)V

    invoke-virtual {p1, p2}, Lcom/miui/powerkeeper/dfs/UsageMonitor;->registerUsageCallback(Lcom/miui/powerkeeper/dfs/UsageMonitor$UsageCallback;)V

    return-void
.end method

.method public static synthetic a(Lcom/miui/powerkeeper/dfs/UsageAppTracker;ILandroid/os/Bundle;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->lambda$new$0(ILandroid/os/Bundle;)V

    return-void
.end method

.method static bridge synthetic b(Lcom/miui/powerkeeper/dfs/UsageAppTracker;Landroid/os/Message;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method private checkPower()V
    .registers 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mTrackingData:Lcom/miui/powerkeeper/dfs/UsageAppTracker$TrackingData;

    if-nez v1, :cond_0

    goto :goto_5

    :cond_0
    iget-object v1, v0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mUsageManager:Lcom/miui/powerkeeper/dfs/UsageManager;

    invoke-virtual {v1}, Lcom/miui/powerkeeper/dfs/UsageManager;->getmClock()Lk/a;

    move-result-object v1

    invoke-virtual {v1}, Lk/a;->b()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, v0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mTrackingData:Lcom/miui/powerkeeper/dfs/UsageAppTracker$TrackingData;

    iget-wide v5, v5, Lcom/miui/powerkeeper/dfs/UsageAppTracker$TrackingData;->startTime:J

    sub-long v11, v3, v5

    iget-object v3, v0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mCloudData:Lcom/miui/powerkeeper/dfs/CloudData;

    invoke-virtual {v3}, Lcom/miui/powerkeeper/dfs/CloudData;->getAppUsageAbnormalCheck()I

    move-result v3

    int-to-long v3, v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    cmp-long v3, v11, v3

    const-string v4, "DFS-AppUsageTracker"

    if-gez v3, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Track time is too short. trackingTimeMs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", configTimeMs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mCloudData:Lcom/miui/powerkeeper/dfs/CloudData;

    invoke-virtual {v0}, Lcom/miui/powerkeeper/dfs/CloudData;->getAppUsageAbnormalCheck()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v3, v0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mTrackingData:Lcom/miui/powerkeeper/dfs/UsageAppTracker$TrackingData;

    iget-wide v5, v3, Lcom/miui/powerkeeper/dfs/UsageAppTracker$TrackingData;->startPower:D

    invoke-static {}, Lcom/miui/powerkeeper/batterylife/systeminfo/BSHelper;->getCurrentBatteryCap()D

    move-result-wide v7

    sub-double/2addr v5, v7

    invoke-direct {v0, v5, v6, v11, v12}, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->getCurrentAm(DJ)F

    move-result v10

    invoke-static {}, Lcom/miui/powerkeeper/siming/SiMing;->getInstance()Lcom/miui/powerkeeper/siming/SiMing;

    move-result-object v3

    const/16 v5, 0x68

    invoke-virtual {v3, v5}, Lcom/miui/powerkeeper/siming/SiMing;->getDivision(I)Lcom/miui/powerkeeper/siming/IDivision;

    move-result-object v3

    check-cast v3, Lcom/miui/powerkeeper/siming/shaosi/AppUsageN;

    if-nez v3, :cond_2

    goto :goto_5

    :cond_2
    iget-object v5, v0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mTrackingData:Lcom/miui/powerkeeper/dfs/UsageAppTracker$TrackingData;

    iget-object v5, v5, Lcom/miui/powerkeeper/dfs/UsageAppTracker$TrackingData;->trackingPkg:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/miui/powerkeeper/siming/shaosi/AppUsageN;->getAvgCurrent(Ljava/lang/String;)F

    move-result v3

    sget-boolean v5, Lcom/miui/powerkeeper/dfs/DfsUtils;->DEBUG:Z

    const/high16 v6, 0x42c80000

    const/4 v7, 0x0

    const-string v8, ", historyCurrent="

    if-eqz v5, :cond_3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "avgCurrent="

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmpg-float v9, v3, v7

    if-gtz v9, :cond_3

    const-string v3, "No history data, just set to 100mA for debug."

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v6

    goto :goto_0

    :cond_3
    move v9, v3

    :goto_0
    cmpg-float v3, v9, v7

    if-ltz v3, :cond_14

    iget-object v3, v0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mCloudData:Lcom/miui/powerkeeper/dfs/CloudData;

    invoke-virtual {v3}, Lcom/miui/powerkeeper/dfs/CloudData;->getAppUsageAbnormalThreshold()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v9

    div-float/2addr v3, v6

    add-float/2addr v3, v9

    cmpg-float v3, v10, v3

    if-gez v3, :cond_4

    goto :goto_6

    :cond_4
    invoke-static {}, Lcom/miui/powerkeeper/powerchecker/BatteryStatsHelper;->getBatteryStats()Lcom/android/internal/app/IBatteryStats;

    move-result-object v3

    if-nez v3, :cond_5

    const-string v0, "startTracking failed! IBatteryStats is null."

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    sget v6, Lcom/miui/powerkeeper/dfs/DfsUtils;->VERSION:I

    const/4 v7, 0x4

    const/4 v13, 0x2

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-ge v6, v7, :cond_8

    invoke-static {v3, v13, v15}, Lcom/miui/powerkeeper/dfs/UsageReader;->getPoorSignalStrengthTime(Lcom/android/internal/app/IBatteryStats;IZ)J

    move-result-wide v1

    iget-object v6, v0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mTrackingData:Lcom/miui/powerkeeper/dfs/UsageAppTracker$TrackingData;

    iget-wide v6, v6, Lcom/miui/powerkeeper/dfs/UsageAppTracker$TrackingData;->wifiPoorSignalDuration:J

    sub-long/2addr v1, v6

    invoke-static {v3, v13, v14}, Lcom/miui/powerkeeper/dfs/UsageReader;->getPoorSignalStrengthTime(Lcom/android/internal/app/IBatteryStats;IZ)J

    move-result-wide v6

    iget-object v3, v0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mTrackingData:Lcom/miui/powerkeeper/dfs/UsageAppTracker$TrackingData;

    iget-wide v8, v3, Lcom/miui/powerkeeper/dfs/UsageAppTracker$TrackingData;->radioPoorSignalDuration:J

    sub-long/2addr v6, v8

    if-eqz v5, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startTracking wifiSignalPoorS="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", trackingTimeMs="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v3, v0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mCloudData:Lcom/miui/powerkeeper/dfs/CloudData;

    invoke-virtual {v3, v15}, Lcom/miui/powerkeeper/dfs/CloudData;->getPoorSignalRatio(I)I

    move-result v3

    int-to-long v3, v3

    mul-long/2addr v3, v11

    const-wide/32 v8, 0x186a0

    div-long/2addr v3, v8

    cmp-long v1, v1, v3

    if-lez v1, :cond_7

    invoke-static {}, Lcom/miui/powerkeeper/dfs/MiEventConstructor;->getInstance()Lcom/miui/powerkeeper/dfs/MiEventConstructor;

    move-result-object v1

    iget-object v2, v0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mTrackingData:Lcom/miui/powerkeeper/dfs/UsageAppTracker$TrackingData;

    iget-object v2, v2, Lcom/miui/powerkeeper/dfs/UsageAppTracker$TrackingData;->trackingPkg:Ljava/lang/String;

    sget-object v3, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->REASONS:[Ljava/lang/String;

    aget-object v3, v3, v14

    invoke-virtual {v1, v2, v10, v3}, Lcom/miui/powerkeeper/dfs/MiEventConstructor;->upToMiSightAppUsageSignalPool(Ljava/lang/String;FLjava/lang/String;)V

    :cond_7
    iget-object v1, v0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mCloudData:Lcom/miui/powerkeeper/dfs/CloudData;

    invoke-virtual {v1, v15}, Lcom/miui/powerkeeper/dfs/CloudData;->getPoorSignalRatio(I)I

    move-result v1

    int-to-long v1, v1

    mul-long/2addr v11, v1

    div-long/2addr v11, v8

    cmp-long v1, v6, v11

    if-lez v1, :cond_13

    invoke-static {}, Lcom/miui/powerkeeper/dfs/MiEventConstructor;->getInstance()Lcom/miui/powerkeeper/dfs/MiEventConstructor;

    move-result-object v1

    iget-object v0, v0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mTrackingData:Lcom/miui/powerkeeper/dfs/UsageAppTracker$TrackingData;

    iget-object v0, v0, Lcom/miui/powerkeeper/dfs/UsageAppTracker$TrackingData;->trackingPkg:Ljava/lang/String;

    sget-object v2, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->REASONS:[Ljava/lang/String;

    aget-object v2, v2, v15

    invoke-virtual {v1, v0, v10, v2}, Lcom/miui/powerkeeper/dfs/MiEventConstructor;->upToMiSightAppUsageSignalPool(Ljava/lang/String;FLjava/lang/String;)V

    return-void

    :cond_8
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v3, v11, v12}, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->getWifiSignalPoor(Lcom/android/internal/app/IBatteryStats;J)Lcom/miui/powerkeeper/dfs/UsageAppTracker$AbnormalReason;

    move-result-object v7

    if-eqz v7, :cond_9

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v13, v14}, Lcom/miui/powerkeeper/dfs/DfsUtils;->addLogBit(II)I

    move-result v7

    move/from16 v16, v14

    goto :goto_1

    :cond_9
    move v7, v14

    move/from16 v16, v7

    :goto_1
    invoke-direct {v0, v3, v11, v12}, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->getRadioSignalPoor(Lcom/android/internal/app/IBatteryStats;J)Lcom/miui/powerkeeper/dfs/UsageAppTracker$AbnormalReason;

    move-result-object v14

    move/from16 v17, v15

    const/16 v15, 0xd

    const/4 v13, 0x5

    if-eqz v14, :cond_a

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v13, v7}, Lcom/miui/powerkeeper/dfs/DfsUtils;->addLogBit(II)I

    move-result v7

    invoke-static {v15, v7}, Lcom/miui/powerkeeper/dfs/DfsUtils;->addLogBit(II)I

    move-result v7

    :cond_a
    iget-object v14, v0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mTrackingData:Lcom/miui/powerkeeper/dfs/UsageAppTracker$TrackingData;

    invoke-direct {v0, v14}, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->getBgCpuHigh(Lcom/miui/powerkeeper/dfs/UsageAppTracker$TrackingData;)Lcom/miui/powerkeeper/dfs/UsageAppTracker$AbnormalReason;

    move-result-object v14

    const/16 v15, 0x11

    if-eqz v14, :cond_b

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v15, v7}, Lcom/miui/powerkeeper/dfs/DfsUtils;->addLogBit(II)I

    move-result v7

    :cond_b
    invoke-direct {v0, v11, v12, v1, v2}, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->getVpnEnabled(JJ)Lcom/miui/powerkeeper/dfs/UsageAppTracker$AbnormalReason;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x8

    invoke-static {v1, v7}, Lcom/miui/powerkeeper/dfs/DfsUtils;->addLogBit(II)I

    move-result v7

    :cond_c
    iget-object v1, v0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mTrackingData:Lcom/miui/powerkeeper/dfs/UsageAppTracker$TrackingData;

    invoke-direct {v0, v11, v12, v1}, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->getRxTxReason(JLcom/miui/powerkeeper/dfs/UsageAppTracker$TrackingData;)[Lcom/miui/powerkeeper/dfs/UsageAppTracker$AbnormalReason;

    move-result-object v1

    aget-object v2, v1, v16

    const/4 v14, 0x6

    if-eqz v2, :cond_d

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v13, v7}, Lcom/miui/powerkeeper/dfs/DfsUtils;->addLogBit(II)I

    move-result v2

    invoke-static {v14, v2}, Lcom/miui/powerkeeper/dfs/DfsUtils;->addLogBit(II)I

    move-result v2

    const/16 v7, 0xd

    invoke-static {v7, v2}, Lcom/miui/powerkeeper/dfs/DfsUtils;->addLogBit(II)I

    move-result v7

    :cond_d
    aget-object v1, v1, v17

    if-eqz v1, :cond_e

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x2

    invoke-static {v1, v7}, Lcom/miui/powerkeeper/dfs/DfsUtils;->addLogBit(II)I

    move-result v2

    invoke-static {v14, v2}, Lcom/miui/powerkeeper/dfs/DfsUtils;->addLogBit(II)I

    move-result v7

    goto :goto_2

    :cond_e
    const/4 v1, 0x2

    :goto_2
    invoke-direct {v0, v3, v11, v12}, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->getWifiApEnabled(Lcom/android/internal/app/IBatteryStats;J)Lcom/miui/powerkeeper/dfs/UsageAppTracker$AbnormalReason;

    move-result-object v2

    if-eqz v2, :cond_f

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v1, v7}, Lcom/miui/powerkeeper/dfs/DfsUtils;->addLogBit(II)I

    move-result v1

    const/16 v2, 0x9

    invoke-static {v2, v1}, Lcom/miui/powerkeeper/dfs/DfsUtils;->addLogBit(II)I

    move-result v7

    :cond_f
    iget-object v1, v0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mTrackingData:Lcom/miui/powerkeeper/dfs/UsageAppTracker$TrackingData;

    invoke-direct {v0, v11, v12, v1}, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->getCpuTimeStatus(JLcom/miui/powerkeeper/dfs/UsageAppTracker$TrackingData;)Lcom/miui/powerkeeper/dfs/UsageAppTracker$AbnormalReason;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v15, v7}, Lcom/miui/powerkeeper/dfs/DfsUtils;->addLogBit(II)I

    move-result v7

    :cond_10
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    const-string v1, "Checking finished. Not find any abnormal reason!"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    float-to-double v1, v10

    const-wide v18, 0x4003333333333333L

    float-to-double v13, v9

    mul-double v13, v13, v18

    cmpg-double v1, v1, v13

    if-gez v1, :cond_11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The current is abnormal but acceptable. avgCurrent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_11
    new-instance v1, Lcom/miui/powerkeeper/dfs/UsageAppTracker$AbnormalReason;

    invoke-direct {v1}, Lcom/miui/powerkeeper/dfs/UsageAppTracker$AbnormalReason;-><init>()V

    const/16 v2, 0x20

    iput v2, v1, Lcom/miui/powerkeeper/dfs/UsageAppTracker$AbnormalReason;->reasonId:I

    const-string v2, "Unknown"

    iput-object v2, v1, Lcom/miui/powerkeeper/dfs/UsageAppTracker$AbnormalReason;->reasonDesc:Ljava/lang/String;

    move/from16 v2, v17

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, v1, Lcom/miui/powerkeeper/dfs/UsageAppTracker$AbnormalReason;->reasonParams:[Ljava/lang/String;

    const-string v3, "abnormal"

    aput-object v3, v2, v16

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Power consumption is too high, report it anyway. Reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    :goto_3
    move v14, v1

    goto :goto_4

    :cond_12
    move/from16 v2, v17

    invoke-static {v2, v7}, Lcom/miui/powerkeeper/dfs/DfsUtils;->addLogBit(II)I

    move-result v1

    move/from16 v2, v16

    invoke-static {v2, v1}, Lcom/miui/powerkeeper/dfs/DfsUtils;->addLogBit(II)I

    move-result v1

    goto :goto_3

    :goto_4
    invoke-static {}, Lcom/miui/powerkeeper/dfs/MiEventConstructor;->getInstance()Lcom/miui/powerkeeper/dfs/MiEventConstructor;

    move-result-object v7

    iget-object v1, v0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mTrackingData:Lcom/miui/powerkeeper/dfs/UsageAppTracker$TrackingData;

    iget-object v8, v1, Lcom/miui/powerkeeper/dfs/UsageAppTracker$TrackingData;->trackingPkg:Ljava/lang/String;

    move-object v13, v6

    invoke-virtual/range {v7 .. v14}, Lcom/miui/powerkeeper/dfs/MiEventConstructor;->upToMiSightAppUsage(Ljava/lang/String;FFJLjava/util/ArrayList;I)V

    if-eqz v5, :cond_13

    iput-object v13, v0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mDebugReasonList:Ljava/util/ArrayList;

    :cond_13
    :goto_5
    return-void

    :cond_14
    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The current is normal. avgCurrent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private getBgCpuHigh(Lcom/miui/powerkeeper/dfs/UsageAppTracker$TrackingData;)Lcom/miui/powerkeeper/dfs/UsageAppTracker$AbnormalReason;
    .registers 10

    iget-object p0, p1, Lcom/miui/powerkeeper/dfs/UsageAppTracker$TrackingData;->bgCpuHighList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    new-instance p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker$AbnormalReason;

    invoke-direct {p0}, Lcom/miui/powerkeeper/dfs/UsageAppTracker$AbnormalReason;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker$AbnormalReason;->reasonId:I

    const-string v1, "high_cpu_usage"

    iput-object v1, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker$AbnormalReason;->reasonDesc:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker$AbnormalReason;->reasonParams:[Ljava/lang/String;

    const-string v3, "abnormalApps=["

    aput-object v3, v2, v0

    iget-object p1, p1, Lcom/miui/powerkeeper/dfs/UsageAppTracker$TrackingData;->bgCpuHighList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker$AbnormalReason;->reasonParams:[Ljava/lang/String;

    aget-object v7, v6, v0

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ";"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker$AbnormalReason;->reasonParams:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker$AbnormalReason;->reasonParams:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getCpuTimeStatus(JLcom/miui/powerkeeper/dfs/UsageAppTracker$TrackingData;)Lcom/miui/powerkeeper/dfs/UsageAppTracker$AbnormalReason;
    .registers 25

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/miui/powerkeeper/dfs/UsageAppTracker$TrackingData;->cpuTime:[J

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    invoke-static {}, Lcom/miui/powerkeeper/dfs/UsageReader;->getCpuTime()[J

    move-result-object v1

    const/4 v3, 0x0

    aget-wide v4, v1, v3

    iget-object v0, v0, Lcom/miui/powerkeeper/dfs/UsageAppTracker$TrackingData;->cpuTime:[J

    aget-wide v6, v0, v3

    sub-long/2addr v4, v6

    const/4 v6, 0x1

    aget-wide v7, v1, v6

    aget-wide v9, v0, v6

    sub-long/2addr v7, v9

    const/4 v9, 0x2

    aget-wide v10, v1, v9

    aget-wide v12, v0, v9

    sub-long/2addr v10, v12

    const/4 v12, 0x3

    aget-wide v13, v1, v12

    aget-wide v15, v0, v12

    sub-long/2addr v13, v15

    const/4 v15, 0x4

    aget-wide v16, v1, v15

    aget-wide v18, v0, v15

    sub-long v16, v16, v18

    const/16 v18, 0x5

    aget-wide v19, v1, v18

    aget-wide v0, v0, v18

    sub-long v19, v19, v0

    add-long v0, v4, v7

    add-long/2addr v0, v10

    add-long/2addr v0, v13

    add-long v0, v0, v16

    add-long v0, v0, v19

    move-object/from16 p0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v3

    const-string v3, "getCpuTimeStatus totalTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", idleTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", trackingTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v10, p1

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DFS-AppUsageTracker"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v10, 0x0

    cmp-long v2, v0, v10

    if-nez v2, :cond_1

    return-object p0

    :cond_1
    const-wide/16 v10, 0x64

    mul-long/2addr v4, v10

    div-long/2addr v4, v0

    long-to-int v2, v4

    mul-long/2addr v7, v10

    div-long/2addr v7, v0

    long-to-int v4, v7

    add-long v16, v16, v13

    add-long v16, v16, v19

    mul-long v16, v16, v10

    div-long v7, v16, v0

    long-to-int v5, v7

    sget-boolean v7, Lcom/miui/powerkeeper/dfs/DfsUtils;->DEBUG:Z

    if-eqz v7, :cond_2

    const/16 v8, 0x14

    goto :goto_0

    :cond_2
    const/16 v8, 0x5a

    :goto_0
    if-eqz v7, :cond_3

    const/16 v7, 0xa

    goto :goto_1

    :cond_3
    const/16 v7, 0x46

    :goto_1
    add-int v10, v2, v4

    if-ge v10, v8, :cond_4

    if-ge v5, v7, :cond_4

    const-string v0, "getCpuTimeStatus: cpu load normal"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_4
    new-instance v7, Lcom/miui/powerkeeper/dfs/UsageAppTracker$AbnormalReason;

    invoke-direct {v7}, Lcom/miui/powerkeeper/dfs/UsageAppTracker$AbnormalReason;-><init>()V

    const/4 v8, 0x7

    iput v8, v7, Lcom/miui/powerkeeper/dfs/UsageAppTracker$AbnormalReason;->reasonId:I

    const-string v8, "high_cpu_load"

    iput-object v8, v7, Lcom/miui/powerkeeper/dfs/UsageAppTracker$AbnormalReason;->reasonDesc:Ljava/lang/String;

    new-array v8, v15, [Ljava/lang/String;

    iput-object v8, v7, Lcom/miui/powerkeeper/dfs/UsageAppTracker$AbnormalReason;->reasonParams:[Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "user="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v18

    iget-object v8, v7, Lcom/miui/powerkeeper/dfs/UsageAppTracker$AbnormalReason;->reasonParams:[Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "kernel="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v6

    iget-object v4, v7, Lcom/miui/powerkeeper/dfs/UsageAppTracker$AbnormalReason;->reasonParams:[Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "irq="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v9

    iget-object v2, v7, Lcom/miui/powerkeeper/dfs/UsageAppTracker$AbnormalReason;->reasonParams:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "totalTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7
.end method

.method private getCurrentAm(DJ)F
    .registers 7

    const-wide v0, 0x40ac200000000000L

    mul-double/2addr p1, v0

    const-wide v0, 0x408f400000000000L

    mul-double/2addr p1, v0

    long-to-double p3, p3

    div-double/2addr p1, p3

    double-to-float p0, p1

    return p0
.end method

.method private getRadioSignalPoor(Lcom/android/internal/app/IBatteryStats;J)Lcom/miui/powerkeeper/dfs/UsageAppTracker$AbnormalReason;
    .registers 13

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/miui/powerkeeper/dfs/UsageReader;->getPoorSignalStrengthTime(Lcom/android/internal/app/IBatteryStats;IZ)J

    move-result-wide v2

    iget-object v4, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mTrackingData:Lcom/miui/powerkeeper/dfs/UsageAppTracker$TrackingData;

    iget-wide v4, v4, Lcom/miui/powerkeeper/dfs/UsageAppTracker$TrackingData;->radioPoorSignalDuration:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3

    div-long v4, p2, v4

    invoke-direct {p0, p1, v4, v5, v1}, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->isNetworkActive(Lcom/android/internal/app/IBatteryStats;JZ)Z

    move-result p1

    const/4 v4, 0x0

    if-nez p1, :cond_0

    return-object v4

    :cond_0
    iget-object p0, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mCloudData:Lcom/miui/powerkeeper/dfs/CloudData;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/miui/powerkeeper/dfs/CloudData;->getPoorSignalRatio(I)I

    move-result p0

    int-to-long v5, p0

    mul-long/2addr v5, p2

    const-wide/32 v7, 0x186a0

    div-long/2addr v5, v7

    cmp-long p0, v2, v5

    if-lez p0, :cond_1

    new-instance p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker$AbnormalReason;

    invoke-direct {p0}, Lcom/miui/powerkeeper/dfs/UsageAppTracker$AbnormalReason;-><init>()V

    const/4 v4, 0x4

    iput v4, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker$AbnormalReason;->reasonId:I

    const-string v4, "radio_signal_poor"

    iput-object v4, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker$AbnormalReason;->reasonDesc:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker$AbnormalReason;->reasonParams:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "trackingTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v5, 0x3e8

    div-long/2addr p2, v5

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v1

    iget-object p2, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker$AbnormalReason;->reasonParams:[Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "radioSignalPoorS="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, p1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Reason: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DFS-AppUsageTracker"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_1
    return-object v4
.end method

.method private getRxTxReason(JLcom/miui/powerkeeper/dfs/UsageAppTracker$TrackingData;)[Lcom/miui/powerkeeper/dfs/UsageAppTracker$AbnormalReason;
    .registers 33

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    const/4 v4, 0x2

    new-array v5, v4, [Lcom/miui/powerkeeper/dfs/UsageAppTracker$AbnormalReason;

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput-object v7, v5, v6

    const/4 v8, 0x1

    aput-object v7, v5, v8

    const-wide/16 v9, 0x0

    cmp-long v7, v1, v9

    if-nez v7, :cond_0

    move-object/from16 v24, v5

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/miui/powerkeeper/dfs/UsageReader;->getMobileRxBytes()J

    move-result-wide v9

    invoke-static {}, Lcom/miui/powerkeeper/dfs/UsageReader;->getMobileTxBytes()J

    move-result-wide v11

    add-long/2addr v9, v11

    iget-wide v11, v3, Lcom/miui/powerkeeper/dfs/UsageAppTracker$TrackingData;->mobileRxTxBytes:J

    sub-long v11, v9, v11

    invoke-static {}, Lcom/miui/powerkeeper/dfs/UsageReader;->getMobileRxPackets()J

    move-result-wide v13

    invoke-static {}, Lcom/miui/powerkeeper/dfs/UsageReader;->getMobileTxPackets()J

    move-result-wide v15

    add-long/2addr v13, v15

    move v7, v4

    move-object v15, v5

    iget-wide v4, v3, Lcom/miui/powerkeeper/dfs/UsageAppTracker$TrackingData;->mobileRxTxPackets:J

    sub-long v4, v13, v4

    const-wide/16 v16, 0x3e8

    move/from16 v18, v6

    move/from16 v19, v7

    mul-long v6, v11, v16

    long-to-float v6, v6

    long-to-float v7, v1

    div-float/2addr v6, v7

    move-wide/from16 v21, v9

    mul-long v8, v4, v16

    long-to-float v8, v8

    div-float/2addr v8, v7

    invoke-static {}, Lcom/miui/powerkeeper/dfs/UsageReader;->getTotalRxBytes()J

    move-result-wide v9

    invoke-static {}, Lcom/miui/powerkeeper/dfs/UsageReader;->getTotalTxBytes()J

    move-result-wide v23

    add-long v9, v9, v23

    sub-long v9, v9, v21

    iget-wide v1, v3, Lcom/miui/powerkeeper/dfs/UsageAppTracker$TrackingData;->wifiRxTxBytes:J

    sub-long v1, v9, v1

    invoke-static {}, Lcom/miui/powerkeeper/dfs/UsageReader;->getTotalRxPackets()J

    move-result-wide v23

    invoke-static {}, Lcom/miui/powerkeeper/dfs/UsageReader;->getTotalTxPackets()J

    move-result-wide v25

    add-long v23, v23, v25

    move-wide/from16 v25, v1

    sub-long v0, v23, v13

    iget-wide v2, v3, Lcom/miui/powerkeeper/dfs/UsageAppTracker$TrackingData;->wifiRxTxPackets:J

    sub-long v2, v0, v2

    const-wide/16 v23, 0x1f40

    move-wide/from16 v27, v2

    mul-long v2, v25, v23

    long-to-float v2, v2

    div-float/2addr v2, v7

    move/from16 p3, v2

    mul-long v2, v27, v16

    long-to-float v2, v2

    div-float/2addr v2, v7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mobileRxTxBytes:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v23, v0

    move-wide/from16 v0, v21

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", deltaMobileBytes:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", mobileRxTxPackets:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", deltaMobilePackets:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", mobileBitRate:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", mobilePacketRate:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", wifiRxTxBytes:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", deltaWifiBytes:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v9, v25

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", wifiRxTxPackets:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, v23

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", deltaWifiPackets:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, v27

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", wifiBitRate:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v13, ", wifiPacketRate:"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v13, "DFS-AppUsageTracker"

    invoke-static {v13, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v3, p0

    iget-object v14, v3, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mCloudData:Lcom/miui/powerkeeper/dfs/CloudData;

    move/from16 p3, v2

    const/4 v2, 0x1

    invoke-virtual {v14, v2}, Lcom/miui/powerkeeper/dfs/CloudData;->getRxtxByteRate(I)I

    move-result v14

    int-to-float v14, v14

    cmpl-float v6, v6, v14

    const-string v14, "Reason: "

    const-string v2, "rxtxTime="

    move/from16 v21, v6

    const-string v6, "rxtxPackets="

    move/from16 v22, v7

    const-string v7, "rxtxByte="

    move/from16 v23, v8

    if-lez v21, :cond_2

    iget-object v8, v3, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mCloudData:Lcom/miui/powerkeeper/dfs/CloudData;

    move-object/from16 v24, v15

    const/4 v15, 0x1

    invoke-virtual {v8, v15}, Lcom/miui/powerkeeper/dfs/CloudData;->getRxtxPacketRate(I)I

    move-result v8

    int-to-float v8, v8

    cmpl-float v8, v23, v8

    if-lez v8, :cond_1

    new-instance v8, Lcom/miui/powerkeeper/dfs/UsageAppTracker$AbnormalReason;

    invoke-direct {v8}, Lcom/miui/powerkeeper/dfs/UsageAppTracker$AbnormalReason;-><init>()V

    const/4 v15, 0x6

    iput v15, v8, Lcom/miui/powerkeeper/dfs/UsageAppTracker$AbnormalReason;->reasonId:I

    const-string v15, "mobile_rxtx"

    iput-object v15, v8, Lcom/miui/powerkeeper/dfs/UsageAppTracker$AbnormalReason;->reasonDesc:Ljava/lang/String;

    move-wide/from16 v27, v0

    const/4 v15, 0x3

    new-array v0, v15, [Ljava/lang/String;

    iput-object v0, v8, Lcom/miui/powerkeeper/dfs/UsageAppTracker$AbnormalReason;->reasonParams:[Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v18

    iget-object v0, v8, Lcom/miui/powerkeeper/dfs/UsageAppTracker$AbnormalReason;->reasonParams:[Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v20, 0x1

    aput-object v1, v0, v20

    iget-object v0, v8, Lcom/miui/powerkeeper/dfs/UsageAppTracker$AbnormalReason;->reasonParams:[Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v4, p1, v16

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v19

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aput-object v8, v24, v18

    goto :goto_0

    :cond_1
    move-wide/from16 v27, v0

    goto :goto_0

    :cond_2
    move-wide/from16 v27, v0

    move-object/from16 v24, v15

    :goto_0
    iget-object v0, v3, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mCloudData:Lcom/miui/powerkeeper/dfs/CloudData;

    const/4 v15, 0x1

    invoke-virtual {v0, v15}, Lcom/miui/powerkeeper/dfs/CloudData;->getRxtxByteRate(I)I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v22, v0

    if-lez v0, :cond_3

    iget-object v0, v3, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mCloudData:Lcom/miui/powerkeeper/dfs/CloudData;

    invoke-virtual {v0, v15}, Lcom/miui/powerkeeper/dfs/CloudData;->getRxtxPacketRate(I)I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p3, v0

    if-lez v0, :cond_3

    new-instance v0, Lcom/miui/powerkeeper/dfs/UsageAppTracker$AbnormalReason;

    invoke-direct {v0}, Lcom/miui/powerkeeper/dfs/UsageAppTracker$AbnormalReason;-><init>()V

    const/4 v1, 0x5

    iput v1, v0, Lcom/miui/powerkeeper/dfs/UsageAppTracker$AbnormalReason;->reasonId:I

    const-string v1, "wifi_rxtx"

    iput-object v1, v0, Lcom/miui/powerkeeper/dfs/UsageAppTracker$AbnormalReason;->reasonDesc:Ljava/lang/String;

    const/4 v15, 0x3

    new-array v1, v15, [Ljava/lang/String;

    iput-object v1, v0, Lcom/miui/powerkeeper/dfs/UsageAppTracker$AbnormalReason;->reasonParams:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v18

    iget-object v1, v0, Lcom/miui/powerkeeper/dfs/UsageAppTracker$AbnormalReason;->reasonParams:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v4, v27

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v20, 0x1

    aput-object v3, v1, v20

    iget-object v1, v0, Lcom/miui/powerkeeper/dfs/UsageAppTracker$AbnormalReason;->reasonParams:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v4, p1, v16

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v19

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v20, 0x1

    aput-object v0, v24, v20

    :cond_3
    :goto_1
    return-object v24
.end method

.method private getVpnEnabled(JJ)Lcom/miui/powerkeeper/dfs/UsageAppTracker$AbnormalReason;
    .registers 12

    iget-object p0, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mVpnTimer:Lk/c;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-wide/16 v1, 0x3e8

    mul-long/2addr p3, v1

    const/4 v3, 0x0

    invoke-virtual {p0, p3, p4, v3}, Lk/f;->e(JI)J

    move-result-wide p3

    const-wide/16 v4, 0x3

    mul-long/2addr v4, p3

    div-long/2addr v4, v1

    cmp-long p0, p1, v4

    if-gez p0, :cond_1

    new-instance p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker$AbnormalReason;

    invoke-direct {p0}, Lcom/miui/powerkeeper/dfs/UsageAppTracker$AbnormalReason;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker$AbnormalReason;->reasonId:I

    const-string v4, "vpn_enabled"

    iput-object v4, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker$AbnormalReason;->reasonDesc:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker$AbnormalReason;->reasonParams:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "trackingTime="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long/2addr p1, v1

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v3

    iget-object p1, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker$AbnormalReason;->reasonParams:[Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vpnDurationS="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/32 v1, 0xf4240

    div-long/2addr p3, v1

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Reason: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DFS-AppUsageTracker"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_1
    return-object v0
.end method

.method private getWifiApEnabled(Lcom/android/internal/app/IBatteryStats;J)Lcom/miui/powerkeeper/dfs/UsageAppTracker$AbnormalReason;
    .registers 11

    iget-boolean v0, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mWifiApEnabled:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mWifiApDurationMs:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mWifiApStartTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mWifiApDurationMs:J

    :cond_0
    const-wide/16 v0, 0x3

    div-long v2, p2, v0

    const/4 v4, 0x0

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->isNetworkActive(Lcom/android/internal/app/IBatteryStats;JZ)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-wide v2, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mWifiApDurationMs:J

    mul-long/2addr v2, v0

    cmp-long p1, p2, v2

    if-gez p1, :cond_1

    new-instance p1, Lcom/miui/powerkeeper/dfs/UsageAppTracker$AbnormalReason;

    invoke-direct {p1}, Lcom/miui/powerkeeper/dfs/UsageAppTracker$AbnormalReason;-><init>()V

    const/4 v0, 0x2

    iput v0, p1, Lcom/miui/powerkeeper/dfs/UsageAppTracker$AbnormalReason;->reasonId:I

    const-string v1, "wifi_ap_enabled"

    iput-object v1, p1, Lcom/miui/powerkeeper/dfs/UsageAppTracker$AbnormalReason;->reasonDesc:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p1, Lcom/miui/powerkeeper/dfs/UsageAppTracker$AbnormalReason;->reasonParams:[Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wifiApDurationS="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mWifiApDurationMs:J

    const-wide/16 v5, 0x3e8

    div-long/2addr v2, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v4

    iget-object p0, p1, Lcom/miui/powerkeeper/dfs/UsageAppTracker$AbnormalReason;->reasonParams:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "trackingTimeS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long/2addr p2, v5

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    aput-object p2, p0, p3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Reason: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "DFS-AppUsageTracker"

    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getWifiSignalPoor(Lcom/android/internal/app/IBatteryStats;J)Lcom/miui/powerkeeper/dfs/UsageAppTracker$AbnormalReason;
    .registers 11

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/miui/powerkeeper/dfs/UsageReader;->getPoorSignalStrengthTime(Lcom/android/internal/app/IBatteryStats;IZ)J

    move-result-wide v2

    iget-object v4, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mTrackingData:Lcom/miui/powerkeeper/dfs/UsageAppTracker$TrackingData;

    iget-wide v4, v4, Lcom/miui/powerkeeper/dfs/UsageAppTracker$TrackingData;->wifiPoorSignalDuration:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3

    div-long v4, p2, v4

    invoke-direct {p0, p1, v4, v5, v1}, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->isNetworkActive(Lcom/android/internal/app/IBatteryStats;JZ)Z

    move-result p1

    const/4 v4, 0x0

    if-nez p1, :cond_0

    return-object v4

    :cond_0
    iget-object p0, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mCloudData:Lcom/miui/powerkeeper/dfs/CloudData;

    invoke-virtual {p0, v1}, Lcom/miui/powerkeeper/dfs/CloudData;->getPoorSignalRatio(I)I

    move-result p0

    int-to-long p0, p0

    mul-long/2addr p0, p2

    const-wide/32 v5, 0x186a0

    div-long/2addr p0, v5

    cmp-long p0, v2, p0

    if-lez p0, :cond_1

    new-instance p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker$AbnormalReason;

    invoke-direct {p0}, Lcom/miui/powerkeeper/dfs/UsageAppTracker$AbnormalReason;-><init>()V

    const/4 p1, 0x3

    iput p1, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker$AbnormalReason;->reasonId:I

    const-string p1, "wifi_signal_poor"

    iput-object p1, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker$AbnormalReason;->reasonDesc:Ljava/lang/String;

    new-array p1, v0, [Ljava/lang/String;

    iput-object p1, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker$AbnormalReason;->reasonParams:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "trackingTime="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v4, 0x3e8

    div-long/2addr p2, v4

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, p1, p3

    iget-object p1, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker$AbnormalReason;->reasonParams:[Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "wifiSignalPoorS="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Reason: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DFS-AppUsageTracker"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_1
    return-object v4
.end method

.method private handleMessage(Landroid/os/Message;)V
    .registers 5

    const-string v0, "DFS-AppUsageTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "fgInfo"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiui/process/ForegroundInfo;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mFgInfo:Lmiui/process/ForegroundInfo;

    iget-object v1, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "DFS-AppUsageTracker"

    const-string p1, "The foreground maybe changed."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mTrackingLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->startTracking(Lmiui/process/ForegroundInfo;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_0
    return-void
.end method

.method private isNetworkActive(Lcom/android/internal/app/IBatteryStats;JZ)Z
    .registers 12

    const/4 v0, 0x0

    const-wide/16 v1, 0x3e8

    const-string v3, "DFS-AppUsageTracker"

    if-eqz p4, :cond_0

    :try_start_0
    invoke-interface {p1}, Lcom/android/internal/app/IBatteryStats;->getWifiBatteryStats()Landroid/os/connectivity/WifiBatteryStats;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/connectivity/WifiBatteryStats;->getKernelActiveTimeMillis()J

    move-result-wide v4

    iget-object p0, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mTrackingData:Lcom/miui/powerkeeper/dfs/UsageAppTracker$TrackingData;

    iget-wide p0, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker$TrackingData;->wifiActiveTime:J

    :goto_0
    sub-long/2addr v4, p0

    goto :goto_1

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    mul-long/2addr v4, v1

    const/4 v6, 0x2

    invoke-interface {p1, v4, v5, v6}, Lcom/android/internal/app/IBatteryStats;->getMobileRadioActiveTime(JI)J

    move-result-wide v4

    div-long/2addr v4, v1

    iget-object p0, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mTrackingData:Lcom/miui/powerkeeper/dfs/UsageAppTracker$TrackingData;

    iget-wide p0, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker$TrackingData;->radioActiveTime:J

    goto :goto_0

    :goto_1
    sget-boolean p0, Lcom/miui/powerkeeper/dfs/DfsUtils;->DEBUG:Z

    if-eqz p0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isNetworkActive: δ activeTime="

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", isWifi="

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    cmp-long p1, v4, v1

    if-gtz p1, :cond_2

    const-string p0, "Discard! Maybe the network is not connected."

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    cmp-long p1, v4, p2

    if-gez p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Discard! The network active time too short. threshold="

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_3

    return v0

    :cond_3
    const/4 p0, 0x1

    return p0

    :catch_0
    const-string p0, "Can\'t get the active status. Just discard."

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private synthetic lambda$new$0(ILandroid/os/Bundle;)V
    .registers 9

    const/4 v0, 0x1

    if-eq p1, v0, :cond_7

    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mTrackingLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    const-string v0, "state"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    iget-boolean v0, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mTracking:Z

    if-nez v0, :cond_1

    iput-boolean p2, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mWifiApEnabled:Z

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mWifiApEnabled:Z

    if-ne v0, p2, :cond_2

    monitor-exit p1

    return-void

    :cond_2
    if-eqz p2, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mWifiApStartTime:J

    goto :goto_0

    :cond_3
    iget-wide v0, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mWifiApDurationMs:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mWifiApStartTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mWifiApDurationMs:J

    :goto_0
    iput-boolean p2, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mWifiApEnabled:Z

    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_4
    iget-object p1, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mTrackingLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_1
    const-string v1, "status"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    if-ne p2, v0, :cond_5

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mVpnEnabled:Z

    iget-boolean p2, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mTracking:Z

    if-nez p2, :cond_6

    monitor-exit p1

    return-void

    :catchall_1
    move-exception p0

    goto :goto_3

    :cond_6
    iget-boolean p2, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mVpnEnabled:Z

    invoke-direct {p0, p2}, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->startRunningVpnTimer(Z)V

    monitor-exit p1

    return-void

    :goto_3
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_7
    iget-object p1, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mTrackingLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_2
    iget-boolean v0, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mTracking:Z

    if-nez v0, :cond_8

    monitor-exit p1

    return-void

    :catchall_2
    move-exception p0

    goto :goto_4

    :cond_8
    const-string v0, "uid"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    iget-object v0, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mTrackingData:Lcom/miui/powerkeeper/dfs/UsageAppTracker$TrackingData;

    if-eqz v0, :cond_9

    iget-object v0, v0, Lcom/miui/powerkeeper/dfs/UsageAppTracker$TrackingData;->bgCpuHighList:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mContext:Landroid/content/Context;

    invoke-static {p0, p2}, Lcom/miui/powerkeeper/batterylife/BLUtils;->getAppNameByUid(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    monitor-exit p1

    return-void

    :goto_4
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p0
.end method

.method private resetTimerIfNeeded()V
    .registers 5

    iget-object v0, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mUsageManager:Lcom/miui/powerkeeper/dfs/UsageManager;

    invoke-virtual {v0}, Lcom/miui/powerkeeper/dfs/UsageManager;->getmClock()Lk/a;

    move-result-object v0

    invoke-virtual {v0}, Lk/a;->b()J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mVpnTimer:Lk/c;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lk/c;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mVpnTimer:Lk/c;

    invoke-virtual {v2, v0, v1}, Lk/c;->j(J)V

    iget-object p0, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mVpnTimer:Lk/c;

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lk/c;->f(ZJ)Z

    :cond_0
    return-void
.end method

.method private startRunningVpnTimer(Z)V
    .registers 9

    iget-object v0, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mVpnTimer:Lk/c;

    if-nez v0, :cond_0

    new-instance v1, Lk/c;

    sget-object v2, Lk/a;->a:Lk/a;

    iget-object v0, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mUsageManager:Lcom/miui/powerkeeper/dfs/UsageManager;

    invoke-virtual {v0}, Lcom/miui/powerkeeper/dfs/UsageManager;->getmOnBatteryTimeBase()Lk/d;

    move-result-object v6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v6}, Lk/c;-><init>(Lk/a;Lk/g;ILjava/util/ArrayList;Lk/d;)V

    iput-object v1, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mVpnTimer:Lk/c;

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mVpnTimer:Lk/c;

    iget-object p0, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mUsageManager:Lcom/miui/powerkeeper/dfs/UsageManager;

    invoke-virtual {p0}, Lcom/miui/powerkeeper/dfs/UsageManager;->getmClock()Lk/a;

    move-result-object p0

    invoke-virtual {p0}, Lk/a;->b()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lk/c;->i(J)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mVpnTimer:Lk/c;

    iget-object p0, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mUsageManager:Lcom/miui/powerkeeper/dfs/UsageManager;

    invoke-virtual {p0}, Lcom/miui/powerkeeper/dfs/UsageManager;->getmClock()Lk/a;

    move-result-object p0

    invoke-virtual {p0}, Lk/a;->b()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lk/c;->j(J)V

    return-void
.end method

.method private startTracking(Lmiui/process/ForegroundInfo;)V
    .registers 11

    invoke-static {}, Lcom/miui/powerkeeper/powerchecker/BatteryStatsHelper;->getBatteryStats()Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    const-string v1, "DFS-AppUsageTracker"

    if-nez v0, :cond_0

    const-string p0, "startTracking failed! IBatteryStats is null."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mTracking:Z

    new-instance v3, Lcom/miui/powerkeeper/dfs/UsageAppTracker$TrackingData;

    invoke-direct {v3}, Lcom/miui/powerkeeper/dfs/UsageAppTracker$TrackingData;-><init>()V

    iput-object v3, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mTrackingData:Lcom/miui/powerkeeper/dfs/UsageAppTracker$TrackingData;

    iget-object v4, p1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    iput-object v4, v3, Lcom/miui/powerkeeper/dfs/UsageAppTracker$TrackingData;->trackingPkg:Ljava/lang/String;

    iget p1, p1, Lmiui/process/ForegroundInfo;->mForegroundUid:I

    iput p1, v3, Lcom/miui/powerkeeper/dfs/UsageAppTracker$TrackingData;->trackingUid:I

    invoke-static {}, Lcom/miui/powerkeeper/batterylife/systeminfo/BSHelper;->getCurrentBatteryCap()D

    move-result-wide v4

    iput-wide v4, v3, Lcom/miui/powerkeeper/dfs/UsageAppTracker$TrackingData;->startPower:D

    iget-object p1, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mTrackingData:Lcom/miui/powerkeeper/dfs/UsageAppTracker$TrackingData;

    iget-wide v3, p1, Lcom/miui/powerkeeper/dfs/UsageAppTracker$TrackingData;->startPower:D

    const-wide/high16 v5, -0x4010000000000000L

    cmpl-double v3, v3, v5

    if-nez v3, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mTrackingData:Lcom/miui/powerkeeper/dfs/UsageAppTracker$TrackingData;

    const-string p0, "startTracking failed! Failed to get the charge counter."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x2

    :try_start_0
    invoke-static {v0, v4, v2}, Lcom/miui/powerkeeper/dfs/UsageReader;->getPoorSignalStrengthTime(Lcom/android/internal/app/IBatteryStats;IZ)J

    move-result-wide v5

    iput-wide v5, p1, Lcom/miui/powerkeeper/dfs/UsageAppTracker$TrackingData;->wifiPoorSignalDuration:J

    iget-object p1, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mTrackingData:Lcom/miui/powerkeeper/dfs/UsageAppTracker$TrackingData;

    invoke-interface {v0}, Lcom/android/internal/app/IBatteryStats;->getWifiBatteryStats()Landroid/os/connectivity/WifiBatteryStats;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/connectivity/WifiBatteryStats;->getKernelActiveTimeMillis()J

    move-result-wide v5

    iput-wide v5, p1, Lcom/miui/powerkeeper/dfs/UsageAppTracker$TrackingData;->wifiActiveTime:J

    iget-object p1, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mTrackingData:Lcom/miui/powerkeeper/dfs/UsageAppTracker$TrackingData;

    invoke-static {v0, v4, v3}, Lcom/miui/powerkeeper/dfs/UsageReader;->getPoorSignalStrengthTime(Lcom/android/internal/app/IBatteryStats;IZ)J

    move-result-wide v5

    iput-wide v5, p1, Lcom/miui/powerkeeper/dfs/UsageAppTracker$TrackingData;->radioPoorSignalDuration:J

    iget-object p1, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mTrackingData:Lcom/miui/powerkeeper/dfs/UsageAppTracker$TrackingData;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    invoke-interface {v0, v5, v6, v4}, Lcom/android/internal/app/IBatteryStats;->getMobileRadioActiveTime(JI)J

    move-result-wide v4

    div-long/2addr v4, v7

    iput-wide v4, p1, Lcom/miui/powerkeeper/dfs/UsageAppTracker$TrackingData;->radioActiveTime:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object p1, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mTrackingData:Lcom/miui/powerkeeper/dfs/UsageAppTracker$TrackingData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p1, Lcom/miui/powerkeeper/dfs/UsageAppTracker$TrackingData;->startTime:J

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "startTracking! startTime="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mTrackingData:Lcom/miui/powerkeeper/dfs/UsageAppTracker$TrackingData;

    iget-wide v4, v0, Lcom/miui/powerkeeper/dfs/UsageAppTracker$TrackingData;->startTime:J

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mVpnEnabled:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mVpnTimer:Lk/c;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mUsageManager:Lcom/miui/powerkeeper/dfs/UsageManager;

    invoke-virtual {p1}, Lcom/miui/powerkeeper/dfs/UsageManager;->getmClock()Lk/a;

    move-result-object p1

    invoke-virtual {p1}, Lk/a;->b()J

    move-result-wide v4

    iget-object p1, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mVpnTimer:Lk/c;

    invoke-virtual {p1, v4, v5}, Lk/c;->j(J)V

    iget-object p1, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mVpnTimer:Lk/c;

    invoke-virtual {p1, v3, v4, v5}, Lk/c;->f(ZJ)Z

    :cond_2
    invoke-direct {p0, v2}, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->startRunningVpnTimer(Z)V

    :cond_3
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mWifiApDurationMs:J

    iget-boolean p1, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mWifiApEnabled:Z

    if-eqz p1, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mWifiApStartTime:J

    :cond_4
    iget-object p1, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mTrackingData:Lcom/miui/powerkeeper/dfs/UsageAppTracker$TrackingData;

    invoke-static {}, Lcom/miui/powerkeeper/dfs/UsageReader;->getMobileTxBytes()J

    move-result-wide v2

    invoke-static {}, Lcom/miui/powerkeeper/dfs/UsageReader;->getMobileRxBytes()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/miui/powerkeeper/dfs/UsageAppTracker$TrackingData;->mobileRxTxBytes:J

    iget-object p1, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mTrackingData:Lcom/miui/powerkeeper/dfs/UsageAppTracker$TrackingData;

    invoke-static {}, Lcom/miui/powerkeeper/dfs/UsageReader;->getMobileTxPackets()J

    move-result-wide v2

    invoke-static {}, Lcom/miui/powerkeeper/dfs/UsageReader;->getMobileRxPackets()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/miui/powerkeeper/dfs/UsageAppTracker$TrackingData;->mobileRxTxPackets:J

    iget-object p1, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mTrackingData:Lcom/miui/powerkeeper/dfs/UsageAppTracker$TrackingData;

    invoke-static {}, Lcom/miui/powerkeeper/dfs/UsageReader;->getTotalRxBytes()J

    move-result-wide v2

    invoke-static {}, Lcom/miui/powerkeeper/dfs/UsageReader;->getTotalTxBytes()J

    move-result-wide v4

    add-long/2addr v2, v4

    iget-object v0, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mTrackingData:Lcom/miui/powerkeeper/dfs/UsageAppTracker$TrackingData;

    iget-wide v4, v0, Lcom/miui/powerkeeper/dfs/UsageAppTracker$TrackingData;->mobileRxTxBytes:J

    sub-long/2addr v2, v4

    iput-wide v2, p1, Lcom/miui/powerkeeper/dfs/UsageAppTracker$TrackingData;->wifiRxTxBytes:J

    invoke-static {}, Lcom/miui/powerkeeper/dfs/UsageReader;->getTotalRxPackets()J

    move-result-wide v2

    invoke-static {}, Lcom/miui/powerkeeper/dfs/UsageReader;->getTotalTxPackets()J

    move-result-wide v4

    add-long/2addr v2, v4

    iget-object p1, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mTrackingData:Lcom/miui/powerkeeper/dfs/UsageAppTracker$TrackingData;

    iget-wide v4, p1, Lcom/miui/powerkeeper/dfs/UsageAppTracker$TrackingData;->mobileRxTxPackets:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lcom/miui/powerkeeper/dfs/UsageAppTracker$TrackingData;->wifiRxTxPackets:J

    invoke-static {}, Lcom/miui/powerkeeper/dfs/UsageReader;->getCpuTime()[J

    move-result-object v0

    iput-object v0, p1, Lcom/miui/powerkeeper/dfs/UsageAppTracker$TrackingData;->cpuTime:[J

    iget-object p0, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mTrackingData:Lcom/miui/powerkeeper/dfs/UsageAppTracker$TrackingData;

    invoke-virtual {p0}, Lcom/miui/powerkeeper/dfs/UsageAppTracker$TrackingData;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private stopTracking(Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mTrackingLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "DFS-AppUsageTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StopTracking. reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->checkPower()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mTrackingData:Lcom/miui/powerkeeper/dfs/UsageAppTracker$TrackingData;

    invoke-direct {p0}, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->resetTimerIfNeeded()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mTracking:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_4

    array-length v2, p2

    if-lez v2, :cond_4

    aget-object v2, p2, v1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    const-string v3, "cpu"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "vpn"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    array-length v2, p2

    if-le v2, v0, :cond_7

    iget-object p0, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/miui/powerkeeper/dfs/UsageMonitor;->getInstance(Landroid/content/Context;)Lcom/miui/powerkeeper/dfs/UsageMonitor;

    move-result-object p0

    aget-object v2, p2, v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/miui/powerkeeper/dfs/UsageMonitor;->notifyVpnConnect(II)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Changed VPN status to "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p2, p2, v0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    if-ne p2, v0, :cond_1

    const-string p2, "enabled"

    goto :goto_0

    :cond_1
    const-string p2, "disabled"

    :goto_0
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mFgInfo:Lmiui/process/ForegroundInfo;

    iget v1, v1, Lmiui/process/ForegroundInfo;->mForegroundUid:I

    array-length v2, p2

    if-le v2, v0, :cond_3

    aget-object p2, p2, v0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :cond_3
    iget-object p0, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/miui/powerkeeper/dfs/UsageMonitor;->getInstance(Landroid/content/Context;)Lcom/miui/powerkeeper/dfs/UsageMonitor;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/miui/powerkeeper/dfs/UsageMonitor;->notifyCpuAbnormal(I)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Report CPU abnormal success. uid = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_4
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTracking="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mTracking:Z

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOnBattery="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mOnBattery:Z

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWifiApEnabled="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mWifiApEnabled:Z

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mVpnEnabled="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mVpnEnabled:Z

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mVpnTimer:Lk/c;

    if-eqz p2, :cond_5

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mVpnTimer="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mVpnTimer:Lk/c;

    invoke-virtual {v2}, Lk/c;->g()Z

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mVpnTimerCount="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mVpnTimer:Lk/c;

    invoke-virtual {v2, v1}, Lk/f;->d(I)I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mVpnTimerTotalTime="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mVpnTimer:Lk/c;

    iget-object v3, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mUsageManager:Lcom/miui/powerkeeper/dfs/UsageManager;

    invoke-virtual {v3}, Lcom/miui/powerkeeper/dfs/UsageManager;->getmClock()Lk/a;

    move-result-object v3

    invoke-virtual {v3}, Lk/a;->b()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    invoke-virtual {v2, v3, v4, v1}, Lk/f;->e(JI)J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const-string p2, "mVpnTimer is Null."

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_2
    iget-object p2, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mTrackingData:Lcom/miui/powerkeeper/dfs/UsageAppTracker$TrackingData;

    if-eqz p2, :cond_6

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTrackingData="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mTrackingData:Lcom/miui/powerkeeper/dfs/UsageAppTracker$TrackingData;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_6
    iget-object p2, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mDebugReasonList:Ljava/util/ArrayList;

    if-eqz p2, :cond_7

    const-string p2, "Last Report Events:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mDebugReasonList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    :goto_3
    if-ge v1, p2, :cond_7

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/2addr v1, v0

    check-cast v2, Lcom/miui/powerkeeper/dfs/UsageAppTracker$AbnormalReason;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/miui/powerkeeper/dfs/UsageAppTracker$AbnormalReason;->reasonId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/miui/powerkeeper/dfs/UsageAppTracker$AbnormalReason;->reasonDesc:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/miui/powerkeeper/dfs/UsageAppTracker$AbnormalReason;->reasonParams:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    return-void
.end method

.method public notifyForegroundInfoChanged(Lmiui/process/ForegroundInfo;)V
    .registers 6

    iget-object v0, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mFgInfo:Lmiui/process/ForegroundInfo;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mTracking:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mFgInfo:Lmiui/process/ForegroundInfo;

    iget-object v1, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mTrackingLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mTracking:Z

    if-eqz v1, :cond_1

    const-string v1, "fg-changed"

    invoke-direct {p0, v1}, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->stopTracking(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mFgInfo:Lmiui/process/ForegroundInfo;

    if-nez p1, :cond_2

    monitor-exit v0

    return-void

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v0, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mOnBattery:Z

    if-nez v0, :cond_3

    const-string p0, "DFS-AppUsageTracker"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fg changed, new="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", but charging."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget-object v0, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_4
    sget-object v0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->TRACKING_APPS:Ljava/util/ArrayList;

    iget-object v2, p1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string p0, "DFS-AppUsageTracker"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not in tracking list."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    const-string v0, "DFS-AppUsageTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is in tracking list."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "fgInfo"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putObject(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mHandler:Landroid/os/Handler;

    const-wide/32 v1, 0xea60

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public notifyOnBattery(Z)V
    .registers 4

    iput-boolean p1, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mOnBattery:Z

    iget-object v0, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mTrackingLock:Ljava/lang/Object;

    monitor-enter v0

    if-nez p1, :cond_0

    :try_start_0
    iget-boolean v1, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mTracking:Z

    if-eqz v1, :cond_0

    const-string v1, "charging"

    invoke-direct {p0, v1}, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->stopTracking(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mFgInfo:Lmiui/process/ForegroundInfo;

    invoke-virtual {p0, p1}, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->notifyForegroundInfoChanged(Lmiui/process/ForegroundInfo;)V

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public notifyScreenOff(Z)V
    .registers 3

    iput-boolean p1, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mScreenOff:Z

    iget-object p1, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mTrackingLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-boolean v0, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mScreenOff:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mTracking:Z

    if-eqz v0, :cond_0

    const-string v0, "screen-off"

    invoke-direct {p0, v0}, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->stopTracking(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mScreenOff:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/powerkeeper/event/EventsAggregator;->getInstance(Landroid/content/Context;)Lcom/miui/powerkeeper/event/EventsAggregator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/powerkeeper/event/EventsAggregator;->getForegroundInfo()Lmiui/process/ForegroundInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/powerkeeper/dfs/UsageAppTracker;->notifyForegroundInfoChanged(Lmiui/process/ForegroundInfo;)V

    :cond_1
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

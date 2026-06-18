.class public Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final WHICH:I


# instance fields
.field private listAppAbnormalRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/powerkeeper/customerpower/CPAppAbnormalRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mAppStatusRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/powerkeeper/customerpower/CPAppStatusRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mBadSignalTime:F

.field public mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mContext:Landroid/content/Context;

.field private mHighBrightnessTime:F

.field private mKernelWakelocks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/powerkeeper/customerpower/CustomerPowerUtil$TimerEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mKernelWakeups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/powerkeeper/customerpower/CustomerPowerUtil$TimerEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mRawRealtime:J

.field private mScreenOffDischargeLevel:J

.field private mScreenOffTime:J

.field private mScreenOnDischargeLevel:J

.field private mScreenOnTime:J

.field private mWhichBatteryRealTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CP_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->mKernelWakelocks:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->mKernelWakeups:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->mAppStatusRecords:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->listAppAbnormalRecords:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/miui/powerkeeper/powerchecker/BatteryStatsHelper;->getBatteryStats()Lcom/android/internal/app/IBatteryStats;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->mRawRealtime:J

    return-void
.end method

.method private checkedAppCpuAbnormal()Z
    .registers 6

    invoke-virtual {p0}, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->getAppAbnormalRecords()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->listAppAbnormalRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->listAppAbnormalRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/powerkeeper/customerpower/CPAppAbnormalRecord;

    invoke-virtual {v3}, Lcom/miui/powerkeeper/customerpower/CPAppAbnormalRecord;->getAppType()I

    move-result v3

    const/16 v4, 0xb

    if-ne v3, v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private checkedAppWakelockAbnormal()Z
    .registers 6

    invoke-virtual {p0}, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->getAppAbnormalRecords()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->listAppAbnormalRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->listAppAbnormalRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/powerkeeper/customerpower/CPAppAbnormalRecord;

    invoke-virtual {v3}, Lcom/miui/powerkeeper/customerpower/CPAppAbnormalRecord;->getAppType()I

    move-result v3

    const/16 v4, 0xc

    if-ne v3, v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private checkedBadSignal()Z
    .registers 7

    iget v0, p0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->mBadSignalTime:F

    const/high16 v1, 0x42c80000

    mul-float/2addr v1, v0

    iget-wide v2, p0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->mWhichBatteryRealTime:J

    long-to-float p0, v2

    div-float/2addr v1, p0

    const-wide/32 v4, 0x6ddd00

    cmp-long p0, v2, v4

    if-lez p0, :cond_1

    const/high16 p0, 0x42480000

    cmpl-float p0, v1, p0

    if-gtz p0, :cond_0

    const p0, 0x4adbba00

    cmpl-float p0, v0, p0

    if-lez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private checkedHighBrightness()Z
    .registers 7

    iget v0, p0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->mHighBrightnessTime:F

    const/high16 v1, 0x42c80000

    mul-float/2addr v1, v0

    iget-wide v2, p0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->mScreenOnTime:J

    long-to-float v2, v2

    div-float/2addr v1, v2

    iget-wide v2, p0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->mWhichBatteryRealTime:J

    const-wide/32 v4, 0x36ee80

    cmp-long p0, v2, v4

    if-lez p0, :cond_1

    const/high16 p0, 0x42480000

    cmpl-float p0, v1, p0

    if-gtz p0, :cond_0

    const p0, 0x4a5bba00

    cmpl-float p0, v0, p0

    if-lez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private checkedKernelWakelocks()Z
    .registers 12

    iget-object v0, p0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->mKernelWakelocks:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/miui/powerkeeper/customerpower/CustomerPowerUtil;->sortTimerEntry(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->mKernelWakelocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_3

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    const/16 v3, 0xa

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->mKernelWakelocks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/powerkeeper/customerpower/CustomerPowerUtil$TimerEntry;

    iget-object v4, v3, Lcom/miui/powerkeeper/customerpower/CustomerPowerUtil$TimerEntry;->mName:Ljava/lang/String;

    iget-wide v5, v3, Lcom/miui/powerkeeper/customerpower/CustomerPowerUtil$TimerEntry;->mTime:J

    const-string v3, "PowerManagerService.WakeLocks"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "PowerManagerService.Display"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "PowerManagerService.Broadcasts"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v3, 0x0

    cmp-long v3, v5, v3

    if-lez v3, :cond_2

    iget-wide v3, p0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->mScreenOffTime:J

    const-wide/32 v7, 0x36ee80

    cmp-long v9, v3, v7

    if-lez v9, :cond_2

    const-wide/16 v9, 0x64

    mul-long/2addr v9, v5

    div-long/2addr v9, v3

    const-wide/16 v3, 0x32

    cmp-long v3, v9, v3

    if-gtz v3, :cond_1

    cmp-long v3, v5, v7

    if-lez v3, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method private checkedKernelWakeups()Z
    .registers 15

    iget-object v0, p0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->mKernelWakeups:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/miui/powerkeeper/customerpower/CustomerPowerUtil;->sortTimerEntry(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->mKernelWakeups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_2

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    const/16 v3, 0xa

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->mKernelWakeups:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/powerkeeper/customerpower/CustomerPowerUtil$TimerEntry;

    iget-object v4, v3, Lcom/miui/powerkeeper/customerpower/CustomerPowerUtil$TimerEntry;->mName:Ljava/lang/String;

    iget-wide v4, v3, Lcom/miui/powerkeeper/customerpower/CustomerPowerUtil$TimerEntry;->mTime:J

    iget v3, v3, Lcom/miui/powerkeeper/customerpower/CustomerPowerUtil$TimerEntry;->mCount:I

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_1

    iget-wide v6, p0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->mScreenOffTime:J

    const-wide/32 v8, 0x36ee80

    cmp-long v10, v6, v8

    if-lez v10, :cond_1

    const-wide/16 v10, 0x64

    mul-long/2addr v10, v4

    div-long/2addr v10, v6

    const-wide/16 v12, 0x32

    cmp-long v10, v10, v12

    if-gtz v10, :cond_0

    cmp-long v4, v4, v8

    if-gtz v4, :cond_0

    const v4, 0x36ee80

    mul-int/2addr v3, v4

    int-to-long v3, v3

    div-long/2addr v3, v6

    const-wide/16 v5, 0x1f4

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private checkedScreenOffFast()Z
    .registers 7

    iget-wide v0, p0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->mScreenOffTime:J

    const-wide/32 v2, 0x36ee80

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-wide v4, p0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->mScreenOffDischargeLevel:J

    mul-long/2addr v4, v2

    div-long/2addr v4, v0

    long-to-float p0, v4

    const v0, 0x3fd9999a

    cmpl-float p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private checkedScreenOnFast()Z
    .registers 7

    iget-wide v0, p0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->mScreenOnTime:J

    const-wide/32 v2, 0x36ee80

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-wide v4, p0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->mScreenOnDischargeLevel:J

    mul-long/2addr v4, v2

    div-long/2addr v4, v0

    long-to-float p0, v4

    const/high16 v0, 0x41700000

    cmpl-float p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private outputResultFail(Ljava/io/PrintWriter;I)V
    .registers 7

    const/4 v0, 0x1

    if-nez p1, :cond_7

    sget-object v1, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->TAG:Ljava/lang/String;

    const-string v2, "customer power info outputResultNone pw is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/miui/powerkeeper/customerpower/CustomerPowerUtil;->isMaintenanceModeEnable()Z

    move-result v1

    :try_start_0
    invoke-direct {p0, v1}, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->targetFilePath(Z)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    :cond_1
    if-eqz v1, :cond_2

    const/4 p0, 0x0

    invoke-virtual {v2, v0, p0}, Ljava/io/File;->setWritable(ZZ)Z

    invoke-virtual {v2, v0, p0}, Ljava/io/File;->setReadable(ZZ)Z

    :cond_2
    new-instance p0, Ljava/io/PrintWriter;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_3

    :try_start_1
    const-string p1, "TEST_CUSTOMER_POWER"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "TEST_CUSTOMER_POWER:FAIL"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v3, p1

    move-object p1, p0

    move-object p0, v3

    goto :goto_4

    :catch_0
    move-object p1, p0

    goto :goto_2

    :cond_3
    if-ne p2, v0, :cond_4

    const-string p1, "TEST_FACTORY_CUSTOMER_POWER"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "TEST_FACTORY_CUSTOMER_POWER:FAIL"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_4
    :goto_1
    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V

    goto :goto_3

    :catch_1
    :goto_2
    :try_start_2
    sget-object p0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->TAG:Ljava/lang/String;

    const-string p2, "customer power info outputResultNone sdcard or data/local/maintenance_mode dir is not exists"

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/io/PrintWriter;->close()V

    :cond_5
    :goto_3
    return-void

    :goto_4
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/io/PrintWriter;->close()V

    :cond_6
    throw p0

    :cond_7
    if-nez p2, :cond_8

    const-string p0, "  TEST_CUSTOMER_POWER"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  TEST_CUSTOMER_POWER:FAIL"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5

    :cond_8
    if-ne p2, v0, :cond_9

    const-string p0, "  TEST_FACTORY_CUSTOMER_POWER"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  TEST_FACTORY_CUSTOMER_POWER:FAIL"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_9
    :goto_5
    sget-object p0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->TAG:Ljava/lang/String;

    const-string p1, "customer power info outputResultNone dump info"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private outputResultPassAndNone(Ljava/io/PrintWriter;I)V
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheckerDatabaseCrud;->getInstance(Landroid/content/Context;)Lcom/miui/powerkeeper/customerpower/CustomerPowerCheckerDatabaseCrud;

    move-result-object v3

    const-string v4, "CustomerPowerRecordTable"

    invoke-virtual {v3, v4, v2}, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheckerDatabaseCrud;->query(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget-object v6, v0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheckerDatabaseCrud;->getInstance(Landroid/content/Context;)Lcom/miui/powerkeeper/customerpower/CustomerPowerCheckerDatabaseCrud;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v4, v7, v8}, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheckerDatabaseCrud;->queryAllByWeek(Ljava/lang/String;J)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v10, 0x2

    const/16 v11, 0xc

    const-string v12, ","

    const/16 v13, 0xb

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-nez v1, :cond_16

    :try_start_0
    invoke-static {}, Lcom/miui/powerkeeper/customerpower/CustomerPowerUtil;->isMaintenanceModeEnable()Z

    move-result v4

    invoke-direct {v0, v4}, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->targetFilePath(Z)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v4, v1

    goto :goto_9

    :catch_0
    move-object v4, v1

    goto :goto_8

    :cond_0
    const/4 v7, 0x0

    :goto_0
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {v7, v14, v15}, Ljava/io/File;->setWritable(ZZ)Z

    invoke-virtual {v7, v14, v15}, Ljava/io/File;->setReadable(ZZ)Z

    :cond_2
    new-instance v4, Ljava/io/PrintWriter;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v6}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_3

    :try_start_1
    const-string v1, "TEST_CUSTOMER_POWER"

    invoke-virtual {v4, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_9

    :cond_3
    if-ne v2, v14, :cond_4

    const-string v1, "TEST_FACTORY_CUSTOMER_POWER"

    invoke-virtual {v4, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_4
    :goto_1
    if-lez v5, :cond_f

    move v1, v15

    move v6, v1

    move v7, v6

    move/from16 v16, v7

    move/from16 v17, v16

    move/from16 v18, v17

    move/from16 v19, v18

    :goto_2
    if-ge v15, v5, :cond_e

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/miui/powerkeeper/customerpower/CustomerPowerResultBean;

    invoke-virtual/range {v20 .. v20}, Lcom/miui/powerkeeper/customerpower/CustomerPowerResultBean;->getType()I

    move-result v14

    if-ne v14, v13, :cond_5

    if-nez v17, :cond_5

    sget-boolean v21, Lmiui/os/Build;->IS_MIUI:Z

    if-nez v21, :cond_5

    add-int/lit8 v17, v17, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "App bg cpu: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v20 .. v20}, Lcom/miui/powerkeeper/customerpower/CustomerPowerResultBean;->getDetailName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->getLabelByPackageNames([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    if-ne v14, v13, :cond_6

    if-nez v17, :cond_6

    sget-boolean v8, Lmiui/os/Build;->IS_MIUI:Z

    if-eqz v8, :cond_6

    add-int/lit8 v17, v17, 0x1

    const-string v8, "App bg cpu"

    invoke-virtual {v4, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_6
    :goto_3
    if-ne v14, v11, :cond_7

    if-nez v18, :cond_7

    sget-boolean v8, Lmiui/os/Build;->IS_MIUI:Z

    if-nez v8, :cond_7

    add-int/lit8 v18, v18, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "App partial wakelock: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v20 .. v20}, Lcom/miui/powerkeeper/customerpower/CustomerPowerResultBean;->getDetailName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->getLabelByPackageNames([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    if-ne v14, v11, :cond_8

    if-nez v18, :cond_8

    sget-boolean v8, Lmiui/os/Build;->IS_MIUI:Z

    if-eqz v8, :cond_8

    add-int/lit8 v18, v18, 0x1

    const-string v8, "App partial wakelock"

    invoke-virtual {v4, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_8
    :goto_4
    if-ne v14, v10, :cond_9

    if-nez v1, :cond_9

    add-int/lit8 v1, v1, 0x1

    const-string v8, "High brightness"

    invoke-virtual {v4, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_9
    const/4 v8, 0x5

    if-ne v14, v8, :cond_a

    if-nez v7, :cond_a

    add-int/lit8 v7, v7, 0x1

    const-string v8, "Kernel wakelock"

    invoke-virtual {v4, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_a
    const/4 v8, 0x6

    if-ne v14, v8, :cond_b

    if-nez v16, :cond_b

    add-int/lit8 v16, v16, 0x1

    const-string v8, "Kernel wakeup"

    invoke-virtual {v4, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_b
    const/4 v8, 0x1

    if-ne v14, v8, :cond_c

    if-nez v6, :cond_c

    add-int/lit8 v6, v6, 0x1

    const-string v8, "Bad signal"

    invoke-virtual {v4, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_c
    const/16 v8, 0x64

    if-ne v14, v8, :cond_d

    if-nez v19, :cond_d

    add-int/lit8 v19, v19, 0x1

    :cond_d
    add-int/lit8 v15, v15, 0x1

    const/4 v14, 0x1

    goto :goto_2

    :cond_e
    move v15, v1

    goto :goto_5

    :cond_f
    sget-object v0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->TAG:Ljava/lang/String;

    const-string v1, "customer power info power is not checked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v15

    move v7, v6

    move/from16 v16, v7

    move/from16 v17, v16

    move/from16 v18, v17

    const/16 v19, 0x1

    :goto_5
    if-nez v15, :cond_12

    if-nez v6, :cond_12

    if-nez v7, :cond_12

    if-nez v16, :cond_12

    if-nez v17, :cond_12

    if-eqz v18, :cond_10

    goto :goto_6

    :cond_10
    if-eqz v19, :cond_14

    if-nez v2, :cond_11

    const-string v0, "TEST_CUSTOMER_POWER:NONE"

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7

    :cond_11
    const/4 v8, 0x1

    if-ne v2, v8, :cond_14

    const-string v0, "TEST_FACTORY_CUSTOMER_POWER:NONE"

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7

    :cond_12
    :goto_6
    if-nez v2, :cond_13

    const-string v0, "TEST_CUSTOMER_POWER:PASS"

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7

    :cond_13
    const/4 v8, 0x1

    if-ne v2, v8, :cond_14

    const-string v0, "TEST_FACTORY_CUSTOMER_POWER:PASS"

    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_14
    :goto_7
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V

    goto :goto_11

    :catch_1
    :goto_8
    :try_start_2
    sget-object v0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->TAG:Ljava/lang/String;

    const-string v1, "customer power info create autotestfile or write file failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v4, :cond_29

    goto :goto_7

    :goto_9
    if-eqz v4, :cond_15

    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V

    :cond_15
    throw v0

    :cond_16
    if-nez v2, :cond_17

    const-string v3, "  TEST_CUSTOMER_POWER"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_a

    :cond_17
    const/4 v8, 0x1

    if-ne v2, v8, :cond_18

    const-string v3, "  TEST_FACTORY_CUSTOMER_POWER"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_18
    :goto_a
    if-lez v6, :cond_24

    move v3, v15

    move v5, v3

    move v7, v5

    move v8, v7

    move v9, v8

    move v14, v9

    move/from16 v16, v14

    :goto_b
    if-ge v15, v6, :cond_23

    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/miui/powerkeeper/customerpower/CustomerPowerResultBean;

    invoke-virtual/range {v17 .. v17}, Lcom/miui/powerkeeper/customerpower/CustomerPowerResultBean;->getType()I

    move-result v10

    if-ne v10, v13, :cond_1a

    sget-boolean v19, Lmiui/os/Build;->IS_MIUI:Z

    if-nez v19, :cond_1a

    add-int/lit8 v9, v9, 0x1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  App bg cpu: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v17 .. v17}, Lcom/miui/powerkeeper/customerpower/CustomerPowerResultBean;->getDetailName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->getLabelByPackageNames([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v11, 0xb

    :cond_19
    :goto_c
    const/16 v13, 0xc

    goto :goto_d

    :cond_1a
    move v11, v13

    if-ne v10, v11, :cond_19

    sget-boolean v13, Lmiui/os/Build;->IS_MIUI:Z

    if-eqz v13, :cond_19

    add-int/lit8 v9, v9, 0x1

    const-string v13, "  App bg cpu"

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_c

    :goto_d
    if-ne v10, v13, :cond_1c

    sget-boolean v13, Lmiui/os/Build;->IS_MIUI:Z

    if-nez v13, :cond_1b

    add-int/lit8 v14, v14, 0x1

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  App partial wakelock: "

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v17 .. v17}, Lcom/miui/powerkeeper/customerpower/CustomerPowerResultBean;->getDetailName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->getLabelByPackageNames([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v11, 0x2

    const/16 v13, 0xc

    goto :goto_e

    :cond_1b
    const/16 v13, 0xc

    :cond_1c
    if-ne v10, v13, :cond_1d

    sget-boolean v11, Lmiui/os/Build;->IS_MIUI:Z

    if-eqz v11, :cond_1d

    add-int/lit8 v14, v14, 0x1

    const-string v11, "  App partial wakelock"

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1d
    const/4 v11, 0x2

    :goto_e
    if-ne v10, v11, :cond_1e

    add-int/lit8 v3, v3, 0x1

    const-string v11, "  High brightness"

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1e
    const/4 v11, 0x5

    if-ne v10, v11, :cond_1f

    add-int/lit8 v7, v7, 0x1

    const-string v11, "  Kernel wakelock"

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1f
    const/4 v11, 0x6

    if-ne v10, v11, :cond_20

    add-int/lit8 v8, v8, 0x1

    const-string v11, "  Kernel wakeup"

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_20
    const/4 v11, 0x1

    if-ne v10, v11, :cond_21

    add-int/lit8 v5, v5, 0x1

    const-string v11, "  Bad signal"

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_21
    const/16 v11, 0x64

    if-ne v10, v11, :cond_22

    if-nez v16, :cond_22

    add-int/lit8 v16, v16, 0x1

    :cond_22
    add-int/lit8 v15, v15, 0x1

    move v11, v13

    const/4 v10, 0x2

    const/16 v13, 0xb

    goto :goto_b

    :cond_23
    move v15, v3

    goto :goto_f

    :cond_24
    sget-object v0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->TAG:Ljava/lang/String;

    const-string v3, "dump customer power info power is not checked"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v15

    move v7, v5

    move v8, v7

    move v9, v8

    move v14, v9

    const/16 v16, 0x1

    :goto_f
    if-nez v15, :cond_27

    if-nez v5, :cond_27

    if-nez v7, :cond_27

    if-nez v8, :cond_27

    if-nez v9, :cond_27

    if-eqz v14, :cond_25

    goto :goto_10

    :cond_25
    if-eqz v16, :cond_29

    if-nez v2, :cond_26

    const-string v0, "  TEST_CUSTOMER_POWER:NONE"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_26
    const/4 v8, 0x1

    if-ne v2, v8, :cond_29

    const-string v0, "  TEST_FACTORY_CUSTOMER_POWER:NONE"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_27
    :goto_10
    if-nez v2, :cond_28

    const-string v0, "  TEST_CUSTOMER_POWER:PASS"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_28
    const/4 v8, 0x1

    if-ne v2, v8, :cond_29

    const-string v0, "  TEST_FACTORY_CUSTOMER_POWER:PASS"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_29
    :goto_11
    return-void
.end method

.method private targetFilePath(Z)Ljava/lang/String;
    .registers 2

    if-eqz p1, :cond_0

    const-string p0, "/data/local/maintenance_mode/autotestfile"

    return-object p0

    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "autotestfile"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object p0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->TAG:Ljava/lang/String;

    const-string p1, "customer power info outputRecord sdcard dir is not exists"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public checkPowerConsume()Ljava/util/ArrayList;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/miui/powerkeeper/customerpower/CustomerPowerResultBean;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-wide v2, v0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->mScreenOnTime:J

    const-wide/32 v4, 0x36ee80

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    iget-wide v2, v0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->mScreenOffTime:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    :cond_0
    iget-wide v2, v0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->mWhichBatteryRealTime:J

    const-wide/32 v4, 0xa4cb800

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    :cond_1
    sget-object v0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->TAG:Ljava/lang/String;

    const-string v2, "customer power info checked checkPowerConsume time is too short or too long"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/miui/powerkeeper/customerpower/CustomerPowerResultBean;

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/16 v4, 0x64

    const-string v5, "Power none"

    const/4 v6, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/miui/powerkeeper/customerpower/CustomerPowerResultBean;-><init>(ILjava/lang/String;Ljava/lang/String;JI)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1

    :cond_2
    invoke-direct {v0}, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->checkedScreenOnFast()Z

    move-result v2

    invoke-direct {v0}, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->checkedScreenOffFast()Z

    move-result v3

    sget-object v4, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "customer power info checked screenOnFast = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", screenOffFast = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "customer power info checked checkPowerConsume appNames wakelock = "

    const-string v6, "customer power info checked checkPowerConsume appNames cpu = "

    const/16 v7, 0xc

    const/16 v8, 0xb

    const/16 v9, 0x3e8

    const-string v11, ","

    const-string v12, ""

    if-eqz v2, :cond_14

    if-eqz v3, :cond_14

    invoke-direct {v0}, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->checkedAppCpuAbnormal()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, v0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->listAppAbnormalRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move-object v4, v12

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_8

    iget-object v13, v0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->listAppAbnormalRecords:Ljava/util/ArrayList;

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/miui/powerkeeper/customerpower/CPAppAbnormalRecord;

    invoke-virtual {v13}, Lcom/miui/powerkeeper/customerpower/CPAppAbnormalRecord;->getUid()I

    move-result v13

    iget-object v14, v0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->listAppAbnormalRecords:Ljava/util/ArrayList;

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/miui/powerkeeper/customerpower/CPAppAbnormalRecord;

    invoke-virtual {v14}, Lcom/miui/powerkeeper/customerpower/CPAppAbnormalRecord;->getAppType()I

    move-result v14

    iget-object v15, v0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->listAppAbnormalRecords:Ljava/util/ArrayList;

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/miui/powerkeeper/customerpower/CPAppAbnormalRecord;

    invoke-virtual {v15}, Lcom/miui/powerkeeper/customerpower/CPAppAbnormalRecord;->getPkgName()Ljava/lang/String;

    move-result-object v15

    iget-object v10, v0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->listAppAbnormalRecords:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/miui/powerkeeper/customerpower/CPAppAbnormalRecord;

    invoke-virtual {v10}, Lcom/miui/powerkeeper/customerpower/CPAppAbnormalRecord;->getProcName()Ljava/lang/String;

    move-result-object v10

    if-eq v13, v9, :cond_5

    if-nez v13, :cond_3

    goto :goto_1

    :cond_3
    if-eqz v15, :cond_7

    if-ne v14, v8, :cond_7

    invoke-virtual {v12, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_5
    :goto_1
    if-eqz v10, :cond_7

    if-ne v14, v8, :cond_7

    invoke-virtual {v12, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_6
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_7
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_8
    invoke-virtual {v12, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    sget-object v2, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v13, Lcom/miui/powerkeeper/customerpower/CustomerPowerResultBean;

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v14, 0xb

    const-string v15, "App bg cpu"

    move-object/from16 v16, v4

    invoke-direct/range {v13 .. v19}, Lcom/miui/powerkeeper/customerpower/CustomerPowerResultBean;-><init>(ILjava/lang/String;Ljava/lang/String;JI)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    invoke-direct {v0}, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->checkedAppWakelockAbnormal()Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, v0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->listAppAbnormalRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move-object v3, v12

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v2, :cond_f

    iget-object v4, v0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->listAppAbnormalRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/powerkeeper/customerpower/CPAppAbnormalRecord;

    invoke-virtual {v4}, Lcom/miui/powerkeeper/customerpower/CPAppAbnormalRecord;->getUid()I

    move-result v4

    iget-object v6, v0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->listAppAbnormalRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/powerkeeper/customerpower/CPAppAbnormalRecord;

    invoke-virtual {v6}, Lcom/miui/powerkeeper/customerpower/CPAppAbnormalRecord;->getAppType()I

    move-result v6

    iget-object v8, v0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->listAppAbnormalRecords:Ljava/util/ArrayList;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/powerkeeper/customerpower/CPAppAbnormalRecord;

    invoke-virtual {v8}, Lcom/miui/powerkeeper/customerpower/CPAppAbnormalRecord;->getPkgName()Ljava/lang/String;

    move-result-object v8

    iget-object v13, v0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->listAppAbnormalRecords:Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/miui/powerkeeper/customerpower/CPAppAbnormalRecord;

    invoke-virtual {v13}, Lcom/miui/powerkeeper/customerpower/CPAppAbnormalRecord;->getProcName()Ljava/lang/String;

    move-result-object v13

    if-eq v4, v9, :cond_c

    if-nez v4, :cond_a

    goto :goto_4

    :cond_a
    if-eqz v8, :cond_e

    if-ne v6, v7, :cond_e

    invoke-virtual {v12, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_c
    :goto_4
    if-eqz v13, :cond_e

    if-ne v6, v7, :cond_e

    invoke-virtual {v12, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_e
    :goto_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_f
    invoke-virtual {v12, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    sget-object v2, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v13, Lcom/miui/powerkeeper/customerpower/CustomerPowerResultBean;

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v14, 0xc

    const-string v15, "App partial wakelock"

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v19}, Lcom/miui/powerkeeper/customerpower/CustomerPowerResultBean;-><init>(ILjava/lang/String;Ljava/lang/String;JI)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    invoke-direct {v0}, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->checkedHighBrightness()Z

    move-result v2

    if-eqz v2, :cond_11

    new-instance v3, Lcom/miui/powerkeeper/customerpower/CustomerPowerResultBean;

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x2

    const-string v5, "High brightness"

    const/4 v6, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/miui/powerkeeper/customerpower/CustomerPowerResultBean;-><init>(ILjava/lang/String;Ljava/lang/String;JI)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    invoke-direct {v0}, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->checkedKernelWakelocks()Z

    move-result v2

    if-eqz v2, :cond_12

    new-instance v3, Lcom/miui/powerkeeper/customerpower/CustomerPowerResultBean;

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x5

    const-string v5, "Kernel wakelock"

    const/4 v6, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/miui/powerkeeper/customerpower/CustomerPowerResultBean;-><init>(ILjava/lang/String;Ljava/lang/String;JI)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    invoke-direct {v0}, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->checkedKernelWakeups()Z

    move-result v2

    if-eqz v2, :cond_13

    new-instance v3, Lcom/miui/powerkeeper/customerpower/CustomerPowerResultBean;

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x6

    const-string v5, "Kernel wakeup"

    const/4 v6, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/miui/powerkeeper/customerpower/CustomerPowerResultBean;-><init>(ILjava/lang/String;Ljava/lang/String;JI)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    invoke-direct {v0}, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->checkedBadSignal()Z

    move-result v0

    if-eqz v0, :cond_23

    new-instance v2, Lcom/miui/powerkeeper/customerpower/CustomerPowerResultBean;

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x1

    const-string v4, "Bad signal"

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/miui/powerkeeper/customerpower/CustomerPowerResultBean;-><init>(ILjava/lang/String;Ljava/lang/String;JI)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1

    :cond_14
    if-eqz v2, :cond_16

    invoke-direct {v0}, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->checkedHighBrightness()Z

    move-result v2

    if-eqz v2, :cond_15

    new-instance v3, Lcom/miui/powerkeeper/customerpower/CustomerPowerResultBean;

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x2

    const-string v5, "High brightness"

    const/4 v6, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/miui/powerkeeper/customerpower/CustomerPowerResultBean;-><init>(ILjava/lang/String;Ljava/lang/String;JI)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    invoke-direct {v0}, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->checkedBadSignal()Z

    move-result v0

    if-eqz v0, :cond_23

    new-instance v2, Lcom/miui/powerkeeper/customerpower/CustomerPowerResultBean;

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x1

    const-string v4, "Bad signal"

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/miui/powerkeeper/customerpower/CustomerPowerResultBean;-><init>(ILjava/lang/String;Ljava/lang/String;JI)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1

    :cond_16
    if-eqz v3, :cond_24

    invoke-direct {v0}, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->checkedAppCpuAbnormal()Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-object v2, v0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->listAppAbnormalRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move-object v4, v12

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v2, :cond_1a

    iget-object v10, v0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->listAppAbnormalRecords:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/miui/powerkeeper/customerpower/CPAppAbnormalRecord;

    invoke-virtual {v10}, Lcom/miui/powerkeeper/customerpower/CPAppAbnormalRecord;->getUid()I

    move-result v10

    iget-object v13, v0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->listAppAbnormalRecords:Ljava/util/ArrayList;

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/miui/powerkeeper/customerpower/CPAppAbnormalRecord;

    invoke-virtual {v13}, Lcom/miui/powerkeeper/customerpower/CPAppAbnormalRecord;->getAppType()I

    move-result v13

    iget-object v14, v0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->listAppAbnormalRecords:Ljava/util/ArrayList;

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/miui/powerkeeper/customerpower/CPAppAbnormalRecord;

    invoke-virtual {v14}, Lcom/miui/powerkeeper/customerpower/CPAppAbnormalRecord;->getPkgName()Ljava/lang/String;

    move-result-object v14

    iget-object v15, v0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->listAppAbnormalRecords:Ljava/util/ArrayList;

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/miui/powerkeeper/customerpower/CPAppAbnormalRecord;

    invoke-virtual {v15}, Lcom/miui/powerkeeper/customerpower/CPAppAbnormalRecord;->getProcName()Ljava/lang/String;

    move-result-object v15

    if-eq v10, v9, :cond_18

    if-nez v10, :cond_17

    goto :goto_7

    :cond_17
    if-eqz v14, :cond_19

    if-ne v13, v8, :cond_19

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_8

    :cond_18
    :goto_7
    if-eqz v15, :cond_19

    if-ne v13, v8, :cond_19

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_19
    :goto_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_1a
    invoke-virtual {v12, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    sget-object v2, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v13, Lcom/miui/powerkeeper/customerpower/CustomerPowerResultBean;

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v14, 0xb

    const-string v15, "App bg cpu"

    move-object/from16 v16, v4

    invoke-direct/range {v13 .. v19}, Lcom/miui/powerkeeper/customerpower/CustomerPowerResultBean;-><init>(ILjava/lang/String;Ljava/lang/String;JI)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1b
    invoke-direct {v0}, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->checkedAppWakelockAbnormal()Z

    move-result v2

    if-eqz v2, :cond_20

    iget-object v2, v0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->listAppAbnormalRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move-object v3, v12

    const/4 v10, 0x0

    :goto_9
    if-ge v10, v2, :cond_1f

    iget-object v4, v0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->listAppAbnormalRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/powerkeeper/customerpower/CPAppAbnormalRecord;

    invoke-virtual {v4}, Lcom/miui/powerkeeper/customerpower/CPAppAbnormalRecord;->getUid()I

    move-result v4

    iget-object v6, v0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->listAppAbnormalRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/powerkeeper/customerpower/CPAppAbnormalRecord;

    invoke-virtual {v6}, Lcom/miui/powerkeeper/customerpower/CPAppAbnormalRecord;->getAppType()I

    move-result v6

    iget-object v8, v0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->listAppAbnormalRecords:Ljava/util/ArrayList;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/powerkeeper/customerpower/CPAppAbnormalRecord;

    invoke-virtual {v8}, Lcom/miui/powerkeeper/customerpower/CPAppAbnormalRecord;->getPkgName()Ljava/lang/String;

    move-result-object v8

    iget-object v13, v0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->listAppAbnormalRecords:Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/miui/powerkeeper/customerpower/CPAppAbnormalRecord;

    invoke-virtual {v13}, Lcom/miui/powerkeeper/customerpower/CPAppAbnormalRecord;->getProcName()Ljava/lang/String;

    move-result-object v13

    if-eq v4, v9, :cond_1d

    if-nez v4, :cond_1c

    goto :goto_a

    :cond_1c
    if-eqz v8, :cond_1e

    if-ne v6, v7, :cond_1e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_b

    :cond_1d
    :goto_a
    if-eqz v13, :cond_1e

    if-ne v6, v7, :cond_1e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1e
    :goto_b
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    :cond_1f
    invoke-virtual {v12, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    sget-object v2, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v13, Lcom/miui/powerkeeper/customerpower/CustomerPowerResultBean;

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v14, 0xc

    const-string v15, "App partial wakelock"

    move-object/from16 v16, v3

    invoke-direct/range {v13 .. v19}, Lcom/miui/powerkeeper/customerpower/CustomerPowerResultBean;-><init>(ILjava/lang/String;Ljava/lang/String;JI)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_20
    invoke-direct {v0}, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->checkedKernelWakelocks()Z

    move-result v2

    if-eqz v2, :cond_21

    new-instance v3, Lcom/miui/powerkeeper/customerpower/CustomerPowerResultBean;

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x5

    const-string v5, "Kernel wakelock"

    const/4 v6, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/miui/powerkeeper/customerpower/CustomerPowerResultBean;-><init>(ILjava/lang/String;Ljava/lang/String;JI)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_21
    invoke-direct {v0}, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->checkedKernelWakeups()Z

    move-result v2

    if-eqz v2, :cond_22

    new-instance v3, Lcom/miui/powerkeeper/customerpower/CustomerPowerResultBean;

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x6

    const-string v5, "Kernel wakeup"

    const/4 v6, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/miui/powerkeeper/customerpower/CustomerPowerResultBean;-><init>(ILjava/lang/String;Ljava/lang/String;JI)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_22
    invoke-direct {v0}, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->checkedBadSignal()Z

    move-result v0

    if-eqz v0, :cond_23

    new-instance v2, Lcom/miui/powerkeeper/customerpower/CustomerPowerResultBean;

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x1

    const-string v4, "Bad signal"

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/miui/powerkeeper/customerpower/CustomerPowerResultBean;-><init>(ILjava/lang/String;Ljava/lang/String;JI)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_23
    return-object v1

    :cond_24
    const-string v0, "customer power info the screen on consume and screen off consume is all good,it\'s ok"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Lcom/miui/powerkeeper/customerpower/CustomerPowerResultBean;

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/16 v6, 0x64

    const-string v7, "Power none"

    const/4 v8, 0x0

    invoke-direct/range {v5 .. v11}, Lcom/miui/powerkeeper/customerpower/CustomerPowerResultBean;-><init>(ILjava/lang/String;Ljava/lang/String;JI)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public getAppAbnormalRecords()Ljava/util/ArrayList;
    .registers 41
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/miui/powerkeeper/customerpower/CPAppAbnormalRecord;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->mAppStatusRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_a

    iget-object v2, v0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->mAppStatusRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_a

    iget-object v4, v0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->mAppStatusRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/powerkeeper/customerpower/CPAppStatusRecord;

    invoke-virtual {v4}, Lcom/miui/powerkeeper/customerpower/CPAppStatusRecord;->getUid()I

    move-result v6

    invoke-virtual {v4}, Lcom/miui/powerkeeper/customerpower/CPAppStatusRecord;->getUidName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/miui/powerkeeper/customerpower/CPAppStatusRecord;->getProcName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Lcom/miui/powerkeeper/customerpower/CPAppStatusRecord;->getCpuTime()J

    move-result-wide v14

    invoke-virtual {v4}, Lcom/miui/powerkeeper/customerpower/CPAppStatusRecord;->getWakelockTime()J

    move-result-wide v9

    invoke-virtual {v4}, Lcom/miui/powerkeeper/customerpower/CPAppStatusRecord;->getForegroundTime()J

    move-result-wide v4

    sub-long v11, v14, v4

    const-wide/16 v16, 0x0

    cmp-long v13, v11, v16

    move/from16 v18, v13

    const-string v13, ", foregroundTime = "

    move/from16 v19, v2

    const-string v2, ", wakelockTime = "

    move/from16 v20, v3

    const-string v3, ", cpuTime = "

    move-object/from16 v21, v1

    const-string v1, ", procName = "

    move-wide/from16 v22, v11

    const-string v11, ", uidName = "

    const-wide/16 v24, 0x32

    const-wide/16 v26, 0x64

    const-wide/32 v28, 0x36ee80

    if-lez v18, :cond_7

    if-eqz v6, :cond_0

    const/16 v12, 0x3e8

    if-ne v6, v12, :cond_1

    :cond_0
    move-wide/from16 v36, v4

    move-wide/from16 v34, v9

    move-object v4, v11

    move-object/from16 v18, v13

    move-object/from16 v5, v21

    move-wide/from16 v11, v22

    goto :goto_3

    :cond_1
    move-wide/from16 v30, v4

    iget-wide v4, v0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->mWhichBatteryRealTime:J

    cmp-long v12, v4, v28

    if-lez v12, :cond_5

    cmp-long v12, v22, v28

    if-gtz v12, :cond_3

    mul-long v32, v22, v26

    div-long v32, v32, v4

    cmp-long v4, v32, v24

    if-lez v4, :cond_2

    goto :goto_2

    :cond_2
    move-wide/from16 v38, v14

    move-object/from16 v14, v21

    move-wide/from16 v21, v38

    move-object/from16 v18, v2

    move-object/from16 v23, v3

    move-wide v2, v9

    move-object v4, v11

    :goto_1
    move-object v15, v13

    move-wide/from16 v38, v30

    goto :goto_4

    :cond_3
    :goto_2
    sget-object v4, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "customer power info app cuid = "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v12, v6

    move-object/from16 v18, v7

    move-wide/from16 v6, v30

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Lcom/miui/powerkeeper/customerpower/CPAppAbnormalRecord;

    move-wide/from16 v30, v9

    const-string v10, "uid_cpu"

    move-object v4, v13

    const/4 v13, 0x0

    const/16 v9, 0xb

    move-wide/from16 v36, v6

    move v6, v12

    move-object/from16 v7, v18

    move-wide/from16 v34, v30

    move-object/from16 v18, v4

    move-object v4, v11

    move-wide/from16 v11, v22

    invoke-direct/range {v5 .. v13}, Lcom/miui/powerkeeper/customerpower/CPAppAbnormalRecord;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;JI)V

    move-object v9, v5

    move-object/from16 v5, v21

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    move-object/from16 v23, v3

    move-wide/from16 v21, v14

    move-object/from16 v15, v18

    move-wide/from16 v38, v36

    move-object/from16 v18, v2

    move-object v14, v5

    move-wide/from16 v2, v34

    goto :goto_4

    :cond_5
    move-object v4, v11

    move-wide/from16 v38, v14

    move-object/from16 v14, v21

    move-wide/from16 v21, v38

    move-object/from16 v18, v2

    move-object/from16 v23, v3

    move-wide v2, v9

    goto :goto_1

    :goto_3
    iget-wide v9, v0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->mWhichBatteryRealTime:J

    cmp-long v13, v9, v28

    if-lez v13, :cond_4

    cmp-long v13, v11, v28

    if-gtz v13, :cond_6

    mul-long v21, v11, v26

    div-long v21, v21, v9

    cmp-long v9, v21, v24

    if-lez v9, :cond_4

    :cond_6
    sget-object v9, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "customer power info app uuid = "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v21, v14

    move-wide/from16 v13, v34

    invoke-virtual {v10, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v15, v18

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v30, v13

    move-wide/from16 v13, v36

    invoke-virtual {v10, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v5

    new-instance v5, Lcom/miui/powerkeeper/customerpower/CPAppAbnormalRecord;

    const-string v10, "proc_cpu"

    const/4 v13, 0x0

    move-object v14, v9

    const/16 v9, 0xb

    move-object/from16 v18, v2

    move-object/from16 v23, v3

    move-wide/from16 v2, v30

    move-wide/from16 v38, v36

    invoke-direct/range {v5 .. v13}, Lcom/miui/powerkeeper/customerpower/CPAppAbnormalRecord;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;JI)V

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    move-wide/from16 v38, v14

    move-object/from16 v14, v21

    move-wide/from16 v21, v38

    move-object/from16 v18, v2

    move-object/from16 v23, v3

    move-wide/from16 v38, v4

    move-wide v2, v9

    move-object v4, v11

    move-object v15, v13

    :goto_4
    iget-wide v9, v0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->mWhichBatteryRealTime:J

    cmp-long v5, v9, v16

    if-lez v5, :cond_9

    iget-wide v9, v0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->mScreenOffTime:J

    cmp-long v5, v9, v28

    if-lez v5, :cond_9

    mul-long v11, v2, v26

    div-long/2addr v11, v9

    cmp-long v5, v11, v24

    if-gtz v5, :cond_8

    cmp-long v5, v2, v28

    if-lez v5, :cond_9

    :cond_8
    sget-object v5, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "customer power info app puid = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v23

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v10, v21

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v1, v18

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v10, v38

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Lcom/miui/powerkeeper/customerpower/CPAppAbnormalRecord;

    const-string v10, "wakelock_"

    const/4 v13, 0x0

    const/16 v9, 0xc

    move-wide v11, v2

    invoke-direct/range {v5 .. v13}, Lcom/miui/powerkeeper/customerpower/CPAppAbnormalRecord;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;JI)V

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    add-int/lit8 v3, v20, 0x1

    move-object v1, v14

    move/from16 v2, v19

    goto :goto_0

    :cond_a
    move-object v14, v1

    return-object v14
.end method

.method public getLabelByPackageNames([Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    array-length v0, p1

    const-string v1, ""

    const/4 v2, 0x0

    move-object v3, v1

    :goto_0
    if-ge v2, v0, :cond_4

    aget-object v4, p1, v2

    iget-object v5, p0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->mContext:Landroid/content/Context;

    invoke-static {v5, v4}, Lcom/miui/powerkeeper/customerpower/CustomerPowerUtil;->getUidByPackageName(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0x3e8

    const-string v7, ","

    if-eq v5, v6, :cond_2

    if-eqz v5, :cond_2

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/miui/powerkeeper/customerpower/CustomerPowerUtil;->getLabelByPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/miui/powerkeeper/customerpower/CustomerPowerUtil;->getLabelByPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-object v3
.end method

.method public initBatteryInfo()V
    .registers 5

    iget-object v0, p0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-wide v1, p0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->mRawRealtime:J

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/miui/powerkeeper/customerpower/CustomerPowerHelper;->getWhichBatteryRealtime(Lcom/android/internal/app/IBatteryStats;JI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->mWhichBatteryRealTime:J

    iget-object v0, p0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-wide v1, p0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->mRawRealtime:J

    invoke-static {v0, v1, v2, v3}, Lcom/miui/powerkeeper/customerpower/CustomerPowerHelper;->getScreenOnTime(Lcom/android/internal/app/IBatteryStats;JI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->mScreenOnTime:J

    iget-object v0, p0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-wide v1, p0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->mRawRealtime:J

    invoke-static {v0, v1, v2, v3}, Lcom/miui/powerkeeper/customerpower/CustomerPowerHelper;->getScreenOffTime(Lcom/android/internal/app/IBatteryStats;JI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->mScreenOffTime:J

    iget-object v0, p0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-static {v0}, Lcom/miui/powerkeeper/customerpower/CustomerPowerHelper;->getScreenOnDischargedLevel(Lcom/android/internal/app/IBatteryStats;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->mScreenOnDischargeLevel:J

    iget-object v0, p0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-static {v0}, Lcom/miui/powerkeeper/customerpower/CustomerPowerHelper;->getScreenOffDischargedLevel(Lcom/android/internal/app/IBatteryStats;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->mScreenOffDischargeLevel:J

    iget-object v0, p0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-wide v1, p0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->mRawRealtime:J

    invoke-static {v0, v1, v2, v3}, Lcom/miui/powerkeeper/customerpower/CustomerPowerHelper;->getBadSignalTime(Lcom/android/internal/app/IBatteryStats;JI)J

    move-result-wide v0

    long-to-float v0, v0

    iput v0, p0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->mBadSignalTime:F

    iget-object v0, p0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-wide v1, p0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->mRawRealtime:J

    invoke-static {v0, v1, v2, v3}, Lcom/miui/powerkeeper/customerpower/CustomerPowerHelper;->getHighBrightnessTime(Lcom/android/internal/app/IBatteryStats;JI)J

    move-result-wide v0

    long-to-float v0, v0

    iput v0, p0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->mHighBrightnessTime:F

    iget-object v0, p0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-wide v1, p0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->mRawRealtime:J

    invoke-static {v0, v1, v2, v3}, Lcom/miui/powerkeeper/customerpower/CustomerPowerHelper;->getKernelWakelockStats(Lcom/android/internal/app/IBatteryStats;JI)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->mKernelWakelocks:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-wide v1, p0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->mRawRealtime:J

    invoke-static {v0, v1, v2, v3}, Lcom/miui/powerkeeper/customerpower/CustomerPowerHelper;->getKernelWakeups(Lcom/android/internal/app/IBatteryStats;JI)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->mKernelWakeups:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->mRawRealtime:J

    invoke-static {v0, v1, v2, v3}, Lcom/miui/powerkeeper/customerpower/CustomerPowerHelper;->getAppStatusRecords(Landroid/content/Context;JI)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->mAppStatusRecords:Ljava/util/ArrayList;

    sget-object v0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "customer power info mWhichBatteryRealTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->mWhichBatteryRealTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", mScreenOnTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->mScreenOnTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", mScreenOffTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->mScreenOffTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", mScreenOnDischargeLevel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->mScreenOnDischargeLevel:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", mScreenOffDischargeLevel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->mScreenOffDischargeLevel:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", mBadSignalTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->mBadSignalTime:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", mHighBrightnessTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->mHighBrightnessTime:F

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public outputFinalResult(Ljava/io/PrintWriter;I)V
    .registers 5

    iget-object v0, p0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->TAG:Ljava/lang/String;

    const-string v1, "customer power info batteryStatsImpl is not null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->initBatteryInfo()V

    invoke-direct {p0, p1, p2}, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->outputResultPassAndNone(Ljava/io/PrintWriter;I)V

    return-void

    :cond_0
    sget-object v0, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->TAG:Ljava/lang/String;

    const-string v1, "customer power info batteryStatsImpl is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/miui/powerkeeper/customerpower/CustomerPowerCheck;->outputResultFail(Ljava/io/PrintWriter;I)V

    return-void
.end method

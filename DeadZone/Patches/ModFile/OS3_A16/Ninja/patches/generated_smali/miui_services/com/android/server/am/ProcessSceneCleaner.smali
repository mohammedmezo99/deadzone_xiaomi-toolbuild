.class public Lcom/android/server/am/ProcessSceneCleaner;
.super Lcom/android/server/am/ProcessCleanerBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ProcessSceneCleaner$H;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ProcessSceneCleaner"


# instance fields
.field private mAMS:Lcom/android/server/am/ActivityManagerService;

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/android/server/am/ProcessSceneCleaner$H;

.field private mPMS:Lcom/android/server/am/ProcessManagerService;

.field private mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

.field private mSysPressureCtrl:Lcom/android/server/am/SystemPressureController;


# direct methods
.method static bridge synthetic -$$Nest$mhandleKillAll(Lcom/android/server/am/ProcessSceneCleaner;Lmiui/process/ProcessConfig;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/ProcessSceneCleaner;->handleKillAll(Lmiui/process/ProcessConfig;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleKillAny(Lcom/android/server/am/ProcessSceneCleaner;Lmiui/process/ProcessConfig;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/ProcessSceneCleaner;->handleKillAny(Lmiui/process/ProcessConfig;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSwipeKill(Lcom/android/server/am/ProcessSceneCleaner;Lmiui/process/ProcessConfig;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/ProcessSceneCleaner;->handleSwipeKill(Lmiui/process/ProcessConfig;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mhandleUidKillApp(Lcom/android/server/am/ProcessSceneCleaner;Lmiui/process/ProcessConfig;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/ProcessSceneCleaner;->handleUidKillApp(Lmiui/process/ProcessConfig;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/ProcessCleanerBase;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    iput-object p1, p0, Lcom/android/server/am/ProcessSceneCleaner;->mAMS:Lcom/android/server/am/ActivityManagerService;

    return-void
.end method

.method private getKillPackageList(Landroid/util/ArrayMap;)Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private handleKillAll(Lmiui/process/ProcessConfig;)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    iget-object v1, v0, Lcom/android/server/am/ProcessSceneCleaner;->mPMS:Lcom/android/server/am/ProcessManagerService;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v9}, Lmiui/process/ProcessConfig;->getPolicy()I

    move-result v2

    invoke-virtual {v9}, Lmiui/process/ProcessConfig;->getPolicy()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessSceneCleaner;->getKillReason(I)Ljava/lang/String;

    move-result-object v3

    iget-object v1, v0, Lcom/android/server/am/ProcessSceneCleaner;->mAMS:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {v1}, Lcom/android/server/wm/WindowProcessUtils;->getPerceptibleRecentAppList(Lcom/android/server/wm/ActivityTaskManagerService;)Ljava/util/Map;

    move-result-object v10

    iget-object v1, v0, Lcom/android/server/am/ProcessSceneCleaner;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    invoke-virtual {v0, v9, v1}, Lcom/android/server/am/ProcessSceneCleaner;->getProcessPolicyWhiteList(Lmiui/process/ProcessConfig;Lcom/android/server/am/ProcessPolicy;)Ljava/util/List;

    move-result-object v11

    if-eqz v10, :cond_1

    if-eqz v11, :cond_1

    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    const/4 v1, 0x2

    if-ne v2, v1, :cond_2

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    iget-object v4, v0, Lcom/android/server/am/ProcessSceneCleaner;->mPMS:Lcom/android/server/am/ProcessManagerService;

    invoke-virtual {v0, v1, v4}, Lcom/android/server/am/ProcessSceneCleaner;->removeAllTasks(ILcom/android/server/am/ProcessManagerService;)V

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lcom/android/server/am/ProcessSceneCleaner;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    invoke-virtual {v0, v9, v1, v11, v10}, Lcom/android/server/am/ProcessSceneCleaner;->removeTasksIfNeeded(Lmiui/process/ProcessConfig;Lcom/android/server/am/ProcessPolicy;Ljava/util/List;Ljava/util/Map;)V

    :goto_0
    iget-object v1, v0, Lcom/android/server/am/ProcessSceneCleaner;->mSmartPowerService:Lcom/miui/app/smartpower/SmartPowerServiceInternal;

    invoke-interface {v1}, Lcom/miui/app/smartpower/SmartPowerServiceInternal;->getAllAppState()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/am/ProcessSceneCleaner;->sortAppStates(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/miui/server/smartpower/IAppState;

    invoke-virtual {v14}, Lcom/miui/server/smartpower/IAppState;->getRunningProcessList()Ljava/util/ArrayList;

    move-result-object v15

    iget-object v1, v0, Lcom/android/server/am/ProcessSceneCleaner;->mPMS:Lcom/android/server/am/ProcessManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessManagerService;->getInternal()Lcom/miui/server/process/ProcessManagerInternal;

    move-result-object v1

    invoke-virtual {v14}, Lcom/miui/server/smartpower/IAppState;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14}, Lcom/miui/server/smartpower/IAppState;->getUid()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Lcom/miui/server/process/ProcessManagerInternal;->isForegroundApp(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "skip kill App: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v14}, Lcom/miui/server/smartpower/IAppState;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " in "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " due to ForegroundApp"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "ProcessSceneCleaner"

    invoke-static {v4, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/server/smartpower/IAppState$IRunningProcess;

    invoke-virtual {v9}, Lmiui/process/ProcessConfig;->getPolicy()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    invoke-static {}, Lcom/android/server/wm/MiuiSoScManagerStub;->get()Lcom/android/server/wm/MiuiSoScManagerStub;

    move-result-object v5

    invoke-virtual {v4}, Lcom/miui/server/smartpower/IAppState$IRunningProcess;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/wm/MiuiSoScManagerStub;->isInSoScSingleMode(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_4
    iget-object v5, v0, Lcom/android/server/am/ProcessSceneCleaner;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessPolicy;->getOneKeyCleanWhiteList()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v4}, Lcom/miui/server/smartpower/IAppState$IRunningProcess;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v1, 0x0

    iget-object v5, v0, Lcom/android/server/am/ProcessSceneCleaner;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessPolicy;->getOneKeyCleanWhiteList()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v4}, Lcom/miui/server/smartpower/IAppState$IRunningProcess;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-virtual {v4}, Lcom/miui/server/smartpower/IAppState$IRunningProcess;->getProcessName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v0, v4}, Lcom/android/server/am/ProcessSceneCleaner;->isCurrentProcessInBackup(Lcom/miui/server/smartpower/IAppState$IRunningProcess;)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {v4}, Lcom/miui/server/smartpower/IAppState$IRunningProcess;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v11, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    move-object v5, v4

    move v4, v1

    invoke-virtual {v5}, Lcom/miui/server/smartpower/IAppState$IRunningProcess;->getProcessRecord()Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    move-object v6, v5

    iget-object v5, v0, Lcom/android/server/am/ProcessSceneCleaner;->mPMS:Lcom/android/server/am/ProcessManagerService;

    iget-object v7, v0, Lcom/android/server/am/ProcessSceneCleaner;->mHandler:Lcom/android/server/am/ProcessSceneCleaner$H;

    iget-object v8, v0, Lcom/android/server/am/ProcessSceneCleaner;->mContext:Landroid/content/Context;

    move-object/from16 v17, v6

    const-string v6, "ProcessSceneCleaner"

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/ProcessSceneCleaner;->killOnce(Lcom/android/server/am/ProcessRecord;ILjava/lang/String;ZLcom/android/server/am/ProcessManagerService;Ljava/lang/String;Landroid/os/Handler;Landroid/content/Context;)V

    goto :goto_3

    :cond_6
    move-object/from16 v17, v4

    move v4, v1

    goto :goto_3

    :cond_7
    move-object/from16 v17, v4

    move v4, v1

    :goto_3
    move-object/from16 v0, p0

    move v1, v4

    goto :goto_2

    :cond_8
    move-object/from16 v0, p0

    goto :goto_1

    :cond_9
    return-void
.end method

.method private handleKillAny(Lmiui/process/ProcessConfig;)V
    .registers 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ProcessSceneCleaner;->mPMS:Lcom/android/server/am/ProcessManagerService;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lmiui/process/ProcessConfig;->isUserIdInvalid()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "userId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lmiui/process/ProcessConfig;->getUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is invalid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ProcessSceneCleaner"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lmiui/process/ProcessConfig;->getPolicy()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Lmiui/process/ProcessConfig;->getKillingPackageMaps()Landroid/util/ArrayMap;

    move-result-object v10

    move-object/from16 v11, p1

    invoke-direct {v0, v10, v11}, Lcom/android/server/am/ProcessSceneCleaner;->removeTasksByPackages(Landroid/util/ArrayMap;Lmiui/process/ProcessConfig;)V

    iget-object v1, v0, Lcom/android/server/am/ProcessSceneCleaner;->mSmartPowerService:Lcom/miui/app/smartpower/SmartPowerServiceInternal;

    invoke-interface {v1}, Lcom/miui/app/smartpower/SmartPowerServiceInternal;->getLruProcesses()Ljava/util/ArrayList;

    move-result-object v12

    invoke-direct {v0, v10}, Lcom/android/server/am/ProcessSceneCleaner;->getKillPackageList(Landroid/util/ArrayMap;)Ljava/util/Map;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/miui/server/smartpower/IAppState$IRunningProcess;

    invoke-virtual {v6}, Lcom/miui/server/smartpower/IAppState$IRunningProcess;->getProcessRecord()Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    invoke-virtual {v6}, Lcom/miui/server/smartpower/IAppState$IRunningProcess;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v14, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v6}, Lcom/miui/server/smartpower/IAppState$IRunningProcess;->getAdj()I

    move-result v2

    if-lez v2, :cond_4

    invoke-virtual {v0, v6}, Lcom/android/server/am/ProcessSceneCleaner;->isCurrentProcessInBackup(Lcom/miui/server/smartpower/IAppState$IRunningProcess;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v13, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v2, 0x64

    if-eq v3, v2, :cond_2

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ProcessSceneCleaner;->getKillReason(Lmiui/process/ProcessConfig;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, v0, Lcom/android/server/am/ProcessSceneCleaner;->mHandler:Lcom/android/server/am/ProcessSceneCleaner$H;

    iget-object v5, v0, Lcom/android/server/am/ProcessSceneCleaner;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ProcessSceneCleaner;->killOnce(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;ILandroid/os/Handler;Landroid/content/Context;)V

    move/from16 v16, v3

    goto :goto_1

    :cond_2
    move/from16 v16, v3

    invoke-virtual {v11}, Lmiui/process/ProcessConfig;->getPolicy()I

    move-result v2

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ProcessSceneCleaner;->getKillReason(Lmiui/process/ProcessConfig;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, v0, Lcom/android/server/am/ProcessSceneCleaner;->mPMS:Lcom/android/server/am/ProcessManagerService;

    move-object v4, v7

    iget-object v7, v0, Lcom/android/server/am/ProcessSceneCleaner;->mHandler:Lcom/android/server/am/ProcessSceneCleaner$H;

    iget-object v8, v0, Lcom/android/server/am/ProcessSceneCleaner;->mContext:Landroid/content/Context;

    move-object/from16 v17, v4

    const/4 v4, 0x1

    move-object/from16 v18, v6

    const-string v6, "ProcessSceneCleaner"

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/ProcessSceneCleaner;->killOnce(Lcom/android/server/am/ProcessRecord;ILjava/lang/String;ZLcom/android/server/am/ProcessManagerService;Ljava/lang/String;Landroid/os/Handler;Landroid/content/Context;)V

    goto :goto_1

    :cond_3
    move-object/from16 v18, v6

    move-object/from16 v17, v7

    goto :goto_1

    :cond_4
    move-object/from16 v18, v6

    move-object/from16 v17, v7

    goto :goto_1

    :cond_5
    move-object/from16 v18, v6

    move-object/from16 v17, v7

    :goto_1
    move-object/from16 v0, p0

    goto :goto_0

    :cond_6
    return-void
.end method

.method private handleSwipeKill(Lmiui/process/ProcessConfig;)Z
    .registers 15

    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->isUserIdInvalid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->isTaskIdInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->getKillingPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->getTaskId()I

    move-result v2

    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->getPolicy()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/am/ProcessSceneCleaner;->getKillReason(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->isRemoveTaskNeeded()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->getTaskId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/am/ProcessSceneCleaner;->removeTaskIfNeeded(I)V

    :cond_1
    iget-object v3, p0, Lcom/android/server/am/ProcessSceneCleaner;->mPMS:Lcom/android/server/am/ProcessManagerService;

    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->getUserId()I

    move-result v4

    invoke-virtual {v3, v0, v4}, Lcom/android/server/am/ProcessManagerService;->getProcessRecordList(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-direct {p0, v3, v2}, Lcom/android/server/am/ProcessSceneCleaner;->isAppHasOtherTask(Ljava/util/List;I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v2, p1}, Lcom/android/server/am/ProcessSceneCleaner;->killAppForHasOtherTask(ILmiui/process/ProcessConfig;)Z

    move-result v1

    return v1

    :cond_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    sget-boolean v4, Lmiui/os/Build;->IS_MIUI:Z

    const/4 v4, 0x1

    if-eqz v4, :cond_4

    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessServiceRecord;->hasForegroundServices()Z

    move-result v4

    if-nez v4, :cond_5

    :cond_4
    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p0, v4, v6}, Lcom/android/server/am/ProcessSceneCleaner;->isCurrentProcessInBackup(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->getPolicy()I

    move-result v6

    iget-object v9, p0, Lcom/android/server/am/ProcessSceneCleaner;->mPMS:Lcom/android/server/am/ProcessManagerService;

    iget-object v11, p0, Lcom/android/server/am/ProcessSceneCleaner;->mHandler:Lcom/android/server/am/ProcessSceneCleaner$H;

    iget-object v12, p0, Lcom/android/server/am/ProcessSceneCleaner;->mContext:Landroid/content/Context;

    const/4 v8, 0x1

    const-string v10, "ProcessSceneCleaner"

    move-object v4, p0

    invoke-virtual/range {v4 .. v12}, Lcom/android/server/am/ProcessSceneCleaner;->killOnce(Lcom/android/server/am/ProcessRecord;ILjava/lang/String;ZLcom/android/server/am/ProcessManagerService;Ljava/lang/String;Landroid/os/Handler;Landroid/content/Context;)V

    :cond_5
    goto :goto_0

    :cond_6
    const/4 v1, 0x1

    return v1

    :cond_7
    :goto_1
    return v1

    :cond_8
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "userId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->getUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " or taskId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->getTaskId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is invalid"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ProcessSceneCleaner"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private handleUidKillApp(Lmiui/process/ProcessConfig;)Z
    .registers 16

    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->isUidInvalid()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uid:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->getUid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is invalid"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ProcessSceneCleaner"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->getKillingPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->getUid()I

    move-result v2

    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->getPolicy()I

    move-result v5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v2}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ProcessSceneCleaner;->mSmartPowerService:Lcom/miui/app/smartpower/SmartPowerServiceInternal;

    invoke-interface {v1, v2, v0}, Lcom/miui/app/smartpower/SmartPowerServiceInternal;->getLruProcesses(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Lcom/miui/server/smartpower/IAppState$IRunningProcess;

    invoke-virtual {p0, v13}, Lcom/android/server/am/ProcessSceneCleaner;->isCurrentProcessInBackup(Lcom/miui/server/smartpower/IAppState$IRunningProcess;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v13}, Lcom/miui/server/smartpower/IAppState$IRunningProcess;->getProcessRecord()Lcom/android/server/am/ProcessRecord;

    move-result-object v4

    invoke-virtual {p0, v5}, Lcom/android/server/am/ProcessSceneCleaner;->getKillReason(I)Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/am/ProcessSceneCleaner;->mPMS:Lcom/android/server/am/ProcessManagerService;

    iget-object v10, p0, Lcom/android/server/am/ProcessSceneCleaner;->mHandler:Lcom/android/server/am/ProcessSceneCleaner$H;

    iget-object v11, p0, Lcom/android/server/am/ProcessSceneCleaner;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    const-string v9, "ProcessSceneCleaner"

    move-object v3, p0

    invoke-virtual/range {v3 .. v11}, Lcom/android/server/am/ProcessSceneCleaner;->killOnce(Lcom/android/server/am/ProcessRecord;ILjava/lang/String;ZLcom/android/server/am/ProcessManagerService;Ljava/lang/String;Landroid/os/Handler;Landroid/content/Context;)V

    :cond_2
    goto :goto_0

    :cond_3
    const/4 v3, 0x1

    return v3

    :cond_4
    :goto_1
    return v1
.end method

.method private isAppHasOtherTask(Ljava/util/List;I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;I)Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    nop

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/android/server/wm/WindowProcessUtils;->isProcessHasActivityInOtherTaskLocked(Lcom/android/server/wm/WindowProcessController;I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    goto :goto_0

    :cond_1
    return v0
.end method

.method private killAppForHasOtherTask(ILmiui/process/ProcessConfig;)Z
    .registers 14

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/android/server/wm/WindowProcessUtils;->getTaskTopApp(I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/wm/WindowProcessController;->mOwner:Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, v0

    :goto_0
    if-eqz v3, :cond_2

    nop

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/wm/WindowProcessUtils;->isProcessHasActivityInOtherTaskLocked(Lcom/android/server/wm/WindowProcessController;I)Z

    move-result v0

    if-nez v0, :cond_2

    sget-boolean v2, Lmiui/os/Build;->IS_MIUI:Z

    const/4 v2, 0x1

    if-eqz v2, :cond_1

    iget-object v2, v3, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessServiceRecord;->hasForegroundServices()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    iget-object v2, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p0, v2, v4}, Lcom/android/server/am/ProcessSceneCleaner;->isCurrentProcessInBackup(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p2}, Lmiui/process/ProcessConfig;->getPolicy()I

    move-result v4

    invoke-virtual {p2}, Lmiui/process/ProcessConfig;->getPolicy()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/am/ProcessSceneCleaner;->getKillReason(I)Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/am/ProcessSceneCleaner;->mPMS:Lcom/android/server/am/ProcessManagerService;

    iget-object v9, p0, Lcom/android/server/am/ProcessSceneCleaner;->mHandler:Lcom/android/server/am/ProcessSceneCleaner$H;

    iget-object v10, p0, Lcom/android/server/am/ProcessSceneCleaner;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const-string v8, "ProcessSceneCleaner"

    move-object v2, p0

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/am/ProcessSceneCleaner;->killOnce(Lcom/android/server/am/ProcessRecord;ILjava/lang/String;ZLcom/android/server/am/ProcessManagerService;Ljava/lang/String;Landroid/os/Handler;Landroid/content/Context;)V

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private removeTasksByPackages(Landroid/util/ArrayMap;Lmiui/process/ProcessConfig;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Lmiui/process/ProcessConfig;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2}, Lmiui/process/ProcessConfig;->isRemoveTaskNeeded()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0x65

    if-eq v2, v3, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/server/am/ProcessSceneCleaner;->mPMS:Lcom/android/server/am/ProcessManagerService;

    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/ProcessSceneCleaner;->isTrimMemoryEnable(Ljava/lang/String;Lcom/android/server/am/ProcessManagerService;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    :cond_2
    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Lmiui/process/ProcessConfig;->getUserId()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/am/ProcessSceneCleaner;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/am/ProcessSceneCleaner;->removeTasksInPackages(Ljava/util/List;ILcom/android/server/am/ProcessPolicy;)V

    :cond_4
    return-void
.end method

.method private sortAppStates(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/server/smartpower/IAppState;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/miui/server/smartpower/IAppState;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/miui/server/smartpower/IAppState;

    const/4 v1, 0x0

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/server/smartpower/IAppState;

    invoke-virtual {v4}, Lcom/miui/server/smartpower/IAppState;->getAdj()I

    move-result v5

    const/16 v6, 0xc8

    if-gt v5, v6, :cond_1

    add-int/lit8 v5, v1, 0x1

    aput-object v4, v0, v1

    move v1, v5

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v2, -0x1

    aput-object v4, v0, v2

    move v2, v5

    :goto_1
    goto :goto_0

    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v3

    :cond_3
    :goto_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method


# virtual methods
.method createMessage(ILmiui/process/ProcessConfig;Landroid/os/Handler;)Landroid/os/Message;
    .registers 5

    invoke-virtual {p3, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method public sceneKillProcess(Lmiui/process/ProcessConfig;)Z
    .registers 6

    iget-object v0, p0, Lcom/android/server/am/ProcessSceneCleaner;->mHandler:Lcom/android/server/am/ProcessSceneCleaner$H;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->getPolicy()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-object v1, p0, Lcom/android/server/am/ProcessSceneCleaner;->mHandler:Lcom/android/server/am/ProcessSceneCleaner$H;

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/android/server/am/ProcessSceneCleaner;->mHandler:Lcom/android/server/am/ProcessSceneCleaner$H;

    invoke-virtual {p0, v2, p1, v3}, Lcom/android/server/am/ProcessSceneCleaner;->createMessage(ILmiui/process/ProcessConfig;Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/ProcessSceneCleaner$H;->sendMessage(Landroid/os/Message;)Z

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->getKillingPackage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ProcessSceneCleaner;->mHandler:Lcom/android/server/am/ProcessSceneCleaner$H;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/server/am/ProcessSceneCleaner;->mHandler:Lcom/android/server/am/ProcessSceneCleaner$H;

    invoke-virtual {p0, v2, p1, v3}, Lcom/android/server/am/ProcessSceneCleaner;->createMessage(ILmiui/process/ProcessConfig;Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/ProcessSceneCleaner$H;->sendMessage(Landroid/os/Message;)Z

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lmiui/process/ProcessConfig;->getKillingPackageMaps()Landroid/util/ArrayMap;

    move-result-object v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    iget-object v1, p0, Lcom/android/server/am/ProcessSceneCleaner;->mHandler:Lcom/android/server/am/ProcessSceneCleaner$H;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/server/am/ProcessSceneCleaner;->mHandler:Lcom/android/server/am/ProcessSceneCleaner$H;

    invoke-virtual {p0, v2, p1, v3}, Lcom/android/server/am/ProcessSceneCleaner;->createMessage(ILmiui/process/ProcessConfig;Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/ProcessSceneCleaner$H;->sendMessage(Landroid/os/Message;)Z

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_3
    iget-object v1, p0, Lcom/android/server/am/ProcessSceneCleaner;->mHandler:Lcom/android/server/am/ProcessSceneCleaner$H;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/server/am/ProcessSceneCleaner;->mHandler:Lcom/android/server/am/ProcessSceneCleaner$H;

    invoke-virtual {p0, v2, p1, v3}, Lcom/android/server/am/ProcessSceneCleaner;->createMessage(ILmiui/process/ProcessConfig;Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/ProcessSceneCleaner$H;->sendMessage(Landroid/os/Message;)Z

    const/4 v0, 0x1

    nop

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_3
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_3
        0x6 -> :sswitch_2
        0x7 -> :sswitch_1
        0xa -> :sswitch_2
        0x17 -> :sswitch_0
    .end sparse-switch
.end method

.method public systemReady(Lcom/android/server/am/ProcessManagerService;Landroid/os/Looper;Landroid/content/Context;)V
    .registers 5

    invoke-super {p0, p3, p1}, Lcom/android/server/am/ProcessCleanerBase;->systemReady(Landroid/content/Context;Lcom/android/server/am/ProcessManagerService;)V

    iput-object p3, p0, Lcom/android/server/am/ProcessSceneCleaner;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/am/ProcessSceneCleaner;->mPMS:Lcom/android/server/am/ProcessManagerService;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessManagerService;->getProcessPolicy()Lcom/android/server/am/ProcessPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ProcessSceneCleaner;->mProcessPolicy:Lcom/android/server/am/ProcessPolicy;

    invoke-static {}, Lcom/android/server/am/SystemPressureController;->getInstance()Lcom/android/server/am/SystemPressureController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ProcessSceneCleaner;->mSysPressureCtrl:Lcom/android/server/am/SystemPressureController;

    new-instance v0, Lcom/android/server/am/ProcessSceneCleaner$H;

    invoke-direct {v0, p0, p2}, Lcom/android/server/am/ProcessSceneCleaner$H;-><init>(Lcom/android/server/am/ProcessSceneCleaner;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/ProcessSceneCleaner;->mHandler:Lcom/android/server/am/ProcessSceneCleaner$H;

    return-void
.end method

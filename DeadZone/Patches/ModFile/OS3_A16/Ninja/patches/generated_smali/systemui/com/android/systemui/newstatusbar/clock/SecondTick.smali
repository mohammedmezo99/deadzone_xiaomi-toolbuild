.class public Lcom/android/systemui/newstatusbar/clock/SecondTick;
.super Lcom/android/systemui/plugins/controllers/ControllerExt;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/newstatusbar/clock/SecondTick$SecondTimerTask;,
        Lcom/android/systemui/newstatusbar/clock/SecondTick$CallBack;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/plugins/controllers/ControllerExt<",
        "Lcom/android/systemui/newstatusbar/clock/SecondTick$CallBack;",
        ">;"
    }
.end annotation


# instance fields
.field private mTimer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/systemui/plugins/controllers/ControllerExt;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/newstatusbar/clock/SecondTick;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/newstatusbar/clock/SecondTick;->onTimeChanged()V

    return-void
.end method

.method private isSecondEnable()Z
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/clock/SecondTick;->callBacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/newstatusbar/clock/SecondTick$CallBack;

    invoke-interface {v1}, Lcom/android/systemui/newstatusbar/clock/SecondTick$CallBack;->isSecondEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private onTimeChanged()V
    .registers 5

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/clock/SecondTick;->callBacks:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/newstatusbar/clock/SecondTick;->callBacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/newstatusbar/clock/SecondTick$CallBack;

    new-instance v3, Lcom/android/systemui/newstatusbar/clock/SecondTick$1;

    invoke-direct {v3, p0, v2}, Lcom/android/systemui/newstatusbar/clock/SecondTick$1;-><init>(Lcom/android/systemui/newstatusbar/clock/SecondTick;Lcom/android/systemui/newstatusbar/clock/SecondTick$CallBack;)V

    invoke-interface {v2, v3}, Lcom/android/systemui/newstatusbar/clock/SecondTick$CallBack;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateTimer(Z)V
    .registers 9

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/clock/SecondTick;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/clock/SecondTick;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/newstatusbar/clock/SecondTick;->mTimer:Ljava/util/Timer;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/clock/SecondTick;->mTimer:Ljava/util/Timer;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/newstatusbar/clock/SecondTick;->isSecondEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/newstatusbar/clock/SecondTick;->mTimer:Ljava/util/Timer;

    new-instance v2, Lcom/android/systemui/newstatusbar/clock/SecondTick$SecondTimerTask;

    invoke-direct {v2, p0}, Lcom/android/systemui/newstatusbar/clock/SecondTick$SecondTimerTask;-><init>(Lcom/android/systemui/newstatusbar/clock/SecondTick;)V

    const-wide/16 v3, 0xa

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_1
    return-void
.end method


# virtual methods
.method public addCallBack(Lcom/android/systemui/newstatusbar/clock/SecondTick$CallBack;)V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/clock/SecondTick;->callBacks:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    invoke-super {p0, p1}, Lcom/android/systemui/plugins/controllers/ControllerExt;->addCallBack(Lcom/android/systemui/plugins/controllers/ControllerExt$CallBack;)V

    invoke-direct {p0}, Lcom/android/systemui/newstatusbar/clock/SecondTick;->isSecondEnable()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/systemui/newstatusbar/clock/SecondTick;->updateTimer(Z)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic addCallBack(Lcom/android/systemui/plugins/controllers/ControllerExt$CallBack;)V
    .registers 2

    check-cast p1, Lcom/android/systemui/newstatusbar/clock/SecondTick$CallBack;

    invoke-virtual {p0, p1}, Lcom/android/systemui/newstatusbar/clock/SecondTick;->addCallBack(Lcom/android/systemui/newstatusbar/clock/SecondTick$CallBack;)V

    return-void
.end method

.method public onVisibleChange(Lcom/android/systemui/newstatusbar/clock/SecondTick$CallBack;Z)V
    .registers 3

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/newstatusbar/clock/SecondTick;->addCallBack(Lcom/android/systemui/newstatusbar/clock/SecondTick$CallBack;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/newstatusbar/clock/SecondTick;->removeCallBack(Lcom/android/systemui/newstatusbar/clock/SecondTick$CallBack;)V

    :goto_0
    return-void
.end method

.method public removeCallBack(Lcom/android/systemui/newstatusbar/clock/SecondTick$CallBack;)V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/clock/SecondTick;->callBacks:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    invoke-super {p0, p1}, Lcom/android/systemui/plugins/controllers/ControllerExt;->removeCallBack(Lcom/android/systemui/plugins/controllers/ControllerExt$CallBack;)V

    invoke-direct {p0}, Lcom/android/systemui/newstatusbar/clock/SecondTick;->isSecondEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/newstatusbar/clock/SecondTick;->callBacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-direct {p0, v1}, Lcom/android/systemui/newstatusbar/clock/SecondTick;->updateTimer(Z)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic removeCallBack(Lcom/android/systemui/plugins/controllers/ControllerExt$CallBack;)V
    .registers 2

    check-cast p1, Lcom/android/systemui/newstatusbar/clock/SecondTick$CallBack;

    invoke-virtual {p0, p1}, Lcom/android/systemui/newstatusbar/clock/SecondTick;->removeCallBack(Lcom/android/systemui/newstatusbar/clock/SecondTick$CallBack;)V

    return-void
.end method

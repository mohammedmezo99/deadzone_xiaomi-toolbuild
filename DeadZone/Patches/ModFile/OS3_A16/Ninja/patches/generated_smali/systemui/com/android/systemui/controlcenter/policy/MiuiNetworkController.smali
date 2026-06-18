.class public final Lcom/android/systemui/controlcenter/policy/MiuiNetworkController;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/miui/systemui/controller/ControlCenterSettingsController$UseControlCenterChangeListener;


# instance fields
.field public final controlCenterController:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

.field public final coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field public final dataUsageInfoController:Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;

.field public final telephonyRepository:Lcom/android/systemui/telephony/data/repository/TelephonyRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/telephony/data/repository/TelephonyRepositoryImpl;Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/controlcenter/policy/MiuiNetworkController;->controlCenterController:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    iput-object p2, p0, Lcom/android/systemui/controlcenter/policy/MiuiNetworkController;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p3, p0, Lcom/android/systemui/controlcenter/policy/MiuiNetworkController;->telephonyRepository:Lcom/android/systemui/telephony/data/repository/TelephonyRepositoryImpl;

    iput-object p4, p0, Lcom/android/systemui/controlcenter/policy/MiuiNetworkController;->dataUsageInfoController:Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;

    return-void
.end method


# virtual methods
.method public final listenDataUsage()V
    .registers 7

    iget-object v0, p0, Lcom/android/systemui/controlcenter/policy/MiuiNetworkController;->controlCenterController:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->isUseControlCenter()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/MiuiNetworkController;->dataUsageInfoController:Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;

    iget-boolean v2, p0, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;->listening:Z

    if-ne v2, v0, :cond_1

    goto :goto_3

    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;->listening:Z

    const-string v2, "set listening: "

    const-string v3, "DataUsageInfoController"

    invoke-static {v2, v3, v0}, Lcom/android/keyguard/clock/animation/TinyBubbleClockAnimation$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;->contentObserver$delegate:Lkotlin/Lazy;

    iget-object v4, p0, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;->networkController:Lcom/android/systemui/statusbar/connectivity/NetworkController;

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v5, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;->URI:Landroid/net/Uri;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController$contentObserver$2$1;

    invoke-virtual {v0, v5, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    const-string v0, "register observer for network assistant failed."

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    check-cast v4, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;

    invoke-virtual {v4, p0}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->addCallback(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;->handler:Lcom/android/systemui/controlcenter/policy/DataUsageInfoController$handler$1;

    const/16 v0, 0x91d

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController$contentObserver$2$1;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    const-string v0, "unregister observer for network assistant failed."

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    check-cast v4, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;

    invoke-virtual {v4, p0}, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->removeCallback(Ljava/lang/Object;)V

    :goto_3
    return-void
.end method

.method public final onUseControlCenterChange(Z)V
    .registers 2

    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/policy/MiuiNetworkController;->listenDataUsage()V

    return-void
.end method

.method public final start()V
    .registers 5

    iget-object v0, p0, Lcom/android/systemui/controlcenter/policy/MiuiNetworkController;->controlCenterController:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->addCallback(Lcom/miui/systemui/controller/ControlCenterSettingsController$UseControlCenterChangeListener;)V

    new-instance v0, Lcom/android/systemui/controlcenter/policy/MiuiNetworkController$observeCallState$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/controlcenter/policy/MiuiNetworkController$observeCallState$1;-><init>(Lcom/android/systemui/controlcenter/policy/MiuiNetworkController;Lkotlin/coroutines/Continuation;)V

    iget-object v2, p0, Lcom/android/systemui/controlcenter/policy/MiuiNetworkController;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v3, 0x3

    invoke-static {v2, v1, v0, v3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/policy/MiuiNetworkController;->listenDataUsage()V

    return-void
.end method

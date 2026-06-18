.class public final Lcom/miui/charge/MiuiChargeManager;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/util/Dumpable;
.implements Lcom/miui/interfaces/miuicharge/IMiuiChargeManager;
.implements Lcom/android/systemui/CoreStartable;


# instance fields
.field public final mBatteryStatus:Lcom/miui/systemui/charge/BatteryStatus;

.field public mChargeType:I

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public mHandlerCallback:Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy$$ExternalSyntheticLambda2;

.field public mIsChargeLevelAnimationRunning:Z

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/stub/MiuiKeyguardUpdateMonitorStub;

.field public final mNotUpdateLevelRunnable:Lcom/miui/charge/MiuiChargeManager$4;

.field public mNotUpdateLevelWhenBatteryChange:Z

.field public mRealLevel:I

.field public final mUpdateChargingFromPowerCenterRunnable:Lcom/miui/charge/MiuiChargeManager$4;


# direct methods
.method public static -$$Nest$monChargeDeviceTypeChanged(Lcom/miui/charge/MiuiChargeManager;I)V
    .registers 5

    if-gez p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/charge/MiuiChargeManager;->mBatteryStatus:Lcom/miui/systemui/charge/BatteryStatus;

    iget v1, v0, Lcom/miui/systemui/charge/BatteryStatus;->wireState:I

    invoke-static {v1, p1}, Lcom/miui/charge/ChargeUtils;->getChargeSpeed(II)I

    move-result v1

    iput v1, v0, Lcom/miui/systemui/charge/BatteryStatus;->chargeSpeed:I

    iget-object v0, p0, Lcom/miui/charge/MiuiChargeManager;->mBatteryStatus:Lcom/miui/systemui/charge/BatteryStatus;

    iget v1, v0, Lcom/miui/systemui/charge/BatteryStatus;->wireState:I

    const/16 v2, 0xa

    if-eq v1, v2, :cond_2

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    goto :goto_1

    :cond_2
    :goto_0
    iget v1, p0, Lcom/miui/charge/MiuiChargeManager;->mChargeType:I

    :goto_1
    iget v2, v0, Lcom/miui/systemui/charge/BatteryStatus;->chargeDeviceType:I

    if-eq v1, v2, :cond_3

    iput p1, v0, Lcom/miui/systemui/charge/BatteryStatus;->chargeDeviceType:I

    invoke-virtual {p0}, Lcom/miui/charge/MiuiChargeManager;->notifyBatteryStatusChanged()V

    :cond_3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/keyguard/stub/MiuiKeyguardUpdateMonitorStub;)V
    .registers 16

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/miui/charge/MiuiChargeManager$4;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/charge/MiuiChargeManager$4;-><init>(Lcom/miui/charge/MiuiChargeManager;I)V

    iput-object v0, p0, Lcom/miui/charge/MiuiChargeManager;->mNotUpdateLevelRunnable:Lcom/miui/charge/MiuiChargeManager$4;

    new-instance v0, Lcom/miui/charge/MiuiChargeManager$4;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/miui/charge/MiuiChargeManager$4;-><init>(Lcom/miui/charge/MiuiChargeManager;I)V

    iput-object v0, p0, Lcom/miui/charge/MiuiChargeManager;->mUpdateChargingFromPowerCenterRunnable:Lcom/miui/charge/MiuiChargeManager$4;

    iput-object p1, p0, Lcom/miui/charge/MiuiChargeManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/charge/MiuiChargeManager;->mHandler:Landroid/os/Handler;

    move-object v0, p3

    iput-object v0, p0, Lcom/miui/charge/MiuiChargeManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/stub/MiuiKeyguardUpdateMonitorStub;

    new-instance v0, Lcom/miui/systemui/charge/BatteryStatus;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x1

    const/4 v8, -0x1

    const/4 v11, 0x0

    invoke-direct/range {v0 .. v11}, Lcom/miui/systemui/charge/BatteryStatus;-><init>(IIIIIIIIIZI)V

    iput-object v0, p0, Lcom/miui/charge/MiuiChargeManager;->mBatteryStatus:Lcom/miui/systemui/charge/BatteryStatus;

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 3

    const-string p2, "MiuiChargeManager state:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "  isChargeAnimationDisabled ="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/charge/ChargeUtils;->isChargeAnimationDisabled()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    const-string p2, "  mLevel ="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/miui/charge/MiuiChargeManager;->mBatteryStatus:Lcom/miui/systemui/charge/BatteryStatus;

    iget p2, p2, Lcom/miui/systemui/charge/BatteryStatus;->level:I

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(I)V

    const-string p2, "  mWireState ="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/miui/charge/MiuiChargeManager;->mBatteryStatus:Lcom/miui/systemui/charge/BatteryStatus;

    iget p2, p2, Lcom/miui/systemui/charge/BatteryStatus;->wireState:I

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(I)V

    const-string p2, "  mChargeSpeed ="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/miui/charge/MiuiChargeManager;->mBatteryStatus:Lcom/miui/systemui/charge/BatteryStatus;

    iget p0, p0, Lcom/miui/systemui/charge/BatteryStatus;->chargeSpeed:I

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(I)V

    return-void
.end method

.method public final notifyBatteryStatusChanged()V
    .registers 15

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "notifyBatteryStatusChanged:  status: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/charge/MiuiChargeManager;->mBatteryStatus:Lcom/miui/systemui/charge/BatteryStatus;

    iget v1, v1, Lcom/miui/systemui/charge/BatteryStatus;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isPlugged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/charge/MiuiChargeManager;->mBatteryStatus:Lcom/miui/systemui/charge/BatteryStatus;

    iget v1, v1, Lcom/miui/systemui/charge/BatteryStatus;->plugged:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " level: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/charge/MiuiChargeManager;->mBatteryStatus:Lcom/miui/systemui/charge/BatteryStatus;

    iget v1, v1, Lcom/miui/systemui/charge/BatteryStatus;->level:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " wireState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/charge/MiuiChargeManager;->mBatteryStatus:Lcom/miui/systemui/charge/BatteryStatus;

    iget v1, v1, Lcom/miui/systemui/charge/BatteryStatus;->wireState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " chargeSpeed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/charge/MiuiChargeManager;->mBatteryStatus:Lcom/miui/systemui/charge/BatteryStatus;

    iget v1, v1, Lcom/miui/systemui/charge/BatteryStatus;->chargeSpeed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mChargeType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/charge/MiuiChargeManager;->mChargeType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " chargeDeviceType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/charge/MiuiChargeManager;->mBatteryStatus:Lcom/miui/systemui/charge/BatteryStatus;

    iget v1, v1, Lcom/miui/systemui/charge/BatteryStatus;->chargeDeviceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " maxChargingWattage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/charge/MiuiChargeManager;->mBatteryStatus:Lcom/miui/systemui/charge/BatteryStatus;

    iget v1, v1, Lcom/miui/systemui/charge/BatteryStatus;->maxChargingWattage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isCarCharge: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/charge/MiuiChargeManager;->mBatteryStatus:Lcom/miui/systemui/charge/BatteryStatus;

    iget v1, v1, Lcom/miui/systemui/charge/BatteryStatus;->carChargeMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isReverseCharging: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/charge/MiuiChargeManager;->mBatteryStatus:Lcom/miui/systemui/charge/BatteryStatus;

    iget v1, v1, Lcom/miui/systemui/charge/BatteryStatus;->reverseChargingState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " SUPPORT_BROADCAST_QUICK_CHARGE: true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiChargeManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/miui/systemui/charge/BatteryStatus;

    iget-object v0, p0, Lcom/miui/charge/MiuiChargeManager;->mBatteryStatus:Lcom/miui/systemui/charge/BatteryStatus;

    iget v3, v0, Lcom/miui/systemui/charge/BatteryStatus;->status:I

    iget v4, v0, Lcom/miui/systemui/charge/BatteryStatus;->plugged:I

    iget v1, v0, Lcom/miui/systemui/charge/BatteryStatus;->level:I

    if-gez v1, :cond_1

    const/4 v1, 0x0

    :cond_0
    move v5, v1

    goto :goto_0

    :cond_1
    const/16 v5, 0x64

    if-le v1, v5, :cond_0

    :goto_0
    iget v6, v0, Lcom/miui/systemui/charge/BatteryStatus;->wireState:I

    iget v7, v0, Lcom/miui/systemui/charge/BatteryStatus;->chargeSpeed:I

    iget v8, v0, Lcom/miui/systemui/charge/BatteryStatus;->chargeDeviceType:I

    iget v9, v0, Lcom/miui/systemui/charge/BatteryStatus;->chargingStatus:I

    iget v10, v0, Lcom/miui/systemui/charge/BatteryStatus;->maxChargingWattage:I

    iget v11, v0, Lcom/miui/systemui/charge/BatteryStatus;->carChargeMode:I

    iget-boolean v12, v0, Lcom/miui/systemui/charge/BatteryStatus;->present:Z

    iget v13, v0, Lcom/miui/systemui/charge/BatteryStatus;->reverseChargingState:I

    invoke-direct/range {v2 .. v13}, Lcom/miui/systemui/charge/BatteryStatus;-><init>(IIIIIIIIIZI)V

    iget-object p0, p0, Lcom/miui/charge/MiuiChargeManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/stub/MiuiKeyguardUpdateMonitorStub;

    iget-object p0, p0, Lcom/android/keyguard/stub/MiuiKeyguardUpdateMonitorStub;->keyguardUpdateMonitor:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$13;

    const/16 v1, 0x12e

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$13;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final setIsChargeLevelAnimationRunning(Z)V
    .registers 6

    iget-boolean v0, p0, Lcom/miui/charge/MiuiChargeManager;->mIsChargeLevelAnimationRunning:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/charge/MiuiChargeManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/charge/MiuiChargeManager;->mNotUpdateLevelRunnable:Lcom/miui/charge/MiuiChargeManager$4;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-boolean v0, p0, Lcom/miui/charge/MiuiChargeManager;->mIsChargeLevelAnimationRunning:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/charge/MiuiChargeManager;->mNotUpdateLevelWhenBatteryChange:Z

    iget-object v0, p0, Lcom/miui/charge/MiuiChargeManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/charge/MiuiChargeManager;->mNotUpdateLevelRunnable:Lcom/miui/charge/MiuiChargeManager$4;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/miui/charge/MiuiChargeManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/charge/MiuiChargeManager;->mNotUpdateLevelRunnable:Lcom/miui/charge/MiuiChargeManager$4;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    iput-boolean p1, p0, Lcom/miui/charge/MiuiChargeManager;->mIsChargeLevelAnimationRunning:Z

    return-void
.end method

.method public final start()V
    .registers 5

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "miui.intent.action.ACTION_QUICK_CHARGE_TYPE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    const-class v1, Lcom/miui/charge/MiuiChargeController;

    invoke-static {v1}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/charge/MiuiChargeManager;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/miui/charge/MiuiChargeManager$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/miui/charge/MiuiChargeManager$1;-><init>(Lcom/miui/charge/MiuiChargeManager;I)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/charge/MiuiChargeManager;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/miui/charge/MiuiChargeManager$1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/miui/charge/MiuiChargeManager$1;-><init>(Lcom/miui/charge/MiuiChargeManager;I)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "miui.intent.action.ACTION_HANDLE_BATTERY_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/charge/MiuiChargeManager;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/miui/charge/MiuiChargeManager$1;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/miui/charge/MiuiChargeManager$1;-><init>(Lcom/miui/charge/MiuiChargeManager;I)V

    new-instance p0, Landroid/content/IntentFilter;

    const-string v2, "miui.intent.action.ACTION_COMMON_REVERSE_CHARGE"

    invoke-direct {p0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, p0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

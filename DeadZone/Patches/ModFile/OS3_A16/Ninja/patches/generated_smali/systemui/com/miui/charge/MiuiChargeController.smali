.class public final Lcom/miui/charge/MiuiChargeController;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/miui/charge/view/IChargeAnimationListener;
.implements Lcom/miui/sysuiinterfaces/IWakefulnessLifecycle$IObserver;
.implements Lcom/miui/interfaces/SettingsObserver$Callback;


# instance fields
.field public hasShowdChargeAnim:Z

.field public final mAngleSensor:Landroid/hardware/Sensor;

.field public mBatteryStatus:Lcom/miui/systemui/charge/BatteryStatus;

.field public mChargeAnimationShowing:Z

.field public mChargeAnimationType:I

.field public mChargeAnimationView:Lcom/miui/charge/container/MiuiChargeAnimationView;

.field public mChargeDeviceForAnalytic:I

.field public mChargeDeviceType:I

.field public mChargeSpeed:I

.field public mClickShowChargeUI:Z

.field public final mContext:Landroid/content/Context;

.field public mCurrentUser:I

.field public final mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

.field public mFastChargeChanged:Z

.field public mFoldStateListener:Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

.field public mFoldStatus:Ljava/lang/Boolean;

.field public final mHandler:Landroid/os/Handler;

.field public mIsFastCharge:Z

.field public mIsFlipFolded:Z

.field public final mIsFoldChargeVideo:Z

.field public final mKeyguardIndicationInjectorLazy:Ldagger/Lazy;

.field public final mKeyguardMagazineHelper:Ldagger/Lazy;

.field public final mKeyguardUpdateMonitorCallback:Lcom/miui/charge/MiuiChargeController$1;

.field public final mMiuiKeyguardUpdateCallback:Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;

.field public final mMiuiShortcutController:Ldagger/Lazy;

.field public final mMiuiShortcutPluginCallback:Lcom/miui/charge/MiuiChargeController$3;

.field public mMiuiWirelessChargeSlowlyView:Lcom/miui/charge/MiuiWirelessChargeSlowlyView;

.field public mNeedRepositionDevice:Z

.field public final mOrientationListener:Lcom/miui/charge/OrientationEventListenerWrapper;

.field public mPendingChargeAnimation:Z

.field public final mPowerManager:Landroid/os/PowerManager;

.field public final mScreenOffRunnable:Lcom/miui/charge/MiuiChargeController$6;

.field public mScreenOn:Z

.field public final mScreenOnWakeLock:Landroid/os/PowerManager$WakeLock;

.field public final mSelectedUserInteractor:Lcom/miui/systemui/user/domain/SelectedUserInteractorDelegate;

.field public final mSensorEventListener:Lcom/miui/charge/MiuiChargeController$8;

.field public final mSensorManager:Landroid/hardware/SensorManager;

.field public mShowNewAnimation:Z

.field public final mShowSlowlyRunnable:Lcom/miui/charge/MiuiChargeController$6;

.field public mStateInitialized:Z

.field public final mSystemUIStat:Lcom/miui/interfaces/ISystemUIStat;

.field public final mUpdateMonitor:Lcom/android/keyguard/stub/MiuiKeyguardUpdateMonitorStub;

.field public final mUpdateMonitorInjector:Lcom/android/keyguard/stub/MiuiKeyguardUpdateMonitorInjectorStub;

.field public mWireState:I

.field public mWirelessChargeStartTime:J

.field public mWirelessChargeState:I

.field public mWirelessCharging:Z

.field public mWirelessOnline:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/miui/systemui/functions/SettingsObserverImpl;Landroid/os/PowerManager;Lcom/miui/systemui/user/domain/SelectedUserInteractorDelegate;Lcom/android/keyguard/stub/MiuiKeyguardUpdateMonitorStub;Lcom/android/keyguard/stub/MiuiKeyguardUpdateMonitorInjectorStub;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Lkotlinx/coroutines/CoroutineScope;Lcom/miui/interfaces/ISystemUIStat;)V
    .registers 37

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    move-object/from16 v0, p3

    move-object/from16 v7, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v8, -0x1

    iput v8, v1, Lcom/miui/charge/MiuiChargeController;->mChargeAnimationType:I

    iput v8, v1, Lcom/miui/charge/MiuiChargeController;->mChargeSpeed:I

    const/4 v9, 0x0

    iput-boolean v9, v1, Lcom/miui/charge/MiuiChargeController;->mWirelessOnline:Z

    iput-boolean v9, v1, Lcom/miui/charge/MiuiChargeController;->mWirelessCharging:Z

    iput-boolean v9, v1, Lcom/miui/charge/MiuiChargeController;->mNeedRepositionDevice:Z

    iput-boolean v9, v1, Lcom/miui/charge/MiuiChargeController;->mScreenOn:Z

    iput-boolean v9, v1, Lcom/miui/charge/MiuiChargeController;->mChargeAnimationShowing:Z

    iput-boolean v9, v1, Lcom/miui/charge/MiuiChargeController;->mShowNewAnimation:Z

    iput-boolean v9, v1, Lcom/miui/charge/MiuiChargeController;->mIsFastCharge:Z

    iput-boolean v9, v1, Lcom/miui/charge/MiuiChargeController;->mFastChargeChanged:Z

    iput-boolean v9, v1, Lcom/miui/charge/MiuiChargeController;->hasShowdChargeAnim:Z

    new-instance v5, Lcom/miui/charge/MiuiChargeController$1;

    invoke-direct {v5, v1}, Lcom/miui/charge/MiuiChargeController$1;-><init>(Lcom/miui/charge/MiuiChargeController;)V

    iput-object v5, v1, Lcom/miui/charge/MiuiChargeController;->mKeyguardUpdateMonitorCallback:Lcom/miui/charge/MiuiChargeController$1;

    new-instance v10, Lcom/miui/charge/MiuiChargeController$2;

    invoke-direct {v10, v1}, Lcom/miui/charge/MiuiChargeController$2;-><init>(Lcom/miui/charge/MiuiChargeController;)V

    iput-object v10, v1, Lcom/miui/charge/MiuiChargeController;->mMiuiKeyguardUpdateCallback:Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;

    new-instance v11, Lcom/miui/charge/MiuiChargeController$3;

    invoke-direct {v11, v1}, Lcom/miui/charge/MiuiChargeController$3;-><init>(Lcom/miui/charge/MiuiChargeController;)V

    iput-object v11, v1, Lcom/miui/charge/MiuiChargeController;->mMiuiShortcutPluginCallback:Lcom/miui/charge/MiuiChargeController$3;

    new-instance v12, Lcom/miui/charge/MiuiChargeController$6;

    const/4 v13, 0x0

    invoke-direct {v12, v1, v13}, Lcom/miui/charge/MiuiChargeController$6;-><init>(Lcom/miui/charge/MiuiChargeController;I)V

    iput-object v12, v1, Lcom/miui/charge/MiuiChargeController;->mScreenOffRunnable:Lcom/miui/charge/MiuiChargeController$6;

    new-instance v12, Lcom/miui/charge/MiuiChargeController$6;

    const/4 v13, 0x1

    invoke-direct {v12, v1, v13}, Lcom/miui/charge/MiuiChargeController$6;-><init>(Lcom/miui/charge/MiuiChargeController;I)V

    iput-object v12, v1, Lcom/miui/charge/MiuiChargeController;->mShowSlowlyRunnable:Lcom/miui/charge/MiuiChargeController$6;

    new-instance v12, Lcom/miui/charge/MiuiChargeController$8;

    invoke-direct {v12, v1}, Lcom/miui/charge/MiuiChargeController$8;-><init>(Lcom/miui/charge/MiuiChargeController;)V

    iput-object v12, v1, Lcom/miui/charge/MiuiChargeController;->mSensorEventListener:Lcom/miui/charge/MiuiChargeController$8;

    iput-object v6, v1, Lcom/miui/charge/MiuiChargeController;->mContext:Landroid/content/Context;

    move-object/from16 v12, p2

    iput-object v12, v1, Lcom/miui/charge/MiuiChargeController;->mHandler:Landroid/os/Handler;

    iput-object v7, v1, Lcom/miui/charge/MiuiChargeController;->mPowerManager:Landroid/os/PowerManager;

    iput-object v2, v1, Lcom/miui/charge/MiuiChargeController;->mSelectedUserInteractor:Lcom/miui/systemui/user/domain/SelectedUserInteractorDelegate;

    iget-object v2, v2, Lcom/miui/systemui/user/domain/SelectedUserInteractorDelegate;->selectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v2}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId()I

    move-result v2

    iput v2, v1, Lcom/miui/charge/MiuiChargeController;->mCurrentUser:I

    iput-object v3, v1, Lcom/miui/charge/MiuiChargeController;->mUpdateMonitor:Lcom/android/keyguard/stub/MiuiKeyguardUpdateMonitorStub;

    iput-object v4, v1, Lcom/miui/charge/MiuiChargeController;->mUpdateMonitorInjector:Lcom/android/keyguard/stub/MiuiKeyguardUpdateMonitorInjectorStub;

    move-object/from16 v2, p8

    iput-object v2, v1, Lcom/miui/charge/MiuiChargeController;->mKeyguardIndicationInjectorLazy:Ldagger/Lazy;

    new-instance v12, Lcom/miui/systemui/charge/BatteryStatus;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, -0x1

    const/16 v19, 0x1

    const/16 v20, -0x1

    const/16 v23, 0x0

    invoke-direct/range {v12 .. v23}, Lcom/miui/systemui/charge/BatteryStatus;-><init>(IIIIIIIIIZI)V

    iput-object v12, v1, Lcom/miui/charge/MiuiChargeController;->mBatteryStatus:Lcom/miui/systemui/charge/BatteryStatus;

    invoke-virtual {v3, v5}, Lcom/android/keyguard/stub/MiuiKeyguardUpdateMonitorStub;->registerCallback(Lcom/miui/sysuiinterfaces/assist/IKeyguardUpdateMonitorCallback;)V

    invoke-virtual {v4, v10}, Lcom/android/keyguard/stub/MiuiKeyguardUpdateMonitorInjectorStub;->registerCallback(Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;)V

    const-class v2, Lcom/miui/keyguard/WakefulnessLifecycleDelegate;

    invoke-static {v2}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/keyguard/WakefulnessLifecycleDelegate;

    invoke-virtual {v2, v1}, Lcom/miui/keyguard/WakefulnessLifecycleDelegate;->addObserver(Lcom/miui/sysuiinterfaces/IWakefulnessLifecycle$IObserver;)V

    const-string v2, "key_fast_charge_enabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    iget v4, v0, Lcom/miui/systemui/functions/SettingsObserverImpl;->mCurrentUser:I

    const/4 v10, 0x1

    invoke-static {v2, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, [Ljava/lang/String;

    const/4 v2, 0x1

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/miui/systemui/functions/SettingsObserverImpl;->addCallback(Lcom/miui/interfaces/SettingsObserver$Callback;III[Ljava/lang/String;)V

    const-string v1, "animator_duration_scale"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iget v4, v0, Lcom/miui/systemui/functions/SettingsObserverImpl;->mCurrentUser:I

    invoke-static {v1, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, [Ljava/lang/String;

    const/4 v2, 0x2

    const/4 v3, 0x3

    move-object/from16 v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/miui/systemui/functions/SettingsObserverImpl;->addCallback(Lcom/miui/interfaces/SettingsObserver$Callback;III[Ljava/lang/String;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "miui.intent.action.ACTION_SOC_DECIMAL"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "miui.intent.action.ACTION_WIRELESS_POSITION"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v3, 0x3e9

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->setPriority(I)V

    new-instance v3, Lcom/miui/charge/MiuiChargeController$4;

    invoke-direct {v3, v1}, Lcom/miui/charge/MiuiChargeController$4;-><init>(Lcom/miui/charge/MiuiChargeController;)V

    invoke-virtual {v6, v3, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    const/16 v0, 0xa

    const-string v2, "wireless_charge"

    invoke-virtual {v7, v0, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, v1, Lcom/miui/charge/MiuiChargeController;->mScreenOnWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v9}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    iput v8, v1, Lcom/miui/charge/MiuiChargeController;->mWirelessChargeState:I

    iput v8, v1, Lcom/miui/charge/MiuiChargeController;->mChargeDeviceType:I

    iput-boolean v9, v1, Lcom/miui/charge/MiuiChargeController;->mStateInitialized:Z

    iput v8, v1, Lcom/miui/charge/MiuiChargeController;->mWireState:I

    sget-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->IS_FOLD:Z

    iput-boolean v0, v1, Lcom/miui/charge/MiuiChargeController;->mIsFoldChargeVideo:Z

    const-string v0, "sensor"

    invoke-virtual {v6, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, v1, Lcom/miui/charge/MiuiChargeController;->mSensorManager:Landroid/hardware/SensorManager;

    const v2, 0x1fa268f

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, v1, Lcom/miui/charge/MiuiChargeController;->mAngleSensor:Landroid/hardware/Sensor;

    const-class v0, Landroid/hardware/devicestate/DeviceStateManager;

    invoke-virtual {v6, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/devicestate/DeviceStateManager;

    iput-object v0, v1, Lcom/miui/charge/MiuiChargeController;->mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    invoke-static {}, Landroid/view/DisplayCutoutStub;->get()Landroid/view/DisplayCutoutStub;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/DisplayCutoutStub;->isFlipFolded()Z

    move-result v0

    iput-boolean v0, v1, Lcom/miui/charge/MiuiChargeController;->mIsFlipFolded:Z

    move-object/from16 v0, p9

    iput-object v0, v1, Lcom/miui/charge/MiuiChargeController;->mMiuiShortcutController:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/interfaces/keyguard/IMiuiShortcutController;

    check-cast v0, Lcom/android/keyguard/shortcut/MiuiShortcutController;

    invoke-virtual {v0, v11}, Lcom/android/keyguard/shortcut/MiuiShortcutController;->registerSystemUIShortcutPluginCallback(Lcom/miui/interfaces/keyguard/IMiuiShortcutController$SystemUIShortcutPluginCallback;)V

    move-object/from16 v0, p10

    iput-object v0, v1, Lcom/miui/charge/MiuiChargeController;->mKeyguardMagazineHelper:Ldagger/Lazy;

    move-object/from16 v0, p12

    iput-object v0, v1, Lcom/miui/charge/MiuiChargeController;->mSystemUIStat:Lcom/miui/interfaces/ISystemUIStat;

    new-instance v0, Lcom/miui/charge/OrientationEventListenerWrapper;

    invoke-direct {v0, v6}, Lcom/miui/charge/OrientationEventListenerWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/miui/charge/MiuiChargeController;->mOrientationListener:Lcom/miui/charge/OrientationEventListenerWrapper;

    new-instance v2, Lcom/miui/charge/MiuiChargeController$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/miui/charge/MiuiChargeController$$ExternalSyntheticLambda0;-><init>(Lcom/miui/charge/MiuiChargeController;)V

    new-instance v1, Lcom/miui/charge/OrientationEventListenerWrapper$flowDebounceOrientation$1;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/miui/charge/OrientationEventListenerWrapper$flowDebounceOrientation$1;-><init>(Lcom/miui/charge/OrientationEventListenerWrapper;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    const/4 v0, 0x3

    move-object/from16 v2, p11

    invoke-static {v2, v3, v1, v0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method


# virtual methods
.method public final checkBatteryStatus(Lcom/miui/systemui/charge/BatteryStatus;Z)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    goto :goto_17

    :cond_0
    iput-object v1, v0, Lcom/miui/charge/MiuiChargeController;->mBatteryStatus:Lcom/miui/systemui/charge/BatteryStatus;

    iget v3, v1, Lcom/miui/systemui/charge/BatteryStatus;->chargeDeviceType:I

    iput v3, v0, Lcom/miui/charge/MiuiChargeController;->mChargeDeviceType:I

    move/from16 v3, p2

    iput-boolean v3, v0, Lcom/miui/charge/MiuiChargeController;->mClickShowChargeUI:Z

    iget v4, v1, Lcom/miui/systemui/charge/BatteryStatus;->status:I

    iget v5, v1, Lcom/miui/systemui/charge/BatteryStatus;->wireState:I

    const/16 v7, 0xa

    if-ne v5, v7, :cond_1

    move v8, v2

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    :goto_0
    if-ne v5, v7, :cond_2

    move v9, v2

    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    :goto_1
    const/16 v10, 0xb

    if-ne v5, v10, :cond_3

    move v5, v2

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    const/4 v11, 0x4

    const/4 v12, 0x2

    const/4 v13, -0x1

    if-eq v4, v12, :cond_4

    const/4 v14, 0x5

    if-eq v4, v14, :cond_4

    if-ne v4, v11, :cond_6

    :cond_4
    if-eqz v9, :cond_5

    move v5, v7

    goto :goto_3

    :cond_5
    if-eqz v5, :cond_6

    move v5, v10

    goto :goto_3

    :cond_6
    move v5, v13

    :goto_3
    iget v9, v0, Lcom/miui/charge/MiuiChargeController;->mWireState:I

    if-eq v9, v13, :cond_7

    if-eq v5, v9, :cond_7

    iput v13, v0, Lcom/miui/charge/MiuiChargeController;->mChargeDeviceType:I

    iget-object v9, v0, Lcom/miui/charge/MiuiChargeController;->mChargeAnimationView:Lcom/miui/charge/container/MiuiChargeAnimationView;

    if-eqz v9, :cond_7

    iget-boolean v14, v0, Lcom/miui/charge/MiuiChargeController;->mChargeAnimationShowing:Z

    if-eqz v14, :cond_7

    iget-object v9, v9, Lcom/miui/charge/container/MiuiChargeAnimationView;->mChargePercentView:Lcom/miui/charge/view/MiuiChargePercentCountView;

    iget-object v9, v9, Lcom/miui/charge/view/MiuiChargePercentCountView;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v9, :cond_7

    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_7
    iget-object v9, v0, Lcom/miui/charge/MiuiChargeController;->mBatteryStatus:Lcom/miui/systemui/charge/BatteryStatus;

    iget v9, v9, Lcom/miui/systemui/charge/BatteryStatus;->carChargeMode:I

    if-ne v9, v2, :cond_8

    move v9, v2

    goto :goto_4

    :cond_8
    const/4 v9, 0x0

    :goto_4
    iget v14, v0, Lcom/miui/charge/MiuiChargeController;->mChargeDeviceType:I

    if-ne v14, v2, :cond_9

    move v15, v2

    goto :goto_5

    :cond_9
    const/4 v15, 0x0

    :goto_5
    if-eq v14, v12, :cond_b

    const/4 v12, 0x3

    if-ne v14, v12, :cond_a

    goto :goto_6

    :cond_a
    const/4 v12, 0x0

    goto :goto_7

    :cond_b
    :goto_6
    move v12, v2

    :goto_7
    if-ne v14, v11, :cond_c

    move v11, v2

    goto :goto_8

    :cond_c
    const/4 v11, 0x0

    :goto_8
    const-string v14, "checkBatteryStatus: wireState "

    const-string v7, " status "

    move/from16 v16, v2

    const-string v2, " plugged "

    invoke-static {v5, v4, v14, v7, v2}, Landroidx/collection/MutableObjectList$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v1, Lcom/miui/systemui/charge/BatteryStatus;->plugged:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " chargeSpeed "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/miui/systemui/charge/BatteryStatus;->chargeSpeed:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " maxChargingWattage "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/miui/systemui/charge/BatteryStatus;->maxChargingWattage:I

    const-string v7, " isRapidCharge "

    const-string v14, " isSuperCharge "

    invoke-static {v2, v4, v7, v15, v14}, Lcom/android/keyguard/tinyPanel/ClockInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ZLjava/lang/String;)V

    const-string v4, " isStrongSuperCharge "

    const-string v7, " isCarMode "

    invoke-static {v2, v12, v4, v11, v7}, Lcom/android/keyguard/MiuiBleUnlockHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mChargeDeviceType "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/miui/charge/MiuiChargeController;->mChargeDeviceType:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mChargeDeviceForAnalytic "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/miui/charge/MiuiChargeController;->mChargeDeviceForAnalytic:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mReverseChargingState "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/miui/systemui/charge/BatteryStatus;->reverseChargingState:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " isChargeAnimationDisabled "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/miui/charge/ChargeUtils;->isChargeAnimationDisabled()Z

    move-result v4

    const-string v7, "MiuiChargeController"

    invoke-static {v2, v7, v4}, Lcom/android/keyguard/injector/DozeServiceHostInjector$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    iget-object v2, v0, Lcom/miui/charge/MiuiChargeController;->mBatteryStatus:Lcom/miui/systemui/charge/BatteryStatus;

    sput-object v2, Lcom/miui/charge/ChargeUtils;->sBatteryStatus:Lcom/miui/systemui/charge/BatteryStatus;

    iget-boolean v2, v0, Lcom/miui/charge/MiuiChargeController;->mStateInitialized:Z

    if-eqz v2, :cond_18

    invoke-virtual {v0}, Lcom/miui/charge/MiuiChargeController;->shouldShowChargeAnim()Z

    move-result v2

    if-nez v2, :cond_d

    const/4 v2, -0x1

    iput v2, v0, Lcom/miui/charge/MiuiChargeController;->mChargeAnimationType:I

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/miui/charge/MiuiChargeController;->mChargeAnimationView:Lcom/miui/charge/container/MiuiChargeAnimationView;

    goto :goto_c

    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "dealWithAnimationShow mWireState="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Lcom/miui/charge/MiuiChargeController;->mWireState:I

    const-string v9, ", wireState="

    const-string v11, ", mFastChargeChanged="

    invoke-static {v2, v4, v9, v5, v11}, Landroidx/viewpager/widget/OriginalViewPager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    iget-boolean v4, v0, Lcom/miui/charge/MiuiChargeController;->mFastChargeChanged:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mIsFastCharge="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/miui/charge/MiuiChargeController;->mIsFastCharge:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", hasShowedChargeAnim="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/miui/charge/MiuiChargeController;->hasShowdChargeAnim:Z

    invoke-static {v2, v7, v4}, Lcom/android/keyguard/injector/DozeServiceHostInjector$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    iget-boolean v2, v0, Lcom/miui/charge/MiuiChargeController;->mClickShowChargeUI:Z

    if-eqz v2, :cond_e

    iget-boolean v2, v0, Lcom/miui/charge/MiuiChargeController;->mChargeAnimationShowing:Z

    if-nez v2, :cond_14

    iget-object v2, v0, Lcom/miui/charge/MiuiChargeController;->mChargeAnimationView:Lcom/miui/charge/container/MiuiChargeAnimationView;

    if-eqz v2, :cond_10

    iget-boolean v2, v2, Lcom/miui/charge/container/MiuiChargeAnimationView;->mStartingDismissAnim:Z

    if-eqz v2, :cond_10

    goto :goto_c

    :cond_e
    iget-boolean v2, v0, Lcom/miui/charge/MiuiChargeController;->mFastChargeChanged:Z

    if-eqz v2, :cond_f

    iget-boolean v2, v0, Lcom/miui/charge/MiuiChargeController;->mIsFastCharge:Z

    if-eqz v2, :cond_f

    iget-boolean v2, v0, Lcom/miui/charge/MiuiChargeController;->hasShowdChargeAnim:Z

    if-eqz v2, :cond_f

    move/from16 v2, v16

    goto :goto_9

    :cond_f
    const/4 v2, 0x0

    :goto_9
    iget v4, v0, Lcom/miui/charge/MiuiChargeController;->mWireState:I

    if-ne v4, v5, :cond_10

    if-nez v2, :cond_10

    const-string v2, " dealWithAnimationShow same "

    invoke-static {v7, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :cond_10
    iget-object v2, v0, Lcom/miui/charge/MiuiChargeController;->mUpdateMonitorInjector:Lcom/android/keyguard/stub/MiuiKeyguardUpdateMonitorInjectorStub;

    invoke-virtual {v2}, Lcom/android/keyguard/stub/MiuiKeyguardUpdateMonitorInjectorStub;->isKeyguardShowing()Z

    move-result v4

    iget-object v9, v2, Lcom/android/keyguard/stub/MiuiKeyguardUpdateMonitorInjectorStub;->mKeyguardStateController:Ldagger/Lazy;

    invoke-interface {v9}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v9, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v9, v9, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardGoingAway:Z

    invoke-virtual {v2}, Lcom/android/keyguard/stub/MiuiKeyguardUpdateMonitorInjectorStub;->isKeyguardOccluded()Z

    move-result v11

    const-class v12, Lcom/miui/interfaces/keyguard/IKeyguardEditor;

    invoke-static {v12}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/miui/interfaces/keyguard/IKeyguardEditor;

    check-cast v12, Lcom/android/keyguard/editor/KeyguardEditorHelper;

    invoke-virtual {v12}, Lcom/android/keyguard/editor/KeyguardEditorHelper;->isInEnterEditorMode()Z

    move-result v12

    iget-object v14, v0, Lcom/miui/charge/MiuiChargeController;->mUpdateMonitor:Lcom/android/keyguard/stub/MiuiKeyguardUpdateMonitorStub;

    invoke-virtual {v14}, Lcom/android/keyguard/stub/MiuiKeyguardUpdateMonitorStub;->isPrimaryBouncerIsOrWillBeShowing()Z

    move-result v14

    if-eqz v12, :cond_11

    if-nez v14, :cond_11

    move/from16 v15, v16

    goto :goto_a

    :cond_11
    const/4 v15, 0x0

    :goto_a
    iget-object v10, v0, Lcom/miui/charge/MiuiChargeController;->mKeyguardMagazineHelper:Ldagger/Lazy;

    invoke-interface {v10}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/miui/interfaces/keyguard/IKeyguardMagazine;

    check-cast v10, Lcom/android/keyguard/magazine/KeyguardMagazineHelper;

    iget-object v10, v10, Lcom/android/keyguard/magazine/KeyguardMagazineHelper;->mState:Lcom/miui/interfaces/keyguard/IKeyguardMagazine$AnimState;

    sget-object v6, Lcom/miui/interfaces/keyguard/IKeyguardMagazine$AnimState;->IDLE:Lcom/miui/interfaces/keyguard/IKeyguardMagazine$AnimState;

    if-ne v10, v6, :cond_12

    move/from16 v6, v16

    goto :goto_b

    :cond_12
    const/4 v6, 0x0

    :goto_b
    xor-int/lit8 v10, v6, 0x1

    invoke-virtual {v2}, Lcom/android/keyguard/stub/MiuiKeyguardUpdateMonitorInjectorStub;->isSimPinOrPukSecure()Z

    move-result v2

    const-string v13, "isKeyguardShowing="

    const-string v3, ", isKeyguardGoingAway="

    move/from16 v17, v6

    const-string v6, ", keyguardOccluded="

    invoke-static {v13, v3, v6, v4, v9}, Lcom/android/keyguard/clock/animation/eastern/EasterArtACClockBaseAnimation$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", isInEnterEditorMode="

    const-string v13, ", isBouncerIsOrWillBeShowing="

    invoke-static {v3, v11, v6, v12, v13}, Lcom/android/keyguard/MiuiBleUnlockHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v6, ", isChargeByEditorAndBouncer="

    const-string v12, ", isMagazineAnimationPlaying="

    invoke-static {v3, v14, v6, v15, v12}, Lcom/android/keyguard/MiuiBleUnlockHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", isSimPinOrPukSecure="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v0, Lcom/miui/charge/MiuiChargeController;->mMiuiShortcutController:Ldagger/Lazy;

    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/interfaces/keyguard/IMiuiShortcutController;

    check-cast v3, Lcom/android/keyguard/shortcut/MiuiShortcutController;

    invoke-virtual {v3}, Lcom/android/keyguard/shortcut/MiuiShortcutController;->isOccludedAnimationPlaying()Z

    move-result v3

    const/4 v6, -0x1

    if-eq v5, v6, :cond_13

    if-eqz v4, :cond_14

    if-nez v9, :cond_14

    if-nez v11, :cond_14

    if-nez v15, :cond_14

    if-nez v3, :cond_14

    if-eqz v17, :cond_14

    if-nez v2, :cond_14

    invoke-virtual {v0, v5}, Lcom/miui/charge/MiuiChargeController;->showChargeAnimation(I)V

    const-class v2, Lcom/miui/interfaces/IHapticFeedBack;

    invoke-static {v2}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/interfaces/IHapticFeedBack;

    move-object v9, v2

    check-cast v9, Lcom/miui/systemui/functions/HapticFeedBackImpl;

    const/16 v11, 0x4a

    const/4 v14, 0x0

    const/16 v10, 0xd3

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v9 .. v14}, Lcom/miui/systemui/functions/HapticFeedBackImpl;->extExtHapticFeedback(IILjava/lang/String;ILandroid/os/Handler;)V

    goto :goto_c

    :cond_13
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/miui/charge/MiuiChargeController;->mPendingChargeAnimation:Z

    const/4 v2, -0x1

    iput v2, v0, Lcom/miui/charge/MiuiChargeController;->mChargeSpeed:I

    const-string v2, "dealWithAnimationShow"

    invoke-virtual {v0, v2}, Lcom/miui/charge/MiuiChargeController;->dismissChargeAnimationAndCancelScreenOff(Ljava/lang/String;)V

    :cond_14
    :goto_c
    iget-boolean v2, v0, Lcom/miui/charge/MiuiChargeController;->mWirelessOnline:Z

    if-eqz v2, :cond_16

    if-nez v8, :cond_16

    const/16 v2, 0xb

    if-ne v5, v2, :cond_15

    iget-object v2, v0, Lcom/miui/charge/MiuiChargeController;->mContext:Landroid/content/Context;

    const v3, 0x7f141154

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move/from16 v4, v16

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :goto_d
    const/4 v2, 0x0

    goto :goto_e

    :cond_15
    move/from16 v4, v16

    goto :goto_d

    :goto_e
    iput-boolean v2, v0, Lcom/miui/charge/MiuiChargeController;->mNeedRepositionDevice:Z

    sput-boolean v2, Lcom/miui/charge/ChargeUtils;->sNeedRepositionDevice:Z

    iget-object v3, v0, Lcom/miui/charge/MiuiChargeController;->mScreenOffRunnable:Lcom/miui/charge/MiuiChargeController$6;

    iget-object v6, v0, Lcom/miui/charge/MiuiChargeController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_f
    const/16 v3, 0xb

    goto :goto_10

    :cond_16
    move/from16 v4, v16

    const/4 v2, 0x0

    goto :goto_f

    :goto_10
    if-ne v5, v3, :cond_17

    iput-boolean v2, v0, Lcom/miui/charge/MiuiChargeController;->mNeedRepositionDevice:Z

    sput-boolean v2, Lcom/miui/charge/ChargeUtils;->sNeedRepositionDevice:Z

    invoke-virtual {v0, v2}, Lcom/miui/charge/MiuiChargeController;->showMissedTip(Z)V

    :cond_17
    :goto_11
    const/16 v2, 0xa

    goto :goto_12

    :cond_18
    move/from16 v4, v16

    goto :goto_11

    :goto_12
    if-ne v5, v2, :cond_19

    move v2, v4

    goto :goto_13

    :cond_19
    const/4 v2, 0x0

    :goto_13
    iget v3, v1, Lcom/miui/systemui/charge/BatteryStatus;->level:I

    iget v6, v0, Lcom/miui/charge/MiuiChargeController;->mWireState:I

    if-eq v6, v5, :cond_1a

    move v6, v4

    goto :goto_14

    :cond_1a
    const/4 v6, 0x0

    :goto_14
    if-eqz v6, :cond_1b

    if-eqz v2, :cond_1b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/miui/charge/MiuiChargeController;->mWirelessChargeStartTime:J

    goto :goto_15

    :cond_1b
    const-wide/16 v9, -0x1

    const-wide/16 v11, 0x0

    if-eqz v6, :cond_1d

    iget-wide v2, v0, Lcom/miui/charge/MiuiChargeController;->mWirelessChargeStartTime:J

    cmp-long v2, v2, v11

    if-lez v2, :cond_1c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    :cond_1c
    iput-wide v9, v0, Lcom/miui/charge/MiuiChargeController;->mWirelessChargeStartTime:J

    const/4 v6, -0x1

    iput v6, v0, Lcom/miui/charge/MiuiChargeController;->mChargeDeviceForAnalytic:I

    goto :goto_15

    :cond_1d
    const/4 v6, -0x1

    if-eqz v2, :cond_1e

    iget-wide v13, v0, Lcom/miui/charge/MiuiChargeController;->mWirelessChargeStartTime:J

    cmp-long v2, v13, v11

    if-lez v2, :cond_1e

    const/16 v2, 0x64

    if-lt v3, v2, :cond_1e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iput-wide v9, v0, Lcom/miui/charge/MiuiChargeController;->mWirelessChargeStartTime:J

    iput v6, v0, Lcom/miui/charge/MiuiChargeController;->mChargeDeviceForAnalytic:I

    :cond_1e
    :goto_15
    iget-object v2, v0, Lcom/miui/charge/MiuiChargeController;->mChargeAnimationView:Lcom/miui/charge/container/MiuiChargeAnimationView;

    if-eqz v2, :cond_1f

    iget-boolean v3, v0, Lcom/miui/charge/MiuiChargeController;->mChargeAnimationShowing:Z

    if-eqz v3, :cond_1f

    iget v3, v1, Lcom/miui/systemui/charge/BatteryStatus;->level:I

    invoke-virtual {v2, v3}, Lcom/miui/charge/container/MiuiChargeAnimationView;->setProgress(I)V

    invoke-virtual/range {p0 .. p2}, Lcom/miui/charge/MiuiChargeController;->switchChargeItemViewAnimation(Lcom/miui/systemui/charge/BatteryStatus;Z)V

    :cond_1f
    iput-boolean v8, v0, Lcom/miui/charge/MiuiChargeController;->mWirelessOnline:Z

    const/16 v2, 0xa

    if-ne v5, v2, :cond_20

    move v2, v4

    goto :goto_16

    :cond_20
    const/4 v2, 0x0

    :goto_16
    iput-boolean v2, v0, Lcom/miui/charge/MiuiChargeController;->mWirelessCharging:Z

    iput v5, v0, Lcom/miui/charge/MiuiChargeController;->mWireState:I

    iget v1, v1, Lcom/miui/systemui/charge/BatteryStatus;->plugged:I

    invoke-static {v1}, Lcom/miui/systemui/charge/BatteryStatus;->isPluggedIn(I)Z

    move-result v1

    if-nez v1, :cond_21

    const/4 v6, -0x1

    iput v6, v0, Lcom/miui/charge/MiuiChargeController;->mChargeSpeed:I

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/miui/charge/MiuiChargeController;->hasShowdChargeAnim:Z

    :cond_21
    :goto_17
    return-void
.end method

.method public final dismissChargeAnimation(Ljava/lang/String;)V
    .registers 4

    const-string v0, "dismissChargeAnimation: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiuiChargeController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/miui/charge/MiuiChargeController;->shouldShowChargeAnim()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/charge/MiuiChargeController;->mChargeAnimationShowing:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/charge/MiuiChargeController;->mChargeAnimationView:Lcom/miui/charge/container/MiuiChargeAnimationView;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/miui/charge/MiuiChargeController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/miui/charge/MiuiChargeController$$ExternalSyntheticLambda2;-><init>(Lcom/miui/charge/MiuiChargeController;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    :goto_0
    const-string v0, "USER_PRESENT"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/miui/charge/MiuiChargeController;->releaseMemory()V

    :cond_2
    return-void
.end method

.method public final dismissChargeAnimationAndCancelScreenOff(Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/miui/charge/MiuiChargeController;->dismissChargeAnimation(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/charge/MiuiChargeController;->mScreenOffRunnable:Lcom/miui/charge/MiuiChargeController$6;

    iget-object p0, p0, Lcom/miui/charge/MiuiChargeController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onChargeAnimationEnd(ILjava/lang/String;)V
    .registers 6

    const-string v0, " onChargeAnimationEnd: wireState:"

    const-string v1, ", reason:"

    const-string v2, ", mChargeAnimationShowing:"

    invoke-static {p1, v0, v1, p2, v2}, Lcom/android/keyguard/logging/BiometricUnlockLogger$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v0, p0, Lcom/miui/charge/MiuiChargeController;->mChargeAnimationShowing:Z

    const-string v1, "MiuiChargeController"

    invoke-static {p1, v1, v0}, Lcom/android/keyguard/injector/DozeServiceHostInjector$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/miui/charge/MiuiChargeController;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2, v2}, Landroid/os/PowerManager;->userActivity(JII)V

    iget-object p1, p0, Lcom/miui/charge/MiuiChargeController;->mScreenOnWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    iget-object p1, p0, Lcom/miui/charge/MiuiChargeController;->mScreenOffRunnable:Lcom/miui/charge/MiuiChargeController$6;

    iget-object v0, p0, Lcom/miui/charge/MiuiChargeController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string p1, "USER_PRESENT"

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "dismiss_for_biometric_success"

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/miui/charge/MiuiChargeController;->releaseMemory()V

    :cond_1
    iput-boolean v2, p0, Lcom/miui/charge/MiuiChargeController;->mChargeAnimationShowing:Z

    return-void
.end method

.method public final onContentChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string v0, "key_fast_charge_enabled"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iput-boolean v2, p0, Lcom/miui/charge/MiuiChargeController;->mShowNewAnimation:Z

    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move p1, v1

    :goto_0
    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_1

    :cond_0
    move p1, v1

    :goto_1
    iput-boolean p1, p0, Lcom/miui/charge/MiuiChargeController;->mIsFastCharge:Z

    iget-object p1, p0, Lcom/miui/charge/MiuiChargeController;->mBatteryStatus:Lcom/miui/systemui/charge/BatteryStatus;

    iget p1, p1, Lcom/miui/systemui/charge/BatteryStatus;->plugged:I

    invoke-static {p1}, Lcom/miui/systemui/charge/BatteryStatus;->isPluggedIn(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/charge/MiuiChargeController;->mKeyguardIndicationInjectorLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/injector/KeyguardIndicationInjector;

    iget-object p1, p1, Lcom/android/keyguard/injector/KeyguardIndicationInjector;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateDeviceEntryIndication(Z)V

    :cond_1
    iget p1, p0, Lcom/miui/charge/MiuiChargeController;->mCurrentUser:I

    iget-object p2, p0, Lcom/miui/charge/MiuiChargeController;->mSelectedUserInteractor:Lcom/miui/systemui/user/domain/SelectedUserInteractorDelegate;

    iget-object v0, p2, Lcom/miui/systemui/user/domain/SelectedUserInteractorDelegate;->selectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v0}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId()I

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object p1, p2, Lcom/miui/systemui/user/domain/SelectedUserInteractorDelegate;->selectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {p1}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId()I

    move-result p1

    iput p1, p0, Lcom/miui/charge/MiuiChargeController;->mCurrentUser:I

    return-void

    :cond_2
    iput-boolean v2, p0, Lcom/miui/charge/MiuiChargeController;->mFastChargeChanged:Z

    iget-boolean p1, p0, Lcom/miui/charge/MiuiChargeController;->mIsFastCharge:Z

    if-eqz p1, :cond_5

    const-string p1, "MiuiChargeController"

    const-string p2, "onContentChanged：isSupportDoubleCharge"

    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/charge/MiuiChargeController;->mBatteryStatus:Lcom/miui/systemui/charge/BatteryStatus;

    invoke-virtual {p0, p1, v1}, Lcom/miui/charge/MiuiChargeController;->checkBatteryStatus(Lcom/miui/systemui/charge/BatteryStatus;Z)V

    goto :goto_3

    :cond_3
    const-string p0, "animator_duration_scale"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    :try_start_1
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    const/high16 p0, 0x3f800000

    :goto_2
    const/4 p1, 0x0

    cmpl-float p0, p0, p1

    if-lez p0, :cond_4

    move v1, v2

    :cond_4
    sput-boolean v1, Lcom/miui/charge/ChargeUtils;->sDevelopAnimationEnable:Z

    :cond_5
    :goto_3
    return-void
.end method

.method public final onDismissAnimationStart()V
    .registers 7

    const/4 v0, 0x0

    sput-boolean v0, Lcom/miui/charge/ChargeUtils;->sCharging:Z

    iget-object v1, p0, Lcom/miui/charge/MiuiChargeController;->mBatteryStatus:Lcom/miui/systemui/charge/BatteryStatus;

    iget v1, v1, Lcom/miui/systemui/charge/BatteryStatus;->plugged:I

    invoke-static {v1}, Lcom/miui/systemui/charge/BatteryStatus;->isPluggedIn(I)Z

    move-result v1

    iget-object p0, p0, Lcom/miui/charge/MiuiChargeController;->mUpdateMonitorInjector:Lcom/android/keyguard/stub/MiuiKeyguardUpdateMonitorInjectorStub;

    iget-object p0, p0, Lcom/android/keyguard/stub/MiuiKeyguardUpdateMonitorInjectorStub;->mKeyguardUpdateMonitorInjector:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->mMiuiCallbacks:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v0

    :cond_0
    :goto_0
    if-ge v4, v3, :cond_1

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;

    if-eqz v5, :cond_0

    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p0

    :goto_1
    if-ge v0, p0, :cond_2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v0, v0, 0x1

    check-cast v3, Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;

    invoke-interface {v3, v1}, Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;->onChargeAnimationEnd(Z)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final onFinishedGoingToSleep()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/charge/MiuiChargeController;->mScreenOn:Z

    invoke-virtual {p0}, Lcom/miui/charge/MiuiChargeController;->shouldShowChargeAnim()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/miui/charge/MiuiChargeController;->showMissedTip(Z)V

    invoke-static {}, Lcom/miui/charge/ChargeUtils;->supportWaveChargeAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/charge/MiuiChargeController;->prepareChargeAnimation()V

    :cond_0
    const-string v0, "dismiss_for_screen_off"

    invoke-virtual {p0, v0}, Lcom/miui/charge/MiuiChargeController;->dismissChargeAnimation(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/miui/charge/MiuiChargeController;->mScreenOffRunnable:Lcom/miui/charge/MiuiChargeController$6;

    iget-object p0, p0, Lcom/miui/charge/MiuiChargeController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onStartedWakingUp()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/charge/MiuiChargeController;->mScreenOn:Z

    new-instance v0, Lcom/miui/charge/MiuiChargeController$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/miui/charge/MiuiChargeController$$ExternalSyntheticLambda3;-><init>(Lcom/miui/charge/MiuiChargeController;)V

    iget-object p0, p0, Lcom/miui/charge/MiuiChargeController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final prepareChargeAnimation()V
    .registers 3

    invoke-virtual {p0}, Lcom/miui/charge/MiuiChargeController;->shouldShowChargeAnim()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/miui/charge/ChargeUtils;->getChargeAnimationType()I

    move-result v0

    iget v1, p0, Lcom/miui/charge/MiuiChargeController;->mChargeAnimationType:I

    if-eq v0, v1, :cond_1

    iput v0, p0, Lcom/miui/charge/MiuiChargeController;->mChargeAnimationType:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/charge/MiuiChargeController;->mChargeSpeed:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/charge/MiuiChargeController;->mChargeAnimationView:Lcom/miui/charge/container/MiuiChargeAnimationView;

    :cond_1
    iget-object v0, p0, Lcom/miui/charge/MiuiChargeController;->mChargeAnimationView:Lcom/miui/charge/container/MiuiChargeAnimationView;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/miui/charge/MiuiChargeController;->mShowNewAnimation:Z

    if-eqz v0, :cond_4

    :cond_2
    const-string v0, "MiuiChargeController"

    const-string v1, "prepareChargeAnimation: init mChargeAnimationView "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/miui/utils/configs/MiuiConfigs;->CUSTOMIZED_REGION:Ljava/lang/String;

    invoke-static {}, Lmiui/util/MiuiMultiDisplayTypeInfo;->isFlipDevice()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/miui/charge/container/TinyMiuiChargeAnimationView;

    iget-object v1, p0, Lcom/miui/charge/MiuiChargeController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/charge/container/TinyMiuiChargeAnimationView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/charge/MiuiChargeController;->mChargeAnimationView:Lcom/miui/charge/container/MiuiChargeAnimationView;

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/miui/charge/container/MiuiChargeAnimationView;

    iget-object v1, p0, Lcom/miui/charge/MiuiChargeController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/charge/container/MiuiChargeAnimationView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/charge/MiuiChargeController;->mChargeAnimationView:Lcom/miui/charge/container/MiuiChargeAnimationView;

    :goto_0
    iget-object v0, p0, Lcom/miui/charge/MiuiChargeController;->mChargeAnimationView:Lcom/miui/charge/container/MiuiChargeAnimationView;

    invoke-virtual {v0, p0}, Lcom/miui/charge/container/MiuiChargeAnimationView;->setChargeAnimationListener(Lcom/miui/charge/view/IChargeAnimationListener;)V

    iget-object v0, p0, Lcom/miui/charge/MiuiChargeController;->mChargeAnimationView:Lcom/miui/charge/container/MiuiChargeAnimationView;

    iget-object v1, p0, Lcom/miui/charge/MiuiChargeController;->mSystemUIStat:Lcom/miui/interfaces/ISystemUIStat;

    invoke-virtual {v0, v1}, Lcom/miui/charge/container/MiuiChargeAnimationView;->setSystemUIStat(Lcom/miui/interfaces/ISystemUIStat;)V

    iget-object v0, p0, Lcom/miui/charge/MiuiChargeController;->mChargeAnimationView:Lcom/miui/charge/container/MiuiChargeAnimationView;

    new-instance v1, Lcom/miui/charge/MiuiChargeController$5;

    invoke-direct {v1, p0}, Lcom/miui/charge/MiuiChargeController$5;-><init>(Lcom/miui/charge/MiuiChargeController;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_4
    iget-object v0, p0, Lcom/miui/charge/MiuiChargeController;->mChargeAnimationView:Lcom/miui/charge/container/MiuiChargeAnimationView;

    iget-object v1, p0, Lcom/miui/charge/MiuiChargeController;->mBatteryStatus:Lcom/miui/systemui/charge/BatteryStatus;

    iget v1, v1, Lcom/miui/systemui/charge/BatteryStatus;->level:I

    invoke-virtual {v0, v1}, Lcom/miui/charge/container/MiuiChargeAnimationView;->setProgress(I)V

    iget-object v0, p0, Lcom/miui/charge/MiuiChargeController;->mBatteryStatus:Lcom/miui/systemui/charge/BatteryStatus;

    iget-boolean v1, p0, Lcom/miui/charge/MiuiChargeController;->mClickShowChargeUI:Z

    invoke-virtual {p0, v0, v1}, Lcom/miui/charge/MiuiChargeController;->switchChargeItemViewAnimation(Lcom/miui/systemui/charge/BatteryStatus;Z)V

    iget-object v0, p0, Lcom/miui/charge/MiuiChargeController;->mChargeAnimationView:Lcom/miui/charge/container/MiuiChargeAnimationView;

    invoke-virtual {v0}, Lcom/miui/charge/container/MiuiChargeAnimationView;->addChargeView()V

    iget-object v0, p0, Lcom/miui/charge/MiuiChargeController;->mChargeAnimationView:Lcom/miui/charge/container/MiuiChargeAnimationView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    iget-object v0, p0, Lcom/miui/charge/MiuiChargeController;->mChargeAnimationView:Lcom/miui/charge/container/MiuiChargeAnimationView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/miui/charge/MiuiChargeController;->mChargeAnimationView:Lcom/miui/charge/container/MiuiChargeAnimationView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestFocus()Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/charge/MiuiChargeController;->mFastChargeChanged:Z

    iput-boolean v0, p0, Lcom/miui/charge/MiuiChargeController;->mShowNewAnimation:Z

    return-void
.end method

.method public final releaseMemory()V
    .registers 3

    iget-object v0, p0, Lcom/miui/charge/MiuiChargeController;->mChargeAnimationView:Lcom/miui/charge/container/MiuiChargeAnimationView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "MiuiChargeController"

    const-string v1, "releaseMemory"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/charge/MiuiChargeController;->mChargeAnimationView:Lcom/miui/charge/container/MiuiChargeAnimationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/charge/container/MiuiChargeAnimationView;->setChargeAnimationListener(Lcom/miui/charge/view/IChargeAnimationListener;)V

    iget-object v0, p0, Lcom/miui/charge/MiuiChargeController;->mChargeAnimationView:Lcom/miui/charge/container/MiuiChargeAnimationView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iput-object v1, p0, Lcom/miui/charge/MiuiChargeController;->mChargeAnimationView:Lcom/miui/charge/container/MiuiChargeAnimationView;

    return-void
.end method

.method public final shouldShowChargeAnim()Z
    .registers 2

    iget-object v0, p0, Lcom/miui/charge/MiuiChargeController;->mUpdateMonitorInjector:Lcom/android/keyguard/stub/MiuiKeyguardUpdateMonitorInjectorStub;

    invoke-virtual {v0}, Lcom/android/keyguard/stub/MiuiKeyguardUpdateMonitorInjectorStub;->isKeyguardShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/miui/charge/ChargeUtils;->isChargeAnimationDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/miui/charge/MiuiChargeController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/miui/utils/configs/MiuiConfigs;->isFlipTinyScreen(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final showChargeAnimation(I)V
    .registers 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/miui/charge/MiuiChargeController;->mOrientationListener:Lcom/miui/charge/OrientationEventListenerWrapper;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " showChargeAnimation: wireState="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MiuiChargeController"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/miui/charge/MiuiChargeController;->shouldShowChargeAnim()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_7

    :cond_0
    iget-boolean v3, v0, Lcom/miui/charge/MiuiChargeController;->mPendingChargeAnimation:Z

    if-eqz v3, :cond_1

    goto :goto_7

    :cond_1
    iget-object v3, v0, Lcom/miui/charge/MiuiChargeController;->mScreenOffRunnable:Lcom/miui/charge/MiuiChargeController$6;

    iget-object v5, v0, Lcom/miui/charge/MiuiChargeController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v6, v0, Lcom/miui/charge/MiuiChargeController;->mChargeAnimationShowing:Z

    const/4 v7, 0x1

    if-eqz v6, :cond_2

    iget v2, v0, Lcom/miui/charge/MiuiChargeController;->mWireState:I

    if-eq v2, v1, :cond_1a

    iput-boolean v7, v0, Lcom/miui/charge/MiuiChargeController;->mPendingChargeAnimation:Z

    const-string v1, "changeChargeAnimation"

    invoke-virtual {v0, v1}, Lcom/miui/charge/MiuiChargeController;->dismissChargeAnimation(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/miui/charge/MiuiChargeController;->prepareChargeAnimation()V

    iput-boolean v7, v0, Lcom/miui/charge/MiuiChargeController;->mChargeAnimationShowing:Z

    iget-boolean v6, v0, Lcom/miui/charge/MiuiChargeController;->mClickShowChargeUI:Z

    if-nez v6, :cond_3

    iput-boolean v7, v0, Lcom/miui/charge/MiuiChargeController;->hasShowdChargeAnim:Z

    :cond_3
    iget-boolean v6, v0, Lcom/miui/charge/MiuiChargeController;->mIsFoldChargeVideo:Z

    const/4 v8, 0x0

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/miui/charge/MiuiChargeController;->mAngleSensor:Landroid/hardware/Sensor;

    if-eqz v6, :cond_4

    iget-object v9, v0, Lcom/miui/charge/MiuiChargeController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v10, v0, Lcom/miui/charge/MiuiChargeController;->mSensorEventListener:Lcom/miui/charge/MiuiChargeController$8;

    invoke-virtual {v9, v10, v6, v8}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_4
    invoke-static {}, Lmiui/util/MiuiMultiDisplayTypeInfo;->isFlipDevice()Z

    move-result v6

    if-eqz v6, :cond_5

    new-instance v6, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

    iget-object v9, v0, Lcom/miui/charge/MiuiChargeController;->mContext:Landroid/content/Context;

    new-instance v10, Lcom/miui/charge/MiuiChargeController$$ExternalSyntheticLambda1;

    invoke-direct {v10, v0}, Lcom/miui/charge/MiuiChargeController$$ExternalSyntheticLambda1;-><init>(Lcom/miui/charge/MiuiChargeController;)V

    invoke-direct {v6, v9, v10}, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;-><init>(Landroid/content/Context;Ljava/util/function/Consumer;)V

    iput-object v6, v0, Lcom/miui/charge/MiuiChargeController;->mFoldStateListener:Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

    iget-object v6, v0, Lcom/miui/charge/MiuiChargeController;->mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    if-eqz v6, :cond_5

    iget-object v9, v0, Lcom/miui/charge/MiuiChargeController;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v9

    iget-object v10, v0, Lcom/miui/charge/MiuiChargeController;->mFoldStateListener:Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

    invoke-virtual {v6, v9, v10}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    :cond_5
    iget-object v6, v0, Lcom/miui/charge/MiuiChargeController;->mChargeAnimationView:Lcom/miui/charge/container/MiuiChargeAnimationView;

    iget-boolean v9, v0, Lcom/miui/charge/MiuiChargeController;->mScreenOn:Z

    iget-boolean v10, v0, Lcom/miui/charge/MiuiChargeController;->mClickShowChargeUI:Z

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "startChargeAnimation: mInitScreenOn "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ", clickShow="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "MiuiChargeAnimationView"

    invoke-static {v12, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v11, v6, Lcom/miui/charge/container/MiuiChargeAnimationView;->mStartingDismissAnim:Z

    if-eqz v11, :cond_6

    iget-object v11, v6, Lcom/miui/charge/container/MiuiChargeAnimationView;->mDismissAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v11, :cond_6

    const-string v12, "CANCEL_FROM_START"

    iput-object v12, v6, Lcom/miui/charge/container/MiuiChargeAnimationView;->mDismissReason:Ljava/lang/String;

    invoke-virtual {v11}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_6
    iget-object v11, v6, Lcom/miui/charge/container/MiuiChargeAnimationView;->mUpdateMonitorInjector:Lcom/android/keyguard/stub/MiuiKeyguardUpdateMonitorInjectorStub;

    invoke-virtual {v11, v7, v8}, Lcom/android/keyguard/stub/MiuiKeyguardUpdateMonitorInjectorStub;->handleChargeAnimationShowingChanged(ZZ)V

    const/high16 v11, 0x3f800000

    invoke-virtual {v6, v11}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object v12, v6, Lcom/miui/charge/container/MiuiChargeAnimationView;->itemContainer:Landroid/view/ViewGroup;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->setAlpha(F)V

    sget-object v12, Lcom/miui/charge/ChargeUtils;->sBatteryStatus:Lcom/miui/systemui/charge/BatteryStatus;

    iget v12, v12, Lcom/miui/systemui/charge/BatteryStatus;->wireState:I

    iput v12, v6, Lcom/miui/charge/container/MiuiChargeAnimationView;->mWireState:I

    filled-new-array {v8, v7}, [I

    move-result-object v12

    invoke-static {v12}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v12

    filled-new-array {v8, v7}, [I

    move-result-object v14

    invoke-static {v14}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v14

    invoke-static {}, Lcom/miui/charge/ChargeUtils;->supportWaveChargeAnimation()Z

    move-result v15

    const v11, 0x7f0c008a

    const-class v16, Lcom/android/systemui/plugins/miui/settings/IUserTracker;

    const/4 v13, 0x3

    if-eqz v15, :cond_7

    const/16 v15, 0x3e8

    goto :goto_0

    :cond_7
    invoke-static/range {v16 .. v16}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/systemui/plugins/miui/settings/IUserTracker;

    invoke-interface {v15}, Lcom/android/systemui/plugins/miui/settings/IUserTracker;->getUserContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v15

    if-ne v15, v13, :cond_8

    const/16 v15, 0x514

    goto :goto_0

    :cond_8
    invoke-static {}, Lcom/miui/charge/ChargeUtils;->supportShaderChargeAnimation()Z

    move-result v15

    if-eqz v15, :cond_9

    sget-boolean v15, Lcom/miui/charge/ChargeUtils;->sDevelopAnimationEnable:Z

    if-eqz v15, :cond_9

    move v15, v8

    goto :goto_0

    :cond_9
    const/16 v15, 0x12c

    :goto_0
    int-to-long v7, v15

    invoke-virtual {v14, v7, v8}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance v7, Lcom/miui/charge/container/MiuiChargeAnimationView$1;

    invoke-direct {v7, v6, v9}, Lcom/miui/charge/container/MiuiChargeAnimationView$1;-><init>(Lcom/miui/charge/container/MiuiChargeAnimationView;Z)V

    invoke-virtual {v12, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v6, v14}, Lcom/miui/charge/container/MiuiChargeAnimationView;->onStartChargeAnimation(Landroid/animation/ValueAnimator;)V

    invoke-virtual {v6, v12, v14}, Lcom/miui/charge/container/MiuiChargeAnimationView;->playChargeShowingAnimationSet(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V

    iget-object v7, v6, Lcom/miui/charge/container/MiuiChargeAnimationView;->mChargeContainerView:Lcom/miui/charge/container/MiuiChargeContainerView;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v12, "startContainerAnimation: screenOn "

    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v12, "MiuiChargeContainerView"

    invoke-static {v12, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, v7, Lcom/miui/charge/container/MiuiChargeContainerView;->mChargeView:Lcom/miui/charge/container/IChargeView;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v12, "startAnimation: mInitScreenOn "

    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v12, "IChargeView"

    invoke-static {v12, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v9, v7, Lcom/miui/charge/container/IChargeView;->mInitScreenOn:Z

    sget-object v8, Lcom/miui/charge/ChargeUtils;->sBatteryStatus:Lcom/miui/systemui/charge/BatteryStatus;

    iget v9, v8, Lcom/miui/systemui/charge/BatteryStatus;->wireState:I

    iput v9, v7, Lcom/miui/charge/container/IChargeView;->mWireState:I

    iget v8, v8, Lcom/miui/systemui/charge/BatteryStatus;->chargeSpeed:I

    iput v8, v7, Lcom/miui/charge/container/IChargeView;->mChargeSpeed:I

    iget-object v8, v7, Lcom/miui/charge/container/IChargeView;->mDismissAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v8, :cond_a

    iget-boolean v9, v7, Lcom/miui/charge/container/IChargeView;->mStartingDismissAnim:Z

    if-eqz v9, :cond_a

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_a
    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/miui/charge/container/IChargeView;->mStartingDismissAnim:Z

    iget-boolean v9, v7, Lcom/miui/charge/container/IChargeView;->mInitScreenOn:Z

    if-eqz v9, :cond_b

    const/4 v9, 0x0

    goto :goto_1

    :cond_b
    const/high16 v9, 0x3f800000

    :goto_1
    invoke-virtual {v7, v9}, Landroid/widget/FrameLayout;->setAlpha(F)V

    invoke-virtual {v7}, Lcom/miui/charge/container/IChargeView;->setViewState()V

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->requestFocus()Z

    invoke-virtual {v7}, Lcom/miui/charge/container/IChargeView;->initAnimator()V

    iget-object v8, v7, Lcom/miui/charge/container/IChargeView;->mEnterAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v8

    if-eqz v8, :cond_c

    iget-object v8, v7, Lcom/miui/charge/container/IChargeView;->mEnterAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_c
    iget-object v8, v7, Lcom/miui/charge/container/IChargeView;->mEnterAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->start()V

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/miui/charge/container/IChargeView;->setComponentTransparent(Z)V

    invoke-virtual {v7}, Lcom/miui/charge/container/IChargeView;->startAnimationOnChildView()V

    iget-object v7, v6, Lcom/miui/charge/container/MiuiChargeAnimationView;->mChargePercentView:Lcom/miui/charge/view/MiuiChargePercentCountView;

    invoke-virtual {v7, v10}, Lcom/miui/charge/view/MiuiChargePercentCountView;->startPercentViewAnimation(Z)V

    iget-object v7, v6, Lcom/miui/charge/container/MiuiChargeAnimationView;->mChargeLogoView:Lcom/miui/charge/container/MiuiChargeLogoView;

    invoke-virtual {v7, v10}, Lcom/miui/charge/container/MiuiChargeLogoView;->startLogoAnimation(Z)V

    iget-object v6, v6, Lcom/miui/charge/container/MiuiChargeAnimationView;->mChargeIconView:Lcom/miui/charge/container/MiuiChargeIconView;

    const/16 v7, 0xa

    if-eqz v6, :cond_14

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "startLightningAnimation: mChargeSpeed="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, v6, Lcom/miui/charge/container/MiuiChargeIconView;->mChargeSpeed:I

    const-string v10, "MiuiChargeIconView"

    invoke-static {v9, v10, v8}, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    sget-object v8, Lcom/miui/charge/ChargeUtils;->sBatteryStatus:Lcom/miui/systemui/charge/BatteryStatus;

    iget v8, v8, Lcom/miui/systemui/charge/BatteryStatus;->carChargeMode:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_d

    const/4 v8, 0x1

    goto :goto_2

    :cond_d
    const/4 v8, 0x0

    :goto_2
    iput-boolean v8, v6, Lcom/miui/charge/container/MiuiChargeIconView;->mIsCarMode:Z

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "resetLightingViewState: mChargeSpeed="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, v6, Lcom/miui/charge/container/MiuiChargeIconView;->mChargeSpeed:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ",mIsCarMode="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, v6, Lcom/miui/charge/container/MiuiChargeIconView;->mIsCarMode:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Lcom/miui/charge/container/MiuiChargeIconView;->updateSizeForScreenSizeChange()V

    iget-object v8, v6, Lcom/miui/charge/container/MiuiChargeIconView;->mSingleLightningIcon:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v8, v6, Lcom/miui/charge/container/MiuiChargeIconView;->mSingleLightningIcon:Landroid/widget/ImageView;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setScaleY(F)V

    iget-object v8, v6, Lcom/miui/charge/container/MiuiChargeIconView;->mSingleLightningIcon:Landroid/widget/ImageView;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object v8, v6, Lcom/miui/charge/container/MiuiChargeIconView;->mDoubleLightningIcon:Landroid/widget/ImageView;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v8, v6, Lcom/miui/charge/container/MiuiChargeIconView;->mDoubleLightningIcon:Landroid/widget/ImageView;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setScaleY(F)V

    iget-object v8, v6, Lcom/miui/charge/container/MiuiChargeIconView;->mDoubleLightningIcon:Landroid/widget/ImageView;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object v8, v6, Lcom/miui/charge/container/MiuiChargeIconView;->mSpecialDoubleLightningIcon:Landroid/widget/ImageView;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v8, v6, Lcom/miui/charge/container/MiuiChargeIconView;->mSpecialDoubleLightningIcon:Landroid/widget/ImageView;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setScaleY(F)V

    iget-object v8, v6, Lcom/miui/charge/container/MiuiChargeIconView;->mSpecialDoubleLightningIcon:Landroid/widget/ImageView;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object v8, v6, Lcom/miui/charge/container/MiuiChargeIconView;->mCarModeIcon:Landroid/widget/ImageView;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object v8, v6, Lcom/miui/charge/container/MiuiChargeIconView;->mCarModeIcon:Landroid/widget/ImageView;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setScaleY(F)V

    iget-boolean v8, v6, Lcom/miui/charge/container/MiuiChargeIconView;->mIsCarMode:Z

    if-eqz v8, :cond_e

    iget-object v8, v6, Lcom/miui/charge/container/MiuiChargeIconView;->mCarModeIcon:Landroid/widget/ImageView;

    const/high16 v9, 0x3f800000

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object v6, v6, Lcom/miui/charge/container/MiuiChargeIconView;->mCarModeIcon:Landroid/widget/ImageView;

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setScaleY(F)V

    goto :goto_4

    :cond_e
    const/high16 v9, 0x3f800000

    iget v8, v6, Lcom/miui/charge/container/MiuiChargeIconView;->mChargeSpeed:I

    const/4 v12, 0x1

    if-ne v12, v8, :cond_f

    invoke-static {}, Lcom/miui/charge/ChargeUtils;->supportWaveChargeAnimation()Z

    move-result v8

    if-nez v8, :cond_12

    iget-object v8, v6, Lcom/miui/charge/container/MiuiChargeIconView;->mSingleLightningIcon:Landroid/widget/ImageView;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setScaleY(F)V

    iget-object v8, v6, Lcom/miui/charge/container/MiuiChargeIconView;->mSingleLightningIcon:Landroid/widget/ImageView;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object v8, v6, Lcom/miui/charge/container/MiuiChargeIconView;->mSingleLightningIcon:Landroid/widget/ImageView;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_3

    :cond_f
    const/4 v12, 0x2

    if-ne v12, v8, :cond_10

    iget-object v8, v6, Lcom/miui/charge/container/MiuiChargeIconView;->mDoubleLightningIcon:Landroid/widget/ImageView;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setScaleY(F)V

    iget-object v8, v6, Lcom/miui/charge/container/MiuiChargeIconView;->mDoubleLightningIcon:Landroid/widget/ImageView;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object v8, v6, Lcom/miui/charge/container/MiuiChargeIconView;->mDoubleLightningIcon:Landroid/widget/ImageView;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_3

    :cond_10
    if-ne v13, v8, :cond_11

    iget-object v8, v6, Lcom/miui/charge/container/MiuiChargeIconView;->mSpecialDoubleLightningIcon:Landroid/widget/ImageView;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setScaleY(F)V

    iget-object v8, v6, Lcom/miui/charge/container/MiuiChargeIconView;->mSpecialDoubleLightningIcon:Landroid/widget/ImageView;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object v8, v6, Lcom/miui/charge/container/MiuiChargeIconView;->mSpecialDoubleLightningIcon:Landroid/widget/ImageView;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_3

    :cond_11
    if-nez v8, :cond_12

    sget-object v8, Lcom/miui/charge/ChargeUtils;->sBatteryStatus:Lcom/miui/systemui/charge/BatteryStatus;

    iget v8, v8, Lcom/miui/systemui/charge/BatteryStatus;->wireState:I

    if-ne v8, v7, :cond_12

    const-string v8, "resetIconViewState: mWireState=WIRELESS"

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, v6, Lcom/miui/charge/container/MiuiChargeIconView;->mSingleLightningIcon:Landroid/widget/ImageView;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setScaleY(F)V

    iget-object v8, v6, Lcom/miui/charge/container/MiuiChargeIconView;->mSingleLightningIcon:Landroid/widget/ImageView;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object v8, v6, Lcom/miui/charge/container/MiuiChargeIconView;->mSingleLightningIcon:Landroid/widget/ImageView;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_12
    :goto_3
    invoke-static {}, Lcom/miui/charge/container/MiuiChargeIconView;->isDoubleChargeShow()Z

    move-result v8

    if-eqz v8, :cond_13

    iget-object v8, v6, Lcom/miui/charge/container/MiuiChargeIconView;->mSpecialDoubleLightningIcon:Landroid/widget/ImageView;

    iget-object v6, v6, Lcom/miui/charge/container/MiuiChargeIconView;->mDoubleLightningDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :cond_13
    iget-object v8, v6, Lcom/miui/charge/container/MiuiChargeIconView;->mSpecialDoubleLightningIcon:Landroid/widget/ImageView;

    iget-object v6, v6, Lcom/miui/charge/container/MiuiChargeIconView;->mSpecialDoubleLightningDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_14
    :goto_4
    if-ne v1, v7, :cond_17

    iget-object v1, v0, Lcom/miui/charge/MiuiChargeController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v6, "accelerometer_rotation"

    const/4 v8, 0x0

    invoke-static {v1, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_15

    goto :goto_5

    :cond_15
    invoke-static/range {v16 .. v16}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/miui/settings/IUserTracker;

    invoke-interface {v1}, Lcom/android/systemui/plugins/miui/settings/IUserTracker;->getUserContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-ne v1, v13, :cond_16

    goto :goto_5

    :cond_16
    iget-object v1, v0, Lcom/miui/charge/MiuiChargeController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/utils/configs/MiuiConfigs;->isFoldLargeScreenAndNotPad(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_17

    invoke-static {}, Lcom/miui/utils/configs/MiuiConfigs;->isInstantFlipTinyScreen()Z

    move-result v1

    if-nez v1, :cond_17

    if-eqz v2, :cond_18

    iget-object v1, v2, Lcom/miui/charge/OrientationEventListenerWrapper;->accSensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_18

    const-string v1, "enable orientation sensor"

    invoke-static {v4, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Lcom/miui/charge/OrientationEventListenerWrapper;->enable()V

    goto :goto_6

    :cond_17
    :goto_5
    iget-object v1, v0, Lcom/miui/charge/MiuiChargeController;->mChargeAnimationView:Lcom/miui/charge/container/MiuiChargeAnimationView;

    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Lcom/miui/charge/container/MiuiChargeAnimationView;->updateOrientation(I)V

    :cond_18
    :goto_6
    iget-object v1, v0, Lcom/miui/charge/MiuiChargeController;->mUpdateMonitor:Lcom/android/keyguard/stub/MiuiKeyguardUpdateMonitorStub;

    iget-object v1, v1, Lcom/android/keyguard/stub/MiuiKeyguardUpdateMonitorStub;->keyguardUpdateMonitor:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-boolean v1, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    if-nez v1, :cond_19

    iget-object v1, v0, Lcom/miui/charge/MiuiChargeController;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const-string v2, "com.android.systemui:RAPID_CHARGE"

    const/4 v8, 0x0

    invoke-virtual {v1, v6, v7, v8, v2}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    :cond_19
    const-string v1, "mScreenOnWakeLock showChargeAnimation: acquire"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/miui/charge/MiuiChargeController;->mScreenOnWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v2, v0, Lcom/miui/charge/MiuiChargeController;->mChargeAnimationView:Lcom/miui/charge/container/MiuiChargeAnimationView;

    invoke-virtual {v2}, Lcom/miui/charge/container/MiuiChargeAnimationView;->getAnimationDuration()I

    move-result v2

    int-to-long v6, v2

    invoke-virtual {v1, v6, v7}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "showChargeAnimation: mScreenOn "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, v0, Lcom/miui/charge/MiuiChargeController;->mScreenOn:Z

    invoke-static {v1, v4, v2}, Lcom/android/keyguard/injector/DozeServiceHostInjector$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    iget-boolean v1, v0, Lcom/miui/charge/MiuiChargeController;->mNeedRepositionDevice:Z

    if-nez v1, :cond_1a

    iget-object v1, v0, Lcom/miui/charge/MiuiChargeController;->mChargeAnimationView:Lcom/miui/charge/container/MiuiChargeAnimationView;

    invoke-virtual {v1}, Lcom/miui/charge/container/MiuiChargeAnimationView;->getAnimationDuration()I

    move-result v1

    const/16 v2, 0x2710

    if-le v1, v2, :cond_1a

    invoke-virtual {v5, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, v0, Lcom/miui/charge/MiuiChargeController;->mChargeAnimationView:Lcom/miui/charge/container/MiuiChargeAnimationView;

    invoke-virtual {v0}, Lcom/miui/charge/container/MiuiChargeAnimationView;->getScreenOffTime()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v5, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1a
    :goto_7
    return-void
.end method

.method public final showMissedTip(Z)V
    .registers 8

    const/4 v0, 0x0

    const-string v1, "MiuiWirelessChargeSlowlyView"

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/charge/MiuiChargeController;->mMiuiWirelessChargeSlowlyView:Lcom/miui/charge/MiuiWirelessChargeSlowlyView;

    const/4 v2, 0x1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/charge/MiuiChargeController;->shouldShowChargeAnim()Z

    move-result p1

    xor-int/2addr p1, v2

    new-instance v3, Lcom/miui/charge/MiuiWirelessChargeSlowlyView;

    iget-object v4, p0, Lcom/miui/charge/MiuiChargeController;->mContext:Landroid/content/Context;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, v3, Lcom/miui/charge/MiuiWirelessChargeSlowlyView;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/miui/charge/MiuiWirelessChargeSlowlyView$2;

    invoke-direct {v5, v3}, Lcom/miui/charge/MiuiWirelessChargeSlowlyView$2;-><init>(Lcom/miui/charge/MiuiWirelessChargeSlowlyView;)V

    iput-object v5, v3, Lcom/miui/charge/MiuiWirelessChargeSlowlyView;->mSurfaceTextureListener:Lcom/miui/charge/MiuiWirelessChargeSlowlyView$2;

    iput-object v4, v3, Lcom/miui/charge/MiuiWirelessChargeSlowlyView;->mContext:Landroid/content/Context;

    iput-boolean p1, v3, Lcom/miui/charge/MiuiWirelessChargeSlowlyView;->mTipOnlyOnce:Z

    iput-object v3, p0, Lcom/miui/charge/MiuiChargeController;->mMiuiWirelessChargeSlowlyView:Lcom/miui/charge/MiuiWirelessChargeSlowlyView;

    :cond_0
    iget-object p0, p0, Lcom/miui/charge/MiuiChargeController;->mMiuiWirelessChargeSlowlyView:Lcom/miui/charge/MiuiWirelessChargeSlowlyView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "show: "

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/charge/MiuiWirelessChargeSlowlyView;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/miui/charge/MiuiWirelessChargeSlowlyView;->mContext:Landroid/content/Context;

    const v1, 0x7f0e0250

    invoke-static {p1, v1, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v1, 0x7f0b0ddb

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/miui/charge/MiuiWirelessChargeSlowlyView;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f0b0ddc

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/TextureView;

    iget-object v3, p0, Lcom/miui/charge/MiuiWirelessChargeSlowlyView;->mSurfaceTextureListener:Lcom/miui/charge/MiuiWirelessChargeSlowlyView$2;

    invoke-virtual {v1, v3}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/miui/charge/MiuiWirelessChargeSlowlyView;->mContext:Landroid/content/Context;

    const v4, 0x7f150b08

    invoke-direct {v1, v3, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)V

    invoke-virtual {v1, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)V

    iget-boolean p1, p0, Lcom/miui/charge/MiuiWirelessChargeSlowlyView;->mTipOnlyOnce:Z

    if-eqz p1, :cond_1

    new-instance v0, Lcom/miui/charge/MiuiWirelessChargeSlowlyView$1;

    invoke-direct {v0, p0}, Lcom/miui/charge/MiuiWirelessChargeSlowlyView$1;-><init>(Lcom/miui/charge/MiuiWirelessChargeSlowlyView;)V

    :cond_1
    const p1, 0x7f141156

    invoke-virtual {v1, p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/charge/MiuiWirelessChargeSlowlyView;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7da

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    iget-object p1, p0, Lcom/miui/charge/MiuiWirelessChargeSlowlyView;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/Window;->requestFeature(I)Z

    iget-object p1, p0, Lcom/miui/charge/MiuiWirelessChargeSlowlyView;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v0, 0x7f080cf9

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    :cond_2
    iget-object p1, p0, Lcom/miui/charge/MiuiWirelessChargeSlowlyView;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->show()V

    iget-object p1, p0, Lcom/miui/charge/MiuiWirelessChargeSlowlyView;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    iget-object p1, p1, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    iget-object p1, p1, Lmiuix/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    if-eqz p1, :cond_5

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/charge/MiuiWirelessChargeSlowlyView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f071cbd

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_3
    iget-object p1, p0, Lcom/miui/charge/MiuiChargeController;->mShowSlowlyRunnable:Lcom/miui/charge/MiuiChargeController$6;

    iget-object v2, p0, Lcom/miui/charge/MiuiChargeController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/miui/charge/MiuiChargeController;->mMiuiWirelessChargeSlowlyView:Lcom/miui/charge/MiuiWirelessChargeSlowlyView;

    if-eqz p0, :cond_5

    const-string p1, "dismiss: "

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/charge/MiuiWirelessChargeSlowlyView;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    :cond_4
    iput-object v0, p0, Lcom/miui/charge/MiuiWirelessChargeSlowlyView;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    :cond_5
    return-void
.end method

.method public final switchChargeItemViewAnimation(Lcom/miui/systemui/charge/BatteryStatus;Z)V
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget v6, v1, Lcom/miui/systemui/charge/BatteryStatus;->wireState:I

    iget v7, v1, Lcom/miui/systemui/charge/BatteryStatus;->chargeDeviceType:I

    invoke-static {v6, v7}, Lcom/miui/charge/ChargeUtils;->getChargeSpeed(II)I

    move-result v6

    iget v7, v0, Lcom/miui/charge/MiuiChargeController;->mChargeSpeed:I

    if-ne v7, v6, :cond_0

    iget-boolean v7, v0, Lcom/miui/charge/MiuiChargeController;->mIsFastCharge:Z

    if-nez v7, :cond_0

    if-eqz v2, :cond_19

    :cond_0
    iget-object v7, v0, Lcom/miui/charge/MiuiChargeController;->mChargeAnimationView:Lcom/miui/charge/container/MiuiChargeAnimationView;

    if-eqz v7, :cond_19

    const-string v7, "switchChargeItemViewAnimation: "

    const-string v8, ",chargeDeviceType="

    invoke-static {v6, v7, v8}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v1, v1, Lcom/miui/systemui/charge/BatteryStatus;->chargeDeviceType:I

    const-string v8, "MiuiChargeController"

    invoke-static {v1, v8, v7}, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    iput v6, v0, Lcom/miui/charge/MiuiChargeController;->mChargeSpeed:I

    iget-object v0, v0, Lcom/miui/charge/MiuiChargeController;->mChargeAnimationView:Lcom/miui/charge/container/MiuiChargeAnimationView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "switchChargeItemViewAnimation: , clickShow="

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " chargeSpeed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiChargeAnimationView"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mChargeContainerView:Lcom/miui/charge/container/MiuiChargeContainerView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "switchContainerViewAnimation: chargeSpeed="

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v7, "MiuiChargeContainerView"

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v1, Lcom/miui/charge/container/MiuiChargeContainerView;->mChargeView:Lcom/miui/charge/container/IChargeView;

    invoke-virtual {v1, v6}, Lcom/miui/charge/container/IChargeView;->switchContainerViewAnimation(I)V

    iget-object v1, v0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mChargePercentView:Lcom/miui/charge/view/MiuiChargePercentCountView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "switchPercentViewAnimation: "

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v7, "MiuiChargePercentCountView"

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v6, v1, Lcom/miui/charge/view/MiuiChargePercentCountView;->mChargeSpeed:I

    invoke-static {}, Lcom/miui/charge/ChargeUtils;->supportWaveChargeAnimation()Z

    move-result v2

    const/4 v8, 0x3

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v9, "startWaveTextAnimation: chargeSpeed= "

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, v1, Lcom/miui/charge/view/MiuiChargePercentCountView;->mChargeSpeed:I

    invoke-static {v9, v7, v2}, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    sget-object v2, Landroid/widget/LinearLayout;->ALPHA:Landroid/util/Property;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v7

    new-array v9, v3, [F

    aput v7, v9, v4

    const/high16 v7, 0x3f800000

    aput v7, v9, v5

    invoke-static {v2, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    new-array v7, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v7, v4

    invoke-static {v1, v7}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v9, 0x320

    invoke-virtual {v2, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v7, v1, Lcom/miui/charge/view/MiuiChargePercentCountView;->mQuartOutInterpolator:Lcom/miui/maml/animation/interpolater/QuartEaseOutInterpolater;

    invoke-virtual {v2, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-static {}, Lcom/miui/charge/ChargeUtils;->supportWaveChargeAnimation()Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v7, 0x3e8

    goto :goto_0

    :cond_1
    const-class v7, Lcom/android/systemui/plugins/miui/settings/IUserTracker;

    invoke-static {v7}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/plugins/miui/settings/IUserTracker;

    invoke-interface {v7}, Lcom/android/systemui/plugins/miui/settings/IUserTracker;->getUserContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f0c008a

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    if-ne v7, v8, :cond_2

    const/16 v7, 0x514

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/miui/charge/ChargeUtils;->supportShaderChargeAnimation()Z

    move-result v7

    if-eqz v7, :cond_3

    sget-boolean v7, Lcom/miui/charge/ChargeUtils;->sDevelopAnimationEnable:Z

    if-eqz v7, :cond_3

    move v7, v4

    goto :goto_0

    :cond_3
    const/16 v7, 0x12c

    :goto_0
    int-to-long v9, v7

    invoke-virtual {v2, v9, v10}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    new-instance v7, Lcom/miui/charge/view/MiuiChargePercentCountView$2;

    invoke-direct {v7, v1, v5}, Lcom/miui/charge/view/MiuiChargePercentCountView$2;-><init>(Lcom/miui/charge/view/MiuiChargePercentCountView;I)V

    invoke-virtual {v2, v7}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Lcom/miui/charge/view/MiuiChargePercentCountView;->switchAnimation()V

    :goto_1
    iget-object v1, v0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mChargeLogoView:Lcom/miui/charge/container/MiuiChargeLogoView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "switchLogoAnimation: mChargeSpeed="

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v7, "MiuiChargeLogoView"

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v6, v1, Lcom/miui/charge/container/MiuiChargeLogoView;->mChargeSpeed:I

    sget-object v2, Lcom/miui/charge/ChargeUtils;->sBatteryStatus:Lcom/miui/systemui/charge/BatteryStatus;

    iget v2, v2, Lcom/miui/systemui/charge/BatteryStatus;->wireState:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v9, "switchChargeLogo: mChargeSpeed="

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, v1, Lcom/miui/charge/container/MiuiChargeLogoView;->mChargeSpeed:I

    invoke-static {v9, v7, v2}, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v2, v1, Lcom/miui/charge/container/MiuiChargeLogoView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_5
    iput v4, v1, Lcom/miui/charge/container/MiuiChargeLogoView;->mStateTipTranslationY:I

    iput v4, v1, Lcom/miui/charge/container/MiuiChargeLogoView;->mStateTipAlpha:I

    iput v4, v1, Lcom/miui/charge/container/MiuiChargeLogoView;->mTurboViewTranslationY:I

    iput v4, v1, Lcom/miui/charge/container/MiuiChargeLogoView;->mTurboViewAlpha:I

    iget v2, v1, Lcom/miui/charge/container/MiuiChargeLogoView;->mChargeSpeed:I

    if-ne v5, v2, :cond_6

    invoke-static {}, Lcom/miui/charge/ChargeUtils;->supportWaveChargeAnimation()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, v1, Lcom/miui/charge/container/MiuiChargeLogoView;->mStateTip:Lcom/miui/charge/container/MiuiChargeLogoView$AccessibilityDisableTextView;

    const v7, 0x7f140d17

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(I)V

    iget v2, v1, Lcom/miui/charge/container/MiuiChargeLogoView;->mChargeTipTranslateSmall:I

    iput v2, v1, Lcom/miui/charge/container/MiuiChargeLogoView;->mStateTipTranslationY:I

    iput v5, v1, Lcom/miui/charge/container/MiuiChargeLogoView;->mStateTipAlpha:I

    goto :goto_2

    :cond_6
    iget v2, v1, Lcom/miui/charge/container/MiuiChargeLogoView;->mChargeSpeed:I

    if-eq v3, v2, :cond_7

    if-ne v8, v2, :cond_8

    :cond_7
    iget v2, v1, Lcom/miui/charge/container/MiuiChargeLogoView;->mChargeTipTranslateSmall:I

    iput v2, v1, Lcom/miui/charge/container/MiuiChargeLogoView;->mTurboViewTranslationY:I

    iput v5, v1, Lcom/miui/charge/container/MiuiChargeLogoView;->mTurboViewAlpha:I

    :cond_8
    :goto_2
    sget-object v2, Landroid/widget/RelativeLayout;->TRANSLATION_Y:Landroid/util/Property;

    iget-object v7, v1, Lcom/miui/charge/container/MiuiChargeLogoView;->mStateTip:Lcom/miui/charge/container/MiuiChargeLogoView$AccessibilityDisableTextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getTranslationY()F

    move-result v7

    iget v9, v1, Lcom/miui/charge/container/MiuiChargeLogoView;->mStateTipTranslationY:I

    int-to-float v9, v9

    new-array v10, v3, [F

    aput v7, v10, v4

    aput v9, v10, v5

    invoke-static {v2, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    sget-object v9, Landroid/widget/RelativeLayout;->ALPHA:Landroid/util/Property;

    iget-object v10, v1, Lcom/miui/charge/container/MiuiChargeLogoView;->mStateTip:Lcom/miui/charge/container/MiuiChargeLogoView$AccessibilityDisableTextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getAlpha()F

    move-result v10

    iget v11, v1, Lcom/miui/charge/container/MiuiChargeLogoView;->mStateTipAlpha:I

    int-to-float v11, v11

    new-array v12, v3, [F

    aput v10, v12, v4

    aput v11, v12, v5

    invoke-static {v9, v12}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v10

    iget-object v11, v1, Lcom/miui/charge/container/MiuiChargeLogoView;->mStateTip:Lcom/miui/charge/container/MiuiChargeLogoView$AccessibilityDisableTextView;

    new-array v12, v3, [Landroid/animation/PropertyValuesHolder;

    aput-object v10, v12, v4

    aput-object v7, v12, v5

    invoke-static {v11, v12}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const-wide/16 v10, 0x1f4

    invoke-virtual {v7, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v7

    iget-object v12, v1, Lcom/miui/charge/container/MiuiChargeLogoView;->mCubicInterpolator:Lcom/miui/maml/animation/interpolater/CubicEaseOutInterpolater;

    invoke-virtual {v7, v12}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v12, v1, Lcom/miui/charge/container/MiuiChargeLogoView;->mChargeTurboView:Lcom/miui/charge/view/MiuiChargeTurboView;

    invoke-virtual {v12}, Landroid/widget/RelativeLayout;->getTranslationY()F

    move-result v12

    iget v13, v1, Lcom/miui/charge/container/MiuiChargeLogoView;->mTurboViewTranslationY:I

    int-to-float v13, v13

    new-array v14, v3, [F

    aput v12, v14, v4

    aput v13, v14, v5

    invoke-static {v2, v14}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    iget-object v12, v1, Lcom/miui/charge/container/MiuiChargeLogoView;->mChargeTurboView:Lcom/miui/charge/view/MiuiChargeTurboView;

    invoke-virtual {v12}, Landroid/widget/RelativeLayout;->getAlpha()F

    move-result v12

    iget v13, v1, Lcom/miui/charge/container/MiuiChargeLogoView;->mTurboViewAlpha:I

    int-to-float v13, v13

    new-array v14, v3, [F

    aput v12, v14, v4

    aput v13, v14, v5

    invoke-static {v9, v14}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v12

    iget-object v13, v1, Lcom/miui/charge/container/MiuiChargeLogoView;->mChargeTurboView:Lcom/miui/charge/view/MiuiChargeTurboView;

    new-array v14, v3, [Landroid/animation/PropertyValuesHolder;

    aput-object v12, v14, v4

    aput-object v2, v14, v5

    invoke-static {v13, v14}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v12, 0xfa

    invoke-virtual {v2, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v12, v1, Lcom/miui/charge/container/MiuiChargeLogoView;->mCubicInterpolator:Lcom/miui/maml/animation/interpolater/CubicEaseOutInterpolater;

    invoke-virtual {v2, v12}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v12, Lcom/miui/charge/container/MiuiChargeLogoView$1;

    invoke-direct {v12, v1}, Lcom/miui/charge/container/MiuiChargeLogoView$1;-><init>(Lcom/miui/charge/container/MiuiChargeLogoView;)V

    invoke-virtual {v2, v12}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v12, Landroid/animation/AnimatorSet;

    invoke-direct {v12}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v12, v1, Lcom/miui/charge/container/MiuiChargeLogoView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-static {}, Lcom/miui/charge/ChargeUtils;->supportWaveChargeAnimation()Z

    move-result v13

    if-eqz v13, :cond_9

    const/16 v13, 0x320

    goto :goto_3

    :cond_9
    move v13, v4

    :goto_3
    int-to-long v14, v13

    invoke-virtual {v12, v14, v15}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    iget-object v12, v1, Lcom/miui/charge/container/MiuiChargeLogoView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v13, v3, [Landroid/animation/Animator;

    aput-object v7, v13, v4

    aput-object v2, v13, v5

    invoke-virtual {v12, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v1, v1, Lcom/miui/charge/container/MiuiChargeLogoView;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    iget-object v1, v0, Lcom/miui/charge/container/MiuiChargeAnimationView;->mChargeIconView:Lcom/miui/charge/container/MiuiChargeIconView;

    if-eqz v1, :cond_18

    const-string v2, "switchLightningAnimation: mChargeSpeed="

    const-string v7, "MiuiChargeIconView"

    invoke-static {v6, v2, v7}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iput v6, v1, Lcom/miui/charge/container/MiuiChargeIconView;->mChargeSpeed:I

    sget-object v2, Lcom/miui/charge/ChargeUtils;->sBatteryStatus:Lcom/miui/systemui/charge/BatteryStatus;

    iget v2, v2, Lcom/miui/systemui/charge/BatteryStatus;->carChargeMode:I

    if-ne v2, v5, :cond_a

    move v2, v5

    goto :goto_4

    :cond_a
    move v2, v4

    :goto_4
    iput-boolean v2, v1, Lcom/miui/charge/container/MiuiChargeIconView;->mIsCarMode:Z

    iget-object v2, v1, Lcom/miui/charge/container/MiuiChargeIconView;->mSwitchAnimator:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "switchChargeLightning: mChargeSpeed="

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v1, Lcom/miui/charge/container/MiuiChargeIconView;->mChargeSpeed:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",mIsCarMode="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v1, Lcom/miui/charge/container/MiuiChargeIconView;->mIsCarMode:Z

    invoke-static {v2, v7, v6}, Lcom/android/keyguard/BaseMiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    iput v4, v1, Lcom/miui/charge/container/MiuiChargeIconView;->mSingleScaleXY:I

    iput v4, v1, Lcom/miui/charge/container/MiuiChargeIconView;->mSingleAlpha:I

    iput v4, v1, Lcom/miui/charge/container/MiuiChargeIconView;->mDoubleScaleXY:I

    iput v4, v1, Lcom/miui/charge/container/MiuiChargeIconView;->mDoubleAlpha:I

    iput v4, v1, Lcom/miui/charge/container/MiuiChargeIconView;->mYellowDoubleScaleXY:I

    iput v4, v1, Lcom/miui/charge/container/MiuiChargeIconView;->mYellowDoubleAlpha:I

    iput v4, v1, Lcom/miui/charge/container/MiuiChargeIconView;->mCarIconScaleXY:I

    iput v4, v1, Lcom/miui/charge/container/MiuiChargeIconView;->mCarIconAlpha:I

    iget-boolean v2, v1, Lcom/miui/charge/container/MiuiChargeIconView;->mIsCarMode:Z

    if-eqz v2, :cond_c

    iput v5, v1, Lcom/miui/charge/container/MiuiChargeIconView;->mCarIconScaleXY:I

    iput v5, v1, Lcom/miui/charge/container/MiuiChargeIconView;->mCarIconAlpha:I

    goto :goto_5

    :cond_c
    iget v2, v1, Lcom/miui/charge/container/MiuiChargeIconView;->mChargeSpeed:I

    if-ne v5, v2, :cond_d

    invoke-static {}, Lcom/miui/charge/ChargeUtils;->supportWaveChargeAnimation()Z

    move-result v2

    if-nez v2, :cond_d

    iput v5, v1, Lcom/miui/charge/container/MiuiChargeIconView;->mSingleScaleXY:I

    iput v5, v1, Lcom/miui/charge/container/MiuiChargeIconView;->mSingleAlpha:I

    goto :goto_5

    :cond_d
    iget v2, v1, Lcom/miui/charge/container/MiuiChargeIconView;->mChargeSpeed:I

    if-ne v3, v2, :cond_e

    iput v5, v1, Lcom/miui/charge/container/MiuiChargeIconView;->mDoubleScaleXY:I

    iput v5, v1, Lcom/miui/charge/container/MiuiChargeIconView;->mDoubleAlpha:I

    goto :goto_5

    :cond_e
    if-ne v8, v2, :cond_f

    iput v5, v1, Lcom/miui/charge/container/MiuiChargeIconView;->mYellowDoubleScaleXY:I

    iput v5, v1, Lcom/miui/charge/container/MiuiChargeIconView;->mYellowDoubleAlpha:I

    goto :goto_5

    :cond_f
    if-nez v2, :cond_11

    sget-object v2, Lcom/miui/charge/ChargeUtils;->sBatteryStatus:Lcom/miui/systemui/charge/BatteryStatus;

    iget v2, v2, Lcom/miui/systemui/charge/BatteryStatus;->wireState:I

    const/16 v6, 0xa

    if-eq v2, v6, :cond_10

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/utils/configs/MiuiConfigs;->isFlipTinyScreen(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_10
    const-string v2, "switchChargeIcon: mWireState=WIRELESS"

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v5, v1, Lcom/miui/charge/container/MiuiChargeIconView;->mSingleScaleXY:I

    iput v5, v1, Lcom/miui/charge/container/MiuiChargeIconView;->mSingleAlpha:I

    :cond_11
    :goto_5
    invoke-static {}, Lcom/miui/charge/container/MiuiChargeIconView;->isDoubleChargeShow()Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v2, v1, Lcom/miui/charge/container/MiuiChargeIconView;->mSpecialDoubleLightningIcon:Landroid/widget/ImageView;

    iget-object v6, v1, Lcom/miui/charge/container/MiuiChargeIconView;->mDoubleLightningDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    :cond_12
    iget-object v2, v1, Lcom/miui/charge/container/MiuiChargeIconView;->mSpecialDoubleLightningIcon:Landroid/widget/ImageView;

    iget-object v6, v1, Lcom/miui/charge/container/MiuiChargeIconView;->mSpecialDoubleLightningDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_6
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, v1, Lcom/miui/charge/container/MiuiChargeIconView;->mSwitchAnimator:Landroid/animation/AnimatorSet;

    invoke-static {}, Lcom/miui/charge/ChargeUtils;->supportWaveChargeAnimation()Z

    move-result v6

    if-eqz v6, :cond_13

    const/16 v14, 0x320

    goto :goto_7

    :cond_13
    move v14, v4

    :goto_7
    int-to-long v6, v14

    invoke-virtual {v2, v6, v7}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    iget v2, v1, Lcom/miui/charge/container/MiuiChargeIconView;->mSingleAlpha:I

    const/4 v6, 0x0

    if-nez v2, :cond_14

    iget-object v2, v1, Lcom/miui/charge/container/MiuiChargeIconView;->mSingleLightningIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v2, v1, Lcom/miui/charge/container/MiuiChargeIconView;->mSingleLightningIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object v2, v1, Lcom/miui/charge/container/MiuiChargeIconView;->mSingleLightningIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setScaleY(F)V

    goto :goto_8

    :cond_14
    sget-object v2, Landroid/widget/RelativeLayout;->SCALE_X:Landroid/util/Property;

    iget-object v7, v1, Lcom/miui/charge/container/MiuiChargeIconView;->mSingleLightningIcon:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getScaleX()F

    move-result v7

    iget v12, v1, Lcom/miui/charge/container/MiuiChargeIconView;->mSingleScaleXY:I

    int-to-float v12, v12

    new-array v13, v3, [F

    aput v7, v13, v4

    aput v12, v13, v5

    invoke-static {v2, v13}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    sget-object v7, Landroid/widget/RelativeLayout;->SCALE_Y:Landroid/util/Property;

    iget-object v12, v1, Lcom/miui/charge/container/MiuiChargeIconView;->mSingleLightningIcon:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getScaleY()F

    move-result v12

    iget v13, v1, Lcom/miui/charge/container/MiuiChargeIconView;->mSingleScaleXY:I

    int-to-float v13, v13

    new-array v14, v3, [F

    aput v12, v14, v4

    aput v13, v14, v5

    invoke-static {v7, v14}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    iget-object v12, v1, Lcom/miui/charge/container/MiuiChargeIconView;->mSingleLightningIcon:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getAlpha()F

    move-result v12

    iget v13, v1, Lcom/miui/charge/container/MiuiChargeIconView;->mSingleAlpha:I

    int-to-float v13, v13

    new-array v14, v3, [F

    aput v12, v14, v4

    aput v13, v14, v5

    invoke-static {v9, v14}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v12

    iget-object v13, v1, Lcom/miui/charge/container/MiuiChargeIconView;->mSingleLightningIcon:Landroid/widget/ImageView;

    new-array v14, v8, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v14, v4

    aput-object v7, v14, v5

    aput-object v12, v14, v3

    invoke-static {v13, v14}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v7, v1, Lcom/miui/charge/container/MiuiChargeIconView;->mCubicInterpolator:Lcom/miui/maml/animation/interpolater/CubicEaseOutInterpolater;

    invoke-virtual {v2, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v7, v1, Lcom/miui/charge/container/MiuiChargeIconView;->mSwitchAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v7, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :goto_8
    iget v2, v1, Lcom/miui/charge/container/MiuiChargeIconView;->mDoubleAlpha:I

    const/high16 v7, 0x40400000

    if-nez v2, :cond_15

    iget-object v2, v1, Lcom/miui/charge/container/MiuiChargeIconView;->mDoubleLightningIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v2, v1, Lcom/miui/charge/container/MiuiChargeIconView;->mDoubleLightningIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object v2, v1, Lcom/miui/charge/container/MiuiChargeIconView;->mDoubleLightningIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setScaleY(F)V

    goto :goto_9

    :cond_15
    sget-object v2, Landroid/widget/RelativeLayout;->SCALE_X:Landroid/util/Property;

    iget-object v12, v1, Lcom/miui/charge/container/MiuiChargeIconView;->mDoubleLightningIcon:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getScaleX()F

    move-result v12

    iget v13, v1, Lcom/miui/charge/container/MiuiChargeIconView;->mDoubleScaleXY:I

    int-to-float v13, v13

    new-array v14, v3, [F

    aput v12, v14, v4

    aput v13, v14, v5

    invoke-static {v2, v14}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    sget-object v12, Landroid/widget/RelativeLayout;->SCALE_Y:Landroid/util/Property;

    iget-object v13, v1, Lcom/miui/charge/container/MiuiChargeIconView;->mDoubleLightningIcon:Landroid/widget/ImageView;

    invoke-virtual {v13}, Landroid/widget/ImageView;->getScaleY()F

    move-result v13

    iget v14, v1, Lcom/miui/charge/container/MiuiChargeIconView;->mDoubleScaleXY:I

    int-to-float v14, v14

    new-array v15, v3, [F

    aput v13, v15, v4

    aput v14, v15, v5

    invoke-static {v12, v15}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v12

    iget-object v13, v1, Lcom/miui/charge/container/MiuiChargeIconView;->mDoubleLightningIcon:Landroid/widget/ImageView;

    invoke-virtual {v13}, Landroid/widget/ImageView;->getAlpha()F

    move-result v13

    iget v14, v1, Lcom/miui/charge/container/MiuiChargeIconView;->mDoubleAlpha:I

    int-to-float v14, v14

    new-array v15, v3, [F

    aput v13, v15, v4

    aput v14, v15, v5

    invoke-static {v9, v15}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    iget-object v14, v1, Lcom/miui/charge/container/MiuiChargeIconView;->mDoubleLightningIcon:Landroid/widget/ImageView;

    new-array v15, v8, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v15, v4

    aput-object v12, v15, v5

    aput-object v13, v15, v3

    invoke-static {v14, v15}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v12, v1, Lcom/miui/charge/container/MiuiChargeIconView;->mCubicInterpolator:Lcom/miui/maml/animation/interpolater/CubicEaseOutInterpolater;

    invoke-virtual {v2, v12}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v12, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v12, v7}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v2, v12}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v12, v1, Lcom/miui/charge/container/MiuiChargeIconView;->mSwitchAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v12, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :goto_9
    iget v2, v1, Lcom/miui/charge/container/MiuiChargeIconView;->mYellowDoubleAlpha:I

    if-nez v2, :cond_16

    iget-object v2, v1, Lcom/miui/charge/container/MiuiChargeIconView;->mSpecialDoubleLightningIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v2, v1, Lcom/miui/charge/container/MiuiChargeIconView;->mSpecialDoubleLightningIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object v2, v1, Lcom/miui/charge/container/MiuiChargeIconView;->mSpecialDoubleLightningIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setScaleY(F)V

    goto :goto_a

    :cond_16
    sget-object v2, Landroid/widget/RelativeLayout;->SCALE_X:Landroid/util/Property;

    iget-object v12, v1, Lcom/miui/charge/container/MiuiChargeIconView;->mSpecialDoubleLightningIcon:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getScaleX()F

    move-result v12

    iget v13, v1, Lcom/miui/charge/container/MiuiChargeIconView;->mYellowDoubleScaleXY:I

    int-to-float v13, v13

    new-array v14, v3, [F

    aput v12, v14, v4

    aput v13, v14, v5

    invoke-static {v2, v14}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    sget-object v12, Landroid/widget/RelativeLayout;->SCALE_Y:Landroid/util/Property;

    iget-object v13, v1, Lcom/miui/charge/container/MiuiChargeIconView;->mSpecialDoubleLightningIcon:Landroid/widget/ImageView;

    invoke-virtual {v13}, Landroid/widget/ImageView;->getScaleY()F

    move-result v13

    iget v14, v1, Lcom/miui/charge/container/MiuiChargeIconView;->mYellowDoubleScaleXY:I

    int-to-float v14, v14

    new-array v15, v3, [F

    aput v13, v15, v4

    aput v14, v15, v5

    invoke-static {v12, v15}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v12

    iget-object v13, v1, Lcom/miui/charge/container/MiuiChargeIconView;->mSpecialDoubleLightningIcon:Landroid/widget/ImageView;

    invoke-virtual {v13}, Landroid/widget/ImageView;->getAlpha()F

    move-result v13

    iget v14, v1, Lcom/miui/charge/container/MiuiChargeIconView;->mYellowDoubleAlpha:I

    int-to-float v14, v14

    new-array v15, v3, [F

    aput v13, v15, v4

    aput v14, v15, v5

    invoke-static {v9, v15}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    iget-object v14, v1, Lcom/miui/charge/container/MiuiChargeIconView;->mSpecialDoubleLightningIcon:Landroid/widget/ImageView;

    new-array v15, v8, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v15, v4

    aput-object v12, v15, v5

    aput-object v13, v15, v3

    invoke-static {v14, v15}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v12, v1, Lcom/miui/charge/container/MiuiChargeIconView;->mCubicInterpolator:Lcom/miui/maml/animation/interpolater/CubicEaseOutInterpolater;

    invoke-virtual {v2, v12}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v12, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v12, v7}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v2, v12}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v7, v1, Lcom/miui/charge/container/MiuiChargeIconView;->mSwitchAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v7, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :goto_a
    iget v2, v1, Lcom/miui/charge/container/MiuiChargeIconView;->mCarIconScaleXY:I

    if-nez v2, :cond_17

    iget-object v2, v1, Lcom/miui/charge/container/MiuiChargeIconView;->mCarModeIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v2, v1, Lcom/miui/charge/container/MiuiChargeIconView;->mCarModeIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object v2, v1, Lcom/miui/charge/container/MiuiChargeIconView;->mCarModeIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setScaleY(F)V

    goto :goto_b

    :cond_17
    sget-object v2, Landroid/widget/RelativeLayout;->SCALE_X:Landroid/util/Property;

    iget-object v6, v1, Lcom/miui/charge/container/MiuiChargeIconView;->mCarModeIcon:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getScaleX()F

    move-result v6

    iget v7, v1, Lcom/miui/charge/container/MiuiChargeIconView;->mCarIconScaleXY:I

    int-to-float v7, v7

    new-array v12, v3, [F

    aput v6, v12, v4

    aput v7, v12, v5

    invoke-static {v2, v12}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    sget-object v6, Landroid/widget/RelativeLayout;->SCALE_Y:Landroid/util/Property;

    iget-object v7, v1, Lcom/miui/charge/container/MiuiChargeIconView;->mCarModeIcon:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getScaleY()F

    move-result v7

    iget v12, v1, Lcom/miui/charge/container/MiuiChargeIconView;->mCarIconScaleXY:I

    int-to-float v12, v12

    new-array v13, v3, [F

    aput v7, v13, v4

    aput v12, v13, v5

    invoke-static {v6, v13}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    iget-object v7, v1, Lcom/miui/charge/container/MiuiChargeIconView;->mCarModeIcon:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getAlpha()F

    move-result v7

    iget v12, v1, Lcom/miui/charge/container/MiuiChargeIconView;->mCarIconAlpha:I

    int-to-float v12, v12

    new-array v13, v3, [F

    aput v7, v13, v4

    aput v12, v13, v5

    invoke-static {v9, v13}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    iget-object v9, v1, Lcom/miui/charge/container/MiuiChargeIconView;->mCarModeIcon:Landroid/widget/ImageView;

    new-array v8, v8, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v8, v4

    aput-object v6, v8, v5

    aput-object v7, v8, v3

    invoke-static {v9, v8}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v3, v1, Lcom/miui/charge/container/MiuiChargeIconView;->mCubicInterpolator:Lcom/miui/maml/animation/interpolater/CubicEaseOutInterpolater;

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v3, v1, Lcom/miui/charge/container/MiuiChargeIconView;->mSwitchAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :goto_b
    iget-object v1, v1, Lcom/miui/charge/container/MiuiChargeIconView;->mSwitchAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    :cond_18
    invoke-virtual {v0}, Lcom/miui/charge/container/MiuiChargeAnimationView;->onSwitchChargeAnimation()V

    :cond_19
    return-void
.end method

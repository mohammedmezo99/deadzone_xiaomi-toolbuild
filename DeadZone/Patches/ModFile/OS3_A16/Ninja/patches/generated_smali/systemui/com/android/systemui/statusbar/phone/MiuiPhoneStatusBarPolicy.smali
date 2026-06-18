.class public Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;
.super Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mAlwaysShowBtIcon:I

.field public mBluetoothBatteryLevel:I

.field public final mBtAlwaysShowIconObserver:Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy$1;

.field public mCharging:Z

.field public mConnect:Z

.field public final mContext:Landroid/content/Context;

.field public mCurrentUserId:I

.field public final mHeadsetMap:Ljava/util/HashMap;

.field public mInoutState:I

.field public final mIntentReceiver:Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy$5;

.field public mLevelCase:I

.field public mMuteIconResId:I

.field public mNFCVisible:Z

.field public mNetworkSpeedController:Lcom/android/systemui/statusbar/policy/NetworkSpeedController;

.field public final mSecondSpaceStatusIconObserver:Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy$1;

.field public mSecondSpaceStatusIconVisible:Z

.field public final mSlotBluetoothBattery:Ljava/lang/String;

.field public final mSlotMicphone:Ljava/lang/String;

.field public final mStatusBarManager:Landroid/app/StatusBarManager;

.field public final mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

.field public mUserTracker:Lcom/android/systemui/settings/UserTracker;

.field public final mVibrateEnableObserver:Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy$1;

.field public mVibrateWhenSilent:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/broadcast/BroadcastDispatcher;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroid/os/Looper;Landroid/content/res/Resources;Lcom/android/systemui/statusbar/policy/HotspotController;Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;Lcom/android/systemui/statusbar/policy/NextAlarmController;Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;Lcom/android/systemui/statusbar/policy/RotationLockController;Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/policy/LocationController;Lcom/android/systemui/statusbar/policy/SensorPrivacyControllerImpl;Landroid/os/UserManager;Lcom/android/systemui/settings/UserTracker;Landroid/app/admin/DevicePolicyManager;Landroid/telecom/TelecomManager;ILcom/android/systemui/util/RingerModeTrackerImpl;Lcom/android/systemui/privacy/PrivacyItemController;Lcom/android/systemui/privacy/logging/PrivacyLogger;Landroid/content/Context;Lcom/android/systemui/display/domain/interactor/ConnectedDisplayInteractorImpl;Lcom/android/systemui/statusbar/policy/domain/interactor/ZenModeInteractor;Lcom/android/systemui/util/kotlin/JavaAdapter;Lcom/android/systemui/statusbar/policy/NFCController;)V
    .registers 62

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    move-object/from16 v19, p19

    move-object/from16 v20, p20

    move-object/from16 v21, p21

    move-object/from16 v22, p22

    move/from16 v23, p23

    move-object/from16 v24, p24

    move-object/from16 v25, p25

    move-object/from16 v26, p26

    move-object/from16 v27, p28

    move-object/from16 v28, p29

    move-object/from16 v29, p30

    invoke-direct/range {v0 .. v29}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;-><init>(Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/broadcast/BroadcastDispatcher;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroid/os/Looper;Landroid/content/res/Resources;Lcom/android/systemui/statusbar/policy/HotspotController;Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;Lcom/android/systemui/statusbar/policy/NextAlarmController;Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;Lcom/android/systemui/statusbar/policy/RotationLockController;Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/policy/LocationController;Lcom/android/systemui/statusbar/policy/SensorPrivacyControllerImpl;Landroid/os/UserManager;Lcom/android/systemui/settings/UserTracker;Landroid/app/admin/DevicePolicyManager;Landroid/telecom/TelecomManager;ILcom/android/systemui/util/RingerModeTrackerImpl;Lcom/android/systemui/privacy/PrivacyItemController;Lcom/android/systemui/privacy/logging/PrivacyLogger;Lcom/android/systemui/display/domain/interactor/ConnectedDisplayInteractorImpl;Lcom/android/systemui/statusbar/policy/domain/interactor/ZenModeInteractor;Lcom/android/systemui/util/kotlin/JavaAdapter;)V

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mBluetoothBatteryLevel:I

    iput v1, v0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mLevelCase:I

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mCharging:Z

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mConnect:Z

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mHeadsetMap:Ljava/util/HashMap;

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mNFCVisible:Z

    new-instance v1, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy$1;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy$1;-><init>(Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;Landroid/os/Handler;I)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mSecondSpaceStatusIconObserver:Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy$1;

    new-instance v1, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy$1;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v3}, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy$1;-><init>(Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;Landroid/os/Handler;I)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mBtAlwaysShowIconObserver:Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy$1;

    new-instance v1, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy$1;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-direct {v1, v0, v2, v3}, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy$1;-><init>(Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;Landroid/os/Handler;I)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mVibrateEnableObserver:Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy$1;

    new-instance v1, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy$4;

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy$4;-><init>(Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    new-instance v1, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy$5;

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy$5;-><init>(Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mIntentReceiver:Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy$5;

    move-object/from16 v1, p27

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v2, p20

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    const-string v2, "bluetooth_handsfree_battery"

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mSlotBluetoothBattery:Ljava/lang/String;

    const-string v2, "micphone"

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mSlotMicphone:Ljava/lang/String;

    const-class v2, Landroid/app/StatusBarManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mStatusBarManager:Landroid/app/StatusBarManager;

    move-object/from16 v1, p31

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/NFCController;->enableFlow:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v2, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;)V

    move-object/from16 v0, p30

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/util/kotlin/JavaAdapter;->alwaysCollectFlow(Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;)Lkotlinx/coroutines/Job;

    return-void
.end method


# virtual methods
.method public final onBluetoothBatteryChange(I)V
    .registers 5

    iget v0, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mBluetoothBatteryLevel:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mBluetoothBatteryLevel:I

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mSlotBluetoothBattery:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    check-cast v2, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;

    invoke-virtual {v2, v1, p0}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->setIconVisibility(Ljava/lang/String;Z)V

    return-void

    :cond_0
    const v0, 0x7f140109

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    mul-int/lit8 p1, p1, 0xa

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    move-object p1, v2

    check-cast p1, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;

    const v0, 0x7f081b5e

    invoke-virtual {p1, p0, v1, v0}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->setIcon(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_0  #0x7, 0x8
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    mul-int/lit8 p1, p1, 0xa

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    move-object p1, v2

    check-cast p1, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;

    const v0, 0x7f081b5b

    invoke-virtual {p1, p0, v1, v0}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->setIcon(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_1  #0x5, 0x6
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    mul-int/lit8 p1, p1, 0xa

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    move-object p1, v2

    check-cast p1, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;

    const v0, 0x7f081b58

    invoke-virtual {p1, p0, v1, v0}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->setIcon(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_2  #0x3, 0x4
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    mul-int/lit8 p1, p1, 0xa

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    move-object p1, v2

    check-cast p1, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;

    const v0, 0x7f081b55

    invoke-virtual {p1, p0, v1, v0}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->setIcon(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_3  #0x1, 0x2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    mul-int/lit8 p1, p1, 0xa

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    move-object p1, v2

    check-cast p1, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;

    const v0, 0x7f081b52

    invoke-virtual {p1, p0, v1, v0}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->setIcon(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    :goto_0
    const/4 p0, 0x1

    check-cast v2, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;

    invoke-virtual {v2, v1, p0}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->setIconVisibility(Ljava/lang/String;Z)V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3  #00000001
        :pswitch_3  #00000002
        :pswitch_2  #00000003
        :pswitch_2  #00000004
        :pswitch_1  #00000005
        :pswitch_1  #00000006
        :pswitch_0  #00000007
        :pswitch_0  #00000008
    .end packed-switch
.end method

.method public final onBluetoothInoutStateChange(I)V
    .registers 5

    const-string v0, "onBluetoothInout: inoutState="

    const-string v1, ", old="

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mInoutState:I

    const-string v2, "MiuiPhoneStatusBarPolicy"

    invoke-static {v1, v2, v0}, Lcom/android/keyguard/fullaod/MiuiFullAodManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mInoutState:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mInoutState:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->updateBluetooth()V

    :cond_0
    return-void
.end method

.method public final onKeyguardShowingChanged()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateProfileIcon()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->updateSecondSpace()V

    return-void
.end method

.method public final onLocationActiveChanged()V
    .registers 3

    invoke-static {}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->isCTARequiredLocation()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mLocationController:Lcom/android/systemui/statusbar/policy/LocationController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->mAreActiveLocationRequests:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotLocation:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    check-cast p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->setIconVisibility(Ljava/lang/String;Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    check-cast p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->setIconVisibility(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public final updateBluetooth()V
    .registers 9

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f14010a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetooth:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    const v2, 0x7f081b6d

    const/4 v3, 0x0

    if-eqz v1, :cond_9

    iget v4, v1, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mConnectionState:I

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-ne v4, v6, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    sget-boolean v7, Lmiui/os/Build;->IS_ELITE_BUILD:Z

    if-eqz v7, :cond_1

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mEnabled:Z

    move v3, v1

    goto :goto_2

    :cond_1
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mEnabled:Z

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    if-nez v4, :cond_4

    iget v1, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mInoutState:I

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    iget v1, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mAlwaysShowBtIcon:I

    if-ne v1, v5, :cond_5

    :cond_4
    :goto_1
    move v3, v5

    :cond_5
    :goto_2
    if-eqz v4, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f14005e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f081b6e

    :cond_6
    iget v1, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mInoutState:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_7

    const v2, 0x7f081b75

    goto :goto_3

    :cond_7
    if-ne v1, v6, :cond_8

    const v2, 0x7f081b78

    goto :goto_3

    :cond_8
    if-ne v1, v5, :cond_9

    const v2, 0x7f081b72

    :cond_9
    :goto_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;

    check-cast v1, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotBluetooth:Ljava/lang/String;

    invoke-virtual {v1, v0, p0, v2}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->setIcon(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    invoke-virtual {v1, p0, v3}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->setIconVisibility(Ljava/lang/String;Z)V

    return-void
.end method

.method public final updateSecondSpace()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mSecondSpaceStatusIconVisible:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mCurrentUserId:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-eqz v1, :cond_0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;

    check-cast p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;

    const-string v1, "second_space"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->setIconVisibility(Ljava/lang/String;Z)V

    return-void
.end method

.method public final updateVibrateEnable()V
    .registers 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mCurrentUserId:I

    const-string v2, "vibrate_in_silent"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mVibrateWhenSilent:Z

    if-eq v0, v3, :cond_1

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mVibrateWhenSilent:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->updateVolumeZen()V

    :cond_1
    return-void
.end method

.method public final updateVolumeZen()V
    .registers 7

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->mZenMode:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mZenVisible:Z

    if-eq v0, v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotZen:Ljava/lang/String;

    check-cast v3, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;

    invoke-virtual {v3, v4, v0}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->setIconVisibility(Ljava/lang/String;Z)V

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mZenVisible:Z

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mRingerModeTracker:Lcom/android/systemui/util/RingerModeTrackerImpl;

    iget-object v0, v0, Lcom/android/systemui/util/RingerModeTrackerImpl;->ringerModeInternal:Lcom/android/systemui/util/RingerModeLiveData;

    invoke-virtual {v0}, Lcom/android/systemui/util/RingerModeLiveData;->getValue()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mVibrateWhenSilent:Z

    if-eqz v3, :cond_2

    const v0, 0x7f081bec

    const v1, 0x7f140122

    move v4, v1

    move v1, v2

    goto :goto_3

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const v4, 0x7f140121

    const v5, 0x7f081be9

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    move v0, v5

    goto :goto_3

    :cond_4
    :goto_2
    move v1, v2

    goto :goto_1

    :goto_3
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mMuteVisible:Z

    if-ne v2, v1, :cond_6

    iget v2, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mMuteIconResId:I

    if-eq v2, v0, :cond_5

    goto :goto_4

    :cond_5
    return-void

    :cond_6
    :goto_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotMute:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    check-cast v2, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;

    invoke-virtual {v2, v4, v3, v0}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->setIcon(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotMute:Ljava/lang/String;

    check-cast v2, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->setIconVisibility(Ljava/lang/String;Z)V

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mMuteVisible:Z

    iput v0, p0, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mMuteIconResId:I

    return-void
.end method

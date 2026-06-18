.class public final Lcom/android/keyguard/negative/KeyguardMoveLeftController;
.super Lcom/android/keyguard/BaseKeyguardMoveController;


# instance fields
.field public final mCenterScreenTouchSlopTranslation:F

.field public final mFaceUnlockManager:Ldagger/Lazy;

.field public final mHandler:Lcom/android/keyguard/negative/KeyguardMoveLeftController$1;

.field public final mKeyguardClientCallback:Lcom/android/keyguard/negative/KeyguardMoveLeftController$2;

.field public final mKeyguardCommonSettingObserver:Ldagger/Lazy;

.field public final mKeyguardCommonSettingsRepositoryLazy:Ldagger/Lazy;

.field public final mKeyguardMagazineHelper:Ldagger/Lazy;

.field public final mKeyguardNegative1PageInjector:Ldagger/Lazy;

.field public final mKeyguardUpdateMonitor:Ldagger/Lazy;

.field public final mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/negative/KeyguardMoveLeftController$2;

.field public final mKeyguardUpdateMonitorInjector:Ldagger/Lazy;

.field public mLockScreenMagazineClient:Lcom/android/keyguard/negative/LockScreenMagazineClient;

.field public final mLockScreenMagazineController:Ldagger/Lazy;

.field public mMiuiKeyguardUpdateMonitorCallback:Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;

.field public final mMiuiUWBController:Ldagger/Lazy;

.field public volatile mScrollProgress:F

.field public final mSuperSaveModeControllerImpl:Ldagger/Lazy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/keyguard/BaseKeyguardMoveController$CallBack;)V
    .registers 14

    invoke-direct {p0, p1, p12}, Lcom/android/keyguard/BaseKeyguardMoveController;-><init>(Landroid/content/Context;Lcom/android/keyguard/BaseKeyguardMoveController$CallBack;)V

    new-instance p12, Lcom/android/keyguard/negative/KeyguardMoveLeftController$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p12, p0, v0}, Lcom/android/keyguard/negative/KeyguardMoveLeftController$1;-><init>(Lcom/android/keyguard/negative/KeyguardMoveLeftController;Landroid/os/Looper;)V

    iput-object p12, p0, Lcom/android/keyguard/negative/KeyguardMoveLeftController;->mHandler:Lcom/android/keyguard/negative/KeyguardMoveLeftController$1;

    new-instance p12, Lcom/android/keyguard/negative/KeyguardMoveLeftController$2;

    invoke-direct {p12, p0}, Lcom/android/keyguard/negative/KeyguardMoveLeftController$2;-><init>(Lcom/android/keyguard/negative/KeyguardMoveLeftController;)V

    iput-object p12, p0, Lcom/android/keyguard/negative/KeyguardMoveLeftController;->mKeyguardClientCallback:Lcom/android/keyguard/negative/KeyguardMoveLeftController$2;

    new-instance p12, Lcom/android/keyguard/negative/KeyguardMoveLeftController$2;

    invoke-direct {p12, p0}, Lcom/android/keyguard/negative/KeyguardMoveLeftController$2;-><init>(Lcom/android/keyguard/negative/KeyguardMoveLeftController;)V

    iput-object p12, p0, Lcom/android/keyguard/negative/KeyguardMoveLeftController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/negative/KeyguardMoveLeftController$2;

    new-instance p12, Lcom/android/keyguard/negative/KeyguardMoveLeftController$4;

    invoke-direct {p12, p0}, Lcom/android/keyguard/negative/KeyguardMoveLeftController$4;-><init>(Lcom/android/keyguard/negative/KeyguardMoveLeftController;)V

    iput-object p12, p0, Lcom/android/keyguard/negative/KeyguardMoveLeftController;->mMiuiKeyguardUpdateMonitorCallback:Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;

    iput-object p2, p0, Lcom/android/keyguard/negative/KeyguardMoveLeftController;->mKeyguardUpdateMonitor:Ldagger/Lazy;

    iput-object p3, p0, Lcom/android/keyguard/negative/KeyguardMoveLeftController;->mKeyguardUpdateMonitorInjector:Ldagger/Lazy;

    iput-object p4, p0, Lcom/android/keyguard/negative/KeyguardMoveLeftController;->mFaceUnlockManager:Ldagger/Lazy;

    iput-object p5, p0, Lcom/android/keyguard/negative/KeyguardMoveLeftController;->mLockScreenMagazineController:Ldagger/Lazy;

    iput-object p6, p0, Lcom/android/keyguard/negative/KeyguardMoveLeftController;->mKeyguardCommonSettingObserver:Ldagger/Lazy;

    iput-object p7, p0, Lcom/android/keyguard/negative/KeyguardMoveLeftController;->mMiuiUWBController:Ldagger/Lazy;

    iput-object p8, p0, Lcom/android/keyguard/negative/KeyguardMoveLeftController;->mSuperSaveModeControllerImpl:Ldagger/Lazy;

    iput-object p9, p0, Lcom/android/keyguard/negative/KeyguardMoveLeftController;->mKeyguardMagazineHelper:Ldagger/Lazy;

    iput-object p10, p0, Lcom/android/keyguard/negative/KeyguardMoveLeftController;->mKeyguardNegative1PageInjector:Ldagger/Lazy;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    iput p1, p0, Lcom/android/keyguard/negative/KeyguardMoveLeftController;->mCenterScreenTouchSlopTranslation:F

    iput-object p11, p0, Lcom/android/keyguard/negative/KeyguardMoveLeftController;->mKeyguardCommonSettingsRepositoryLazy:Ldagger/Lazy;

    return-void
.end method


# virtual methods
.method public final bindLockScreenMagazineService()V
    .registers 6

    iget-object v0, p0, Lcom/android/keyguard/negative/KeyguardMoveLeftController;->mHandler:Lcom/android/keyguard/negative/KeyguardMoveLeftController$1;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bindLockScreenMagazineService "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/keyguard/negative/KeyguardMoveLeftController;->mLockScreenMagazineController:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/magazine/LockScreenMagazineController;

    iget-boolean v2, v2, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsSupportLockScreenMagazineLeftOverlay:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/miui/keyguard/biometrics/fod/MiuiFingerPrintFactory;->getFingerPrintManager()Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;->isUnlockByGxzw()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/keyguard/negative/KeyguardMoveLeftController;->mKeyguardUpdateMonitorInjector:Ldagger/Lazy;

    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/keyguard/stub/MiuiKeyguardUpdateMonitorInjectorStub;

    iget-object v4, v4, Lcom/android/keyguard/stub/MiuiKeyguardUpdateMonitorInjectorStub;->mKeyguardUpdateMonitorInjector:Ldagger/Lazy;

    invoke-interface {v4}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    invoke-virtual {v4}, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->isFingerprintUnlock()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/keyguard/stub/MiuiKeyguardUpdateMonitorInjectorStub;

    invoke-virtual {v4}, Lcom/android/keyguard/stub/MiuiKeyguardUpdateMonitorInjectorStub;->isFaceUnlock()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/keyguard/negative/KeyguardMoveLeftController;->mKeyguardCommonSettingObserver:Ldagger/Lazy;

    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/keyguard/KeyguardCommonSettingObserver;

    invoke-virtual {v4}, Lcom/miui/keyguard/KeyguardCommonSettingObserver;->getFaceUnlockSuccessStayScreen()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " false "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/keyguard/BaseKeyguardMoveController;->mCallBack:Lcom/android/keyguard/BaseKeyguardMoveController$CallBack;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/stub/MiuiKeyguardUpdateMonitorInjectorStub;

    invoke-virtual {p0}, Lcom/android/keyguard/stub/MiuiKeyguardUpdateMonitorInjectorStub;->isKeyguardShowing()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "KeyguardHorizontalMoveLeftViewContainer"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;

    iget-boolean p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsSupportLockScreenMagazineLeftOverlay:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/miui/keyguard/biometrics/fod/MiuiFingerPrintFactory;->getFingerPrintManager()Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;->isUnlockByGxzw()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/stub/MiuiKeyguardUpdateMonitorInjectorStub;

    iget-object p0, p0, Lcom/android/keyguard/stub/MiuiKeyguardUpdateMonitorInjectorStub;->mKeyguardUpdateMonitorInjector:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    invoke-virtual {p0}, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->isFingerprintUnlock()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/stub/MiuiKeyguardUpdateMonitorInjectorStub;

    invoke-virtual {p0}, Lcom/android/keyguard/stub/MiuiKeyguardUpdateMonitorInjectorStub;->isFaceUnlock()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/keyguard/KeyguardCommonSettingObserver;

    invoke-virtual {p0}, Lcom/miui/keyguard/KeyguardCommonSettingObserver;->getFaceUnlockSuccessStayScreen()Z

    :cond_0
    return-void
.end method

.method public final isLeftViewLaunchActivity()Z
    .registers 2

    iget-object v0, p0, Lcom/android/keyguard/negative/KeyguardMoveLeftController;->mMiuiUWBController:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/negative/MiuiUWBController;

    iget-boolean v0, v0, Lcom/android/keyguard/negative/MiuiUWBController;->mUseUWB:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/keyguard/negative/KeyguardMoveLeftController;->mLockScreenMagazineController:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;

    iget-boolean p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mLockScreenLeftOverlayAvailable:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final isSupportSwipeToLaunchMagazine()Z
    .registers 2

    iget-object p0, p0, Lcom/android/keyguard/negative/KeyguardMoveLeftController;->mLockScreenMagazineController:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/magazine/LockScreenMagazineController;

    iget-boolean v0, v0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsSupportLockScreenMagazineLeft:Z

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/magazine/LockScreenMagazineController;

    iget-boolean v0, v0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsLockScreenMagazinePkgExist:Z

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;

    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazineController;->isSupportSwipeToLaunch()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final onTouchDown(FF)V
    .registers 7

    iget-object v0, p0, Lcom/android/keyguard/BaseKeyguardMoveController;->mCallBack:Lcom/android/keyguard/BaseKeyguardMoveController$CallBack;

    invoke-interface {v0}, Lcom/android/keyguard/BaseKeyguardMoveController$CallBack;->isMoveInCenterScreen()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/keyguard/BaseKeyguardMoveController;->mCallBack:Lcom/android/keyguard/BaseKeyguardMoveController$CallBack;

    invoke-interface {v0}, Lcom/android/keyguard/BaseKeyguardMoveController$CallBack;->isRightMove()Z

    move-result v0

    if-eqz v0, :cond_6

    iput p1, p0, Lcom/android/keyguard/BaseKeyguardMoveController;->mInitialTouchX:F

    iput p2, p0, Lcom/android/keyguard/BaseKeyguardMoveController;->mInitialTouchY:F

    invoke-virtual {p0}, Lcom/android/keyguard/negative/KeyguardMoveLeftController;->supportMoveToRight()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/keyguard/BaseKeyguardMoveController;->mEnableErrorTips:Z

    invoke-virtual {p0}, Lcom/android/keyguard/negative/KeyguardMoveLeftController;->isLeftViewLaunchActivity()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/negative/KeyguardMoveLeftController;->mLockScreenMagazineClient:Lcom/android/keyguard/negative/LockScreenMagazineClient;

    invoke-virtual {v0}, Lcom/android/keyguard/negative/LockScreenMagazineClient;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, v0, Lcom/android/keyguard/negative/LockScreenMagazineClient;->mOverlay:Lcom/android/keyguard/negative/IKeyguardOverlay;

    check-cast v0, Lcom/android/keyguard/negative/IKeyguardOverlay$Stub$Proxy;

    iget-object v1, v0, Lcom/android/keyguard/negative/IKeyguardOverlay$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-static {v1}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v2, "com.android.keyguard.negative.IKeyguardOverlay"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/keyguard/negative/IKeyguardOverlay$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v0, p2, v1, v2, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "startMove "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LockScreenMagazineClient"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget v0, p0, Lcom/android/keyguard/negative/KeyguardMoveLeftController;->mScrollProgress:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/keyguard/BaseKeyguardMoveController;->mCallBack:Lcom/android/keyguard/BaseKeyguardMoveController$CallBack;

    invoke-interface {v0, p1}, Lcom/android/keyguard/BaseKeyguardMoveController$CallBack;->updateCanShowGxzw(Z)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/negative/KeyguardMoveLeftController;->isSupportSwipeToLaunchMagazine()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/keyguard/negative/KeyguardMoveLeftController;->mKeyguardMagazineHelper:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/interfaces/keyguard/IKeyguardMagazine;

    check-cast v0, Lcom/android/keyguard/magazine/KeyguardMagazineHelper;

    iget-object v1, v0, Lcom/android/keyguard/magazine/KeyguardMagazineHelper;->mState:Lcom/miui/interfaces/keyguard/IKeyguardMagazine$AnimState;

    sget-object v2, Lcom/miui/interfaces/keyguard/IKeyguardMagazine$AnimState;->IDLE:Lcom/miui/interfaces/keyguard/IKeyguardMagazine$AnimState;

    const-string v3, "KeyguardMagazineHelper"

    if-eq v1, v2, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "launchMagazineActivity failed, mState = "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/keyguard/magazine/KeyguardMagazineHelper;->mState:Lcom/miui/interfaces/keyguard/IKeyguardMagazine$AnimState;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const-string v1, "launchMagazineActivity"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/miui/interfaces/keyguard/IKeyguardMagazine$AnimState;->LAUNCHING:Lcom/miui/interfaces/keyguard/IKeyguardMagazine$AnimState;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/magazine/KeyguardMagazineHelper;->setState(Lcom/miui/interfaces/keyguard/IKeyguardMagazine$AnimState;)V

    const/4 v1, 0x2

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/keyguard/magazine/KeyguardMagazineHelper;->sendMessageDelayed(IJ)V

    iget-object v1, v0, Lcom/android/keyguard/magazine/KeyguardMagazineHelper;->mLockScreenMagazineController:Lcom/android/keyguard/magazine/LockScreenMagazineController;

    invoke-virtual {v1}, Lcom/android/keyguard/magazine/LockScreenMagazineController;->startMagazineLeftActivity()V

    invoke-static {}, Lcom/miui/utils/configs/MiuiConfigs;->isLiteOrLowDevice()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/miui/utils/BoostHelper;->getInstance()Lcom/miui/utils/BoostHelper;

    move-result-object v1

    iget-object v0, v0, Lcom/android/keyguard/magazine/KeyguardMagazineHelper;->mKeyguardPanelViewInjector:Lcom/miui/interfaces/keyguard/IKeyguardPanelViewInjector;

    check-cast v0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    iget-object v0, v0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->keyguardRootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3, v0}, Lcom/miui/utils/BoostHelper;->boostWithGpuFreq(JLandroid/view/View;)V

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/BaseKeyguardMoveController;->mCallBack:Lcom/android/keyguard/BaseKeyguardMoveController$CallBack;

    invoke-interface {v0, p1}, Lcom/android/keyguard/BaseKeyguardMoveController$CallBack;->updateCanShowGxzw(Z)V

    goto :goto_1

    :cond_4
    sget-boolean p1, Lcom/miui/utils/configs/MiuiConfigs;->IS_PAD:Z

    if-nez p1, :cond_5

    iput-boolean p2, p0, Lcom/android/keyguard/BaseKeyguardMoveController;->mEnableErrorTips:Z

    :cond_5
    :goto_1
    iput-boolean p2, p0, Lcom/android/keyguard/BaseKeyguardMoveController;->mTouchDownInitial:Z

    :cond_6
    return-void
.end method

.method public final onTouchMove(FF)Z
    .registers 12

    invoke-virtual {p0}, Lcom/android/keyguard/negative/KeyguardMoveLeftController;->supportMoveToRight()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/keyguard/BaseKeyguardMoveController;->mTouchDownInitial:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/android/keyguard/negative/KeyguardMoveLeftController;->isLeftViewLaunchActivity()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget p2, p0, Lcom/android/keyguard/BaseKeyguardMoveController;->mInitialTouchX:F

    sub-float/2addr p1, p2

    iget-object p2, p0, Lcom/android/keyguard/BaseKeyguardMoveController;->mScreenPoint:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    iget-object p2, p0, Lcom/android/keyguard/negative/KeyguardMoveLeftController;->mLockScreenMagazineClient:Lcom/android/keyguard/negative/LockScreenMagazineClient;

    iget-object v0, p0, Lcom/android/keyguard/BaseKeyguardMoveController;->mCallBack:Lcom/android/keyguard/BaseKeyguardMoveController$CallBack;

    invoke-interface {v0}, Lcom/android/keyguard/BaseKeyguardMoveController$CallBack;->isRightMove()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    neg-float p1, p1

    :goto_0
    invoke-virtual {p2}, Lcom/android/keyguard/negative/LockScreenMagazineClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    :try_start_0
    iget-object p2, p2, Lcom/android/keyguard/negative/LockScreenMagazineClient;->mOverlay:Lcom/android/keyguard/negative/IKeyguardOverlay;

    check-cast p2, Lcom/android/keyguard/negative/IKeyguardOverlay$Stub$Proxy;

    iget-object v0, p2, Lcom/android/keyguard/negative/IKeyguardOverlay$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v0, "com.android.keyguard.negative.IKeyguardOverlay"

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object p1, p2, Lcom/android/keyguard/negative/IKeyguardOverlay$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x2

    const/4 v0, 0x0

    invoke-interface {p1, p2, v3, v0, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p1, v0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw p1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    move-object p1, v0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "updateMove "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LockScreenMagazineClient"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget p1, p0, Lcom/android/keyguard/negative/KeyguardMoveLeftController;->mScrollProgress:F

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/android/keyguard/BaseKeyguardMoveController;->mCallBack:Lcom/android/keyguard/BaseKeyguardMoveController$CallBack;

    invoke-interface {p0, v1}, Lcom/android/keyguard/BaseKeyguardMoveController$CallBack;->updateCanShowGxzw(Z)V

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/negative/KeyguardMoveLeftController;->mKeyguardMagazineHelper:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/interfaces/keyguard/IKeyguardMagazine;

    check-cast v0, Lcom/android/keyguard/magazine/KeyguardMagazineHelper;

    iget-object v0, v0, Lcom/android/keyguard/magazine/KeyguardMagazineHelper;->mState:Lcom/miui/interfaces/keyguard/IKeyguardMagazine$AnimState;

    sget-object v3, Lcom/miui/interfaces/keyguard/IKeyguardMagazine$AnimState;->OCCLUDE_ANIMATING:Lcom/miui/interfaces/keyguard/IKeyguardMagazine$AnimState;

    if-ne v0, v3, :cond_3

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/negative/KeyguardMoveLeftController;->mKeyguardMagazineHelper:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/interfaces/keyguard/IKeyguardMagazine;

    check-cast v0, Lcom/android/keyguard/magazine/KeyguardMagazineHelper;

    iget-object v0, v0, Lcom/android/keyguard/magazine/KeyguardMagazineHelper;->mState:Lcom/miui/interfaces/keyguard/IKeyguardMagazine$AnimState;

    sget-object v3, Lcom/miui/interfaces/keyguard/IKeyguardMagazine$AnimState;->LAUNCHING:Lcom/miui/interfaces/keyguard/IKeyguardMagazine$AnimState;

    if-ne v0, v3, :cond_6

    :goto_2
    iget-object p2, p0, Lcom/android/keyguard/negative/KeyguardMoveLeftController;->mKeyguardMagazineHelper:Ldagger/Lazy;

    invoke-interface {p2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/interfaces/keyguard/IKeyguardMagazine;

    iget v6, p0, Lcom/android/keyguard/BaseKeyguardMoveController;->mInitialTouchX:F

    move-object v4, p2

    check-cast v4, Lcom/android/keyguard/magazine/KeyguardMagazineHelper;

    iget-object p0, v4, Lcom/android/keyguard/magazine/KeyguardMagazineHelper;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/miui/utils/configs/MiuiConfigs;->getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p0

    iget v7, p0, Landroid/graphics/Point;->x:I

    sub-float p0, p1, v6

    iget-object p2, v4, Lcom/android/keyguard/magazine/KeyguardMagazineHelper;->mKeyguardPanelViewInjector:Lcom/miui/interfaces/keyguard/IKeyguardPanelViewInjector;

    check-cast p2, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    invoke-virtual {p2, p0, v1}, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->setLeftViewTranslation(FZ)V

    iget-object p0, v4, Lcom/android/keyguard/magazine/KeyguardMagazineHelper;->mOpeningTarget:Landroid/view/RemoteAnimationTarget;

    if-nez p0, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v4}, Lcom/android/keyguard/magazine/KeyguardMagazineHelper;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v8

    if-eqz v8, :cond_5

    new-instance v3, Lcom/android/keyguard/magazine/KeyguardMagazineHelper$$ExternalSyntheticLambda2;

    move v5, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/keyguard/magazine/KeyguardMagazineHelper$$ExternalSyntheticLambda2;-><init>(Lcom/android/keyguard/magazine/KeyguardMagazineHelper;FFILandroid/view/ViewRootImpl;)V

    invoke-virtual {v8, v3}, Landroid/view/ViewRootImpl;->registerRtFrameCallback(Landroid/graphics/HardwareRenderer$FrameDrawingCallback;)V

    :cond_5
    :goto_3
    return v2

    :cond_6
    move v5, p1

    invoke-virtual {p0}, Lcom/android/keyguard/negative/KeyguardMoveLeftController;->isSupportSwipeToLaunchMagazine()Z

    move-result p1

    if-eqz p1, :cond_9

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "The moveEvent is discarded, curState = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/keyguard/negative/KeyguardMoveLeftController;->mKeyguardMagazineHelper:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/interfaces/keyguard/IKeyguardMagazine;

    check-cast p0, Lcom/android/keyguard/magazine/KeyguardMagazineHelper;

    iget-object p0, p0, Lcom/android/keyguard/magazine/KeyguardMagazineHelper;->mState:Lcom/miui/interfaces/keyguard/IKeyguardMagazine$AnimState;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyguardHorizontalMoveLeftViewContainer"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_7
    move v5, p1

    invoke-virtual {p0, v5, p2}, Lcom/android/keyguard/negative/KeyguardMoveLeftController;->onTouchDown(FF)V

    iget-boolean p0, p0, Lcom/android/keyguard/BaseKeyguardMoveController;->mTouchDownInitial:Z

    return p0

    :cond_8
    move v5, p1

    :cond_9
    invoke-super {p0, v5, p2}, Lcom/android/keyguard/BaseKeyguardMoveController;->onTouchMove(FF)Z

    return v1
.end method

.method public final supportMoveToRight()Z
    .registers 3

    iget-object v0, p0, Lcom/android/keyguard/negative/KeyguardMoveLeftController;->mSuperSaveModeControllerImpl:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/systemui/controller/SuperSaveModeControllerImpl;

    iget-boolean v0, v0, Lcom/miui/systemui/controller/SuperSaveModeControllerImpl;->isActive:Z

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/negative/KeyguardMoveLeftController;->mKeyguardNegative1PageInjector:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/injector/KeyguardNegative1PageInjector;

    iget-object v0, v0, Lcom/android/keyguard/injector/KeyguardNegative1PageInjector;->mKeyguardLeftView:Lcom/android/keyguard/widget/MiuiKeyguardMoveLeftViewContainer;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/keyguard/widget/MiuiKeyguardMoveLeftViewContainer;->mKeyguardMoveLeftView:Lcom/android/keyguard/widget/MiuiKeyguardMoveLeftBaseView;

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/keyguard/widget/MiuiKeyguardMoveLeftBaseView;->isSupportRightMove()Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_3

    const/4 v0, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/negative/KeyguardMoveLeftController;->mLockScreenMagazineController:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/magazine/LockScreenMagazineController;

    iget-boolean v0, v0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsSupportLockScreenMagazineLeft:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/negative/KeyguardMoveLeftController;->mLockScreenMagazineController:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/magazine/LockScreenMagazineController;

    iget-boolean v0, v0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsLockScreenMagazinePkgExist:Z

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/android/keyguard/negative/KeyguardMoveLeftController;->mKeyguardCommonSettingsRepositoryLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/keyguard/data/repository/KeyguardCommonSettingsRepository;

    iget-object p0, p0, Lcom/miui/keyguard/data/repository/KeyguardCommonSettingsRepository;->negativeKeyguardState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p0, p0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast p0, Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    return v1
.end method

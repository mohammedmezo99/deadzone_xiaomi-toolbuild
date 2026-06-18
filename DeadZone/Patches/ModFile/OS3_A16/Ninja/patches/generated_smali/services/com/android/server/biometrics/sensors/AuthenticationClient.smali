.class public abstract Lcom/android/server/biometrics/sensors/AuthenticationClient;
.super Lcom/android/server/biometrics/sensors/AcquisitionClient;

# interfaces
.implements Lcom/android/server/biometrics/sensors/AuthenticationConsumer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/sensors/AuthenticationClient$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "O::",
        "Landroid/hardware/biometrics/AuthenticateOptions;",
        ">",
        "Lcom/android/server/biometrics/sensors/AcquisitionClient<",
        "TT;>;",
        "Lcom/android/server/biometrics/sensors/AuthenticationConsumer;"
    }
.end annotation


# static fields
.field public static final STATE_NEW:I = 0x0

.field public static final STATE_STARTED:I = 0x1

.field public static final STATE_STARTED_PAUSED:I = 0x2

.field public static final STATE_STARTED_PAUSED_ATTEMPTED:I = 0x3

.field public static final STATE_STOPPED:I = 0x4

.field private static final TAG:Ljava/lang/String; = "Biometrics/AuthenticationClient"


# instance fields
.field private final mActivityTaskManager:Landroid/app/ActivityTaskManager;

.field private final mAllowBackgroundAuthentication:Z

.field private mAuthAttempted:Z

.field private mAuthSuccess:Z

.field private final mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

.field private final mIsRestricted:Z

.field private final mIsStrongBiometric:Z

.field private final mLockoutTracker:Lcom/android/server/biometrics/sensors/LockoutTracker;

.field protected final mOperationId:J

.field private final mOptions:Landroid/hardware/biometrics/AuthenticateOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TO;"
        }
    .end annotation
.end field

.field private final mRequireConfirmation:Z

.field private final mSensorStrength:I

.field private final mShouldUseLockoutTracker:Z

.field private mStartTimeMs:J

.field protected mState:I

.field private final mTaskStackListener:Landroid/app/TaskStackListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;JZLandroid/hardware/biometrics/AuthenticateOptions;IZLcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;ZLandroid/app/TaskStackListener;Lcom/android/server/biometrics/sensors/LockoutTracker;ZZI)V
    .registers 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Supplier<",
            "TT;>;",
            "Landroid/os/IBinder;",
            "Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;",
            "JZTO;IZ",
            "Lcom/android/server/biometrics/log/BiometricLogger;",
            "Lcom/android/server/biometrics/log/BiometricContext;",
            "Z",
            "Landroid/app/TaskStackListener;",
            "Lcom/android/server/biometrics/sensors/LockoutTracker;",
            "ZZI)V"
        }
    .end annotation

    move-object/from16 v0, p15

    invoke-interface/range {p8 .. p8}, Landroid/hardware/biometrics/AuthenticateOptions;->getUserId()I

    move-result v6

    invoke-interface/range {p8 .. p8}, Landroid/hardware/biometrics/AuthenticateOptions;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface/range {p8 .. p8}, Landroid/hardware/biometrics/AuthenticateOptions;->getSensorId()I

    move-result v9

    invoke-interface/range {p8 .. p8}, Landroid/hardware/biometrics/AuthenticateOptions;->isMandatoryBiometrics()Z

    move-result v13

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v8, p9

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move/from16 v10, p17

    invoke-direct/range {v1 .. v13}, Lcom/android/server/biometrics/sensors/AcquisitionClient;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;IIZLcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Z)V

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mState:I

    iput-boolean v3, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mAuthSuccess:Z

    move/from16 v4, p13

    iput-boolean v4, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mIsStrongBiometric:Z

    move-wide/from16 v5, p5

    iput-wide v5, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mOperationId:J

    move/from16 v7, p10

    iput-boolean v7, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mRequireConfirmation:Z

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getActivityTaskManager()Landroid/app/ActivityTaskManager;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    const-class v8, Landroid/hardware/biometrics/BiometricManager;

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/biometrics/BiometricManager;

    iput-object v8, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

    move-object/from16 v8, p14

    iput-object v8, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mTaskStackListener:Landroid/app/TaskStackListener;

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mLockoutTracker:Lcom/android/server/biometrics/sensors/LockoutTracker;

    move/from16 v9, p7

    iput-boolean v9, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mIsRestricted:Z

    move/from16 v10, p16

    iput-boolean v10, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mAllowBackgroundAuthentication:Z

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    :cond_0
    iput-boolean v3, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mShouldUseLockoutTracker:Z

    move/from16 v3, p18

    iput v3, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mSensorStrength:I

    move-object/from16 v11, p8

    iput-object v11, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mOptions:Landroid/hardware/biometrics/AuthenticateOptions;

    return-void
.end method

.method private isSettings()Z
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->isSettings(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private sendCancelOnly(Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;)V
    .registers 7

    const-string v0, "Biometrics/AuthenticationClient"

    if-nez p1, :cond_0

    const-string v1, "Unable to sendAuthenticationCanceled, listener null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getSensorId()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getCookie()I

    move-result v2

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onError(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Remote exception"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isBiometricPrompt()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->binderDiedInternal(Z)V

    return-void
.end method

.method public cancel()V
    .registers 3

    invoke-super {p0}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->cancel()V

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mTaskStackListener:Landroid/app/TaskStackListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mTaskStackListener:Landroid/app/TaskStackListener;

    invoke-virtual {v0, v1}, Landroid/app/ActivityTaskManager;->unregisterTaskStackListener(Landroid/app/TaskStackListener;)V

    :cond_0
    return-void
.end method

.method protected getActivityTaskManager()Landroid/app/ActivityTaskManager;
    .registers 2

    goto :goto_1

    nop

    :goto_0
    return-object v0

    :goto_1
    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    move-result-object v0

    goto :goto_0

    nop
.end method

.method protected getLockoutTracker()Lcom/android/server/biometrics/sensors/LockoutTracker;
    .registers 2

    goto :goto_0

    nop

    :goto_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mLockoutTracker:Lcom/android/server/biometrics/sensors/LockoutTracker;

    goto :goto_1

    nop

    :goto_1
    return-object v0
.end method

.method public getOperationId()J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mOperationId:J

    return-wide v0
.end method

.method protected getOptions()Landroid/hardware/biometrics/AuthenticateOptions;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;"
        }
    .end annotation

    goto :goto_0

    nop

    :goto_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mOptions:Landroid/hardware/biometrics/AuthenticateOptions;

    goto :goto_1

    nop

    :goto_1
    return-object v0
.end method

.method public getProtoEnum()I
    .registers 2

    const/4 v0, 0x3

    return v0
.end method

.method protected getRequestReason()I
    .registers 2

    goto :goto_10

    nop

    :goto_0
    if-nez v0, :cond_0

    goto :goto_6

    :cond_0
    goto :goto_2

    nop

    :goto_1
    const/4 v0, 0x3

    goto :goto_c

    nop

    :goto_2
    const/4 v0, 0x6

    goto :goto_5

    nop

    :goto_3
    const/4 v0, 0x4

    goto :goto_a

    nop

    :goto_4
    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isSettings()Z

    move-result v0

    goto :goto_0

    nop

    :goto_5
    return v0

    :goto_6
    goto :goto_f

    nop

    :goto_7
    if-nez v0, :cond_1

    goto :goto_d

    :cond_1
    goto :goto_1

    nop

    :goto_8
    return v0

    :goto_9
    if-nez v0, :cond_2

    goto :goto_b

    :cond_2
    goto :goto_3

    nop

    :goto_a
    return v0

    :goto_b
    goto :goto_e

    nop

    :goto_c
    return v0

    :goto_d
    goto :goto_4

    nop

    :goto_e
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isBiometricPrompt()Z

    move-result v0

    goto :goto_7

    nop

    :goto_f
    const/4 v0, 0x5

    goto :goto_8

    nop

    :goto_10
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isKeyguard()Z

    move-result v0

    goto :goto_9

    nop
.end method

.method protected getSensorStrength()I
    .registers 2

    goto :goto_0

    nop

    :goto_0
    iget v0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mSensorStrength:I

    goto :goto_1

    nop

    :goto_1
    return v0
.end method

.method protected getStartTimeMs()J
    .registers 3

    goto :goto_0

    nop

    :goto_0
    iget-wide v0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mStartTimeMs:J

    goto :goto_1

    nop

    :goto_1
    return-wide v0
.end method

.method public getState()I
    .registers 2

    iget v0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mState:I

    return v0
.end method

.method public handleFailedAttempt(I)I
    .registers 5

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mLockoutTracker:Lcom/android/server/biometrics/sensors/LockoutTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mLockoutTracker:Lcom/android/server/biometrics/sensors/LockoutTracker;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getTargetUserId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/server/biometrics/sensors/LockoutTracker;->addFailedAttemptForUser(I)V

    :cond_0
    nop

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getLockoutTracker()Lcom/android/server/biometrics/sensors/LockoutTracker;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/biometrics/sensors/LockoutTracker;->getLockoutModeForUser(I)I

    move-result v0

    nop

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getSensorId()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getInstanceForSensorId(I)Lcom/android/server/biometrics/sensors/PerformanceTracker;

    move-result-object v1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    invoke-virtual {v1, p1}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->incrementPermanentLockoutForUser(I)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    invoke-virtual {v1, p1}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->incrementTimedLockoutForUser(I)V

    :cond_2
    :goto_0
    return v0
.end method

.method protected abstract handleLifecycleAfterAuth(Z)V
.end method

.method public interruptsPrecedingClients()Z
    .registers 2

    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceStub;->getInstance()Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceStub;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceStub;->isFingerprintClient(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceStub;->getInstance()Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceStub;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceStub;->interruptsPrecedingClients(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected isCryptoOperation()Z
    .registers 5

    goto :goto_9

    nop

    :goto_0
    if-nez v0, :cond_0

    goto :goto_4

    :cond_0
    goto :goto_6

    nop

    :goto_1
    const/4 v0, 0x0

    :goto_2
    goto :goto_5

    nop

    :goto_3
    goto :goto_2

    :goto_4
    goto :goto_1

    nop

    :goto_5
    return v0

    :goto_6
    const/4 v0, 0x1

    goto :goto_3

    nop

    :goto_7
    const-wide/16 v2, 0x0

    goto :goto_8

    nop

    :goto_8
    cmp-long v0, v0, v2

    goto :goto_0

    nop

    :goto_9
    iget-wide v0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mOperationId:J

    goto :goto_7

    nop
.end method

.method public isKeyguard()Z
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/biometrics/Utils;->isKeyguard(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isRestricted()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mIsRestricted:Z

    return v0
.end method

.method public onAcquired(II)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->onAcquired(II)V

    return-void
.end method

.method public onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)V
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;",
            "Z",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getLogger()Lcom/android/server/biometrics/log/BiometricLogger;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getOperationContext()Lcom/android/server/biometrics/log/OperationContextExt;

    move-result-object v4

    iget-boolean v6, v1, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mRequireConfirmation:Z

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getTargetUserId()I

    move-result v7

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isBiometricPrompt()Z

    move-result v8

    move/from16 v5, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/biometrics/log/BiometricLogger;->logOnAuthenticated(Landroid/content/Context;Lcom/android/server/biometrics/log/OperationContextExt;ZZIZ)V

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAuthenticated("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "), ID:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", Owner: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", isBP: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isBiometricPrompt()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", listener: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", requireConfirmation: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v3, v1, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mRequireConfirmation:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", user: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getTargetUserId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", clientMonitor: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v8, "Biometrics/AuthenticationClient"

    invoke-static {v8, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getSensorId()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->getInstanceForSensorId(I)Lcom/android/server/biometrics/sensors/PerformanceTracker;

    move-result-object v9

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isCryptoOperation()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getTargetUserId()I

    move-result v0

    invoke-virtual {v9, v0, v5}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->incrementCryptoAuthForUser(IZ)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getTargetUserId()I

    move-result v0

    invoke-virtual {v9, v0, v5}, Lcom/android/server/biometrics/sensors/PerformanceTracker;->incrementAuthForUser(IZ)V

    :goto_0
    iget-boolean v0, v1, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mAllowBackgroundAuthentication:Z

    if-eqz v0, :cond_1

    const-string v0, "Allowing background authentication, this is allowed only for platform or test invocations"

    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    iget-boolean v3, v1, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mAllowBackgroundAuthentication:Z

    if-nez v3, :cond_2

    if-eqz v5, :cond_2

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/biometrics/Utils;->isKeyguard(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/biometrics/Utils;->isSystem(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/biometrics/Utils;->isBackground(Ljava/lang/String;)Z

    move-result v0

    move v10, v0

    goto :goto_1

    :cond_2
    move v10, v0

    :goto_1
    const/4 v0, -0x1

    const-string v3, "159249069"

    const v4, 0x534e4554

    if-eqz v10, :cond_4

    const-string v6, "Failing possible background authentication"

    invoke-static {v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    if-eqz v6, :cond_3

    iget v7, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_2

    :cond_3
    move v7, v0

    :goto_2
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v11, "Attempted background authentication"

    filled-new-array {v3, v7, v11}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    move v11, v5

    goto :goto_3

    :cond_4
    move v11, v5

    :goto_3
    const-string v12, "Unable to notify listener"

    const/4 v13, 0x0

    if-eqz v11, :cond_f

    if-eqz v10, :cond_6

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    if-eqz v5, :cond_5

    iget v0, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    :cond_5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v6, "Successful background authentication!"

    filled-new-array {v3, v0, v6}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mAuthSuccess:Z

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->markAlreadyDone()V

    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceStub;->getInstance()Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceStub;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceStub;->isFingerprintClient(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, v1, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v3, v0}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onBiometricAction(I)V

    :cond_7
    iget-object v0, v1, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mTaskStackListener:Landroid/app/TaskStackListener;

    if-eqz v0, :cond_9

    if-eqz p2, :cond_8

    const-string v6, "vibrate_mezo_on"

    invoke-static {v6}, Landroid/preference/SettingsMezoHelper;->getIntofSettings(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->vibrateSuccess()V

    :cond_8
    iget-object v0, v1, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    iget-object v3, v1, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mTaskStackListener:Landroid/app/TaskStackListener;

    invoke-virtual {v0, v3}, Landroid/app/ActivityTaskManager;->unregisterTaskStackListener(Landroid/app/TaskStackListener;)V

    :cond_9
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v5, v0, [B

    const/4 v0, 0x0

    :goto_4
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_a

    move-object/from16 v3, p3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    aput-byte v4, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_a
    move-object/from16 v3, p3

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->isBiometricPrompt()Z

    move-result v0

    if-nez v0, :cond_d

    iget-boolean v0, v1, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mIsStrongBiometric:Z

    if-eqz v0, :cond_b

    iget-object v14, v1, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getToken()Landroid/os/IBinder;

    move-result-object v15

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getSensorId()I

    move-result v17

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getTargetUserId()I

    move-result v18

    move-object/from16 v19, v5

    invoke-virtual/range {v14 .. v19}, Landroid/hardware/biometrics/BiometricManager;->resetLockoutTimeBound(Landroid/os/IBinder;Ljava/lang/String;II[B)V

    :cond_b
    invoke-static {}, Landroid/security/KeyStoreAuthorization;->getInstance()Landroid/security/KeyStoreAuthorization;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/security/KeyStoreAuthorization;->addAuthToken([B)I

    move-result v0

    if-eqz v0, :cond_c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error adding auth token : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_c
    const-string v4, "addAuthToken succeeded"

    invoke-static {v8, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    goto :goto_6

    :cond_d
    const-string v0, "Skipping addAuthToken"

    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    :try_start_0
    iget-boolean v0, v1, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mIsRestricted:Z

    if-nez v0, :cond_e

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getSensorId()I

    move-result v3

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getTargetUserId()I

    move-result v6

    iget-boolean v7, v1, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mIsStrongBiometric:Z

    move-object/from16 v4, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onAuthenticationSucceeded(ILandroid/hardware/biometrics/BiometricAuthenticator$Identifier;[BIZ)V

    goto :goto_7

    :cond_e
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getSensorId()I

    move-result v3

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getTargetUserId()I

    move-result v6

    iget-boolean v7, v1, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mIsStrongBiometric:Z

    const/4 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onAuthenticationSucceeded(ILandroid/hardware/biometrics/BiometricAuthenticator$Identifier;[BIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_7
    nop

    goto :goto_9

    :catch_0
    move-exception v0

    invoke-static {v8, v12, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v3, v1, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v3, v1, v13}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    return-void

    :cond_f
    if-eqz v10, :cond_11

    const-string v0, "Sending cancel to client(Due to background auth)"

    invoke-static {v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mTaskStackListener:Landroid/app/TaskStackListener;

    if-eqz v0, :cond_10

    iget-object v0, v1, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    iget-object v3, v1, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mTaskStackListener:Landroid/app/TaskStackListener;

    invoke-virtual {v0, v3}, Landroid/app/ActivityTaskManager;->unregisterTaskStackListener(Landroid/app/TaskStackListener;)V

    :cond_10
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getListener()Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->sendCancelOnly(Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;)V

    iget-object v0, v1, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v0, v1, v13}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    goto :goto_9

    :cond_11
    iget-boolean v0, v1, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mShouldUseLockoutTracker:Z

    if-eqz v0, :cond_12

    nop

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getTargetUserId()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->handleFailedAttempt(I)I

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->markAlreadyDone()V

    :cond_12
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceStub;->getInstance()Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceStub;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceStub;->isFingerprintClient(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, v1, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onBiometricAction(I)V

    :cond_13
    if-eqz v2, :cond_14

    :try_start_1
    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getSensorId()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;->onAuthenticationFailed(I)V

    goto :goto_8

    :catch_1
    move-exception v0

    goto :goto_a

    :cond_14
    const-string v0, "Received failed auth, but client was not listening"

    invoke-static {v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_8
    nop

    :goto_9
    invoke-virtual {v1, v11}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->handleLifecycleAfterAuth(Z)V

    return-void

    :goto_a
    invoke-static {v8, v12, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v3, v1, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {v3, v1, v13}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    return-void
.end method

.method public onError(II)V
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->onError(II)V

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mState:I

    return-void
.end method

.method public start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .registers 7

    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/AcquisitionClient;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mShouldUseLockoutTracker:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mLockoutTracker:Lcom/android/server/biometrics/sensors/LockoutTracker;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getTargetUserId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/server/biometrics/sensors/LockoutTracker;->getLockoutModeForUser(I)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getBiometricContext()Lcom/android/server/biometrics/log/BiometricContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/biometrics/log/BiometricContext;->getAuthSessionCoordinator()Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getTargetUserId()I

    move-result v1

    iget v2, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mSensorStrength:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/biometrics/sensors/AuthSessionCoordinator;->getLockoutStateFor(II)I

    move-result v0

    :goto_0
    const/4 v1, 0x1

    const-string v2, "Biometrics/AuthenticationClient"

    if-eqz v0, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In lockout mode("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") ; disallowing authentication"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v0, v1, :cond_1

    const/4 v1, 0x7

    goto :goto_1

    :cond_1
    const/16 v1, 0x9

    :goto_1
    nop

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->onError(II)V

    return-void

    :cond_2
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mTaskStackListener:Landroid/app/TaskStackListener;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    iget-object v4, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mTaskStackListener:Landroid/app/TaskStackListener;

    invoke-virtual {v3, v4}, Landroid/app/ActivityTaskManager;->registerTaskStackListener(Landroid/app/TaskStackListener;)V

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requesting auth for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mStartTimeMs:J

    iput-boolean v1, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mAuthAttempted:Z

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/AuthenticationClient;->startHalOperation()V

    return-void
.end method

.method public wasAuthAttempted()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mAuthAttempted:Z

    return v0
.end method

.method public wasAuthSuccessful()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/AuthenticationClient;->mAuthSuccess:Z

    return v0
.end method

.method public abstract wasUserDetected()Z
.end method

.class public final Lcom/android/keyguard/magazine/LockScreenMagazineController;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/miui/interfaces/IPanelExpansionObserver$NotificationPanelExpansionListener;


# instance fields
.field public final lockScreenMagazineCloseCallback:Lcom/android/keyguard/magazine/LockScreenMagazineController$2;

.field public mBarState:I

.field public final mBroadcastReceiver:Lcom/android/keyguard/magazine/LockScreenMagazineController$3;

.field public final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final mContext:Landroid/content/Context;

.field public mCurrentTouchDownTime:J

.field public mFullScreenAnimator:Landroid/animation/ValueAnimator;

.field public mFullScreenRemoteView:Landroid/widget/RemoteViews;

.field public mGXZWIconCenterX:I

.field public mGXZWIconCenterY:I

.field public final mHandler:Lcom/android/keyguard/magazine/LockScreenMagazineController$1;

.field public mHasAttachedToWindow:Z

.field public mInitPreResElapsedRealtime:J

.field public mInitialTouchX:F

.field public mInitialTouchY:F

.field public mIsCompleteInitiation:Z

.field public mIsDefaultLockscreenTheme:Z

.field public mIsDeviceProvisioned:Z

.field public mIsDisableMagazineByGlobalCarousel:Z

.field public final mIsForceDisableMagazine:Z

.field public mIsInit:Z

.field public mIsJumpingIntent:Z

.field public mIsKeyguardSupportDisplayMagazine:Z

.field public mIsLockScreenMagazinePkgExist:Z

.field public mIsSupportLockScreenMagazineLeft:Z

.field public mIsSupportLockScreenMagazineLeftOverlay:Z

.field public mIsSwitchAnimating:Z

.field public mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

.field public final mKeyguardCommonSettingObserver:Lcom/miui/keyguard/KeyguardCommonSettingObserver;

.field public mKeyguardShowing:Z

.field public final mKeyguardStat:Lcom/miui/keyguard/analytics/KeyguardStat;

.field public final mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public mLockScreenLeftOverlayAvailable:Z

.field public mLockScreenMagazinePre:Lcom/android/keyguard/magazine/LockScreenMagazinePreView;

.field public mLockScreenMagazinePreViewVisible:Z

.field public mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

.field public mLongPressTimeout:I

.field public mMainRemoteView:Landroid/widget/RemoteViews;

.field public final mMiuiKeyguardUpdateMonitorCallback:Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;

.field public final mMiuiKeyguardWallPaperManager:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

.field public mNonFullScreenAnimator:Landroid/animation/ValueAnimator;

.field public final mPanelExpansionObserver:Lcom/miui/systemui/functions/PanelExpansionObserver;

.field public mPreLeftScreenActivityName:Ljava/lang/String;

.field public mPreLeftScreenDrawableResName:Ljava/lang/String;

.field public mPreMainEntryDarkIcon:Landroid/graphics/drawable/Drawable;

.field public mPreMainEntryLightIcon:Landroid/graphics/drawable/Drawable;

.field public mPreSettingsDeeplink:Ljava/lang/String;

.field public mPreTransToLeftScreenDrawableResName:Ljava/lang/String;

.field public final mPreViewClickListener:Lcom/android/keyguard/magazine/LockScreenMagazineController$6;

.field public mPreViewShowing:Z

.field public mQsExpanded:Z

.field public final mResetClockRunnable:Lcom/android/keyguard/magazine/LockScreenMagazineController$8;

.field public mScaledTouchSlop:I

.field public mScreenHeight:F

.field public mScreenWidth:F

.field public final mShortcutController:Lcom/miui/interfaces/keyguard/IMiuiShortcutController;

.field public mStartedWakingUp:Z

.field public final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public final mSupportGestureWakeup:Z

.field public mSwitchAnimator:Landroid/animation/AnimatorSet;

.field public mUninvalidBottomAreaHeight:I

.field public mUninvalidGXZWAreaRadius:I

.field public mUninvalidStartEndAreaWidth:I

.field public mUninvalidTopAreaHeight:I

.field public mUnlockWithFingerprintPossible:Z

.field public final mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mUpdateMonitorInjector:Lcom/android/keyguard/stub/MiuiKeyguardUpdateMonitorInjectorStub;


# direct methods
.method public static -$$Nest$mcheckLeftScreenActivityExist(Lcom/android/keyguard/magazine/LockScreenMagazineController;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_2

    :try_start_0
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    aget-object v1, p1, v2

    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    new-instance v0, Landroid/content/ComponentName;

    sget-object v2, Lcom/android/keyguard/magazine/utils/LockScreenMagazineUtils;->LOCK_SCREEN_MAGAZINE_PACKAGE_NAME:Ljava/lang/String;

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/miui/systemui/util/CommonUtil;->resolveIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    return-object v1

    :catch_0
    move-exception p0

    const-string p1, "LockScreenMagazineController"

    const-string v0, "handlePreLeftScreenActivityName failed"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 p0, 0x0

    return-object p0

    :cond_2
    return-object v1
.end method

.method public static -$$Nest$mqueryLockScreenMagazineWallpaperInfo(Lcom/android/keyguard/magazine/LockScreenMagazineController;)V
    .registers 6

    const-string v0, "LockScreenMagazineController"

    iget-boolean v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsKeyguardSupportDisplayMagazine:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mMiuiKeyguardWallPaperManager:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    invoke-virtual {v1}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->isMagazineWallpaper()Z

    move-result v1

    if-eqz v1, :cond_3

    :try_start_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    iget-object v2, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mMiuiKeyguardWallPaperManager:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    iget-object v3, v2, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mMiuiWallpaperManager:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    if-nez v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, v2, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mMiuiWallpaperManager:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    invoke-virtual {v2}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->isServiceReady()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    invoke-static {v3}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->isSingleWhich(I)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_1

    :try_start_1
    iget-object v2, v2, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mService:Lcom/miui/miwallpaper/IMiuiWallpaperManagerService;

    check-cast v2, Lcom/miui/miwallpaper/IMiuiWallpaperManagerService$Stub$Proxy;

    invoke-virtual {v2}, Lcom/miui/miwallpaper/IMiuiWallpaperManagerService$Stub$Proxy;->getGalleryJson()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_2
    const-string v3, "MiuiWallpaperManager"

    const-string v4, "getMiuiWallpaperPath fail : "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const-string v2, ""

    :goto_0
    const-class v3, Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    invoke-virtual {v1, v3, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    iput-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getLockScreenMagazineWallpaperInfo fromJson error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v0}, Lcom/android/keyguard/WallpaperProvider$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    iget-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    if-nez v1, :cond_2

    new-instance v1, Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    invoke-direct {v1}, Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "queryLockScreenMagazineWallpaperInfo mLockScreenMagazineWallpaperInfo="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    invoke-virtual {v0}, Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;->initExtra()V

    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazineController;->updateLockScreenMagazineWallpaperInfo()V

    :cond_3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/miui/keyguard/analytics/KeyguardStat;Ldagger/Lazy;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsInit:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mInitPreResElapsedRealtime:J

    new-instance v1, Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    invoke-direct {v1}, Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    const-class v1, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    invoke-static {v1}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    iput-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mMiuiKeyguardWallPaperManager:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    new-instance v1, Lcom/android/keyguard/magazine/LockScreenMagazineController$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/magazine/LockScreenMagazineController$1;-><init>(Lcom/android/keyguard/magazine/LockScreenMagazineController;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mHandler:Lcom/android/keyguard/magazine/LockScreenMagazineController$1;

    new-instance v1, Lcom/android/keyguard/magazine/LockScreenMagazineController$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/magazine/LockScreenMagazineController$2;-><init>(Lcom/android/keyguard/magazine/LockScreenMagazineController;)V

    iput-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->lockScreenMagazineCloseCallback:Lcom/android/keyguard/magazine/LockScreenMagazineController$2;

    new-instance v1, Lcom/android/keyguard/magazine/LockScreenMagazineController$3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/magazine/LockScreenMagazineController$3;-><init>(Lcom/android/keyguard/magazine/LockScreenMagazineController;)V

    iput-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mBroadcastReceiver:Lcom/android/keyguard/magazine/LockScreenMagazineController$3;

    new-instance v1, Lcom/android/keyguard/magazine/LockScreenMagazineController$4;

    invoke-direct {v1, p0}, Lcom/android/keyguard/magazine/LockScreenMagazineController$4;-><init>(Lcom/android/keyguard/magazine/LockScreenMagazineController;)V

    iput-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v1, Lcom/android/keyguard/magazine/LockScreenMagazineController$5;

    invoke-direct {v1, p0}, Lcom/android/keyguard/magazine/LockScreenMagazineController$5;-><init>(Lcom/android/keyguard/magazine/LockScreenMagazineController;)V

    iput-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mMiuiKeyguardUpdateMonitorCallback:Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;

    new-instance v1, Lcom/android/keyguard/magazine/LockScreenMagazineController$6;

    invoke-direct {v1, p0}, Lcom/android/keyguard/magazine/LockScreenMagazineController$6;-><init>(Lcom/android/keyguard/magazine/LockScreenMagazineController;)V

    iput-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mPreViewClickListener:Lcom/android/keyguard/magazine/LockScreenMagazineController$6;

    new-instance v1, Lcom/android/keyguard/magazine/LockScreenMagazineController$8;

    invoke-direct {v1, p0}, Lcom/android/keyguard/magazine/LockScreenMagazineController$8;-><init>(Lcom/android/keyguard/magazine/LockScreenMagazineController;)V

    iput-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mResetClockRunnable:Lcom/android/keyguard/magazine/LockScreenMagazineController$8;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsLockScreenMagazinePkgExist:Z

    iput-boolean v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mLockScreenMagazinePreViewVisible:Z

    iput-boolean v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsJumpingIntent:Z

    iput-object p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iput-object p3, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p4, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iput-object p5, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mKeyguardStat:Lcom/miui/keyguard/analytics/KeyguardStat;

    invoke-interface {p6}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/interfaces/keyguard/IMiuiShortcutController;

    iput-object p2, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mShortcutController:Lcom/miui/interfaces/keyguard/IMiuiShortcutController;

    const-class p2, Lcom/miui/keyguard/KeyguardCommonSettingObserver;

    invoke-static {p2}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/keyguard/KeyguardCommonSettingObserver;

    iput-object p2, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mKeyguardCommonSettingObserver:Lcom/miui/keyguard/KeyguardCommonSettingObserver;

    const-class p2, Lcom/android/keyguard/stub/MiuiKeyguardUpdateMonitorInjectorStub;

    invoke-static {p2}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/keyguard/stub/MiuiKeyguardUpdateMonitorInjectorStub;

    iput-object p2, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mUpdateMonitorInjector:Lcom/android/keyguard/stub/MiuiKeyguardUpdateMonitorInjectorStub;

    sget-boolean p2, Lcom/miui/utils/configs/MiuiConfigs;->SUPPORT_GESTURE_WAKEUP:Z

    iput-boolean p2, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mSupportGestureWakeup:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p4, 0x7f05001d

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsForceDisableMagazine:Z

    const-class p2, Lcom/miui/systemui/functions/PanelExpansionObserver;

    invoke-static {p2}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/systemui/functions/PanelExpansionObserver;

    iput-object p2, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mPanelExpansionObserver:Lcom/miui/systemui/functions/PanelExpansionObserver;

    iget-boolean p2, p3, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    iput-boolean p2, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsDeviceProvisioned:Z

    invoke-static {}, Lcom/miui/systemui/util/CommonUtil;->isDefaultLockScreenTheme()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsDefaultLockscreenTheme:Z

    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazineController;->updateKeyguardSupportDisplayMagazineState()V

    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazineController;->initLockScreenMagazinePreRes()V

    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazineController;->initAntiMistakeOperation()V

    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazineController;->init$5()V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "lock_wallpaper_provider_authority"

    invoke-static {p0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "com.miui.android.fashiongallery.lockscreen_magazine_provider"

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final cancelSwitchAnimate()V
    .registers 3

    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mSwitchAnimator:Landroid/animation/AnimatorSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mSwitchAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    iput-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mSwitchAnimator:Landroid/animation/AnimatorSet;

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mFullScreenAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mFullScreenAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iput-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mFullScreenAnimator:Landroid/animation/ValueAnimator;

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mNonFullScreenAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mNonFullScreenAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iput-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mNonFullScreenAnimator:Landroid/animation/ValueAnimator;

    :cond_2
    return-void
.end method

.method public final getPreLeftScreenIntent()Landroid/content/Intent;
    .registers 6

    iget-boolean v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsSupportLockScreenMagazineLeft:Z

    const-string v1, "LockScreenMagazineController"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "isSupportLockScreenMagazineLeft is false, return null"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mPreLeftScreenActivityName:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v3, Landroid/content/ComponentName;

    sget-object v4, Lcom/android/keyguard/magazine/utils/LockScreenMagazineUtils;->LOCK_SCREEN_MAGAZINE_PACKAGE_NAME:Ljava/lang/String;

    invoke-direct {v3, v4, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p0, "from"

    const-string v3, "keyguard"

    invoke-virtual {v0, p0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "entry_source"

    const-string v3, "swipe"

    invoke-virtual {v0, p0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    const-string v0, "catch exception in getPreLeftScreenIntent"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-object v2
.end method

.method public final handleSingleClickEvent()Z
    .registers 7

    iget-boolean v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsKeyguardSupportDisplayMagazine:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    const-class v0, Lcom/miui/interfaces/keyguard/IKeyguardPanelViewInjector;

    invoke-static {v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/interfaces/keyguard/IKeyguardPanelViewInjector;

    check-cast v0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    iget-object v2, v0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->keyguardMoveHelper:Lcom/android/keyguard/panel/KeyguardMoveHelper;

    if-eqz v2, :cond_1

    iget-boolean v3, v2, Lcom/android/keyguard/panel/KeyguardMoveHelper;->mSwipingInProgress:Z

    if-nez v3, :cond_0

    iget-boolean v2, v2, Lcom/android/keyguard/panel/KeyguardMoveHelper;->mIsShortcutMoving:Z

    if-eqz v2, :cond_1

    :cond_0
    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->isInLeftView()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    invoke-virtual {v0}, Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;->isDataEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mMiuiKeyguardWallPaperManager:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    invoke-virtual {v0}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->isMagazineWallpaper()Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mSwitchAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mSwitchAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsSwitchAnimating:Z

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    iget-boolean v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mPreViewShowing:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    invoke-virtual {p0, v1}, Lcom/android/keyguard/magazine/LockScreenMagazineController;->startSwitchAnimator(Z)V

    return v2

    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/keyguard/magazine/LockScreenMagazineController;->startSwitchAnimator(Z)V

    invoke-static {}, Lcom/android/keyguard/analytics/AnalyticsHelper;->getInstance()Lcom/android/keyguard/analytics/AnalyticsHelper;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "action"

    const-string v5, "show"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "lock_screen_magazine_action"

    invoke-virtual {v0, v4, v3}, Lcom/android/keyguard/analytics/AnalyticsHelper;->track(Ljava/lang/String;Ljava/util/HashMap;)V

    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/keyguard/magazine/utils/LockScreenMagazineUtils;->isGlobalNeedFeature()Z

    move-result v0

    if-nez v0, :cond_6

    return v2

    :cond_6
    new-instance v0, Lcom/android/keyguard/magazine/utils/LockScreenMagazineUtils$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/magazine/utils/LockScreenMagazineUtils$1;-><init>(Landroid/content/Context;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return v2

    :cond_7
    invoke-static {}, Lcom/android/keyguard/analytics/AnalyticsHelper;->getInstance()Lcom/android/keyguard/analytics/AnalyticsHelper;

    move-result-object p0

    const-string v0, "action_main_screen_click"

    invoke-virtual {p0, v0}, Lcom/android/keyguard/analytics/AnalyticsHelper;->record(Ljava/lang/String;)V

    :cond_8
    :goto_1
    return v1
.end method

.method public final init$5()V
    .registers 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mBroadcastReceiver:Lcom/android/keyguard/magazine/LockScreenMagazineController$3;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mMiuiKeyguardUpdateMonitorCallback:Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;

    iget-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mUpdateMonitorInjector:Lcom/android/keyguard/stub/MiuiKeyguardUpdateMonitorInjectorStub;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/stub/MiuiKeyguardUpdateMonitorInjectorStub;->registerCallback(Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mPanelExpansionObserver:Lcom/miui/systemui/functions/PanelExpansionObserver;

    invoke-virtual {v0, p0}, Lcom/miui/systemui/functions/PanelExpansionObserver;->addCallback(Lcom/miui/interfaces/IPanelExpansionObserver$NotificationPanelExpansionListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsInit:Z

    return-void
.end method

.method public final initAntiMistakeOperation()V
    .registers 4

    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mScaledTouchSlop:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mLongPressTimeout:I

    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v0, v1, Landroid/graphics/Point;->x:I

    iget v2, v1, Landroid/graphics/Point;->y:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mScreenWidth:F

    iget v0, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mScreenHeight:F

    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07082d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mUninvalidTopAreaHeight:I

    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07082a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mUninvalidBottomAreaHeight:I

    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07082c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mUninvalidStartEndAreaWidth:I

    sget-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->GXZW_SENSOR:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->getFodPosition(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mGXZWIconCenterX:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mGXZWIconCenterY:I

    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f07082b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mUninvalidGXZWAreaRadius:I

    :cond_0
    return-void
.end method

.method public final initLockScreenMagazinePreRes()V
    .registers 4

    iget-boolean v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsKeyguardSupportDisplayMagazine:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsSupportLockScreenMagazineLeft:Z

    return-void

    :cond_0
    const-string v0, "LockScreenMagazineController"

    const-string v2, "initLockScreenMagazinePreRes"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/keyguard/magazine/LockScreenMagazineController$9;

    invoke-direct {v0, p0}, Lcom/android/keyguard/magazine/LockScreenMagazineController$9;-><init>(Lcom/android/keyguard/magazine/LockScreenMagazineController;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public final isSupportLockScreenTextClick()Z
    .registers 2

    sget-boolean v0, Lcom/android/keyguard/magazine/utils/LockScreenMagazineUtils;->USE_GLOBAL_LOCK_SCREEN_MAGAZINE:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mKeyguardCommonSettingObserver:Lcom/miui/keyguard/KeyguardCommonSettingObserver;

    iget-object p0, p0, Lcom/miui/keyguard/KeyguardCommonSettingObserver;->commonSettingsRepository:Lcom/miui/keyguard/data/repository/KeyguardCommonSettingsRepository;

    iget-object p0, p0, Lcom/miui/keyguard/data/repository/KeyguardCommonSettingsRepository;->isSupportLockScreenTextClick:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p0, p0, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast p0, Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isSupportSwipeToLaunch()Z
    .registers 2

    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mPreLeftScreenActivityName:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.miui.android.fashiongallery.glance.GlanceActivity"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final onDensityOrFontScaleChanged(ZZ)V
    .registers 3

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazineController;->initAntiMistakeOperation()V

    :cond_0
    return-void
.end method

.method public final onPanelExpanded(Z)V
    .registers 2

    return-void
.end method

.method public final onQsExpanded(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mQsExpanded:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mQsExpanded:Z

    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazineController;->reset$1()V

    :cond_0
    return-void
.end method

.method public final onStateChanged(I)V
    .registers 3

    iget v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mBarState:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mBarState:I

    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazineController;->reset$1()V

    :cond_0
    return-void
.end method

.method public final reset$1()V
    .registers 8

    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazineController;->cancelSwitchAnimate()V

    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mHandler:Lcom/android/keyguard/magazine/LockScreenMagazineController$1;

    iget-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mResetClockRunnable:Lcom/android/keyguard/magazine/LockScreenMagazineController$8;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mPreViewShowing:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mPreViewShowing:Z

    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mUpdateMonitorInjector:Lcom/android/keyguard/stub/MiuiKeyguardUpdateMonitorInjectorStub;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/stub/MiuiKeyguardUpdateMonitorInjectorStub;->handleLockScreenMagazinePreViewVisibilityChanged(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mLockScreenMagazinePre:Lcom/android/keyguard/magazine/LockScreenMagazinePreView;

    if-eqz v0, :cond_3

    iget-boolean v2, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mKeyguardShowing:Z

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/high16 v5, 0x3f800000

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mBarState:I

    const/4 v6, 0x1

    if-ne v2, v6, :cond_2

    iget-boolean v2, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mQsExpanded:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsDefaultLockscreenTheme:Z

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mLockScreenMagazinePre:Lcom/android/keyguard/magazine/LockScreenMagazinePreView;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    sget-boolean v0, Lcom/android/keyguard/magazine/utils/LockScreenMagazineUtils;->USE_GLOBAL_LOCK_SCREEN_MAGAZINE:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsSupportLockScreenMagazineLeft:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->GXZW_SENSOR:Z

    if-nez v0, :cond_1

    const-class v0, Lcom/android/keyguard/stub/MiuiKeyguardUpdateMonitorStub;

    invoke-static {v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/stub/MiuiKeyguardUpdateMonitorStub;

    invoke-virtual {v0}, Lcom/android/keyguard/stub/MiuiKeyguardUpdateMonitorStub;->isPrimaryBouncerIsOrWillBeShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mLockScreenMagazinePre:Lcom/android/keyguard/magazine/LockScreenMagazinePreView;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->setMainLayoutVisible(I)V

    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mLockScreenMagazinePre:Lcom/android/keyguard/magazine/LockScreenMagazinePreView;

    invoke-virtual {v0, v5}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->setMainLayoutAlpha(F)V

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mLockScreenMagazinePre:Lcom/android/keyguard/magazine/LockScreenMagazinePreView;

    invoke-virtual {v0, v4}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->setFullScreenLayoutVisible(I)V

    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mLockScreenMagazinePre:Lcom/android/keyguard/magazine/LockScreenMagazinePreView;

    invoke-virtual {v0, v3}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->setFullScreenLayoutAlpha(F)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mLockScreenMagazinePre:Lcom/android/keyguard/magazine/LockScreenMagazinePreView;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    :goto_0
    const-class v0, Lcom/miui/interfaces/keyguard/IKeyguardPanelViewInjector;

    invoke-static {v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/interfaces/keyguard/IKeyguardPanelViewInjector;

    check-cast v0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    invoke-virtual {v0}, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->isInLeftView()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, v5}, Lcom/android/keyguard/magazine/LockScreenMagazineController;->setPanelViewAlpha(F)V

    :cond_3
    return-void
.end method

.method public final setPanelViewAlpha(F)V
    .registers 5

    const-class v0, Lcom/miui/interfaces/keyguard/IKeyguardPanelViewInjector;

    invoke-static {v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/interfaces/keyguard/IKeyguardPanelViewInjector;

    check-cast v0, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    invoke-virtual {v0}, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->getKeyguardPanelViewController()Lcom/android/keyguard/panel/KeyguardPanelViewController;

    move-result-object v0

    iget-object v1, v0, Lcom/android/keyguard/panel/KeyguardPanelViewController;->keyguardSignatureLayer:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    iget-boolean v2, v0, Lcom/android/keyguard/panel/KeyguardPanelViewController;->hasNotification:Z

    invoke-virtual {v0, v2}, Lcom/android/keyguard/panel/KeyguardPanelViewController;->isSignatureNeedHide(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    :cond_1
    iget-object v1, v0, Lcom/android/keyguard/panel/KeyguardPanelViewController;->keyguardForegroundLayer:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    :cond_2
    iget-object v1, v0, Lcom/android/keyguard/panel/KeyguardPanelViewController;->keyguardBackgroundLayer:Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    :cond_3
    iget-object v0, v0, Lcom/android/keyguard/panel/KeyguardPanelViewController;->notificationStackScrollLayoutControllerInjector:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutControllerInjectorImpl;

    iget v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutControllerInjectorImpl;->magazineAlpha:F

    cmpg-float v1, v1, p1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    iput p1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutControllerInjectorImpl;->magazineAlpha:F

    iget v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutControllerInjectorImpl;->aospAlpha:F

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutControllerInjectorImpl;->layout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setAlpha(F)V

    :goto_1
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mLockScreenMagazinePre:Lcom/android/keyguard/magazine/LockScreenMagazinePreView;

    if-eqz p0, :cond_5

    invoke-virtual {p0, p1}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->setMainLayoutAlpha(F)V

    :cond_5
    const-class p0, Lcom/android/keyguard/injector/KeyguardClockInjector;

    invoke-static {p0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/injector/KeyguardClockInjector;

    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardClockInjector;->keyguardClockView:Lcom/android/keyguard/clock/KeyguardClockContainer;

    if-eqz p0, :cond_6

    invoke-virtual {p0, p1}, Lcom/android/keyguard/clock/KeyguardClockContainer;->setMagazineAlpha(F)V

    :cond_6
    const-class p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;

    invoke-static {p0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;

    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mKeyguardBottomAreaView:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_7
    return-void
.end method

.method public final startMagazineLeftActivity()V
    .registers 4

    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazineController;->getPreLeftScreenIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "LockScreenMagazineController"

    const-string v2, "startMagazineActivity: failed "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_0
    const-string v1, "画报"

    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mKeyguardStat:Lcom/miui/keyguard/analytics/KeyguardStat;

    const-string v2, "右滑进入负一屏"

    invoke-virtual {p0, v2, v1, v0}, Lcom/miui/keyguard/analytics/KeyguardStat;->handleKeyguardActionEvent(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public final startMagazinePreviewActivity(Ljava/lang/String;)V
    .registers 9

    iget-boolean v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsJumpingIntent:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsJumpingIntent:Z

    sget-boolean v0, Lcom/android/keyguard/magazine/utils/LockScreenMagazineUtils;->USE_GLOBAL_LOCK_SCREEN_MAGAZINE:Z

    const/4 v1, 0x0

    const-string v2, "LockScreenMagazineController"

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazineController;->getPreLeftScreenIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v0, "entry_source"

    const-string v3, "cta"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, p1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "startMagazineActivity: failed "

    invoke-static {v2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "sourceFrom"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x258

    add-long/2addr v3, v5

    const-string p1, "showtime"

    invoke-virtual {v0, p1, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p1, "com.mfashiongallery.emag/com.mfashiongallery.emag.ProxyActivityToLockWallpaperPreview"

    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v3, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    invoke-virtual {v3, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mContext:Landroid/content/Context;

    invoke-static {p1, v1, v1}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    :try_start_1
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v3, p1, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    const-string v0, "start activity failed."

    invoke-static {v2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "start activity failed result:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "component:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    iput-boolean v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsJumpingIntent:Z

    return-void
.end method

.method public final startSwitchAnimator(Z)V
    .registers 11

    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mResetClockRunnable:Lcom/android/keyguard/magazine/LockScreenMagazineController$8;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    iput-boolean p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mPreViewShowing:Z

    iget-object v4, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mUpdateMonitorInjector:Lcom/android/keyguard/stub/MiuiKeyguardUpdateMonitorInjectorStub;

    invoke-virtual {v4, p1}, Lcom/android/keyguard/stub/MiuiKeyguardUpdateMonitorInjectorStub;->handleLockScreenMagazinePreViewVisibilityChanged(Z)V

    invoke-virtual {p0}, Lcom/android/keyguard/magazine/LockScreenMagazineController;->cancelSwitchAnimate()V

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mSwitchAnimator:Landroid/animation/AnimatorSet;

    const/high16 v4, 0x3f800000

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    move v6, v4

    :goto_0
    if-eqz p1, :cond_1

    move v7, v4

    goto :goto_1

    :cond_1
    move v7, v5

    :goto_1
    new-array v8, v1, [F

    aput v6, v8, v3

    aput v7, v8, v2

    invoke-static {v8}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    iput-object v6, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mFullScreenAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_2

    sget-object v7, Lcom/miui/utils/animation/Ease$Cubic;->easeInOut:Lcom/miui/utils/animation/Ease$Sine$3;

    goto :goto_2

    :cond_2
    sget-object v7, Lcom/miui/utils/animation/Ease$Quint;->easeOut:Lcom/miui/utils/animation/Ease$Sine$3;

    :goto_2
    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v6, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mFullScreenAnimator:Landroid/animation/ValueAnimator;

    new-instance v7, Lcom/android/keyguard/magazine/LockScreenMagazineController$$ExternalSyntheticLambda1;

    invoke-direct {v7, p0, v3}, Lcom/android/keyguard/magazine/LockScreenMagazineController$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/magazine/LockScreenMagazineController;I)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    if-eqz p1, :cond_3

    move v6, v4

    goto :goto_3

    :cond_3
    move v6, v5

    :goto_3
    if-eqz p1, :cond_4

    move v4, v5

    :cond_4
    new-array v1, v1, [F

    aput v6, v1, v3

    aput v4, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mNonFullScreenAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_5

    sget-object v3, Lcom/miui/utils/animation/Ease$Quint;->easeOut:Lcom/miui/utils/animation/Ease$Sine$3;

    goto :goto_4

    :cond_5
    sget-object v3, Lcom/miui/utils/animation/Ease$Cubic;->easeInOut:Lcom/miui/utils/animation/Ease$Sine$3;

    :goto_4
    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mNonFullScreenAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/keyguard/magazine/LockScreenMagazineController$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v2}, Lcom/android/keyguard/magazine/LockScreenMagazineController$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/magazine/LockScreenMagazineController;I)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mSwitchAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mSwitchAnimator:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mFullScreenAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mNonFullScreenAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mSwitchAnimator:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/android/keyguard/magazine/LockScreenMagazineController$7;

    invoke-direct {v2, p0, p1}, Lcom/android/keyguard/magazine/LockScreenMagazineController$7;-><init>(Lcom/android/keyguard/magazine/LockScreenMagazineController;Z)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mSwitchAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mHandler:Lcom/android/keyguard/magazine/LockScreenMagazineController$1;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz p1, :cond_6

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    return-void
.end method

.method public final updateKeyguardSupportDisplayMagazineState()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsDeviceProvisioned:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsForceDisableMagazine:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/miui/keyguard/utils/MiuiKeyguardUtils;->INSTANCE:Lcom/miui/keyguard/utils/MiuiKeyguardUtils;

    sget-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->IS_PAD:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/systemui/utils/UserUtils;->getCurrentUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, v0}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsDefaultLockscreenTheme:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsKeyguardSupportDisplayMagazine:Z

    return-void
.end method

.method public final updateLockScreenMagazineWallpaperInfo()V
    .registers 9

    sget-boolean v0, Lcom/android/keyguard/magazine/utils/LockScreenMagazineUtils;->USE_GLOBAL_LOCK_SCREEN_MAGAZINE:Z

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mLockScreenMagazinePre:Lcom/android/keyguard/magazine/LockScreenMagazinePreView;

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mMainRemoteView:Landroid/widget/RemoteViews;

    iget-object v3, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mFullScreenRemoteView:Landroid/widget/RemoteViews;

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    iget-object v6, v1, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mMainRemoteView:Landroid/widget/RemoteViews;

    if-eqz v6, :cond_0

    invoke-virtual {v2}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v6

    iget-object v7, v1, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mMainRemoteView:Landroid/widget/RemoteViews;

    invoke-virtual {v7}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v7

    if-eq v6, v7, :cond_1

    :cond_0
    iget-object v6, v1, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mRemoteMainLayout:Landroid/widget/LinearLayout;

    iget-object v7, v1, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mRemoteMainView:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iput-object v5, v1, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mRemoteMainView:Landroid/view/View;

    iput-boolean v4, v1, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mMainRemoteViewApplyed:Z

    :cond_1
    if-eqz v3, :cond_2

    iget-object v6, v1, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenRemoteView:Landroid/widget/RemoteViews;

    if-eqz v6, :cond_2

    invoke-virtual {v3}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v6

    iget-object v7, v1, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenRemoteView:Landroid/widget/RemoteViews;

    invoke-virtual {v7}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v7

    if-eq v6, v7, :cond_3

    :cond_2
    iget-object v6, v1, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mRemoteFullScreenLayout:Landroid/widget/LinearLayout;

    iget-object v7, v1, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mRemoteFullScreenView:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iput-object v5, v1, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mRemoteFullScreenView:Landroid/view/View;

    iput-boolean v4, v1, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenRemoteViewApplyed:Z

    :cond_3
    iput-object v2, v1, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mMainRemoteView:Landroid/widget/RemoteViews;

    iput-object v3, v1, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mFullScreenRemoteView:Landroid/widget/RemoteViews;

    :cond_4
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mLockScreenMagazinePre:Lcom/android/keyguard/magazine/LockScreenMagazinePreView;

    if-eqz p0, :cond_6

    const-class v1, Lcom/android/keyguard/magazine/LockScreenMagazineController;

    invoke-static {v1}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/magazine/LockScreenMagazineController;

    iget-object v1, v1, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    iput-object v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    if-eqz v1, :cond_6

    if-nez v0, :cond_5

    iget-object v0, v1, Lcom/android/keyguard/wallpaper/entity/MiuiWallpaperInfo;->content:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->mLockScreenMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    iget-object v1, v0, Lcom/android/keyguard/wallpaper/entity/MiuiWallpaperInfo;->content:Ljava/lang/String;

    const-string v2, "\\s*"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/keyguard/wallpaper/entity/MiuiWallpaperInfo;->content:Ljava/lang/String;

    :cond_5
    new-instance v0, Lcom/android/keyguard/magazine/LockScreenMagazinePreView$9;

    invoke-direct {v0, p0}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView$9;-><init>(Lcom/android/keyguard/magazine/LockScreenMagazinePreView;)V

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    :cond_6
    const-class p0, Lcom/android/keyguard/injector/KeyguardClockInjector;

    invoke-static {p0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/injector/KeyguardClockInjector;

    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardClockInjector;->keyguardClockView:Lcom/android/keyguard/clock/KeyguardClockContainer;

    if-eqz p0, :cond_7

    new-instance v0, Lcom/android/keyguard/magazine/LockScreenMagazineController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/keyguard/magazine/LockScreenMagazineController$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/clock/KeyguardClockContainer;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_7
    return-void
.end method

.class public final Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/systemui/CoreStartable;
.implements Lcom/android/systemui/statusbar/phone/CentralSurfaces;


# static fields
.field public static final sUiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# instance fields
.field public final mAccessibilityFloatingMenuController:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;

.field public final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final mActivityTransitionAnimator:Lcom/android/systemui/animation/ActivityTransitionAnimator;

.field public final mActivityTransitionAnimatorCallback:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$4;

.field public final mActivityTransitionAnimatorListener:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$20;

.field public final mAlternateBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;

.field public mAmbientIndicationContainer:Landroid/view/View;

.field public final mAssistManagerLazy:Ldagger/Lazy;

.field public final mAuthRippleController:Lcom/android/systemui/biometrics/AuthRippleController;

.field public final mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

.field public mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field public final mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field public final mBatteryStateChangeCallback:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$18;

.field public mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

.field public final mBiometricUnlockControllerLazy:Ldagger/Lazy;

.field public mBouncerShowing:Z

.field public mBrightnessMirrorController:Lcom/android/systemui/qs/brightness/MiuiBrightnessMirrorController;

.field public mBrightnessMirrorVisible:Z

.field public final mBrightnessSliderFactory:Lcom/android/systemui/settings/brightness/BrightnessSliderController$BrightnessSliderControllerFactory;

.field public final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final mBroadcastReceiver:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$8;

.field public final mBubblesOptional:Ljava/util/Optional;

.field public final mCameraLauncherLazy:Ldagger/Lazy;

.field public final mCheckBarModes:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda3;

.field public mCloseQsBeforeScreenOff:Z

.field public final mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

.field public final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field public mCommandQueueCallbacks:Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;

.field public final mCommandQueueCallbacksLazy:Ldagger/Lazy;

.field public final mCommunalInteractor:Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;

.field public final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final mConfigurationListener:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$16;

.field public final mContext:Landroid/content/Context;

.field public final mControlCenter:Lcom/miui/systemui/controlcenter/container/ControlCenterContainerController;

.field public final mCurrentDisplaySize:Landroid/graphics/Point;

.field public final mDemoModeCallback:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$21;

.field public final mDemoModeController:Lcom/android/systemui/demomode/DemoModeController;

.field public mDeviceInteractive:Z

.field public final mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field public final mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

.field public final mDismissViewController:Ldagger/Lazy;

.field public mDismissingShadeForActivityLaunch:Z

.field public mDisplay:Landroid/view/Display;

.field public mDisplayId:I

.field public final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field public final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field public final mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

.field mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mDozing:Z

.field public final mDreamManager:Landroid/service/dreams/IDreamManager;

.field public final mEmergencyGestureIntentFactory:Lcom/android/systemui/emergency/EmergencyGestureModule$emergencyGestureIntentFactory$1;

.field public final mExtensionController:Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;

.field public final mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

.field public final mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field public final mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

.field public final mFragmentService:Lcom/android/systemui/fragments/FragmentService;

.field public mGestureWakeLock:Landroid/os/PowerManager$WakeLock;

.field public final mGlanceableHubContainerController:Lcom/android/systemui/shade/GlanceableHubContainerController;

.field public final mGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

.field public final mHeadsUpManager:Lcom/android/systemui/statusbar/notification/headsup/HeadsUpManager;

.field public final mIconPolicy:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

.field public final mIdleOnCommunalConsumer:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda1;

.field public mInteractingWindows:I

.field public mIsIdleOnCommunal:Z

.field public mIsLaunchingActivityOverLockscreen:Z

.field public final mJavaAdapter:Lcom/android/systemui/util/kotlin/JavaAdapter;

.field public final mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field public final mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

.field public final mKeyguardStat:Lcom/miui/keyguard/analytics/KeyguardStat;

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mKeyguardStateControllerCallback:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$1;

.field public final mKeyguardUnlockAnimationController:Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

.field public final mKeyguardViewMediatorCallback:Lcom/android/systemui/keyguard/KeyguardViewMediator$5;

.field public mLastCameraLaunchSource:I

.field public mLastLoggedStateFingerprint:I

.field public mLaunchCameraOnFinishedGoingToSleep:Z

.field public mLaunchCameraWhenFinishedWaking:Z

.field public mLaunchEmergencyActionOnFinishedGoingToSleep:Z

.field public mLaunchEmergencyActionWhenFinishedWaking:Z

.field public mLaunchTransitionCancelRunnable:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$6;

.field public mLaunchTransitionEndRunnable:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$6;

.field public mLaunchWalletOnFinishedGoingToSleep:Z

.field public mLaunchWalletWhenFinishedWaking:Z

.field public final mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

.field public final mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarControllerImpl;

.field public final mLightRevealScrim:Lcom/android/systemui/statusbar/LightRevealScrim;

.field public final mLockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

.field public final mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

.field public final mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final mMediaManager:Lcom/android/systemui/media/NotificationMediaManager;

.field public final mMessageRouter:Lcom/android/systemui/util/concurrency/MessageRouterImpl;

.field public final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field public final mNavigationBarController:Lcom/android/systemui/navigationbar/NavigationBarController;

.field public final mNoteTaskControllerLazy:Ldagger/Lazy;

.field public final mNotifListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationListContainerImpl;

.field public final mNotificationActivityStarterLazy:Ldagger/Lazy;

.field public final mNotificationAnimationProvider:Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorControllerProvider;

.field public final mNotificationShadeDepthControllerLazy:Ldagger/Lazy;

.field public final mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

.field public final mNotificationShadeWindowViewControllerLazy:Ldagger/Lazy;

.field public final mNotificationStat:Ldagger/Lazy;

.field public final mNotificationsController:Lcom/android/systemui/statusbar/notification/init/NotificationsController;

.field public final mOnColorsChangedListener:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda2;

.field public final mPluginDependencyProvider:Lcom/android/systemui/plugins/PluginDependencyProvider;

.field public final mPluginManager:Lcom/android/systemui/plugins/PluginManager;

.field public mPowerButtonReveal:Lcom/android/systemui/statusbar/PowerButtonReveal;

.field public final mPowerInteractor:Lcom/android/systemui/power/domain/interactor/PowerInteractor;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public final mPresenterLazy:Ldagger/Lazy;

.field public final mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

.field public mQSPanelController:Lcom/android/systemui/qs/QSPanelController;

.field public final mQsController:Lcom/android/systemui/shade/QuickSettingsController;

.field public final mQueueLock:Ljava/lang/Object;

.field public final mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

.field public mReportRejectedTouch:Landroid/view/View;

.field public final mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

.field public final mScreenObserver:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$10;

.field public final mScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

.field public final mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

.field public final mSecurityDialog:Lcom/android/systemui/controlcenter/policy/SecurityDialog;

.field public final mShadeController:Lcom/android/systemui/shade/ShadeController;

.field public final mShadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

.field public final mShadeLogger:Lcom/android/systemui/shade/ShadeLogger;

.field public final mShadeSurface:Lcom/android/systemui/shade/ShadeSurface;

.field public final mShadeTouchableRegionManager:Lcom/android/systemui/statusbar/phone/ShadeTouchableRegionManager;

.field public mShouldDelayLockscreenTransitionFromAod:Z

.field public final mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

.field public final mStackScrollerController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

.field public final mStartingSurfaceOptional:Ljava/util/Optional;

.field public mState:I

.field public final mStateListener:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$17;

.field public final mStatusBarHideIconsForBouncerManager:Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager;

.field public mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field public final mStatusBarModeRepository:Lcom/android/systemui/statusbar/data/repository/StatusBarModeRepositoryStore;

.field public final mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field public mStatusBarStateLog:Landroid/metrics/LogMaker;

.field public final mTinyKeyguardPanelViewController:Lcom/android/keyguard/tinyPanel/TinyKeyguardPanelViewController;

.field public mTopHidesStatusBar:Z

.field public mTransitionToFullShadeProgress:F

.field public final mUiBgExecutor:Ljava/util/concurrent/Executor;

.field public mUiModeManager:Landroid/app/UiModeManager;

.field public final mUnlockScrimCallback:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$4;

.field public final mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public final mUserInfoControllerImpl:Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;

.field protected mUserSetup:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mUserSetupObserver:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$15;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;

.field public final mVolumeComponent:Lcom/android/systemui/volume/VolumeComponent;

.field public final mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

.field public final mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

.field final mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mWalletController:Lcom/android/systemui/wallet/controller/QuickAccessWalletController;

.field public final mWallpaperController:Lcom/android/systemui/util/WallpaperController;

.field public final mWallpaperManager:Landroid/app/WallpaperManager;

.field public mWallpaperSupported:Z

.field public final mWindowManager:Landroid/view/WindowManager;

.field public final mWindowManagerProvider:Lcom/android/systemui/utils/windowmanager/WindowManagerProvider;

.field public final mWindowRootViewVisibilityInteractor:Lcom/android/systemui/scene/domain/interactor/WindowRootViewVisibilityInteractor;


# direct methods
.method public static -$$Nest$mmaybeEscalateHeadsUp(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V
    .registers 10

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mHeadsUpManager:Lcom/android/systemui/statusbar/notification/headsup/HeadsUpManager;

    check-cast v0, Lcom/android/systemui/statusbar/notification/headsup/HeadsUpManagerImpl;

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/headsup/HeadsUpManagerImpl;->mInjector:Lcom/android/systemui/statusbar/notification/policy/HeadsUpManagerInjector;

    check-cast v1, Lcom/android/systemui/statusbar/notification/policy/HeadsUpManagerInjectorImpl;

    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/policy/HeadsUpManagerInjectorImpl;->headsUpManager:Lcom/android/systemui/statusbar/notification/headsup/HeadsUpManagerImpl;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/headsup/HeadsUpManagerImpl;->getAllEntries()Ljava/util/stream/Stream;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    sget-object v2, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :cond_1
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/policy/HeadsUpManagerInjectorImpl;->notifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->getAllNotifs()Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    sget-boolean v6, Lcom/android/systemui/statusbar/notification/DynamicFeatureConfig;->FEATURE_DYNAMIC_ISLAND:Z

    if-eqz v6, :cond_2

    iget-object v6, v5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    iget-boolean v6, v6, Lcom/android/systemui/statusbar/notification/ExpandedNotification;->mIsFocusNotification:Z

    if-eqz v6, :cond_2

    iget-wide v5, v5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->lastFullScreenIntentLaunchTime:J

    const-wide/16 v7, -0x7d0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-static {v3, v2}, Lkotlin/collections/CollectionsKt;->plus(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda1;

    const/4 v3, 0x6

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/headsup/HeadsUpManagerImpl;->releaseAllImmediately()V

    return-void
.end method

.method public static -$$Nest$mupdateRevealEffect(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;Z)V
    .registers 8

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLightRevealScrim:Lcom/android/systemui/statusbar/LightRevealScrim;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    const/4 v3, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/LightRevealScrim;->getRevealEffect()Lcom/android/systemui/statusbar/LightRevealEffect;

    move-result-object v4

    instance-of v4, v4, Lcom/android/systemui/statusbar/CircleReveal;

    if-nez v4, :cond_1

    iget v4, v2, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastWakeReason:I

    if-ne v4, v3, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v1

    :goto_0
    if-nez p1, :cond_2

    iget v2, v2, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mLastSleepReason:I

    const/4 v5, 0x4

    if-ne v2, v5, :cond_2

    move v1, v3

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    const/high16 v3, 0x3f800000

    if-nez v4, :cond_6

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    if-eqz p1, :cond_5

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/LightRevealScrim;->getRevealEffect()Lcom/android/systemui/statusbar/LightRevealEffect;

    move-result-object p0

    instance-of p0, p0, Lcom/android/systemui/statusbar/CircleReveal;

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    return-void

    :cond_5
    :goto_2
    sget-object p0, Lcom/android/systemui/statusbar/LiftReveal;->INSTANCE:Lcom/android/systemui/statusbar/LiftReveal;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/LightRevealScrim;->setRevealEffect(Lcom/android/systemui/statusbar/LightRevealEffect;)V

    invoke-interface {v2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getDozeAmount()F

    move-result p0

    sub-float/2addr v3, p0

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/LightRevealScrim;->setRevealAmount(F)V

    return-void

    :cond_6
    :goto_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mPowerButtonReveal:Lcom/android/systemui/statusbar/PowerButtonReveal;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/LightRevealScrim;->setRevealEffect(Lcom/android/systemui/statusbar/LightRevealEffect;)V

    invoke-interface {v2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getDozeAmount()F

    move-result p0

    sub-float/2addr v3, p0

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/LightRevealScrim;->setRevealAmount(F)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/internal/logging/UiEventLoggerImpl;

    invoke-direct {v0}, Lcom/android/internal/logging/UiEventLoggerImpl;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->sUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/init/NotificationsController;Lcom/android/systemui/fragments/FragmentService;Lcom/android/systemui/statusbar/phone/LightBarControllerImpl;Lcom/android/systemui/statusbar/phone/AutoHideController;Lcom/android/systemui/statusbar/core/StatusBarInitializer;Lcom/android/systemui/statusbar/window/StatusBarWindowControllerStore;Lcom/android/systemui/statusbar/data/repository/StatusBarModeRepositoryStore;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/phone/StatusBarSignalPolicy;Lcom/android/systemui/statusbar/PulseExpansionHandler;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/notification/headsup/HeadsUpManager;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Lcom/android/systemui/shade/ShadeExpansionStateManager;Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/util/DisplayMetrics;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/shade/ShadeLogger;Lcom/android/systemui/util/kotlin/JavaAdapter;Ljava/util/concurrent/Executor;Lcom/android/systemui/shade/ShadeSurface;Lcom/android/systemui/media/NotificationMediaManager;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/shade/QuickSettingsController;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/colorextraction/SysuiColorExtractor;Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/power/domain/interactor/PowerInteractor;Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Ljava/util/Optional;Ldagger/Lazy;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/navigationbar/NavigationBarController;Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;Ldagger/Lazy;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Ldagger/Lazy;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorControllerProvider;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/statusbar/phone/ScrimController;Ldagger/Lazy;Lcom/android/systemui/biometrics/AuthRippleController;Lcom/android/systemui/statusbar/phone/DozeServiceHost;Landroid/os/PowerManager;Lcom/android/systemui/statusbar/phone/DozeScrimController;Lcom/android/systemui/volume/VolumeComponent;Lcom/android/systemui/statusbar/CommandQueue;Ldagger/Lazy;Lcom/android/systemui/plugins/PluginManager;Lcom/android/systemui/shade/ShadeController;Lcom/android/systemui/scene/domain/interactor/WindowRootViewVisibilityInteractor;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/systemui/keyguard/KeyguardViewMediator$5;Lcom/android/systemui/InitController;Landroid/os/Handler;Lcom/android/systemui/plugins/PluginDependencyProvider;Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;Lcom/android/systemui/statusbar/KeyguardIndicationController;Lcom/android/systemui/demomode/DemoModeController;Ldagger/Lazy;Lcom/android/systemui/statusbar/phone/ShadeTouchableRegionManager;Lcom/android/systemui/settings/brightness/BrightnessSliderController$BrightnessSliderControllerFactory;Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;Lcom/android/systemui/util/WallpaperController;Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/concurrency/MessageRouterImpl;Landroid/app/WallpaperManager;Ljava/util/Optional;Lcom/android/systemui/animation/ActivityTransitionAnimator;Landroid/hardware/devicestate/DeviceStateManager;Landroid/service/dreams/IDreamManager;Ldagger/Lazy;Lcom/android/systemui/statusbar/LightRevealScrim;Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/settings/brightness/data/repository/BrightnessMirrorShowingRepository;Lcom/android/systemui/shade/GlanceableHubContainerController;Lcom/android/systemui/emergency/EmergencyGestureModule$emergencyGestureIntentFactory$1;Lcom/android/systemui/wallet/controller/QuickAccessWalletController;Landroid/view/WindowManager;Lcom/android/systemui/utils/windowmanager/WindowManagerProvider;Lcom/android/wm/shell/multitasking/common/MultiTaskingSystemUIInterface;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/controlcenter/policy/SecurityDialog;Lcom/miui/systemui/shade/NotificationShadeWrapper;Lcom/miui/systemui/controlcenter/container/ControlCenterContainerController;Lcom/android/keyguard/tinyPanel/TinyKeyguardPanelViewController;Lcom/miui/keyguard/analytics/KeyguardStat;)V
    .registers 115

    move-object/from16 p6, p20

    move-object/from16 p7, p48

    move-object/from16 v0, p81

    move-object/from16 v1, p85

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mTransitionToFullShadeProgress:F

    new-instance v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$1;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardStateControllerCallback:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$1;

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mCurrentDisplaySize:Landroid/graphics/Point;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShouldDelayLockscreenTransitionFromAod:Z

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mQueueLock:Ljava/lang/Object;

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mUserSetup:Z

    new-instance v3, Landroidx/lifecycle/LifecycleRegistry;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/LifecycleOwner;Z)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mIsIdleOnCommunal:Z

    new-instance v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;I)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mIdleOnCommunalConsumer:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda1;

    new-instance v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mOnColorsChangedListener:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda2;

    new-instance v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;I)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mCheckBarModes:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda3;

    new-instance v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$8;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$8;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBroadcastReceiver:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$8;

    new-instance v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$9;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$9;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    new-instance v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$10;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$10;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mScreenObserver:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$10;

    new-instance v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$12;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$12;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$4;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mUnlockScrimCallback:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$4;

    new-instance v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$15;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$15;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mUserSetupObserver:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$15;

    new-instance v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$16;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$16;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mConfigurationListener:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$16;

    new-instance v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$17;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$17;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStateListener:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$17;

    new-instance v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$18;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$18;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBatteryStateChangeCallback:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$18;

    new-instance v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$4;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mActivityTransitionAnimatorCallback:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$4;

    new-instance v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$20;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$20;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mActivityTransitionAnimatorListener:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$20;

    new-instance v2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$21;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$21;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDemoModeCallback:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$21;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationsController:Lcom/android/systemui/statusbar/notification/init/NotificationsController;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mFragmentService:Lcom/android/systemui/fragments/FragmentService;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarControllerImpl;

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    iput-object p8, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarModeRepository:Lcom/android/systemui/statusbar/data/repository/StatusBarModeRepositoryStore;

    iput-object p9, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 p2, p11

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

    move-object/from16 p2, p12

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    move-object/from16 p2, p13

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    move-object/from16 p2, p14

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object/from16 p2, p15

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mHeadsUpManager:Lcom/android/systemui/statusbar/notification/headsup/HeadsUpManager;

    move-object/from16 p2, p73

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    move-object/from16 p2, p76

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeTouchableRegionManager:Lcom/android/systemui/statusbar/phone/ShadeTouchableRegionManager;

    move-object/from16 p2, p17

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    move-object/from16 p2, p16

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    move-object/from16 p2, p18

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    move-object/from16 p2, p19

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    move-object/from16 p2, p21

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    move-object/from16 p2, p22

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 p2, p23

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    move-object/from16 p2, p24

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeLogger:Lcom/android/systemui/shade/ShadeLogger;

    move-object/from16 p2, p25

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mJavaAdapter:Lcom/android/systemui/util/kotlin/JavaAdapter;

    move-object/from16 p2, p26

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mUiBgExecutor:Ljava/util/concurrent/Executor;

    move-object/from16 p2, p27

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeSurface:Lcom/android/systemui/shade/ShadeSurface;

    move-object/from16 p2, p28

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mMediaManager:Lcom/android/systemui/media/NotificationMediaManager;

    move-object/from16 p2, p29

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    move-object/from16 p2, p30

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    move-object/from16 p2, p31

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mQsController:Lcom/android/systemui/shade/QuickSettingsController;

    move-object/from16 p2, p32

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    move-object/from16 p2, p33

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    move-object/from16 p2, p34

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    move-object/from16 p2, p35

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    move-object/from16 p2, p36

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mPowerInteractor:Lcom/android/systemui/power/domain/interactor/PowerInteractor;

    move-object/from16 p2, p37

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mCommunalInteractor:Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;

    move-object/from16 p2, p38

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    move-object/from16 p2, p39

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBubblesOptional:Ljava/util/Optional;

    move-object/from16 p2, p40

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNoteTaskControllerLazy:Ldagger/Lazy;

    move-object/from16 p2, p41

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    move-object/from16 p2, p42

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNavigationBarController:Lcom/android/systemui/navigationbar/NavigationBarController;

    move-object/from16 p2, p43

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mAccessibilityFloatingMenuController:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;

    move-object/from16 p2, p44

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mAssistManagerLazy:Ldagger/Lazy;

    move-object/from16 p2, p45

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    move-object/from16 p2, p46

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    move-object/from16 p2, p47

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationShadeWindowViewControllerLazy:Ldagger/Lazy;

    iput-object p7, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStackScrollerController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object p2, p7, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object p2, p7, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mNotificationListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationListContainerImpl;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotifListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationListContainerImpl;

    move-object/from16 p2, p49

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mPresenterLazy:Ldagger/Lazy;

    move-object/from16 p2, p50

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationActivityStarterLazy:Ldagger/Lazy;

    move-object/from16 p2, p51

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationAnimationProvider:Lcom/android/systemui/statusbar/notification/NotificationLaunchAnimatorControllerProvider;

    move-object/from16 p2, p56

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    move-object/from16 p2, p57

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mPowerManager:Landroid/os/PowerManager;

    move-object/from16 p2, p52

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-object/from16 p2, p53

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    move-object/from16 p2, p58

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    move-object/from16 p2, p54

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBiometricUnlockControllerLazy:Ldagger/Lazy;

    move-object/from16 p2, p55

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mAuthRippleController:Lcom/android/systemui/biometrics/AuthRippleController;

    move-object/from16 p2, p75

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationShadeDepthControllerLazy:Ldagger/Lazy;

    move-object/from16 p2, p59

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mVolumeComponent:Lcom/android/systemui/volume/VolumeComponent;

    move-object/from16 p2, p60

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    move-object/from16 p2, p61

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mCommandQueueCallbacksLazy:Ldagger/Lazy;

    move-object/from16 p2, p62

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mPluginManager:Lcom/android/systemui/plugins/PluginManager;

    move-object/from16 p2, p63

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeController:Lcom/android/systemui/shade/ShadeController;

    move-object/from16 p2, p64

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mWindowRootViewVisibilityInteractor:Lcom/android/systemui/scene/domain/interactor/WindowRootViewVisibilityInteractor;

    move-object/from16 p2, p65

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-object/from16 p2, p66

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardViewMediatorCallback:Lcom/android/systemui/keyguard/KeyguardViewMediator$5;

    move-object/from16 p2, p69

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mPluginDependencyProvider:Lcom/android/systemui/plugins/PluginDependencyProvider;

    move-object/from16 p2, p70

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mExtensionController:Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;

    move-object/from16 p2, p71

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mUserInfoControllerImpl:Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;

    move-object/from16 p2, p72

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mIconPolicy:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    move-object/from16 p2, p74

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDemoModeController:Lcom/android/systemui/demomode/DemoModeController;

    move-object/from16 p2, p77

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBrightnessSliderFactory:Lcom/android/systemui/settings/brightness/BrightnessSliderController$BrightnessSliderControllerFactory;

    move-object/from16 p2, p79

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mWallpaperController:Lcom/android/systemui/util/WallpaperController;

    move-object/from16 p2, p80

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarHideIconsForBouncerManager:Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager;

    move-object/from16 p2, p82

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    move-object/from16 p2, p83

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardUnlockAnimationController:Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;

    move-object/from16 p2, p84

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mMessageRouter:Lcom/android/systemui/util/concurrency/MessageRouterImpl;

    move-object/from16 p2, p86

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mWallpaperManager:Landroid/app/WallpaperManager;

    move-object/from16 p2, p91

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mCameraLauncherLazy:Ldagger/Lazy;

    move-object/from16 p2, p93

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mAlternateBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;

    move-object/from16 p2, p94

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    move-object/from16 p2, p95

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    move-object/from16 p2, p97

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mGlanceableHubContainerController:Lcom/android/systemui/shade/GlanceableHubContainerController;

    move-object/from16 p2, p98

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mEmergencyGestureIntentFactory:Lcom/android/systemui/emergency/EmergencyGestureModule$emergencyGestureIntentFactory$1;

    move-object/from16 p2, p99

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mWalletController:Lcom/android/systemui/wallet/controller/QuickAccessWalletController;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    move-object/from16 p2, p87

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStartingSurfaceOptional:Ljava/util/Optional;

    move-object/from16 p2, p90

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDreamManager:Landroid/service/dreams/IDreamManager;

    iput-object p0, v0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->centralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    move-object/from16 p2, p78

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    new-instance p2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V

    invoke-virtual {p6, p2}, Lcom/android/systemui/shade/ShadeExpansionStateManager;->addExpansionListener(Lcom/android/systemui/shade/ShadeExpansionListener;)Lcom/android/systemui/shade/ShadeExpansionChangeEvent;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda4;->onPanelExpansionChanged$1(Lcom/android/systemui/shade/ShadeExpansionChangeEvent;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-object/from16 p1, p88

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mActivityTransitionAnimator:Lcom/android/systemui/animation/ActivityTransitionAnimator;

    invoke-static/range {p68 .. p68}, Landroid/widget/DateTimeView;->setReceiverHandler(Landroid/os/Handler;)V

    new-instance p1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V

    const-class p2, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$AnimateExpandSettingsPanelMessage;

    iget-object p3, v1, Lcom/android/systemui/util/concurrency/MessageRouterImpl;->mDataMessageListenerMap:Ljava/util/Map;

    monitor-enter p3

    :try_start_0
    iget-object p4, v1, Lcom/android/systemui/util/concurrency/MessageRouterImpl;->mDataMessageListenerMap:Ljava/util/Map;

    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    check-cast p4, Ljava/util/HashMap;

    invoke-virtual {p4, p2, p5}, Ljava/util/HashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p4, v1, Lcom/android/systemui/util/concurrency/MessageRouterImpl;->mDataMessageListenerMap:Ljava/util/Map;

    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    new-instance p1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V

    iget-object p2, v1, Lcom/android/systemui/util/concurrency/MessageRouterImpl;->mSimpleMessageListenerMap:Ljava/util/Map;

    monitor-enter p2

    :try_start_1
    iget-object p3, v1, Lcom/android/systemui/util/concurrency/MessageRouterImpl;->mSimpleMessageListenerMap:Ljava/util/Map;

    const/16 p4, 0x3eb

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    new-instance p6, Ljava/util/ArrayList;

    invoke-direct {p6}, Ljava/util/ArrayList;-><init>()V

    check-cast p3, Ljava/util/HashMap;

    invoke-virtual {p3, p5, p6}, Ljava/util/HashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p3, v1, Lcom/android/systemui/util/concurrency/MessageRouterImpl;->mSimpleMessageListenerMap:Ljava/util/Map;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 p1, p89

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    move-object/from16 p1, p103

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationStat:Ldagger/Lazy;

    move-object/from16 p1, p92

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLightRevealScrim:Lcom/android/systemui/statusbar/LightRevealScrim;

    move-object/from16 p1, p100

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mWindowManager:Landroid/view/WindowManager;

    move-object/from16 p1, p101

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mWindowManagerProvider:Lcom/android/systemui/utils/windowmanager/WindowManagerProvider;

    move-object/from16 p1, p104

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDismissViewController:Ldagger/Lazy;

    move-object/from16 p1, p105

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mSecurityDialog:Lcom/android/systemui/controlcenter/policy/SecurityDialog;

    move-object/from16 p1, p107

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mControlCenter:Lcom/miui/systemui/controlcenter/container/ControlCenterContainerController;

    move-object/from16 p1, p108

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mTinyKeyguardPanelViewController:Lcom/android/keyguard/tinyPanel/TinyKeyguardPanelViewController;

    move-object/from16 p1, p109

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardStat:Lcom/miui/keyguard/analytics/KeyguardStat;

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception v0

    move-object p0, v0

    :try_start_3
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method


# virtual methods
.method public RefreshEliteStatusbarReceiver()V
    .registers 2

    invoke-static {}, Lcom/android/systemui/statusbar/phone/RefreshEliteStatusbar;->getInstance()Lcom/android/systemui/statusbar/phone/RefreshEliteStatusbar;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/RefreshEliteStatusbar;->register(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V

    return-void
.end method

.method public final awakenDreams()V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mUiBgExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda3;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final checkBarModes()V
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDemoModeController:Lcom/android/systemui/demomode/DemoModeController;

    iget-boolean v0, v0, Lcom/android/systemui/demomode/DemoModeController;->isInDemoMode:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDisplayId:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNavigationBarController:Lcom/android/systemui/navigationbar/NavigationBarController;

    check-cast p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;

    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->checkNavBarModes(I)V

    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 13
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    const-string v0, " translationX "

    const-string v1, " scroll "

    const-string v2, "  mStackScroller: "

    const-string v3, "  mDisplayMetrics="

    const-string v4, "  mExpandedVisible="

    invoke-static {p1}, Lcom/android/systemui/util/DumpUtilsKt;->asIndenting(Ljava/io/PrintWriter;)Landroid/util/IndentingPrintWriter;

    move-result-object p1

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mQueueLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    const-string v6, "Current Status Bar state:"

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeController:Lcom/android/systemui/shade/ShadeController;

    invoke-interface {v4}, Lcom/android/systemui/shade/ShadeController;->isExpandedVisible()Z

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/CentralSurfaces;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTranslationX()F

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "  mInteractingWindows="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mInteractingWindows:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string v0, "  mDozing="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDozing:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string v0, "  mWallpaperSupported= "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mWallpaperSupported:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string v0, "  mMediaManager: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mMediaManager:Lcom/android/systemui/media/NotificationMediaManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/media/NotificationMediaManager;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    const-string v0, "  Panels: "

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  mStackScroller: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " (dump moved)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  Theme:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mUiModeManager:Landroid/app/UiModeManager;

    if-nez v0, :cond_1

    const-string v0, "null"

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v1}, Landroid/app/UiModeManager;->getNightMode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "    dark theme: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (auto: 0, yes: 2, no: 1)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getThemeResId()I

    move-result v0

    const v1, 0x7f150732

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_2

    move v0, v3

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    const-string v1, "    light wallpaper theme: "

    invoke-static {v1, v0, p1}, Lcom/android/systemui/controlcenter/policy/AutoBrightnessController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLandroid/util/IndentingPrintWriter;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    if-eqz v0, :cond_13

    const-string v1, "KeyguardIndicationController:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "  mInitialTextColorState: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mInitialTextColorState:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "  mPowerPluggedInWired: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedInWired:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "  mPowerPluggedIn: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedIn:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "  mPowerCharged: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerCharged:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "  mChargingSpeed: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargingSpeed:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "  mChargingWattage: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargingWattage:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "  mChargingStatus: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargingStatus:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  mMessageToShowOnScreenOn: null"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "  mDozing: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDozing:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "  mTransientIndication: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "  mBiometricMessage: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBiometricMessage:Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "  mBiometricMessageFollowUp: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBiometricMessageFollowUp:Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "  mBatteryLevel: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "  mBatteryPresent: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryPresent:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "  AOD text: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    if-nez v4, :cond_3

    const/4 v4, 0x0

    goto :goto_2

    :cond_3
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    :goto_2
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "  computePowerIndication(): "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryDefender:Z

    const/high16 v5, 0x42c80000

    if-eqz v4, :cond_4

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v2

    iget v3, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    int-to-float v3, v3

    div-float/2addr v3, v5

    float-to-double v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f140761

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_4
    iget-boolean v4, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedIn:Z

    if-eqz v4, :cond_5

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIncompatibleCharger:Z

    if-eqz v4, :cond_5

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v2

    iget v3, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    int-to-float v3, v3

    div-float/2addr v3, v5

    float-to-double v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f140764

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_5
    iget-boolean v4, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerCharged:Z

    if-eqz v4, :cond_6

    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f140731

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_6
    iget-wide v6, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargingTimeRemaining:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-lez v4, :cond_7

    move v2, v3

    :cond_7
    iget-boolean v3, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedInWired:Z

    const v4, 0x7f14075f

    const v6, 0x7f14074e

    if-eqz v3, :cond_c

    iget v3, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargingSpeed:I

    if-eqz v3, :cond_a

    const/4 v7, 0x2

    if-eq v3, v7, :cond_8

    if-eqz v2, :cond_11

    :goto_3
    move v4, v6

    goto :goto_5

    :cond_8
    if-eqz v2, :cond_9

    const v3, 0x7f140750

    :goto_4
    move v4, v3

    goto :goto_5

    :cond_9
    const v3, 0x7f140760

    goto :goto_4

    :cond_a
    if-eqz v2, :cond_b

    const v3, 0x7f140751

    goto :goto_4

    :cond_b
    const v3, 0x7f140762

    goto :goto_4

    :cond_c
    iget-boolean v3, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedInWireless:Z

    if-eqz v3, :cond_e

    if-eqz v2, :cond_d

    const v3, 0x7f140752

    goto :goto_4

    :cond_d
    const v3, 0x7f140765

    goto :goto_4

    :cond_e
    iget-boolean v3, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedInDock:Z

    if-eqz v3, :cond_10

    if-eqz v2, :cond_f

    const v3, 0x7f14074f

    goto :goto_4

    :cond_f
    const v3, 0x7f140763

    goto :goto_4

    :cond_10
    if-eqz v2, :cond_11

    goto :goto_3

    :cond_11
    :goto_5
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v3

    iget v6, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    int-to-float v6, v6

    div-float/2addr v6, v5

    float-to-double v5, v6

    invoke-virtual {v3, v5, v6}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_12

    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    iget-wide v5, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargingTimeRemaining:J

    invoke-static {v2, v5, v6}, Landroid/text/format/Formatter;->formatShortElapsedTimeRoundingUpToMinutes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    iget-object v5, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5, v4, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_12
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  trustGrantedIndication: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->getTrustGrantedIndication()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "    mCoExFaceHelpMsgIdsToShow="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mCoExFaceAcquisitionMsgIdsToShow:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mRotateTextViewController:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_13
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    if-eqz v0, :cond_14

    const-string v1, " ScrimController: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  state: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "    mClipQsScrim = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/phone/ScrimState;->mClipQsScrim:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  frontScrim:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " viewAlpha="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/scrim/ScrimView;

    invoke-virtual {v2}, Lcom/android/systemui/scrim/ScrimView;->getViewAlpha()F

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(F)V

    const-string v2, " alpha="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mInFrontAlpha:F

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(F)V

    const-string v3, " tint=0x"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/scrim/ScrimView;

    invoke-virtual {v4}, Lcom/android/systemui/scrim/ScrimView;->getTint()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v4, "  behindScrim:"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    invoke-virtual {v4}, Lcom/android/systemui/scrim/ScrimView;->getViewAlpha()F

    move-result v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(F)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBehindAlpha:F

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(F)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    invoke-virtual {v4}, Lcom/android/systemui/scrim/ScrimView;->getTint()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v4, "  notificationsScrim:"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsScrim:Lcom/android/systemui/scrim/ScrimView;

    invoke-virtual {v1}, Lcom/android/systemui/scrim/ScrimView;->getViewAlpha()F

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(F)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsAlpha:F

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(F)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsScrim:Lcom/android/systemui/scrim/ScrimView;

    invoke-virtual {v1}, Lcom/android/systemui/scrim/ScrimView;->getTint()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, " expansionProgress="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(F)V

    const-string v2, "  mDefaultScrimAlpha="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(F)V

    const-string v1, "  mPanelExpansionFraction="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPanelExpansionFraction:F

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(F)V

    const-string v1, "  mExpansionAffectsAlpha="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mExpansionAffectsAlpha:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_14
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLightRevealScrim:Lcom/android/systemui/statusbar/LightRevealScrim;

    if-eqz v0, :cond_15

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mLightRevealScrim.getRevealEffect(): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLightRevealScrim:Lcom/android/systemui/statusbar/LightRevealScrim;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/LightRevealScrim;->getRevealEffect()Lcom/android/systemui/statusbar/LightRevealEffect;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mLightRevealScrim.getRevealAmount(): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLightRevealScrim:Lcom/android/systemui/statusbar/LightRevealScrim;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/LightRevealScrim;->getRevealAmount()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_15
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-eqz v0, :cond_16

    const-string v1, "StatusBarKeyguardViewManager:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  mRemoteInputActive: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mRemoteInputActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  mDozing: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mDozing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  mAfterKeyguardGoneAction: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAfterKeyguardGoneAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  mAfterKeyguardGoneRunnables: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAfterKeyguardGoneRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  mPendingWakeupAction: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPendingWakeupAction:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$DismissWithActionRequest;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  isBouncerShowing(): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  bouncerIsOrWillBeShowing(): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->primaryBouncerIsOrWillBeShowing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  Registered KeyguardViewManagerCallbacks:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, " SceneContainerFlag enabled:false"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, " ComposeBouncerFlags enabled:false"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mCallbacks:Ljava/util/Set;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/panel/KeyguardPanelViewController$keyguardViewManagerCallback$1;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "      "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7

    :cond_16
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mHeadsUpManager:Lcom/android/systemui/statusbar/notification/headsup/HeadsUpManager;

    if-eqz v0, :cond_17

    check-cast v0, Lcom/android/systemui/statusbar/notification/headsup/HeadsUpManagerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/notification/headsup/HeadsUpManagerImpl;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_8

    :cond_17
    const-string v0, "  mHeadsUpManager: null"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :goto_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeTouchableRegionManager:Lcom/android/systemui/statusbar/phone/ShadeTouchableRegionManager;

    if-eqz v0, :cond_18

    const-string v1, "ShadeTouchableRegionManager state:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  mTouchableRegion="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/ShadeTouchableRegionManager;->mTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_9

    :cond_18
    const-string v0, "  mShadeTouchableRegionManager: null"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :goto_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarControllerImpl;

    if-eqz v0, :cond_19

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/LightBarControllerImpl;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_19
    const-string p2, "SharedPreferences:"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/systemui/Prefs;->get(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    const-string v1, "  "

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_a

    :cond_1a
    const-string p2, "Camera gesture intents:"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "   Insecure camera: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/android/systemui/camera/CameraIntents$Companion;->getOverrideCameraPackage(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_1b
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "   Secure camera: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/android/systemui/camera/CameraIntents$Companion;->getOverrideCameraPackage(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_1c
    const/high16 v0, 0x800000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "   Override package: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast p0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result p0

    invoke-static {p0, v0}, Lcom/android/systemui/camera/CameraIntents$Companion;->getOverrideCameraPackage(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final finishKeyguardFadingAway()V
    .registers 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->notifyKeyguardGoingAway(Z)V

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardFadingAway:Z

    if-eqz v2, :cond_0

    const-string v2, "keyguard"

    const-string v3, "FadingAway"

    invoke-static {v1, v2, v3}, Lcom/android/app/tracing/coroutines/TrackTracer;->instantForGroup(ILjava/lang/String;Ljava/lang/String;)V

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardFadingAway:Z

    new-instance v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->invokeForEachCallback(Ljava/util/function/Consumer;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/ScrimController;->mExpansionAffectsAlpha:Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isGoingToShowKeyguard()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->maybeHandlePendingLock()V

    return-void

    :cond_1
    const-string p0, "CentralSurfaces"

    const-string v0, "Keyguard is going to show, skipping pending lock handling"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final getLifecycle()Landroidx/lifecycle/Lifecycle;
    .registers 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    return-object p0
.end method

.method public final getNavigationBarView()Lcom/android/systemui/navigationbar/views/NavigationBarView;
    .registers 2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDisplayId:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNavigationBarController:Lcom/android/systemui/navigationbar/NavigationBarController;

    check-cast p0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;

    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->getNavigationBarView(I)Lcom/android/systemui/navigationbar/views/NavigationBarView;

    move-result-object p0

    return-object p0
.end method

.method public final getNotificationShadeWindowViewController()Lcom/android/systemui/shade/NotificationShadeWindowViewController;
    .registers 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationShadeWindowViewControllerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    return-object p0
.end method

.method public initShadeVisibilityListener()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$4;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeController:Lcom/android/systemui/shade/ShadeController;

    invoke-interface {p0, v0}, Lcom/android/systemui/shade/ShadeController;->setVisibilityListener(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$4;)V

    return-void
.end method

.method public final isGoingToSleep()Z
    .registers 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget p0, p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWakefulness:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final logStateToEventlog()V
    .registers 14

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v3

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mSecure:Z

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mCanDismissLockScreen:Z

    iget v5, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mState:I

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v6, v1, 0x8

    or-int/2addr v5, v6

    shl-int/lit8 v6, v2, 0x9

    or-int/2addr v5, v6

    shl-int/lit8 v6, v3, 0xa

    or-int/2addr v5, v6

    shl-int/lit8 v6, v4, 0xb

    or-int/2addr v5, v6

    shl-int/lit8 v6, v0, 0xc

    or-int/2addr v5, v6

    iget v6, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLastLoggedStateFingerprint:I

    if-eq v5, v6, :cond_6

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarStateLog:Landroid/metrics/LogMaker;

    if-nez v6, :cond_0

    new-instance v6, Landroid/metrics/LogMaker;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Landroid/metrics/LogMaker;-><init>(I)V

    iput-object v6, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarStateLog:Landroid/metrics/LogMaker;

    :cond_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarStateLog:Landroid/metrics/LogMaker;

    if-eqz v3, :cond_1

    const/16 v8, 0xc5

    goto :goto_0

    :cond_1
    const/16 v8, 0xc4

    :goto_0
    invoke-virtual {v7, v8}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object v7

    if-eqz v1, :cond_2

    const/4 v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, 0x2

    :goto_1
    invoke-virtual {v7, v8}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    iget v6, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mState:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    filled-new-array/range {v7 .. v12}, [Ljava/lang/Object;

    move-result-object v0

    const v2, 0x8ca4

    invoke-static {v2, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iput v5, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLastLoggedStateFingerprint:I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v3, :cond_3

    const-string v0, "BOUNCER"

    goto :goto_2

    :cond_3
    const-string v0, "LOCKSCREEN"

    :goto_2
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_4

    const-string v0, "_OPEN"

    goto :goto_3

    :cond_4
    const-string v0, "_CLOSE"

    :goto_3
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_5

    const-string v0, "_SECURE"

    goto :goto_4

    :cond_5
    const-string v0, "_INSECURE"

    :goto_4
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->sUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$StatusBarUiEvent;->valueOf(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$StatusBarUiEvent;

    move-result-object p0

    check-cast v0, Lcom/android/internal/logging/UiEventLoggerImpl;

    invoke-virtual {v0, p0}, Lcom/android/internal/logging/UiEventLoggerImpl;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    :cond_6
    return-void
.end method

.method public final onLaunchTransitionFadingEnded()V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeSurface:Lcom/android/systemui/shade/ShadeSurface;

    invoke-interface {v0}, Lcom/android/systemui/shade/ShadeSurface;->resetAlpha()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mCameraLauncherLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shade/CameraLauncher;

    iget-object v0, v0, Lcom/android/systemui/shade/CameraLauncher;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->launchingAffordance:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->releaseGestureWakeLock()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLaunchTransitionCancelRunnable:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$6;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLaunchTransitionEndRunnable:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$6;

    if-eqz v2, :cond_0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLaunchTransitionEndRunnable:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$6;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$6;->run()V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mLaunchTransitionFadingAway:Z

    new-instance v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl$$ExternalSyntheticLambda0;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->invokeForEachCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public registerBroadcastReceiver()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.app.action.SHOW_DEVICE_MONITORING_DIALOG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBroadcastReceiver:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$8;

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v0, v3, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)V

    return-void
.end method

.method public registerCallbacks()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    new-instance v1, Lcom/android/systemui/statusbar/phone/FoldStateListener;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda13;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda13;-><init>(Ljava/lang/Object;)V

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/FoldStateListener;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/FoldStateListener$OnFoldStateChangeListener;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-virtual {v0, v2, v1}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mCommunalInteractor:Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;

    iget-object v0, v0, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;->isIdleOnCommunal:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mIdleOnCommunalConsumer:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda1;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mJavaAdapter:Lcom/android/systemui/util/kotlin/JavaAdapter;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/util/kotlin/JavaAdapter;->alwaysCollectFlow(Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final releaseGestureWakeLock()V
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method

.method public setBarStateForTest(I)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iput p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mState:I

    return-void
.end method

.method public final setInteracting(IZ)V
    .registers 8

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mInteractingWindows:I

    or-int/2addr p1, p2

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mInteractingWindows:I

    not-int p1, p1

    and-int/2addr p1, p2

    :goto_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mInteractingWindows:I

    const/4 p2, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    if-eqz p1, :cond_4

    check-cast v0, Lcom/android/systemui/statusbar/phone/AutoHideControllerImpl;

    iget-object p1, v0, Lcom/android/systemui/statusbar/phone/AutoHideControllerImpl;->mAutoHide:Lcom/android/systemui/statusbar/phone/AutoHideControllerImpl$$ExternalSyntheticLambda0;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/AutoHideControllerImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, v0, Lcom/android/systemui/statusbar/phone/AutoHideControllerImpl;->mStatusBar:Lcom/android/systemui/statusbar/core/StatusBarOrchestrator$setUpAutoHide$1;

    if-eqz p1, :cond_1

    new-instance p2, Lcom/android/systemui/statusbar/phone/AutoHideControllerImpl$$ExternalSyntheticLambda0;

    const/4 p1, 0x0

    invoke-direct {p2, v0, p1}, Lcom/android/systemui/statusbar/phone/AutoHideControllerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/AutoHideControllerImpl;I)V

    goto :goto_1

    :cond_1
    iget-object p1, v0, Lcom/android/systemui/statusbar/phone/AutoHideControllerImpl;->mNavigationBar:Lcom/android/systemui/statusbar/AutoHideUiElement;

    if-eqz p1, :cond_2

    new-instance p2, Lcom/android/systemui/statusbar/phone/AutoHideControllerImpl$$ExternalSyntheticLambda0;

    const/4 p1, 0x1

    invoke-direct {p2, v0, p1}, Lcom/android/systemui/statusbar/phone/AutoHideControllerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/AutoHideControllerImpl;I)V

    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    invoke-virtual {v1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_3
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/AutoHideControllerImpl;->isAnyTransientBarShown()Z

    move-result p1

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/AutoHideControllerImpl;->mAutoHideSuspended:Z

    goto :goto_3

    :cond_4
    check-cast v0, Lcom/android/systemui/statusbar/phone/AutoHideControllerImpl;

    iget-boolean p1, v0, Lcom/android/systemui/statusbar/phone/AutoHideControllerImpl;->mAutoHideSuspended:Z

    if-eqz p1, :cond_7

    const/4 p1, 0x0

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/AutoHideControllerImpl;->mAutoHideSuspended:Z

    iget-object p1, v0, Lcom/android/systemui/statusbar/phone/AutoHideControllerImpl;->mAutoHide:Lcom/android/systemui/statusbar/phone/AutoHideControllerImpl$$ExternalSyntheticLambda0;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/AutoHideControllerImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/AutoHideControllerImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const/16 v3, 0x8ca

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Landroid/view/accessibility/AccessibilityManager;->getRecommendedTimeoutMillis(II)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p1, v0, Lcom/android/systemui/statusbar/phone/AutoHideControllerImpl;->mStatusBar:Lcom/android/systemui/statusbar/core/StatusBarOrchestrator$setUpAutoHide$1;

    if-eqz p1, :cond_5

    new-instance p2, Lcom/android/systemui/statusbar/phone/AutoHideControllerImpl$$ExternalSyntheticLambda0;

    const/4 p1, 0x0

    invoke-direct {p2, v0, p1}, Lcom/android/systemui/statusbar/phone/AutoHideControllerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/AutoHideControllerImpl;I)V

    goto :goto_2

    :cond_5
    iget-object p1, v0, Lcom/android/systemui/statusbar/phone/AutoHideControllerImpl;->mNavigationBar:Lcom/android/systemui/statusbar/AutoHideUiElement;

    if-eqz p1, :cond_6

    new-instance p2, Lcom/android/systemui/statusbar/phone/AutoHideControllerImpl$$ExternalSyntheticLambda0;

    const/4 p1, 0x1

    invoke-direct {p2, v0, p1}, Lcom/android/systemui/statusbar/phone/AutoHideControllerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/AutoHideControllerImpl;I)V

    :cond_6
    :goto_2
    if-eqz p2, :cond_7

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, p2, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    :goto_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->checkBarModes()V

    return-void
.end method

.method public final setPrimaryBouncerHiddenFraction(F)V
    .registers 3

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBouncerHiddenFraction:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBouncerHiddenFraction:F

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->DREAMING:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->GLANCEABLE_HUB:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->GLANCEABLE_HUB_OVER_DREAM:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->applyAndDispatchState()V

    return-void
.end method

.method public final shouldIgnoreTouch()Z
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mIgnoreTouchWhilePulsing:Z

    if-nez v0, :cond_3

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;->animations:Ljava/util/List;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ScreenOffAnimation;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/ScreenOffAnimation;->isAnimationPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final showKeyguard()V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->setKeyguardRequested(Z)V

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->setLeaveOpenOnKeyguardHide(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->updateIsKeyguard()Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mAssistManagerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/systemui/assist/AssistManager$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/assist/AssistManager$6;-><init>(Lcom/android/systemui/assist/AssistManager;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final showKeyguardImpl()V
    .registers 4

    const-string v0, "CentralSurfaces#showKeyguard"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mLaunchTransitionFadingAway:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeSurface:Lcom/android/systemui/shade/ShadeSurface;

    invoke-interface {v0}, Lcom/android/systemui/shade/ShadeSurface;->cancelAnimation()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->onLaunchTransitionFadingEnded()V

    :cond_0
    const/16 v0, 0x3eb

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mMessageRouter:Lcom/android/systemui/util/concurrency/MessageRouterImpl;

    invoke-virtual {v1, v0}, Lcom/android/systemui/util/concurrency/MessageRouterImpl;->cancelMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->isWakingToShadeLocked:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->setState(IZ)Z

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->updatePanelExpansionForKeyguard()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public final start()V
    .registers 18

    move-object/from16 v1, p0

    iget-object v4, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mContext:Landroid/content/Context;

    invoke-static {v4, v1}, Lcom/android/systemui/plugins/ControllerStorage;->setClassInStorage(Landroid/content/Context;Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    iget-object v4, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget-object v5, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mScreenObserver:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$10;

    invoke-virtual {v4, v5}, Lcom/android/systemui/keyguard/Lifecycle;->addObserver(Ljava/lang/Object;)V

    iget-object v4, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object v5, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    invoke-virtual {v4, v5}, Lcom/android/systemui/keyguard/Lifecycle;->addObserver(Ljava/lang/Object;)V

    iget-object v4, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mContext:Landroid/content/Context;

    const-class v5, Landroid/app/UiModeManager;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/UiModeManager;

    iput-object v4, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mUiModeManager:Landroid/app/UiModeManager;

    iget-object v4, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBubblesOptional:Ljava/util/Optional;

    new-instance v5, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda1;

    const/4 v6, 0x1

    invoke-direct {v5, v1, v6}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;I)V

    invoke-virtual {v4, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v4, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$listenForQsExpandedChange$1;

    invoke-direct {v5, v4, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController$listenForQsExpandedChange$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lkotlin/coroutines/Continuation;)V

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v7, 0x6

    invoke-static {v4, v0, v0, v5, v7}, Lcom/android/app/tracing/coroutines/CoroutineTracingKt;->launchTraced$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    iget-object v4, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->init()V

    iget-object v4, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    iget-object v5, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mOnColorsChangedListener:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda2;

    invoke-virtual {v4, v5}, Lcom/android/internal/colorextraction/ColorExtractor;->addOnColorsChangedListener(Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;)V

    iget-object v4, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v4

    iput-object v4, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    iput v4, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDisplayId:I

    iget-object v4, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDisplay:Landroid/view/Display;

    iget-object v5, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v4, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v4, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDisplay:Landroid/view/Display;

    iget-object v5, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mCurrentDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v4, v5}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget-object v4, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarHideIconsForBouncerManager:Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager;

    iget v5, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDisplayId:I

    iput v5, v4, Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager;->displayId:I

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->initShadeVisibilityListener()V

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    iget-object v4, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mContext:Landroid/content/Context;

    const-string v5, "accessibility"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityManager;

    iget-object v4, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v5, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    iput-object v5, v4, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    const-string v4, "statusbar"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v4

    iput-object v4, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v4, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mContext:Landroid/content/Context;

    const-string v5, "keyguard"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/KeyguardManager;

    iget-object v4, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v4}, Landroid/app/WallpaperManager;->isWallpaperSupported()Z

    move-result v4

    iput-boolean v4, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mWallpaperSupported:Z

    iget-object v4, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDisplay:Landroid/view/Display;

    iget-object v5, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v4, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v4, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDisplay:Landroid/view/Display;

    iget-object v5, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mCurrentDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v4, v5}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->updateResources$1()V

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->updateTheme()V

    iget-object v4, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    check-cast v4, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    iget-object v5, v4, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mWindowRootViewComponentFactory:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WindowRootViewComponentFactory;

    invoke-virtual {v5}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WindowRootViewComponentFactory;->create()Lcom/android/systemui/scene/ui/view/WindowRootViewComponent;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WindowRootViewComponentImpl;

    invoke-virtual {v5}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$WindowRootViewComponentImpl;->getWindowRootView()Lcom/android/systemui/scene/ui/view/WindowRootView;

    move-result-object v5

    iput-object v5, v4, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mWindowRootView:Lcom/android/systemui/scene/ui/view/WindowRootView;

    iget-object v7, v4, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mShadeInteractorLazy:Ldagger/Lazy;

    invoke-interface {v7}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;

    check-cast v8, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;

    iget-object v8, v8, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;->baseShadeInteractor:Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;

    invoke-interface {v8}, Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;->isAnyExpanded()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v8

    new-instance v9, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda5;

    invoke-direct {v9, v4, v3}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;I)V

    iget-object v10, v4, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mExt:Lcom/android/systemui/shade/NotificationShadeWindowControllerExt;

    iget-object v10, v10, Lcom/android/systemui/shade/NotificationShadeWindowControllerExt;->mainCoroutineContext:Lkotlin/coroutines/CoroutineContext;

    invoke-static {v5, v8, v9, v10}, Lcom/android/systemui/util/kotlin/JavaAdapterKt;->collectFlow(Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;Lkotlin/coroutines/CoroutineContext;)Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;

    iget-object v5, v4, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mWindowRootView:Lcom/android/systemui/scene/ui/view/WindowRootView;

    invoke-interface {v7}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/shade/domain/interactor/ShadeInteractor;

    check-cast v7, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;

    iget-object v7, v7, Lcom/android/systemui/shade/domain/interactor/ShadeInteractorImpl;->baseShadeInteractor:Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;

    invoke-interface {v7}, Lcom/android/systemui/shade/domain/interactor/BaseShadeInteractor;->isQsExpanded()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v7

    new-instance v8, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda5;

    invoke-direct {v8, v4, v6}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;I)V

    invoke-static {v5, v7, v8}, Lcom/android/systemui/util/kotlin/JavaAdapterKt;->collectFlow(Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;)Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;

    iget-object v5, v4, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mWindowRootView:Lcom/android/systemui/scene/ui/view/WindowRootView;

    iget-object v7, v4, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCommunalInteractor:Ldagger/Lazy;

    invoke-interface {v7}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;

    iget-object v7, v7, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;->isCommunalVisible:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v8, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda5;

    invoke-direct {v8, v4, v2}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;I)V

    invoke-static {v5, v7, v8}, Lcom/android/systemui/util/kotlin/JavaAdapterKt;->collectFlow(Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;)Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->getNotificationShadeWindowViewController()Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    move-result-object v5

    iget-object v7, v5, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mView:Lcom/android/systemui/shade/NotificationShadeWindowView;

    const v8, 0x7f0b0896

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iput-object v8, v5, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    new-instance v8, Landroid/view/GestureDetector;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, v5, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mPulsingGestureListener:Lcom/android/systemui/shade/PulsingGestureListener;

    invoke-direct {v8, v9, v10}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v8, v5, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mPulsingWakeupGestureHandler:Landroid/view/GestureDetector;

    iget-object v8, v5, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mNotificationInsetsController:Lcom/android/systemui/statusbar/NotificationInsetsImpl;

    invoke-virtual {v7, v8}, Lcom/android/systemui/scene/ui/view/WindowRootView;->setLayoutInsetsController(Lcom/android/systemui/scene/ui/view/WindowRootView$LayoutInsetsController;)V

    iget-object v8, v5, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mWindowRootViewKeyEventHandler:Lcom/android/systemui/scene/ui/view/WindowRootViewKeyEventHandler;

    invoke-virtual {v7, v8}, Lcom/android/systemui/scene/ui/view/WindowRootView;->setWindowRootViewKeyEventHandler(Lcom/android/systemui/scene/ui/view/WindowRootViewKeyEventHandler;)V

    new-instance v8, Lcom/android/systemui/shade/NotificationShadeWindowViewController$1;

    invoke-direct {v8, v5}, Lcom/android/systemui/shade/NotificationShadeWindowViewController$1;-><init>(Lcom/android/systemui/shade/NotificationShadeWindowViewController;)V

    iput-object v8, v7, Lcom/android/systemui/shade/NotificationShadeWindowView;->mInteractionEventHandler:Lcom/android/systemui/shade/NotificationShadeWindowViewController$1;

    new-instance v8, Lcom/android/systemui/shade/NotificationShadeWindowViewController$2;

    invoke-direct {v8, v5}, Lcom/android/systemui/shade/NotificationShadeWindowViewController$2;-><init>(Lcom/android/systemui/shade/NotificationShadeWindowViewController;)V

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    iget-object v8, v5, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mLockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    iget-object v8, v8, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->touchHelper:Lcom/android/systemui/statusbar/DragDownHelper;

    invoke-virtual {v5, v8}, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->setDragDownHelper(Lcom/android/systemui/statusbar/DragDownHelper;)V

    iget-object v5, v5, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mDepthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    iput-object v7, v5, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->root:Lcom/android/systemui/shade/NotificationShadeWindowView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->getNotificationShadeWindowViewController()Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    move-result-object v5

    iget-object v7, v5, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mGlanceableHubContainerController:Lcom/android/systemui/shade/GlanceableHubContainerController;

    iget-object v7, v7, Lcom/android/systemui/shade/GlanceableHubContainerController;->communalInteractor:Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;

    invoke-virtual {v7}, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;->isCommunalAvailable()Lkotlinx/coroutines/flow/Flow;

    move-result-object v8

    iget-object v7, v7, Lcom/android/systemui/communal/domain/interactor/CommunalInteractor;->editModeOpen:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    filled-new-array {v8, v7}, [Lkotlinx/coroutines/flow/Flow;

    move-result-object v7

    invoke-static {v7}, Lkotlin/collections/ArraysKt;->asIterable([Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v7

    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v7

    new-array v8, v3, [Lkotlinx/coroutines/flow/Flow;

    invoke-interface {v7, v8}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lkotlinx/coroutines/flow/Flow;

    new-instance v8, Lcom/android/systemui/util/kotlin/BooleanFlowOperators$not$$inlined$map$1;

    invoke-direct {v8, v2, v7}, Lcom/android/systemui/util/kotlin/BooleanFlowOperators$not$$inlined$map$1;-><init>(ILjava/lang/Object;)V

    invoke-static {v8}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v7

    new-instance v8, Lcom/android/systemui/shade/NotificationShadeWindowViewController$$ExternalSyntheticLambda6;

    invoke-direct {v8, v5, v3}, Lcom/android/systemui/shade/NotificationShadeWindowViewController$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/shade/NotificationShadeWindowViewController;I)V

    iget-object v5, v5, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mView:Lcom/android/systemui/shade/NotificationShadeWindowView;

    invoke-static {v5, v7, v8}, Lcom/android/systemui/util/kotlin/JavaAdapterKt;->collectFlow(Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;)Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->getNotificationShadeWindowViewController()Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    move-result-object v5

    iget-object v5, v5, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mView:Lcom/android/systemui/shade/NotificationShadeWindowView;

    new-instance v7, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda24;

    invoke-direct {v7, v1}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda24;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V

    invoke-virtual {v5, v7}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->getNotificationShadeWindowViewController()Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    move-result-object v5

    iget-object v5, v5, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mView:Lcom/android/systemui/shade/NotificationShadeWindowView;

    iget-object v7, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mWallpaperController:Lcom/android/systemui/util/WallpaperController;

    iput-object v5, v7, Lcom/android/systemui/util/WallpaperController;->rootView:Lcom/android/systemui/shade/NotificationShadeWindowView;

    iget-object v7, v7, Lcom/android/systemui/util/WallpaperController;->wallpaperRepository:Lcom/android/systemui/wallpapers/data/repository/WallpaperRepository;

    check-cast v7, Lcom/android/systemui/wallpapers/data/repository/WallpaperRepositoryImpl;

    iput-object v5, v7, Lcom/android/systemui/wallpapers/data/repository/WallpaperRepositoryImpl;->rootView:Lcom/android/systemui/shade/NotificationShadeWindowView;

    iget-object v5, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDemoModeCallback:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$21;

    iget-object v7, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDemoModeController:Lcom/android/systemui/demomode/DemoModeController;

    invoke-virtual {v7, v5}, Lcom/android/systemui/demomode/DemoModeController;->addCallback(Lcom/android/systemui/demomode/DemoMode;)V

    iget-object v5, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mPluginDependencyProvider:Lcom/android/systemui/plugins/PluginDependencyProvider;

    const-class v7, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-virtual {v5, v7}, Lcom/android/systemui/plugins/PluginDependencyProvider;->allowPluginDependency(Ljava/lang/Class;)V

    iget-object v5, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mCommandQueueCallbacksLazy:Ldagger/Lazy;

    invoke-interface {v5}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;

    iput-object v5, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mCommandQueueCallbacks:Lcom/android/systemui/statusbar/phone/CentralSurfacesCommandQueueCallbacks;

    iget-object v7, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v7, v5}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    iget-object v5, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    iget-object v7, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    invoke-virtual {v5, v7}, Lcom/android/systemui/shade/ShadeExpansionStateManager;->addExpansionListener(Lcom/android/systemui/shade/ShadeExpansionListener;)Lcom/android/systemui/shade/ShadeExpansionChangeEvent;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->onPanelExpansionChanged$1(Lcom/android/systemui/shade/ShadeExpansionChangeEvent;)V

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->getNotificationShadeWindowViewController()Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    move-result-object v5

    iget-object v5, v5, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mView:Lcom/android/systemui/shade/NotificationShadeWindowView;

    iget-object v7, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeTouchableRegionManager:Lcom/android/systemui/statusbar/phone/ShadeTouchableRegionManager;

    iput-object v5, v7, Lcom/android/systemui/statusbar/phone/ShadeTouchableRegionManager;->mNotificationShadeWindowView:Lcom/android/systemui/shade/NotificationShadeWindowView;

    const v8, 0x7f0b088f

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v7, Lcom/android/systemui/statusbar/phone/ShadeTouchableRegionManager;->mNotificationPanelView:Landroid/view/View;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->getNotificationShadeWindowViewController()Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    move-result-object v5

    iget-object v5, v5, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mView:Lcom/android/systemui/shade/NotificationShadeWindowView;

    const v7, 0x7f0b00e7

    invoke-virtual {v5, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mAmbientIndicationContainer:Landroid/view/View;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->getNotificationShadeWindowViewController()Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    move-result-object v5

    iget-object v5, v5, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mView:Lcom/android/systemui/shade/NotificationShadeWindowView;

    const v7, 0x7f0b0a7e

    invoke-virtual {v5, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/scrim/ScrimView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->getNotificationShadeWindowViewController()Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    move-result-object v7

    iget-object v7, v7, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mView:Lcom/android/systemui/shade/NotificationShadeWindowView;

    const v8, 0x7f0b0a81

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/scrim/ScrimView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->getNotificationShadeWindowViewController()Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    move-result-object v8

    iget-object v8, v8, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mView:Lcom/android/systemui/shade/NotificationShadeWindowView;

    const v9, 0x7f0b0a7f

    invoke-virtual {v8, v9}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/scrim/ScrimView;

    new-instance v9, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda1;

    const/4 v10, 0x3

    invoke-direct {v9, v1, v10}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;I)V

    iget-object v10, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    iput-object v9, v10, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimVisibleListener:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda1;

    iput-object v7, v10, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsScrim:Lcom/android/systemui/scrim/ScrimView;

    iput-object v5, v10, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    iput-object v8, v10, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/scrim/ScrimView;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateThemeColors()V

    iget-object v8, v10, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsScrim:Lcom/android/systemui/scrim/ScrimView;

    invoke-virtual {v10, v8}, Lcom/android/systemui/statusbar/phone/ScrimController;->getScrimName(Lcom/android/systemui/scrim/ScrimView;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/systemui/scrim/ScrimView;->setScrimName(Ljava/lang/String;)V

    iget-object v8, v10, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    invoke-virtual {v10, v8}, Lcom/android/systemui/statusbar/phone/ScrimController;->getScrimName(Lcom/android/systemui/scrim/ScrimView;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/systemui/scrim/ScrimView;->setScrimName(Ljava/lang/String;)V

    iget-object v8, v10, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/scrim/ScrimView;

    invoke-virtual {v10, v8}, Lcom/android/systemui/statusbar/phone/ScrimController;->getScrimName(Lcom/android/systemui/scrim/ScrimView;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/systemui/scrim/ScrimView;->setScrimName(Ljava/lang/String;)V

    iget-object v8, v5, Lcom/android/systemui/scrim/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v9, v8, Lcom/android/systemui/scrim/ScrimDrawable;

    if-eqz v9, :cond_0

    check-cast v8, Lcom/android/systemui/scrim/ScrimDrawable;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    iget-object v8, v10, Lcom/android/systemui/statusbar/phone/ScrimController;->mNotificationsScrim:Lcom/android/systemui/scrim/ScrimView;

    iget-object v8, v8, Lcom/android/systemui/scrim/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v9, v8, Lcom/android/systemui/scrim/ScrimDrawable;

    if-eqz v9, :cond_2

    check-cast v8, Lcom/android/systemui/scrim/ScrimDrawable;

    iget-boolean v9, v8, Lcom/android/systemui/scrim/ScrimDrawable;->mCornerRadiusEnabled:Z

    if-ne v9, v6, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean v6, v8, Lcom/android/systemui/scrim/ScrimDrawable;->mCornerRadiusEnabled:Z

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/systemui/statusbar/phone/ScrimState;->values()[Lcom/android/systemui/statusbar/phone/ScrimState;

    move-result-object v8

    move v9, v3

    :goto_1
    array-length v11, v8

    if-ge v9, v11, :cond_3

    aget-object v11, v8, v9

    iget-object v12, v10, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/scrim/ScrimView;

    iget-object v13, v10, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    iget-object v14, v10, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    iget-object v15, v10, Lcom/android/systemui/statusbar/phone/ScrimController;->mDockManager:Lcom/android/systemui/dock/DockManager;

    new-instance v0, Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda6;

    invoke-direct {v0, v10}, Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;)V

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v16, v6

    invoke-virtual {v13}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const v3, 0x7f060ccc

    invoke-virtual {v6, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    iput v3, v11, Lcom/android/systemui/statusbar/phone/ScrimState;->mBackgroundColor:I

    iput-object v12, v11, Lcom/android/systemui/statusbar/phone/ScrimState;->mScrimInFront:Lcom/android/systemui/scrim/ScrimView;

    iput-object v13, v11, Lcom/android/systemui/statusbar/phone/ScrimState;->mScrimBehind:Lcom/android/systemui/scrim/ScrimView;

    iput-object v14, v11, Lcom/android/systemui/statusbar/phone/ScrimState;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    iput-object v15, v11, Lcom/android/systemui/statusbar/phone/ScrimState;->mDockManager:Lcom/android/systemui/dock/DockManager;

    invoke-virtual {v14}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getDisplayNeedsBlanking()Z

    move-result v3

    iput-boolean v3, v11, Lcom/android/systemui/statusbar/phone/ScrimState;->mDisplayRequiresBlanking:Z

    iput-object v0, v11, Lcom/android/systemui/statusbar/phone/ScrimState;->mIsBlurSupported:Ljava/util/function/Supplier;

    aget-object v0, v8, v9

    const/4 v3, 0x0

    iput v3, v0, Lcom/android/systemui/statusbar/phone/ScrimState;->mScrimBehindAlphaKeyguard:F

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ScrimState;->setDefaultScrimAlpha()V

    add-int/lit8 v9, v9, 0x1

    move/from16 v6, v16

    const/4 v0, 0x0

    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    move/from16 v16, v6

    invoke-virtual {v7}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0500b2

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v10, Lcom/android/systemui/statusbar/phone/ScrimController;->mTransparentScrimBackground:Z

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrims()V

    iget-object v0, v10, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v3, v10, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardVisibilityCallback:Lcom/android/systemui/statusbar/phone/ScrimController$KeyguardVisibilityCallback;

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    invoke-static {}, Lcom/android/systemui/statusbar/phone/ScrimState;->values()[Lcom/android/systemui/statusbar/phone/ScrimState;

    move-result-object v0

    array-length v3, v0

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v3, :cond_4

    aget-object v7, v0, v6

    invoke-virtual {v7, v7}, Lcom/android/systemui/statusbar/phone/ScrimState;->prepare(Lcom/android/systemui/statusbar/phone/ScrimState;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    new-instance v0, Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda1;

    invoke-direct {v0, v10, v2}, Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;I)V

    iput-object v0, v10, Lcom/android/systemui/statusbar/phone/ScrimController;->mBouncerToGoneTransition:Ljava/util/function/Consumer;

    iget-object v0, v10, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardTransitionInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;

    sget-object v3, Lcom/android/systemui/keyguard/shared/model/Edge;->Companion:Lcom/android/systemui/keyguard/shared/model/Edge$Companion;

    sget-object v3, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->PRIMARY_BOUNCER:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    sget-object v6, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->GONE:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    new-instance v7, Lcom/android/systemui/keyguard/shared/model/Edge$StateToState;

    invoke-direct {v7, v3, v6}, Lcom/android/systemui/keyguard/shared/model/Edge$StateToState;-><init>(Lcom/android/systemui/keyguard/shared/model/KeyguardState;Lcom/android/systemui/keyguard/shared/model/KeyguardState;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v7}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->transition(Lcom/android/systemui/keyguard/shared/model/Edge;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    iget-object v3, v10, Lcom/android/systemui/statusbar/phone/ScrimController;->mBouncerToGoneTransition:Ljava/util/function/Consumer;

    iget-object v7, v10, Lcom/android/systemui/statusbar/phone/ScrimController;->mMainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {v5, v0, v3, v7}, Lcom/android/systemui/util/kotlin/JavaAdapterKt;->collectFlow(Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;Lkotlin/coroutines/CoroutineContext;)Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;

    iget-object v0, v10, Lcom/android/systemui/statusbar/phone/ScrimController;->mPrimaryBouncerToGoneTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/PrimaryBouncerToGoneTransitionViewModel;

    iget-object v0, v0, Lcom/android/systemui/keyguard/ui/viewmodel/PrimaryBouncerToGoneTransitionViewModel;->scrimAlpha:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    iget-object v3, v10, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimAlphaConsumer:Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda1;

    iget-object v7, v10, Lcom/android/systemui/statusbar/phone/ScrimController;->mMainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {v5, v0, v3, v7}, Lcom/android/systemui/util/kotlin/JavaAdapterKt;->collectFlow(Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;Lkotlin/coroutines/CoroutineContext;)Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;

    iget-object v0, v10, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardTransitionInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;

    sget-object v3, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->ALTERNATE_BOUNCER:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    sget-object v7, Lcom/android/systemui/scene/shared/model/Scenes;->Communal:Lcom/android/compose/animation/scene/SceneKey;

    new-instance v7, Lcom/android/systemui/keyguard/shared/model/Edge$StateToContent;

    new-instance v7, Lcom/android/systemui/keyguard/shared/model/Edge$StateToState;

    invoke-direct {v7, v3, v6}, Lcom/android/systemui/keyguard/shared/model/Edge$StateToState;-><init>(Lcom/android/systemui/keyguard/shared/model/KeyguardState;Lcom/android/systemui/keyguard/shared/model/KeyguardState;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v7}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->transition(Lcom/android/systemui/keyguard/shared/model/Edge;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    iget-object v3, v10, Lcom/android/systemui/statusbar/phone/ScrimController;->mBouncerToGoneTransition:Ljava/util/function/Consumer;

    iget-object v6, v10, Lcom/android/systemui/statusbar/phone/ScrimController;->mMainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {v5, v0, v3, v6}, Lcom/android/systemui/util/kotlin/JavaAdapterKt;->collectFlow(Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;Lkotlin/coroutines/CoroutineContext;)Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;

    iget-object v0, v10, Lcom/android/systemui/statusbar/phone/ScrimController;->mAlternateBouncerToGoneTransitionViewModel:Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerToGoneTransitionViewModel;

    iget-object v0, v0, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerToGoneTransitionViewModel;->scrimAlpha:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    iget-object v3, v10, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimAlphaConsumer:Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda1;

    iget-object v6, v10, Lcom/android/systemui/statusbar/phone/ScrimController;->mMainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {v5, v0, v3, v6}, Lcom/android/systemui/util/kotlin/JavaAdapterKt;->collectFlow(Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;Lkotlin/coroutines/CoroutineContext;)Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;

    iget-object v0, v10, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardTransitionInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;

    sget-object v3, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->LOCKSCREEN:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    new-instance v6, Lcom/android/systemui/keyguard/shared/model/Edge$StateToContent;

    sget-object v6, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->GLANCEABLE_HUB:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    new-instance v7, Lcom/android/systemui/keyguard/shared/model/Edge$StateToState;

    invoke-direct {v7, v3, v6}, Lcom/android/systemui/keyguard/shared/model/Edge$StateToState;-><init>(Lcom/android/systemui/keyguard/shared/model/KeyguardState;Lcom/android/systemui/keyguard/shared/model/KeyguardState;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v7}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->transition(Lcom/android/systemui/keyguard/shared/model/Edge;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    iget-object v7, v10, Lcom/android/systemui/statusbar/phone/ScrimController;->mGlanceableHubConsumer:Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda1;

    iget-object v8, v10, Lcom/android/systemui/statusbar/phone/ScrimController;->mMainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {v5, v0, v7, v8}, Lcom/android/systemui/util/kotlin/JavaAdapterKt;->collectFlow(Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;Lkotlin/coroutines/CoroutineContext;)Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;

    iget-object v0, v10, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardTransitionInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;

    new-instance v7, Lcom/android/systemui/keyguard/shared/model/Edge$ContentToState;

    new-instance v7, Lcom/android/systemui/keyguard/shared/model/Edge$StateToState;

    invoke-direct {v7, v6, v3}, Lcom/android/systemui/keyguard/shared/model/Edge$StateToState;-><init>(Lcom/android/systemui/keyguard/shared/model/KeyguardState;Lcom/android/systemui/keyguard/shared/model/KeyguardState;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v7}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->transition(Lcom/android/systemui/keyguard/shared/model/Edge;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    iget-object v3, v10, Lcom/android/systemui/statusbar/phone/ScrimController;->mGlanceableHubConsumer:Lcom/android/systemui/statusbar/phone/ScrimController$$ExternalSyntheticLambda1;

    iget-object v6, v10, Lcom/android/systemui/statusbar/phone/ScrimController;->mMainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    invoke-static {v5, v0, v3, v6}, Lcom/android/systemui/util/kotlin/JavaAdapterKt;->collectFlow(Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;Lkotlin/coroutines/CoroutineContext;)Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;

    new-instance v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda1;

    const/4 v3, 0x4

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;I)V

    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLightRevealScrim:Lcom/android/systemui/statusbar/LightRevealScrim;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/LightRevealScrim;->setScrimOpaqueChangedListener(Ljava/util/function/Consumer;)V

    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;->animations:Ljava/util/List;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    iget-object v7, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeSurface:Lcom/android/systemui/shade/ShadeSurface;

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/phone/ScreenOffAnimation;

    invoke-interface {v6, v1, v7, v3}, Lcom/android/systemui/statusbar/phone/ScreenOffAnimation;->initialize(Lcom/android/systemui/statusbar/phone/CentralSurfaces;Lcom/android/systemui/shade/ShadeViewController;Lcom/android/systemui/statusbar/LightRevealScrim;)V

    goto :goto_3

    :cond_5
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;->wakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object v3, v3, Lcom/android/systemui/keyguard/Lifecycle;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeController:Lcom/android/systemui/shade/ShadeController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda18;

    const/4 v5, 0x0

    invoke-direct {v3, v5, v0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda18;-><init>(ILjava/lang/Object;)V

    iget-object v6, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mHeadsUpManager:Lcom/android/systemui/statusbar/notification/headsup/HeadsUpManager;

    invoke-interface {v7, v1, v3, v6}, Lcom/android/systemui/shade/ShadeSurface;->initDependencies(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda18;Lcom/android/systemui/statusbar/notification/headsup/HeadsUpManager;)V

    new-instance v3, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda18;

    invoke-direct {v3, v5, v0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda18;-><init>(ILjava/lang/Object;)V

    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mTinyKeyguardPanelViewController:Lcom/android/keyguard/tinyPanel/TinyKeyguardPanelViewController;

    invoke-interface {v0, v1, v3}, Lcom/android/keyguard/tinyPanel/TinyKeyguardPanelViewController;->initDependencies(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda18;)V

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->getNotificationShadeWindowViewController()Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mView:Lcom/android/systemui/shade/NotificationShadeWindowView;

    const v3, 0x7f0b09aa

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mFragmentService:Lcom/android/systemui/fragments/FragmentService;

    invoke-virtual {v3, v0}, Lcom/android/systemui/fragments/FragmentService;->getFragmentHostManager(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object v3

    iget-object v5, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mExtensionController:Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;

    const-class v6, Lcom/android/systemui/plugins/qs/QS;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;

    invoke-direct {v7, v5}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;-><init>(Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;)V

    invoke-static {v6}, Lcom/android/systemui/plugins/PluginManager$Helper;->getAction(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    iget-object v8, v7, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;->mProducers:Ljava/util/ArrayList;

    new-instance v9, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$PluginItem;

    invoke-direct {v9, v7, v5, v6}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$PluginItem;-><init>(Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda19;

    invoke-direct {v5, v1}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda19;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V

    iget-object v6, v7, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;->mProducers:Ljava/util/ArrayList;

    new-instance v8, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$Default;

    invoke-direct {v8, v5}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$Default;-><init>(Ljava/util/function/Supplier;)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v7, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;->mProducers:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    invoke-static {v6}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;->-$$Nest$mnotifyChanged(Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;)V

    new-instance v5, Lcom/android/systemui/fragments/ExtensionFragmentListener;

    iget-object v6, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mFragmentService:Lcom/android/systemui/fragments/FragmentService;

    invoke-direct {v5, v6, v0, v7}, Lcom/android/systemui/fragments/ExtensionFragmentListener;-><init>(Lcom/android/systemui/fragments/FragmentService;Landroid/view/View;Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;)V

    iget-object v0, v7, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v6, Lcom/android/systemui/qs/brightness/MiuiBrightnessMirrorController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->getNotificationShadeWindowViewController()Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    move-result-object v0

    iget-object v7, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mView:Lcom/android/systemui/shade/NotificationShadeWindowView;

    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationShadeDepthControllerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    new-instance v11, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda1;

    const/4 v0, 0x5

    invoke-direct {v11, v1, v0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;I)V

    iget-object v8, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeSurface:Lcom/android/systemui/shade/ShadeSurface;

    iget-object v10, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBrightnessSliderFactory:Lcom/android/systemui/settings/brightness/BrightnessSliderController$BrightnessSliderControllerFactory;

    invoke-direct/range {v6 .. v11}, Lcom/android/systemui/qs/brightness/MiuiBrightnessMirrorController;-><init>(Lcom/android/systemui/shade/NotificationShadeWindowView;Lcom/android/systemui/shade/ShadeViewController;Lcom/android/systemui/statusbar/NotificationShadeDepthController;Lcom/android/systemui/settings/brightness/BrightnessSliderController$BrightnessSliderControllerFactory;Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda1;)V

    iput-object v6, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBrightnessMirrorController:Lcom/android/systemui/qs/brightness/MiuiBrightnessMirrorController;

    new-instance v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda21;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda21;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V

    const-string v5, "QS"

    invoke-virtual {v3, v5, v0}, Lcom/android/systemui/fragments/FragmentHostManager;->addTagListener(Ljava/lang/String;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)V

    :cond_6
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->getNotificationShadeWindowViewController()Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mView:Lcom/android/systemui/shade/NotificationShadeWindowView;

    const v3, 0x7f0b09ed

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mReportRejectedTouch:Landroid/view/View;

    if-eqz v0, :cond_7

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->updateReportRejectedTouchVisibility()V

    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mReportRejectedTouch:Landroid/view/View;

    new-instance v3, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda15;

    invoke-direct {v3, v1}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda15;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBroadcastReceiver:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$8;

    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.SCREEN_OFF"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v5}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$8;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_8
    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mPowerManager:Landroid/os/PowerManager;

    const/16 v3, 0xa

    const-string v5, "sysui:GestureWakeLock"

    invoke-virtual {v0, v3, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mGestureWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->registerBroadcastReceiver()V

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->RefreshEliteStatusbarReceiver()V

    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mUserSetupObserver:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$15;

    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    check-cast v3, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->addCallback(Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;)V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$15;->onUserSetupChanged()V

    const-string v0, "disableProfileBars"

    const-string v3, "true"

    invoke-static {v0, v3}, Landroid/view/ThreadedRenderer;->overrideProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v0, 0x3fc00000

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    const-string v3, "ambientRatio"

    invoke-static {v3, v0}, Landroid/view/ThreadedRenderer;->overrideProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/systemui/statusbar/phone/MyModifiedUI/EdgeScreenService;

    invoke-direct {v3, v0}, Lcom/android/systemui/statusbar/phone/MyModifiedUI/EdgeScreenService;-><init>(Landroid/content/Context;)V

    iget-object v0, v4, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mShadeWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput-object v0, v4, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, v4, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mWindowManager:Landroid/view/WindowManager;

    iget-object v5, v4, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mWindowRootView:Lcom/android/systemui/scene/ui/view/WindowRootView;

    invoke-interface {v3, v5, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/content/Intent;

    const-string v3, "my.intent.action.REFRESH_SPOOF"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v0, v4, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mWindowRootView:Lcom/android/systemui/scene/ui/view/WindowRootView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, v4, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mWindowRootView:Lcom/android/systemui/scene/ui/view/WindowRootView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/WindowInsetsController;->setSystemBarsBehavior(I)V

    :cond_9
    iget-object v0, v4, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, v4, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v3}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    invoke-virtual {v4}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->onThemeChanged()V

    iget-object v0, v4, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowingAndNotOccluded()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v4, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mCurrentState:Lcom/android/systemui/shade/NotificationShadeWindowState;

    move/from16 v3, v16

    iput-boolean v3, v0, Lcom/android/systemui/shade/NotificationShadeWindowState;->keyguardShowing:Z

    invoke-virtual {v4, v0}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->apply(Lcom/android/systemui/shade/NotificationShadeWindowState;)V

    :cond_a
    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mActivityTransitionAnimator:Lcom/android/systemui/animation/ActivityTransitionAnimator;

    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mActivityTransitionAnimatorCallback:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$4;

    iput-object v3, v0, Lcom/android/systemui/animation/ActivityTransitionAnimator;->callback:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$4;

    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mActivityTransitionAnimatorListener:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$20;

    iget-object v0, v0, Lcom/android/systemui/animation/ActivityTransitionAnimator;->listeners:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    if-eqz v4, :cond_b

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v4, Lcom/android/systemui/statusbar/RemoteInputController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_b
    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mControllerCallbacks:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationActivityStarterLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;

    iget-object v4, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    iput-object v3, v4, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->mNotificationActivityStarter:Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;

    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mPresenterLazy:Ldagger/Lazy;

    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    iget-object v5, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeController:Lcom/android/systemui/shade/ShadeController;

    check-cast v5, Lcom/android/systemui/shade/BaseShadeControllerImpl;

    iput-object v4, v5, Lcom/android/systemui/shade/BaseShadeControllerImpl;->notifPresenter:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    iget-object v5, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotifListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationListContainerImpl;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;

    iget-object v6, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationsController:Lcom/android/systemui/statusbar/notification/init/NotificationsController;

    invoke-interface {v6, v4, v5, v0}, Lcom/android/systemui/statusbar/notification/init/NotificationsController;->initialize(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;Lcom/android/systemui/statusbar/phone/StatusBarNotificationActivityStarter;)V

    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mWindowRootViewVisibilityInteractor:Lcom/android/systemui/scene/domain/interactor/WindowRootViewVisibilityInteractor;

    iput-object v0, v3, Lcom/android/systemui/scene/domain/interactor/WindowRootViewVisibilityInteractor;->notificationPresenter:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;

    iget-boolean v0, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mWallpaperSupported:Z

    if-eqz v0, :cond_c

    const-string v0, "wallpaper"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IWallpaperManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManager;

    move-result-object v0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-interface {v0, v5, v3, v4}, Landroid/app/IWallpaperManager;->setInAmbientMode(ZJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_c
    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mIconPolicy:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.telecom.action.CURRENT_TTY_MODE_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.PROFILE_REMOVED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.PROFILE_ACCESSIBLE"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.PROFILE_INACCESSIBLE"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIntentReceiver:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$6;

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHandler:Landroid/os/Handler;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v5, v3, v6, v7}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiverWithHandler(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/Handler;Landroid/os/UserHandle;)V

    new-instance v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;)V

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mRingerModeTracker:Lcom/android/systemui/util/RingerModeTrackerImpl;

    iget-object v4, v4, Lcom/android/systemui/util/RingerModeTrackerImpl;->ringerMode:Lcom/android/systemui/util/RingerModeLiveData;

    invoke-virtual {v4, v3}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mRingerModeTracker:Lcom/android/systemui/util/RingerModeTrackerImpl;

    iget-object v4, v4, Lcom/android/systemui/util/RingerModeTrackerImpl;->ringerModeInternal:Lcom/android/systemui/util/RingerModeLiveData;

    invoke-virtual {v4, v3}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mUserSwitchListener:Lcom/android/systemui/settings/UserTracker$Callback;

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mMainExecutor:Ljava/util/concurrent/Executor;

    check-cast v3, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotAlarmClock:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f140e90

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    check-cast v3, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;

    const v6, 0x7f081b4c

    invoke-virtual {v3, v5, v4, v6}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->setIcon(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotAlarmClock:Ljava/lang/String;

    check-cast v3, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->setIconVisibility(Ljava/lang/String;Z)V

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotZen:Ljava/lang/String;

    const v6, 0x7f081b88

    check-cast v3, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;

    const/4 v7, 0x0

    invoke-virtual {v3, v7, v4, v6}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->setIcon(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotZen:Ljava/lang/String;

    check-cast v3, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->setIconVisibility(Ljava/lang/String;Z)V

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotMute:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f140121

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    check-cast v3, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;

    const v6, 0x7f081be9

    invoke-virtual {v3, v5, v4, v6}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->setIcon(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotMute:Ljava/lang/String;

    check-cast v3, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->setIconVisibility(Ljava/lang/String;Z)V

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotCast:Ljava/lang/String;

    const v6, 0x7f081b6b

    check-cast v3, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;

    const/4 v7, 0x0

    invoke-virtual {v3, v7, v4, v6}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->setIcon(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotCast:Ljava/lang/String;

    check-cast v3, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->setIconVisibility(Ljava/lang/String;Z)V

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotConnectedDisplay:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f1403bb

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    check-cast v3, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;

    const v6, 0x7f081b6c

    invoke-virtual {v3, v5, v4, v6}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->setIcon(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotConnectedDisplay:Ljava/lang/String;

    check-cast v3, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->setIconVisibility(Ljava/lang/String;Z)V

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotHotspot:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f140134

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    check-cast v3, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;

    const v7, 0x7f081bb9

    invoke-virtual {v3, v5, v4, v7}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->setIcon(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotHotspot:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHotspot:Lcom/android/systemui/statusbar/policy/HotspotController;

    check-cast v5, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->isHotspotEnabled()Z

    move-result v5

    check-cast v3, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->setIconVisibility(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateProfileIcon()V

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotDataSaver:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f140081

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    check-cast v3, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;

    const v7, 0x7f081b82

    invoke-virtual {v3, v5, v4, v7}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->setIcon(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotDataSaver:Ljava/lang/String;

    check-cast v3, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->setIconVisibility(Ljava/lang/String;Z)V

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mResources:Landroid/content/res/Resources;

    sget-object v4, Lcom/android/systemui/privacy/PrivacyType;->TYPE_MICROPHONE:Lcom/android/systemui/privacy/PrivacyType;

    invoke-virtual {v4}, Lcom/android/systemui/privacy/PrivacyType;->getNameId()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mResources:Landroid/content/res/Resources;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const v7, 0x7f140b36

    invoke-virtual {v5, v7, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;

    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotMicrophone:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/android/systemui/privacy/PrivacyType;->getIconId()I

    move-result v4

    check-cast v5, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;

    invoke-virtual {v5, v3, v8, v4}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->setIcon(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotMicrophone:Ljava/lang/String;

    check-cast v3, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->setIconVisibility(Ljava/lang/String;Z)V

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mResources:Landroid/content/res/Resources;

    sget-object v4, Lcom/android/systemui/privacy/PrivacyType;->TYPE_CAMERA:Lcom/android/systemui/privacy/PrivacyType;

    invoke-virtual {v4}, Lcom/android/systemui/privacy/PrivacyType;->getNameId()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mResources:Landroid/content/res/Resources;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v5, v7, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;

    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotCamera:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/android/systemui/privacy/PrivacyType;->getIconId()I

    move-result v4

    check-cast v5, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;

    invoke-virtual {v5, v3, v7, v4}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->setIcon(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotCamera:Ljava/lang/String;

    check-cast v3, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->setIconVisibility(Ljava/lang/String;Z)V

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotLocation:Ljava/lang/String;

    sget v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->LOCATION_STATUS_ICON_ID:I

    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mResources:Landroid/content/res/Resources;

    const v8, 0x7f1400c2

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    check-cast v3, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;

    invoke-virtual {v3, v7, v4, v5}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->setIcon(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotLocation:Ljava/lang/String;

    check-cast v3, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->setIconVisibility(Ljava/lang/String;Z)V

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotSensorsOff:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f140128

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    check-cast v3, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;

    const v7, 0x7f081bfd

    invoke-virtual {v3, v5, v4, v7}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->setIcon(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotSensorsOff:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSensorPrivacyController:Lcom/android/systemui/statusbar/policy/SensorPrivacyControllerImpl;

    iget-object v7, v5, Lcom/android/systemui/statusbar/policy/SensorPrivacyControllerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_1
    iget-boolean v5, v5, Lcom/android/systemui/statusbar/policy/SensorPrivacyControllerImpl;->mSensorPrivacyEnabled:Z

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    check-cast v3, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->setIconVisibility(Ljava/lang/String;Z)V

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotScreenRecord:Ljava/lang/String;

    const v5, 0x7f081bf9

    check-cast v3, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;

    const/4 v7, 0x0

    invoke-virtual {v3, v7, v4, v5}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->setIcon(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotScreenRecord:Ljava/lang/String;

    check-cast v3, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->setIconVisibility(Ljava/lang/String;Z)V

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string v5, "android.media.extra.AUDIO_MIC_PLUG_STATE"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mIntentReceiver:Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy$5;

    iget-object v7, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {v7, v5, v4}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    iget-object v4, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f140cce

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mIconController:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;

    check-cast v5, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;

    iget-object v7, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotZen:Ljava/lang/String;

    const v8, 0x7f081be6

    invoke-virtual {v5, v4, v7, v8}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->setIcon(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    const/4 v4, 0x0

    invoke-virtual {v5, v7, v4}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->setIconVisibility(Ljava/lang/String;Z)V

    iget-object v7, v3, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v8, 0x7f140ca6

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotLocation:Ljava/lang/String;

    const v9, 0x7f081b8e

    invoke-virtual {v5, v7, v8, v9}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->setIcon(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    invoke-virtual {v5, v8, v4}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->setIconVisibility(Ljava/lang/String;Z)V

    iget-object v7, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotRotate:Ljava/lang/String;

    const v8, 0x7f081bf2

    const/4 v9, 0x0

    invoke-virtual {v5, v9, v7, v8}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->setIcon(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    invoke-virtual {v5, v7, v4}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->setIconVisibility(Ljava/lang/String;Z)V

    iget-object v7, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotHotspot:Ljava/lang/String;

    const v8, 0x7f081c8c

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->setIcon(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    invoke-virtual {v5, v7, v4}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->setIconVisibility(Ljava/lang/String;Z)V

    iget-object v6, v3, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v7, 0x7f140122

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotMute:Ljava/lang/String;

    const v8, 0x7f081bec

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->setIcon(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    invoke-virtual {v5, v7, v4}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->setIconVisibility(Ljava/lang/String;Z)V

    iget-object v6, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f140133

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mSlotHeadset:Ljava/lang/String;

    const v8, 0x7f081bb2

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->setIcon(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    invoke-virtual {v5, v7, v4}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->setIconVisibility(Ljava/lang/String;Z)V

    iget-object v6, v3, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mSlotMicphone:Ljava/lang/String;

    const v7, 0x7f081bd2

    const/4 v9, 0x0

    invoke-virtual {v5, v9, v6, v7}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->setIcon(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    invoke-virtual {v5, v6, v4}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->setIconVisibility(Ljava/lang/String;Z)V

    iget-object v4, v3, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v6, 0x7f140cb8

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "nfc"

    const v7, 0x7f081bd5

    invoke-virtual {v5, v4, v6, v7}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->setIcon(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    iget-boolean v4, v3, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mNFCVisible:Z

    invoke-virtual {v5, v6, v4}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->setIconVisibility(Ljava/lang/String;Z)V

    const-string v4, "second_space"

    const v6, 0x7f081bc9

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v4, v6}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->setIcon(Ljava/lang/CharSequence;Ljava/lang/String;I)V

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->setIconVisibility(Ljava/lang/String;Z)V

    iget-object v4, v3, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mStatusBarManager:Landroid/app/StatusBarManager;

    iget-object v5, v3, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v7, 0x7f1403c3

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v7, "phone"

    const v8, 0x7f081be3

    invoke-virtual {v4, v7, v8, v6, v5}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    iget-object v4, v3, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v4, v7, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    iget-object v4, v3, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mStatusBarManager:Landroid/app/StatusBarManager;

    iget-object v5, v3, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v7, 0x7f1403c1

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v7, "pad"

    const v8, 0x7f081bdd

    invoke-virtual {v4, v7, v8, v6, v5}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    iget-object v4, v3, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v4, v7, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    iget-object v4, v3, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mStatusBarManager:Landroid/app/StatusBarManager;

    iget-object v5, v3, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v7, 0x7f1403c2

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v7, "pc"

    const v8, 0x7f081be0

    invoke-virtual {v4, v7, v8, v6, v5}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    iget-object v4, v3, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v4, v7, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    iget-object v4, v3, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mStatusBarManager:Landroid/app/StatusBarManager;

    iget-object v5, v3, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v7, 0x7f1403c4

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v7, "tv"

    const v8, 0x7f081c70

    invoke-virtual {v4, v7, v8, v6, v5}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    iget-object v4, v3, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v4, v7, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    iget-object v4, v3, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mStatusBarManager:Landroid/app/StatusBarManager;

    iget-object v5, v3, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v7, 0x7f1403bf

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v7, "car"

    const v8, 0x7f081b65

    invoke-virtual {v4, v7, v8, v6, v5}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    iget-object v4, v3, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v4, v7, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    iget-object v4, v3, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mStatusBarManager:Landroid/app/StatusBarManager;

    iget-object v5, v3, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v7, 0x7f141048

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v7, "wireless_headset"

    const v8, 0x7f081cb3

    invoke-virtual {v4, v7, v8, v6, v5}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    iget-object v4, v3, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v4, v7, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    iget-object v4, v3, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mStatusBarManager:Landroid/app/StatusBarManager;

    iget-object v5, v3, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v7, 0x7f141045

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v7, "sound_box"

    const v8, 0x7f081c5b

    invoke-virtual {v4, v7, v8, v6, v5}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    iget-object v4, v3, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v4, v7, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    iget-object v4, v3, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mStatusBarManager:Landroid/app/StatusBarManager;

    iget-object v5, v3, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v7, 0x7f141046

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v7, "sound_box_screen"

    const v8, 0x7f081c5d

    invoke-virtual {v4, v7, v8, v6, v5}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    iget-object v4, v3, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v4, v7, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    iget-object v4, v3, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mStatusBarManager:Landroid/app/StatusBarManager;

    iget-object v5, v3, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v7, 0x7f141047

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v7, "stereo"

    const v8, 0x7f081c67

    invoke-virtual {v4, v7, v8, v6, v5}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    iget-object v4, v3, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v4, v7, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    iget-object v4, v3, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mStatusBarManager:Landroid/app/StatusBarManager;

    iget-object v5, v3, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v7, 0x7f141043

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v7, "sound_box_group"

    const v8, 0x7f081bc6

    invoke-virtual {v4, v7, v8, v6, v5}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    iget-object v4, v3, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v4, v7, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    iget-object v4, v3, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mStatusBarManager:Landroid/app/StatusBarManager;

    iget-object v5, v3, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v7, 0x7f141042

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v7, "glasses"

    const v8, 0x7f081b8b

    invoke-virtual {v4, v7, v8, v6, v5}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    iget-object v4, v3, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v5, "glasses"

    invoke-virtual {v4, v5, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    iget-object v4, v3, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mStatusBarManager:Landroid/app/StatusBarManager;

    iget-object v5, v3, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v7, 0x7f1403c0

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v7, "camera"

    const v8, 0x7f081b62

    invoke-virtual {v4, v7, v8, v6, v5}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    iget-object v4, v3, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v5, "camera"

    invoke-virtual {v4, v5, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    iget-object v4, v3, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v5, "handle"

    const v7, 0x7f081b91

    const/4 v9, 0x0

    invoke-virtual {v4, v5, v7, v6, v9}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    iget-object v4, v3, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v5, "handle"

    invoke-virtual {v4, v5, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    iget-object v4, v3, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mStatusBarManager:Landroid/app/StatusBarManager;

    iget-object v5, v3, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    const v7, 0x7f14049d

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v7, "dist_compute"

    const v8, 0x7f081b85

    invoke-virtual {v4, v7, v8, v6, v5}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    iget-object v4, v3, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v5, "dist_compute"

    invoke-virtual {v4, v5, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    iget-object v4, v3, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v5, "mute"

    const v7, 0x7f081b47

    const/4 v9, 0x0

    invoke-virtual {v4, v5, v7, v6, v9}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    iget-object v4, v3, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v5, "mute"

    invoke-virtual {v4, v5, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    iget-object v4, v3, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mStatusBarManager:Landroid/app/StatusBarManager;

    iget-object v5, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f14013a

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v7, "stealth"

    const v8, 0x7f081c64

    invoke-virtual {v4, v7, v8, v6, v5}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    iget-object v4, v3, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v5, "stealth"

    invoke-virtual {v4, v5, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    iget-object v4, v3, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    iget-object v5, v3, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v5

    iget-object v6, v3, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v6, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v6, v4, v5}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    iget-object v4, v3, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v4, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v4}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v4

    iput v4, v3, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mCurrentUserId:I

    iget-object v4, v3, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "open_second_space_status_icon"

    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, v3, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mSecondSpaceStatusIconObserver:Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy$1;

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v4, v3, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mSecondSpaceStatusIconObserver:Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy$1;

    invoke-virtual {v4, v7}, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy$1;->onChange(Z)V

    iget-object v4, v3, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "bluetooth_always_show_icon_value"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, v3, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mBtAlwaysShowIconObserver:Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy$1;

    const/4 v8, -0x1

    invoke-virtual {v4, v5, v7, v6, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v4, v3, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mBtAlwaysShowIconObserver:Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy$1;

    invoke-virtual {v4, v7}, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy$1;->onChange(Z)V

    iget-object v4, v3, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "vibrate_in_silent"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, v3, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mVibrateEnableObserver:Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy$1;

    invoke-virtual {v4, v5, v7, v6, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->updateVibrateEnable()V

    new-instance v4, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy$$ExternalSyntheticLambda2;

    invoke-direct {v4, v3}, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;)V

    const-class v5, Lcom/miui/interfaces/miuicharge/IMiuiChargeManager;

    invoke-static {v5}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/interfaces/miuicharge/IMiuiChargeManager;

    check-cast v5, Lcom/miui/charge/MiuiChargeManager;

    iput-object v4, v5, Lcom/miui/charge/MiuiChargeManager;->mHandlerCallback:Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy$$ExternalSyntheticLambda2;

    iget-object v4, v3, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->mNetworkSpeedController:Lcom/android/systemui/statusbar/policy/NetworkSpeedController;

    iget-object v5, v4, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mNetworkSpeedState:Lcom/android/systemui/statusbar/policy/NetworkSpeedState;

    iget-object v6, v4, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mStatusBarIconController:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;

    check-cast v6, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;

    invoke-virtual {v6, v5}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->setNetworkSpeedIcon(Lcom/android/systemui/statusbar/policy/NetworkSpeedState;)V

    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/NetworkSpeedController;->mShowNetworkSpeedObserver:Landroid/database/ContentObserver;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v4, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mTelecomManager:Landroid/telecom/TelecomManager;

    if-nez v4, :cond_d

    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateTTY(I)V

    goto :goto_5

    :cond_d
    invoke-virtual {v4}, Landroid/telecom/TelecomManager;->getCurrentTtyMode()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updateTTY(I)V

    :goto_5
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->updateBluetooth()V

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarPolicy;->updateVolumeZen()V

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBluetooth:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->addCallback(Ljava/lang/Object;)V

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    check-cast v3, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->addCallback(Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;)V

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    check-cast v3, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->isCurrentUserSetup()Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCurrentUserSetup:Z

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mJavaAdapter:Lcom/android/systemui/util/kotlin/JavaAdapter;

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mZenModeInteractor:Lcom/android/systemui/statusbar/policy/domain/interactor/ZenModeInteractor;

    iget-object v4, v4, Lcom/android/systemui/statusbar/policy/domain/interactor/ZenModeInteractor;->mainActiveMode:Lkotlinx/coroutines/flow/Flow;

    new-instance v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$$ExternalSyntheticLambda3;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;I)V

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/util/kotlin/JavaAdapter;->alwaysCollectFlow(Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;)Lkotlinx/coroutines/Job;

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mZenController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mZenControllerCallback:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$1;

    check-cast v3, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->addCallback(Ljava/lang/Object;)V

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHotspot:Lcom/android/systemui/statusbar/policy/HotspotController;

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHotspotCallback:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$3;

    check-cast v3, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->addCallback(Ljava/lang/Object;)V

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mNextAlarmCallback:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$4;

    check-cast v3, Lcom/android/systemui/statusbar/policy/MiuiNextAlarmControllerImpl;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/policy/MiuiNextAlarmControllerImpl;->addCallback(Ljava/lang/Object;)V

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mDataSaver:Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;->addCallback(Ljava/lang/Object;)V

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v3, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->addCallback(Ljava/lang/Object;)V

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mLocationController:Lcom/android/systemui/statusbar/policy/LocationController;

    check-cast v3, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->addCallback(Ljava/lang/Object;)V

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mJavaAdapter:Lcom/android/systemui/util/kotlin/JavaAdapter;

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mConnectedDisplayInteractor:Lcom/android/systemui/display/domain/interactor/ConnectedDisplayInteractorImpl;

    iget-object v4, v4, Lcom/android/systemui/display/domain/interactor/ConnectedDisplayInteractorImpl;->connectedDisplayState:Lkotlinx/coroutines/flow/Flow;

    new-instance v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$$ExternalSyntheticLambda3;

    const/4 v6, 0x1

    invoke-direct {v5, v0, v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;I)V

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/util/kotlin/JavaAdapter;->alwaysCollectFlow(Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;)Lkotlinx/coroutines/Job;

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    new-instance v3, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$2;

    invoke-direct {v3, v1}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$2;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->addCallback(Ljava/lang/Object;)V

    const-string v0, "CentralSurfaces#startKeyguard"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStateListener:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$17;

    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    const/4 v5, 0x0

    invoke-interface {v3, v0, v5}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;I)V

    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBiometricUnlockControllerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    new-instance v3, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$6;

    invoke-direct {v3, v1}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$6;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mBiometricUnlockEventsListeners:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iput-object v1, v3, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iget-object v3, v3, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iput-object v1, v4, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iput-object v0, v4, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    iget-object v0, v4, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mExpansionCallback:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$1;

    iget-object v5, v4, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPrimaryBouncerCallbackInteractor:Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerCallbackInteractor;

    iget-object v6, v5, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerCallbackInteractor;->expansionCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    iget-object v5, v5, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerCallbackInteractor;->expansionCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeSurface:Lcom/android/systemui/shade/ShadeSurface;

    iput-object v0, v4, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mShadeLockscreenInteractor:Lcom/android/systemui/shade/domain/interactor/ShadeLockscreenInteractor;

    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    if-eqz v0, :cond_f

    invoke-virtual {v0, v4}, Lcom/android/systemui/shade/ShadeExpansionStateManager;->addExpansionListener(Lcom/android/systemui/shade/ShadeExpansionListener;)Lcom/android/systemui/shade/ShadeExpansionChangeEvent;

    :cond_f
    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iput-object v0, v4, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mNotificationContainer:Landroid/view/View;

    const/4 v6, 0x1

    iput-boolean v6, v4, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mCentralSurfacesRegistered:Z

    iget-object v0, v4, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mKeyguardUpdateManager:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v5, v4, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, v4, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v0, v4}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    iget-object v0, v4, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    iget-object v0, v4, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mNavigationModeController:Lcom/android/systemui/navigationbar/NavigationModeController;

    invoke-virtual {v0, v4}, Lcom/android/systemui/navigationbar/NavigationModeController;->addListener(Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;)I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v0

    iput-boolean v0, v4, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mGesturalNav:Z

    iget-object v0, v4, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mFoldAodAnimationController:Lcom/android/systemui/unfold/FoldAodAnimationController;

    if-eqz v0, :cond_10

    iget-object v0, v0, Lcom/android/systemui/unfold/FoldAodAnimationController;->statusListeners:Ljava/util/ArrayList;

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_10
    iget-object v0, v4, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mListenForCanShowAlternateBouncer:Lkotlinx/coroutines/Job;

    const/4 v7, 0x0

    if-eqz v0, :cond_11

    invoke-interface {v0, v7}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_11
    iput-object v7, v4, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mListenForCanShowAlternateBouncer:Lkotlinx/coroutines/Job;

    iget-object v0, v4, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mAlternateBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;

    iget-object v0, v0, Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;->canShowAlternateBouncer:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v5, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$$ExternalSyntheticLambda5;

    invoke-direct {v5, v4}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    iget-object v6, v4, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mJavaAdapter:Lcom/android/systemui/util/kotlin/JavaAdapter;

    invoke-virtual {v6, v0, v5}, Lcom/android/systemui/util/kotlin/JavaAdapter;->alwaysCollectFlow(Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;)Lkotlinx/coroutines/Job;

    move-result-object v0

    iput-object v0, v4, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mListenForCanShowAlternateBouncer:Lkotlinx/coroutines/Job;

    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardStateControllerCallback:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$1;

    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v3, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->addCallback(Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardViewController:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    if-eqz v4, :cond_12

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v4, Lcom/android/systemui/statusbar/RemoteInputController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_12
    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mControllerCallbacks:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_6
    invoke-static {}, Landroid/os/Trace;->endSection()V

    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->getNotificationShadeWindowViewController()Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    move-result-object v4

    iget-object v5, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mAmbientIndicationContainer:Landroid/view/View;

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mNotificationShadeWindowViewController:Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    iput-object v5, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mAmbientIndicationContainer:Landroid/view/View;

    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mDozeServiceHostInjector:Lcom/android/keyguard/injector/DozeServiceHostInjector;

    iput-object v0, v9, Lcom/android/keyguard/injector/DozeServiceHostInjector;->mDozeHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    iput-object v1, v9, Lcom/android/keyguard/injector/DozeServiceHostInjector;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    if-eqz v4, :cond_13

    iget-object v3, v4, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mView:Lcom/android/systemui/shade/NotificationShadeWindowView;

    if-eqz v3, :cond_13

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_13

    const v4, 0x7f0b00fb

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/widget/AodView;

    goto :goto_7

    :cond_13
    move-object v3, v7

    :goto_7
    iput-object v3, v9, Lcom/android/keyguard/injector/DozeServiceHostInjector;->mAodView:Lcom/android/keyguard/widget/AodView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mTinyKeyguardPanelViewController:Lcom/android/keyguard/tinyPanel/TinyKeyguardPanelViewController;

    iput-object v0, v9, Lcom/android/keyguard/injector/DozeServiceHostInjector;->mTinyKeyguardPanelViewController:Lcom/android/keyguard/tinyPanel/TinyKeyguardPanelViewController;

    iget-boolean v0, v9, Lcom/android/keyguard/injector/DozeServiceHostInjector;->mSupportAod:Z

    if-eqz v0, :cond_19

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, v9, Lcom/android/keyguard/injector/DozeServiceHostInjector;->mCurrentUser:I

    const-class v0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    invoke-static {v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    iget-boolean v3, v0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mClockStyleIsDeep:Z

    iput-boolean v3, v9, Lcom/android/keyguard/injector/DozeServiceHostInjector;->mClockStyleIsDeep:Z

    iget-object v3, v0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mFilterColorMap:Ljava/util/Map;

    check-cast v3, Ljava/util/HashMap;

    iput-object v3, v9, Lcom/android/keyguard/injector/DozeServiceHostInjector;->mClockColorMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->isDefaultLockScreenTheme()Z

    move-result v3

    iput-boolean v3, v9, Lcom/android/keyguard/injector/DozeServiceHostInjector;->mLockscreenIsDefaultTheme:Z

    iget-object v3, v9, Lcom/android/keyguard/injector/DozeServiceHostInjector;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    iput v3, v9, Lcom/android/keyguard/injector/DozeServiceHostInjector;->mOrientation:I

    iget v3, v9, Lcom/android/keyguard/injector/DozeServiceHostInjector;->mCurrentUser:I

    invoke-virtual {v9, v3}, Lcom/android/keyguard/injector/DozeServiceHostInjector;->initAodStyleState(I)V

    iget-object v3, v9, Lcom/android/keyguard/injector/DozeServiceHostInjector;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget v4, v9, Lcom/android/keyguard/injector/DozeServiceHostInjector;->mCurrentUser:I

    const-string v5, "linkage_state"

    const/4 v6, 0x0

    invoke-static {v3, v5, v6, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_14

    move v3, v4

    goto :goto_8

    :cond_14
    move v3, v6

    :goto_8
    iput-boolean v3, v9, Lcom/android/keyguard/injector/DozeServiceHostInjector;->mIsLinkageStateWithoutTiny:Z

    invoke-virtual {v9, v4}, Lcom/android/keyguard/injector/DozeServiceHostInjector;->updateDozeAfterScreenOff(Z)V

    new-instance v3, Lcom/android/keyguard/injector/DozeServiceHostInjector$initialize$1;

    invoke-direct {v3, v9}, Lcom/android/keyguard/injector/DozeServiceHostInjector$initialize$1;-><init>(Lcom/android/keyguard/injector/DozeServiceHostInjector;)V

    iput-object v3, v9, Lcom/android/keyguard/injector/DozeServiceHostInjector;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v4, Lcom/android/keyguard/injector/DozeServiceHostInjector$initialize$2;

    invoke-direct {v4, v9, v0}, Lcom/android/keyguard/injector/DozeServiceHostInjector$initialize$2;-><init>(Lcom/android/keyguard/injector/DozeServiceHostInjector;Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;)V

    iput-object v4, v9, Lcom/android/keyguard/injector/DozeServiceHostInjector;->mMiuiKeyguardUpdateMonitorCallback:Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;

    iget-object v0, v9, Lcom/android/keyguard/injector/DozeServiceHostInjector;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    const-class v0, Lcom/android/keyguard/stub/MiuiKeyguardUpdateMonitorInjectorStub;

    invoke-static {v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/stub/MiuiKeyguardUpdateMonitorInjectorStub;

    iget-object v3, v9, Lcom/android/keyguard/injector/DozeServiceHostInjector;->mMiuiKeyguardUpdateMonitorCallback:Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v3}, Lcom/android/keyguard/stub/MiuiKeyguardUpdateMonitorInjectorStub;->registerCallback(Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;)V

    iget-object v11, v9, Lcom/android/keyguard/injector/DozeServiceHostInjector;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v13, v9, Lcom/android/keyguard/injector/DozeServiceHostInjector;->mHandler:Landroid/os/Handler;

    iget v14, v9, Lcom/android/keyguard/injector/DozeServiceHostInjector;->mCurrentUser:I

    new-instance v8, Lcom/android/keyguard/injector/DozeServiceHostInjector$initialize$3;

    iget-object v10, v9, Lcom/android/keyguard/injector/DozeServiceHostInjector;->mUserTracker:Lcom/android/systemui/plugins/miui/settings/IUserTracker;

    iget-object v12, v9, Lcom/android/keyguard/injector/DozeServiceHostInjector;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    const/4 v15, 0x0

    invoke-direct/range {v8 .. v15}, Lcom/android/keyguard/injector/DozeServiceHostInjector$initialize$3;-><init>(Lcom/android/keyguard/injector/DozeServiceHostInjector;Lcom/android/systemui/plugins/miui/settings/IUserTracker;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/settings/SecureSettings;Landroid/os/Handler;II)V

    iput-object v8, v9, Lcom/android/keyguard/injector/DozeServiceHostInjector;->mAodEnableSetting:Lcom/android/keyguard/injector/DozeServiceHostInjector$initialize$3;

    const/4 v6, 0x1

    invoke-virtual {v8, v6}, Lcom/miui/systemui/util/MiuiSettingObserver;->setListening(Z)V

    iget-object v11, v9, Lcom/android/keyguard/injector/DozeServiceHostInjector;->mExecutor:Ljava/util/concurrent/Executor;

    iget v14, v9, Lcom/android/keyguard/injector/DozeServiceHostInjector;->mCurrentUser:I

    new-instance v8, Lcom/android/keyguard/injector/DozeServiceHostInjector$initialize$3;

    iget-object v10, v9, Lcom/android/keyguard/injector/DozeServiceHostInjector;->mUserTracker:Lcom/android/systemui/plugins/miui/settings/IUserTracker;

    iget-object v12, v9, Lcom/android/keyguard/injector/DozeServiceHostInjector;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    const/4 v15, 0x1

    invoke-direct/range {v8 .. v15}, Lcom/android/keyguard/injector/DozeServiceHostInjector$initialize$3;-><init>(Lcom/android/keyguard/injector/DozeServiceHostInjector;Lcom/android/systemui/plugins/miui/settings/IUserTracker;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/settings/SecureSettings;Landroid/os/Handler;II)V

    iput-object v8, v9, Lcom/android/keyguard/injector/DozeServiceHostInjector;->mAodScheduledStartTimeSettings:Lcom/android/keyguard/injector/DozeServiceHostInjector$initialize$3;

    invoke-virtual {v8, v6}, Lcom/miui/systemui/util/MiuiSettingObserver;->setListening(Z)V

    iget-object v11, v9, Lcom/android/keyguard/injector/DozeServiceHostInjector;->mExecutor:Ljava/util/concurrent/Executor;

    iget v14, v9, Lcom/android/keyguard/injector/DozeServiceHostInjector;->mCurrentUser:I

    new-instance v8, Lcom/android/keyguard/injector/DozeServiceHostInjector$initialize$3;

    iget-object v10, v9, Lcom/android/keyguard/injector/DozeServiceHostInjector;->mUserTracker:Lcom/android/systemui/plugins/miui/settings/IUserTracker;

    iget-object v12, v9, Lcom/android/keyguard/injector/DozeServiceHostInjector;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    const/4 v15, 0x2

    invoke-direct/range {v8 .. v15}, Lcom/android/keyguard/injector/DozeServiceHostInjector$initialize$3;-><init>(Lcom/android/keyguard/injector/DozeServiceHostInjector;Lcom/android/systemui/plugins/miui/settings/IUserTracker;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/settings/SecureSettings;Landroid/os/Handler;II)V

    iput-object v8, v9, Lcom/android/keyguard/injector/DozeServiceHostInjector;->mAodScheduledEndTimeSettings:Lcom/android/keyguard/injector/DozeServiceHostInjector$initialize$3;

    invoke-virtual {v8, v6}, Lcom/miui/systemui/util/MiuiSettingObserver;->setListening(Z)V

    iget-object v11, v9, Lcom/android/keyguard/injector/DozeServiceHostInjector;->mExecutor:Ljava/util/concurrent/Executor;

    iget v14, v9, Lcom/android/keyguard/injector/DozeServiceHostInjector;->mCurrentUser:I

    new-instance v8, Lcom/android/keyguard/injector/DozeServiceHostInjector$initialize$3;

    iget-object v10, v9, Lcom/android/keyguard/injector/DozeServiceHostInjector;->mUserTracker:Lcom/android/systemui/plugins/miui/settings/IUserTracker;

    iget-object v12, v9, Lcom/android/keyguard/injector/DozeServiceHostInjector;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    const/4 v15, 0x3

    invoke-direct/range {v8 .. v15}, Lcom/android/keyguard/injector/DozeServiceHostInjector$initialize$3;-><init>(Lcom/android/keyguard/injector/DozeServiceHostInjector;Lcom/android/systemui/plugins/miui/settings/IUserTracker;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/settings/SecureSettings;Landroid/os/Handler;II)V

    iput-object v8, v9, Lcom/android/keyguard/injector/DozeServiceHostInjector;->mAodShowStyleSettings:Lcom/android/keyguard/injector/DozeServiceHostInjector$initialize$3;

    invoke-virtual {v8, v6}, Lcom/miui/systemui/util/MiuiSettingObserver;->setListening(Z)V

    sget-object v0, Lcom/miui/utils/configs/MiuiConfigs;->CUSTOMIZED_REGION:Ljava/lang/String;

    invoke-static {}, Lmiui/util/MiuiMultiDisplayTypeInfo;->isFlipDevice()Z

    move-result v0

    iget-object v3, v9, Lcom/android/keyguard/injector/DozeServiceHostInjector;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    if-eqz v0, :cond_15

    iget-object v0, v9, Lcom/android/keyguard/injector/DozeServiceHostInjector;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/utils/configs/MiuiConfigs;->isFlipTinyScreen(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, v9, Lcom/android/keyguard/injector/DozeServiceHostInjector;->mIsFlipTinyScreen:Z

    new-instance v0, Lcom/android/keyguard/injector/DozeServiceHostInjector$addConfigurationCallback$1;

    invoke-direct {v0, v9}, Lcom/android/keyguard/injector/DozeServiceHostInjector$addConfigurationCallback$1;-><init>(Lcom/android/keyguard/injector/DozeServiceHostInjector;)V

    move-object v4, v3

    check-cast v4, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    :cond_15
    iget-object v11, v9, Lcom/android/keyguard/injector/DozeServiceHostInjector;->mExecutor:Ljava/util/concurrent/Executor;

    iget v14, v9, Lcom/android/keyguard/injector/DozeServiceHostInjector;->mCurrentUser:I

    new-instance v8, Lcom/android/keyguard/injector/DozeServiceHostInjector$initialize$3;

    iget-object v10, v9, Lcom/android/keyguard/injector/DozeServiceHostInjector;->mUserTracker:Lcom/android/systemui/plugins/miui/settings/IUserTracker;

    iget-object v12, v9, Lcom/android/keyguard/injector/DozeServiceHostInjector;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    const/4 v15, 0x4

    invoke-direct/range {v8 .. v15}, Lcom/android/keyguard/injector/DozeServiceHostInjector$initialize$3;-><init>(Lcom/android/keyguard/injector/DozeServiceHostInjector;Lcom/android/systemui/plugins/miui/settings/IUserTracker;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/settings/SecureSettings;Landroid/os/Handler;II)V

    iput-object v8, v9, Lcom/android/keyguard/injector/DozeServiceHostInjector;->mAodUsingSuperWallpaperStyleSetting:Lcom/android/keyguard/injector/DozeServiceHostInjector$initialize$3;

    const/4 v6, 0x1

    invoke-virtual {v8, v6}, Lcom/miui/systemui/util/MiuiSettingObserver;->setListening(Z)V

    iget-object v11, v9, Lcom/android/keyguard/injector/DozeServiceHostInjector;->mExecutor:Ljava/util/concurrent/Executor;

    iget v14, v9, Lcom/android/keyguard/injector/DozeServiceHostInjector;->mCurrentUser:I

    new-instance v8, Lcom/android/keyguard/injector/DozeServiceHostInjector$initialize$3;

    iget-object v10, v9, Lcom/android/keyguard/injector/DozeServiceHostInjector;->mUserTracker:Lcom/android/systemui/plugins/miui/settings/IUserTracker;

    iget-object v12, v9, Lcom/android/keyguard/injector/DozeServiceHostInjector;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    const/4 v15, 0x5

    invoke-direct/range {v8 .. v15}, Lcom/android/keyguard/injector/DozeServiceHostInjector$initialize$3;-><init>(Lcom/android/keyguard/injector/DozeServiceHostInjector;Lcom/android/systemui/plugins/miui/settings/IUserTracker;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/settings/SecureSettings;Landroid/os/Handler;II)V

    iput-object v8, v9, Lcom/android/keyguard/injector/DozeServiceHostInjector;->mAodStyleStateSetting:Lcom/android/keyguard/injector/DozeServiceHostInjector$initialize$3;

    invoke-virtual {v8, v6}, Lcom/miui/systemui/util/MiuiSettingObserver;->setListening(Z)V

    new-instance v0, Lcom/android/keyguard/injector/DozeServiceHostInjector$initialize$mDeviceProvisionedListener$1;

    invoke-direct {v0, v9}, Lcom/android/keyguard/injector/DozeServiceHostInjector$initialize$mDeviceProvisionedListener$1;-><init>(Lcom/android/keyguard/injector/DozeServiceHostInjector;)V

    iget-object v4, v9, Lcom/android/keyguard/injector/DozeServiceHostInjector;->mWakefulnessObserver:Lcom/android/keyguard/injector/DozeServiceHostInjector$mWakefulnessObserver$1;

    iget-object v5, v9, Lcom/android/keyguard/injector/DozeServiceHostInjector;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {v5, v4}, Lcom/android/systemui/keyguard/Lifecycle;->addObserver(Ljava/lang/Object;)V

    iget-object v4, v9, Lcom/android/keyguard/injector/DozeServiceHostInjector;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    check-cast v4, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->addCallback(Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;)V

    new-instance v0, Lcom/android/keyguard/injector/DozeServiceHostInjector$initialize$superSaveModeChangeListener$1;

    invoke-direct {v0, v9}, Lcom/android/keyguard/injector/DozeServiceHostInjector$initialize$superSaveModeChangeListener$1;-><init>(Lcom/android/keyguard/injector/DozeServiceHostInjector;)V

    iget-object v4, v9, Lcom/android/keyguard/injector/DozeServiceHostInjector;->mSuperSaveModeController:Lcom/android/systemui/plugins/miui/settings/SuperSaveModeController;

    invoke-interface {v4, v0}, Lcom/android/systemui/plugins/miui/settings/SuperSaveModeController;->addCallback(Lcom/android/systemui/plugins/miui/settings/SuperSaveModeController$SuperSaveModeChangeListener;)V

    new-instance v0, Lcom/android/keyguard/injector/DozeServiceHostInjector$initialize$stateListener$1;

    invoke-direct {v0, v9}, Lcom/android/keyguard/injector/DozeServiceHostInjector$initialize$stateListener$1;-><init>(Lcom/android/keyguard/injector/DozeServiceHostInjector;)V

    iget-object v4, v9, Lcom/android/keyguard/injector/DozeServiceHostInjector;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v4, v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    iget-object v0, v9, Lcom/android/keyguard/injector/DozeServiceHostInjector;->mAodView:Lcom/android/keyguard/widget/AodView;

    if-eqz v0, :cond_16

    new-instance v4, Lcom/android/keyguard/injector/DozeServiceHostInjector$initialize$9;

    iget-object v5, v9, Lcom/android/keyguard/injector/DozeServiceHostInjector;->mDisplayStateShaderController:Lcom/android/keyguard/screenfade/DisplayStateShaderController;

    invoke-direct {v4, v5}, Lcom/android/keyguard/injector/DozeServiceHostInjector$initialize$9;-><init>(Lcom/android/keyguard/screenfade/DisplayStateShaderController;)V

    invoke-virtual {v0, v4}, Lcom/android/keyguard/widget/AodView;->setVisibilityChangedListener(Lcom/android/keyguard/widget/AodView$OnVisibilityChangedListener;)V

    :cond_16
    iget-object v0, v9, Lcom/android/keyguard/injector/DozeServiceHostInjector;->mKeyguardEditorHelper:Lcom/miui/interfaces/keyguard/IKeyguardEditor;

    if-eqz v0, :cond_17

    new-instance v4, Lcom/android/keyguard/injector/DozeServiceHostInjector$initialize$10;

    invoke-direct {v4, v9}, Lcom/android/keyguard/injector/DozeServiceHostInjector$initialize$10;-><init>(Lcom/android/keyguard/injector/DozeServiceHostInjector;)V

    check-cast v0, Lcom/android/keyguard/editor/KeyguardEditorHelper;

    invoke-virtual {v0, v4}, Lcom/android/keyguard/editor/KeyguardEditorHelper;->addEditorStateListener(Lcom/miui/interfaces/keyguard/IKeyguardEditor$EditorStateListener;)V

    :cond_17
    sget-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->SUPPORT_FULL_AOD:Z

    if-eqz v0, :cond_18

    iget-object v4, v9, Lcom/android/keyguard/injector/DozeServiceHostInjector;->mTaskStackChangeListeners:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    if-eqz v4, :cond_18

    new-instance v5, Lcom/android/keyguard/injector/DozeServiceHostInjector$initialize$11;

    invoke-direct {v5, v9}, Lcom/android/keyguard/injector/DozeServiceHostInjector$initialize$11;-><init>(Lcom/android/keyguard/injector/DozeServiceHostInjector;)V

    invoke-virtual {v4, v5}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    :cond_18
    new-instance v4, Lcom/android/keyguard/injector/DozeServiceHostInjector$initialize$shortcutPluginCallback$1;

    invoke-direct {v4, v9}, Lcom/android/keyguard/injector/DozeServiceHostInjector$initialize$shortcutPluginCallback$1;-><init>(Lcom/android/keyguard/injector/DozeServiceHostInjector;)V

    iget-object v5, v9, Lcom/android/keyguard/injector/DozeServiceHostInjector;->miuiShortcutController:Lcom/miui/interfaces/keyguard/IMiuiShortcutController;

    check-cast v5, Lcom/android/keyguard/shortcut/MiuiShortcutController;

    invoke-virtual {v5, v4}, Lcom/android/keyguard/shortcut/MiuiShortcutController;->registerSystemUIShortcutPluginCallback(Lcom/miui/interfaces/keyguard/IMiuiShortcutController$SystemUIShortcutPluginCallback;)V

    if-eqz v0, :cond_19

    new-instance v0, Lcom/android/keyguard/injector/DozeServiceHostInjector$initialize$12;

    invoke-direct {v0, v9}, Lcom/android/keyguard/injector/DozeServiceHostInjector$initialize$12;-><init>(Lcom/android/keyguard/injector/DozeServiceHostInjector;)V

    check-cast v3, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    :cond_19
    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mConfigurationListener:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$16;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    iget-object v4, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBatteryStateChangeCallback:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$18;

    invoke-interface {v0, v3, v4}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/Lifecycle;Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v3, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v3}, Landroidx/lifecycle/LifecycleRegistry;->setCurrentState(Landroidx/lifecycle/Lifecycle$State;)V

    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mAccessibilityFloatingMenuController:Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;

    invoke-virtual {v0}, Lcom/android/systemui/accessibility/floatingmenu/AccessibilityFloatingMenuController;->init()V

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->registerCallbacks()V

    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mPluginManager:Lcom/android/systemui/plugins/PluginManager;

    new-instance v3, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$3;

    invoke-direct {v3, v1}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$3;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V

    const-class v4, Lcom/android/systemui/plugins/OverlayPlugin;

    const/4 v6, 0x1

    invoke-interface {v0, v3, v4, v6}, Lcom/android/systemui/plugins/PluginManager;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V

    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStartingSurfaceOptional:Ljava/util/Optional;

    new-instance v3, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda1;

    invoke-direct {v3, v1, v2}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;I)V

    invoke-virtual {v0, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mContext:Landroid/content/Context;

    sget v2, Lcom/miui/systemui/analytics/SettingsJobSchedulerService;->$r8$clinit:I

    const-class v2, Landroid/app/job/JobScheduler;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/job/JobScheduler;

    invoke-virtual {v2}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const v4, 0x493e2

    if-eqz v3, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getId()I

    move-result v3

    if-ne v3, v4, :cond_1a

    goto :goto_9

    :cond_1b
    :try_start_2
    const-class v2, Landroid/app/job/JobScheduler;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/job/JobScheduler;

    new-instance v3, Landroid/content/ComponentName;

    const-class v5, Lcom/miui/systemui/analytics/SettingsJobSchedulerService;

    invoke-direct {v3, v0, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v0, Landroid/app/job/JobInfo$Builder;

    invoke-direct {v0, v4, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const-wide/32 v3, 0x5265c00

    invoke-virtual {v0, v3, v4}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    invoke-virtual {v0, v6}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result v0

    if-lez v0, :cond_1c

    const-string v0, "SettingsJobSchedulerService"

    const-string v2, "SettingsJobSchedulerService schedule success"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_9

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1c
    :goto_9
    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/policy/BatteryController;->registerBatteryStatusCallback(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mControlCenter:Lcom/miui/systemui/controlcenter/container/ControlCenterContainerController;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/BatteryController;->setControlCenterContainerController(Lcom/miui/systemui/controlcenter/container/ControlCenterContainerController;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public final updateDozingState()V
    .registers 6

    const-wide/16 v0, 0x1000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Dozing"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDozing:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v4, v3}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    :cond_0
    const-string v0, "CentralSurfaces#updateDozingState"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeSurface:Lcom/android/systemui/shade/ShadeSurface;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDozing:Z

    invoke-interface {v0, v1}, Lcom/android/systemui/shade/ShadeSurface;->setDozing$1(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mTinyKeyguardPanelViewController:Lcom/android/keyguard/tinyPanel/TinyKeyguardPanelViewController;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDozing:Z

    invoke-interface {v0, p0}, Lcom/android/keyguard/tinyPanel/TinyKeyguardPanelViewController;->setDozing$1(Z)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public final updateIsKeyguard()Z
    .registers 14

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isWakeAndUnlock()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    const-class v0, Lcom/miui/keyguard/biometrics/MiuiBiometricUnlockController;

    invoke-static {v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/keyguard/biometrics/MiuiBiometricUnlockController;

    iget-boolean v0, v0, Lcom/miui/keyguard/biometrics/MiuiBiometricUnlockController;->mBiometricUnlockInScreenOff:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v3, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v4, v3, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-eqz v4, :cond_2

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    if-nez v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mDozingRequested:Z

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDeviceInteractive:Z

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->isGoingToSleep()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget v4, v4, Lcom/android/systemui/keyguard/ScreenLifecycle;->mScreenState:I

    if-nez v4, :cond_3

    goto :goto_3

    :cond_3
    if-eqz v3, :cond_5

    :cond_4
    :goto_3
    move v3, v2

    goto :goto_4

    :cond_5
    move v3, v1

    :goto_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v4, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    const/4 v5, 0x2

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget v4, v4, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWakefulness:I

    if-eq v4, v2, :cond_6

    if-ne v4, v5, :cond_7

    :cond_6
    move v4, v2

    goto :goto_5

    :cond_7
    move v4, v1

    :goto_5
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v6}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->isKeyguardRequested()Z

    move-result v6

    if-nez v6, :cond_8

    if-eqz v3, :cond_9

    :cond_8
    if-nez v0, :cond_9

    if-nez v4, :cond_9

    const-class v6, Lcom/miui/interfaces/keyguard/IKeyguardPanelViewInjector;

    invoke-static {v6}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/interfaces/keyguard/IKeyguardPanelViewInjector;

    check-cast v6, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    invoke-virtual {v6}, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->getKeyguardPanelViewController()Lcom/android/keyguard/panel/KeyguardPanelViewController;

    move-result-object v6

    iget-object v7, v6, Lcom/android/keyguard/panel/KeyguardPanelViewController;->lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v6, v6, Lcom/android/keyguard/panel/KeyguardPanelViewController;->selectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v6}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId()I

    move-result v6

    invoke-virtual {v7, v6}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v6

    if-nez v6, :cond_9

    goto :goto_6

    :cond_9
    move v2, v1

    :goto_6
    if-eqz v3, :cond_a

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->updatePanelExpansionForKeyguard()V

    :cond_a
    if-eqz v2, :cond_c

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;->isKeyguardShowDelayed()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->isGoingToSleep()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget v0, v0, Lcom/android/systemui/keyguard/ScreenLifecycle;->mScreenState:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_b

    goto :goto_a

    :cond_b
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->showKeyguardImpl()V

    return v1

    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "!shouldBeKeyguard mStatusBarStateController.isKeyguardRequested() "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v6}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->isKeyguardRequested()Z

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " keyguardForDozing "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " wakeAndUnlocking "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " isWakingAndOccluded "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CentralSurfaces"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;->animations:Ljava/util/List;

    if-eqz v0, :cond_d

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_d

    goto :goto_7

    :cond_d
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/ScreenOffAnimation;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/phone/ScreenOffAnimation;->isKeyguardHideDelayed()Z

    move-result v3

    if-eqz v3, :cond_e

    goto :goto_a

    :cond_f
    :goto_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-boolean v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccludeAnimationPlaying:Z

    if-nez v0, :cond_17

    const-string v0, "hideKeyguardImpl false"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CentralSurfaces#hideKeyguard"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->leaveOpenOnKeyguardHide()Z

    move-result v2

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v3

    invoke-interface {v0, v1, v1}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->setState(IZ)Z

    move-result v4

    if-nez v4, :cond_10

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    check-cast v4, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->updatePublicMode()V

    :cond_10
    invoke-interface {v0}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->leaveOpenOnKeyguardHide()Z

    move-result v0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeSurface:Lcom/android/systemui/shade/ShadeSurface;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-wide v6, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardFadingAwayDelay:J

    iget-wide v8, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardFadingAwayDuration:J

    add-long/2addr v6, v8

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mLockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    iget-object v8, v0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->logger:Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;

    sget-object v9, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    new-instance v10, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger$$ExternalSyntheticLambda0;

    const/16 v11, 0x12

    invoke-direct {v10, v11}, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger$$ExternalSyntheticLambda0;-><init>(I)V

    iget-object v8, v8, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v11, "LockscreenShadeTransitionController"

    const/4 v12, 0x0

    invoke-virtual {v8, v11, v9, v10, v12}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    iget-object v8, v0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->animationHandlerOnKeyguardDismiss:Lkotlin/jvm/functions/Function1;

    if-eqz v8, :cond_11

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v8, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v12, v0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->animationHandlerOnKeyguardDismiss:Lkotlin/jvm/functions/Function1;

    goto :goto_8

    :cond_11
    iget-boolean v8, v0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->nextHideKeyguardNeedsNoAnimation:Z

    if-eqz v8, :cond_12

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->nextHideKeyguardNeedsNoAnimation:Z

    goto :goto_8

    :cond_12
    if-eq v3, v5, :cond_13

    invoke-virtual {v0, v6, v7}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->performDefaultGoToFullShadeAnimation(J)V

    :cond_13
    :goto_8
    iget v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDisplayId:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNavigationBarController:Lcom/android/systemui/navigationbar/NavigationBarController;

    check-cast v3, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;

    invoke-virtual {v3, v0, v6, v7}, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->disableAnimationsDuringHide(IJ)V

    goto :goto_9

    :cond_14
    invoke-interface {v4}, Lcom/android/systemui/shade/domain/interactor/PanelExpansionInteractor;->isCollapsing()Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeController:Lcom/android/systemui/shade/ShadeController;

    invoke-interface {v0}, Lcom/android/systemui/shade/ShadeController;->instantCollapseShade()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mTinyKeyguardPanelViewController:Lcom/android/keyguard/tinyPanel/TinyKeyguardPanelViewController;

    invoke-interface {v0}, Lcom/android/keyguard/tinyPanel/TinyKeyguardPanelViewController;->instantCollapse()V

    :cond_15
    :goto_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mQSPanelController:Lcom/android/systemui/qs/QSPanelController;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanelController;->refreshAllTiles()V

    :cond_16
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mMessageRouter:Lcom/android/systemui/util/concurrency/MessageRouterImpl;

    const/16 v3, 0x3eb

    invoke-virtual {v0, v3}, Lcom/android/systemui/util/concurrency/MessageRouterImpl;->cancelMessages(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->releaseGestureWakeLock()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mCameraLauncherLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shade/CameraLauncher;

    iget-object v0, v0, Lcom/android/systemui/shade/CameraLauncher;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->launchingAffordance:Z

    invoke-interface {v4}, Lcom/android/systemui/shade/ShadeSurface;->resetAlpha()V

    invoke-interface {v4}, Lcom/android/systemui/shade/ShadeSurface;->resetTranslation()V

    invoke-interface {v4}, Lcom/android/systemui/shade/domain/interactor/ShadeLockscreenInteractor;->resetViewGroupFade()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->updateDozingState()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->updateScrimController()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return v2

    :cond_17
    :goto_a
    return v1
.end method

.method public final updateNotificationPanelTouchState()V
    .registers 11

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->isGoingToSleep()Z

    move-result v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, v2, Lcom/android/systemui/statusbar/phone/DozeParameters;->mControlScreenOffAnimation:Z

    if-nez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDeviceInteractive:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mPulsing:Z

    if-eqz v4, :cond_2

    :cond_1
    if-eqz v0, :cond_3

    :cond_2
    move v1, v3

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->isGoingToSleep()Z

    move-result v0

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/phone/DozeParameters;->mControlScreenOffAnimation:Z

    xor-int/2addr v2, v3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDeviceInteractive:Z

    xor-int/2addr v4, v3

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mPulsing:Z

    xor-int/2addr v3, v5

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeLogger:Lcom/android/systemui/shade/ShadeLogger;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lcom/android/systemui/log/core/LogLevel;->VERBOSE:Lcom/android/systemui/log/core/LogLevel;

    new-instance v7, Lcom/android/systemui/shade/ShadeLogger$$ExternalSyntheticLambda0;

    const/4 v8, 0x2

    invoke-direct {v7, v8}, Lcom/android/systemui/shade/ShadeLogger$$ExternalSyntheticLambda0;-><init>(I)V

    const/4 v8, 0x0

    iget-object v5, v5, Lcom/android/systemui/shade/ShadeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v9, "systemui.shade"

    invoke-virtual {v5, v9, v6, v7, v8}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/android/systemui/log/LogMessageImpl;

    iput-boolean v1, v7, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    iput-boolean v0, v7, Lcom/android/systemui/log/LogMessageImpl;->bool2:Z

    iput-boolean v2, v7, Lcom/android/systemui/log/LogMessageImpl;->bool3:Z

    iput-boolean v4, v7, Lcom/android/systemui/log/LogMessageImpl;->bool4:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeSurface:Lcom/android/systemui/shade/ShadeSurface;

    invoke-interface {p0, v1}, Lcom/android/systemui/shade/ShadeSurface;->setTouchAndAnimationDisabled(Z)V

    return-void
.end method

.method public final updatePanelExpansionForKeyguard()V
    .registers 3

    iget v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mMode:I

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBouncerShowing:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeController:Lcom/android/systemui/shade/ShadeController;

    invoke-interface {v0}, Lcom/android/systemui/shade/ShadeController;->instantExpandShade()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mTinyKeyguardPanelViewController:Lcom/android/keyguard/tinyPanel/TinyKeyguardPanelViewController;

    invoke-interface {p0}, Lcom/android/keyguard/tinyPanel/TinyKeyguardPanelViewController;->instantExpandShade()V

    :cond_0
    return-void
.end method

.method public final updateReportRejectedTouchVisibility()V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mReportRejectedTouch:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDozing:Z

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    const/4 p0, 0x4

    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final updateResources$1()V
    .registers 4

    sget-object v0, Lcom/android/systemui/shade/shared/flag/ShadeWindowGoesAround;->FLAG:Landroid/window/DesktopExperienceFlags$DesktopExperienceFlag;

    invoke-virtual {v0}, Landroid/window/DesktopExperienceFlags$DesktopExperienceFlag;->isTrue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mQSPanelController:Lcom/android/systemui/qs/QSPanelController;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->updateResources$1()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeSurface:Lcom/android/systemui/shade/ShadeSurface;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/systemui/shade/ShadeSurface;->updateResources$1()V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBrightnessMirrorController:Lcom/android/systemui/qs/brightness/MiuiBrightnessMirrorController;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/systemui/qs/brightness/MiuiBrightnessMirrorController;->updateResources$1()V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mPrimaryBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;

    iget-object v0, v0, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;->repository:Lcom/android/systemui/bouncer/data/repository/KeyguardBouncerRepositoryImpl;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v0, v0, Lcom/android/systemui/bouncer/data/repository/KeyguardBouncerRepositoryImpl;->_resourceUpdateRequests:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_3
    new-instance v0, Lcom/android/systemui/statusbar/PowerButtonReveal;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07157b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/PowerButtonReveal;-><init>(F)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mPowerButtonReveal:Lcom/android/systemui/statusbar/PowerButtonReveal;

    return-void
.end method

.method public updateScrimController()V
    .registers 10
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string v0, "CentralSurfaces#updateScrimController"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isWakeAndUnlock()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardFadingAway:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardGoingAway:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    iget-boolean v4, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-boolean v4, v4, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDreaming:Z

    if-eqz v4, :cond_2

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    xor-int/lit8 v3, v1, 0x1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    iput-boolean v3, v4, Lcom/android/systemui/statusbar/phone/ScrimController;->mExpansionAffectsAlpha:Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mAlternateBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;

    invoke-virtual {v3}, Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;->isVisibleState()Z

    move-result v3

    sget-object v5, Lcom/android/systemui/statusbar/phone/ScrimState;->KEYGUARD:Lcom/android/systemui/statusbar/phone/ScrimState;

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mUnlockScrimCallback:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$4;

    const/4 v8, 0x0

    if-eqz v3, :cond_6

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mShadeSurface:Lcom/android/systemui/shade/ShadeSurface;

    invoke-interface {v0}, Lcom/android/systemui/shade/domain/interactor/PanelExpansionInteractor;->isPanelExpanded$1()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mState:I

    if-eqz v0, :cond_5

    if-eq v0, v6, :cond_5

    iget p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mTransitionToFullShadeProgress:F

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v4, v8, v5}, Lcom/android/systemui/statusbar/phone/ScrimController;->internalTransitionTo(Lcom/android/systemui/statusbar/phone/ScrimController$Callback;Lcom/android/systemui/statusbar/phone/ScrimState;)V

    :cond_5
    :goto_3
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$4;->onFinished()V

    goto :goto_4

    :cond_6
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBouncerShowing:Z

    if-eqz v3, :cond_7

    if-nez v1, :cond_7

    sget-object p0, Lcom/android/systemui/statusbar/phone/ScrimState;->BOUNCER:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {v4, v8, p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->internalTransitionTo(Lcom/android/systemui/statusbar/phone/ScrimController$Callback;Lcom/android/systemui/statusbar/phone/ScrimState;)V

    goto :goto_4

    :cond_7
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBrightnessMirrorVisible:Z

    if-eqz v3, :cond_8

    sget-object p0, Lcom/android/systemui/statusbar/phone/ScrimState;->BRIGHTNESS_MIRROR:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {v4, v8, p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->internalTransitionTo(Lcom/android/systemui/statusbar/phone/ScrimController$Callback;Lcom/android/systemui/statusbar/phone/ScrimState;)V

    goto :goto_4

    :cond_8
    iget v3, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mState:I

    if-ne v3, v6, :cond_9

    sget-object p0, Lcom/android/systemui/statusbar/phone/ScrimState;->SHADE_LOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {v4, v8, p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->internalTransitionTo(Lcom/android/systemui/statusbar/phone/ScrimController$Callback;Lcom/android/systemui/statusbar/phone/ScrimState;)V

    goto :goto_4

    :cond_9
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/DozeServiceHost;

    iget-boolean v6, v3, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mPulsing:Z

    if-eqz v6, :cond_a

    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->PULSING:Lcom/android/systemui/statusbar/phone/ScrimState;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mScrimCallback:Lcom/android/systemui/statusbar/phone/DozeScrimController$1;

    invoke-virtual {v4, p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->internalTransitionTo(Lcom/android/systemui/statusbar/phone/ScrimController$Callback;Lcom/android/systemui/statusbar/phone/ScrimState;)V

    goto :goto_4

    :cond_a
    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/DozeServiceHost;->mPendingScreenOffCallback:Lcom/android/systemui/doze/DozeScreenState$$ExternalSyntheticLambda0;

    if-eqz v3, :cond_b

    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->OFF:Lcom/android/systemui/statusbar/phone/ScrimState;

    new-instance v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$11;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$11;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;)V

    invoke-virtual {v4, v1, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->internalTransitionTo(Lcom/android/systemui/statusbar/phone/ScrimController$Callback;Lcom/android/systemui/statusbar/phone/ScrimState;)V

    goto :goto_4

    :cond_b
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDozing:Z

    if-eqz v3, :cond_c

    if-nez v1, :cond_c

    sget-object p0, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {v4, v8, p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->internalTransitionTo(Lcom/android/systemui/statusbar/phone/ScrimController$Callback;Lcom/android/systemui/statusbar/phone/ScrimState;)V

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$4;->onFinished()V

    goto :goto_4

    :cond_c
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mIsIdleOnCommunal:Z

    if-eqz p0, :cond_e

    if-eqz v2, :cond_d

    sget-object p0, Lcom/android/systemui/statusbar/phone/ScrimState;->GLANCEABLE_HUB_OVER_DREAM:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {v4, v8, p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->internalTransitionTo(Lcom/android/systemui/statusbar/phone/ScrimController$Callback;Lcom/android/systemui/statusbar/phone/ScrimState;)V

    goto :goto_4

    :cond_d
    sget-object p0, Lcom/android/systemui/statusbar/phone/ScrimState;->GLANCEABLE_HUB:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {v4, v8, p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->internalTransitionTo(Lcom/android/systemui/statusbar/phone/ScrimController$Callback;Lcom/android/systemui/statusbar/phone/ScrimState;)V

    goto :goto_4

    :cond_e
    iget-boolean p0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-eqz p0, :cond_f

    iget-boolean p0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    if-nez p0, :cond_f

    if-nez v1, :cond_f

    invoke-virtual {v4, v8, v5}, Lcom/android/systemui/statusbar/phone/ScrimController;->internalTransitionTo(Lcom/android/systemui/statusbar/phone/ScrimController$Callback;Lcom/android/systemui/statusbar/phone/ScrimState;)V

    goto :goto_4

    :cond_f
    if-eqz v2, :cond_10

    sget-object p0, Lcom/android/systemui/statusbar/phone/ScrimState;->DREAMING:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {v4, v8, p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->internalTransitionTo(Lcom/android/systemui/statusbar/phone/ScrimController$Callback;Lcom/android/systemui/statusbar/phone/ScrimState;)V

    goto :goto_4

    :cond_10
    sget-object p0, Lcom/android/systemui/statusbar/phone/ScrimState;->UNLOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {v4, v7, p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->internalTransitionTo(Lcom/android/systemui/statusbar/phone/ScrimController$Callback;Lcom/android/systemui/statusbar/phone/ScrimState;)V

    :goto_4
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public final updateTheme()V
    .registers 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mUiBgExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda3;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    iget-object v0, v0, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->mNeutralColorsLock:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-virtual {v0}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->supportsDarkText()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f150732

    goto :goto_0

    :cond_0
    const v0, 0x7f150723

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getThemeResId()I

    move-result v1

    if-eq v1, v0, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->setTheme(I)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->listeners:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->listeners:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :cond_1
    :goto_1
    if-ge v2, v0, :cond_2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->listeners:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;->onThemeChanged()V

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_2
    return-void
.end method

.method public final userActivity()V
    .registers 3

    iget v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mKeyguardViewMediatorCallback:Lcom/android/systemui/keyguard/KeyguardViewMediator$5;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$5;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->userActivity()V

    :cond_0
    return-void
.end method

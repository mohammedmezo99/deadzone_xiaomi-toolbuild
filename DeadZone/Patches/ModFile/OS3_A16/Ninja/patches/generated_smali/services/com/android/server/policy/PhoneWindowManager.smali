.class public Lcom/android/server/policy/PhoneWindowManager;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/server/policy/WindowManagerPolicy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;,
        Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;,
        Lcom/android/server/policy/PhoneWindowManager$HdmiControl;,
        Lcom/android/server/policy/PhoneWindowManager$Injector;,
        Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;,
        Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;,
        Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;,
        Lcom/android/server/policy/PhoneWindowManager$ButtonOverridePermissionChecker;,
        Lcom/android/server/policy/PhoneWindowManager$BackKeyRule;,
        Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;,
        Lcom/android/server/policy/PhoneWindowManager$StylusTailButtonRule;,
        Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;,
        Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;,
        Lcom/android/server/policy/PhoneWindowManager$HdmiVideoExtconUEventObserver;
    }
.end annotation


# static fields
.field private static final ACTION_VOICE_ASSIST_RETAIL:Ljava/lang/String; = "android.intent.action.VOICE_ASSIST_RETAIL"

.field private static final BRIGHTNESS_STEPS:I = 0xa

.field private static final BUGREPORT_TV_GESTURE_TIMEOUT_MILLIS:J = 0x3e8L

.field static DEBUG_INPUT:Z = false

.field static final DEBUG_KEYGUARD:Z = false

.field static final DEBUG_WAKEUP:Z = true

.field static final DOUBLE_PRESS_PRIMARY_LAUNCH_DEFAULT_FITNESS_APP:I = 0x2

.field static final DOUBLE_PRESS_PRIMARY_NOTHING:I = 0x0

.field static final DOUBLE_PRESS_PRIMARY_SWITCH_RECENT_APP:I = 0x1

.field static final DOUBLE_TAP_HOME_NOTHING:I = 0x0

.field static final DOUBLE_TAP_HOME_PIP_MENU:I = 0x2

.field static final DOUBLE_TAP_HOME_RECENT_SYSTEM_UI:I = 0x1

.field static final ENABLE_DESK_DOCK_HOME_CAPTURE:Z = false

.field static final ENABLE_VR_HEADSET_HOME_CAPTURE:Z = true

.field public static final EXTRA_TRIGGER_HUB:Ljava/lang/String; = "extra_trigger_hub"

.field private static final KEYGUARD_SCREENSHOT_CHORD_DELAY_MULTIPLIER:F = 2.5f

.field static final LAST_LONG_PRESS_HOME_BEHAVIOR:I = 0x3

.field static final LAST_SETTINGS_KEY_BEHAVIOR:I = 0x2

.field static final LONG_PRESS_BACK_GO_TO_VOICE_ASSIST:I = 0x1

.field static final LONG_PRESS_BACK_NOTHING:I = 0x0

.field static final LONG_PRESS_HOME_ALL_APPS:I = 0x1

.field static final LONG_PRESS_HOME_ASSIST:I = 0x2

.field static final LONG_PRESS_HOME_NOTHING:I = 0x0

.field static final LONG_PRESS_HOME_NOTIFICATION_PANEL:I = 0x3

.field static final LONG_PRESS_POWER_ASSISTANT:I = 0x5

.field static final LONG_PRESS_POWER_GLOBAL_ACTIONS:I = 0x1

.field static final LONG_PRESS_POWER_GO_TO_VOICE_ASSIST:I = 0x4

.field static final LONG_PRESS_POWER_NOTHING:I = 0x0

.field static final LONG_PRESS_POWER_SHUT_OFF:I = 0x2

.field static final LONG_PRESS_POWER_SHUT_OFF_NO_CONFIRM:I = 0x3

.field static final LONG_PRESS_PRIMARY_LAUNCH_VOICE_ASSISTANT:I = 0x1

.field static final LONG_PRESS_PRIMARY_NOTHING:I = 0x0

.field private static final MSG_ACCESSIBILITY_SHORTCUT:I = 0x11

.field private static final MSG_ACCESSIBILITY_TV:I = 0x13

.field private static final MSG_BUGREPORT_TV:I = 0x12

.field private static final MSG_DISPATCH_BACK_KEY_TO_AUTOFILL:I = 0x14

.field private static final MSG_DISPATCH_MEDIA_KEY_REPEAT_WITH_WAKE_LOCK:I = 0x4

.field private static final MSG_DISPATCH_MEDIA_KEY_WITH_WAKE_LOCK:I = 0x3

.field private static final MSG_DISPATCH_SHOW_GLOBAL_ACTIONS:I = 0xa

.field private static final MSG_DISPATCH_SHOW_RECENTS:I = 0x9

.field private static final MSG_HANDLE_ALL_APPS:I = 0x16

.field private static final MSG_HIDE_BOOT_MESSAGE:I = 0xb

.field private static final MSG_KEYGUARD_DRAWN_COMPLETE:I = 0x5

.field private static final MSG_KEYGUARD_DRAWN_TIMEOUT:I = 0x6

.field private static final MSG_LAUNCH_ASSIST:I = 0x17

.field private static final MSG_LAUNCH_VOICE_ASSIST_WITH_WAKE_LOCK:I = 0xc

.field private static final MSG_RINGER_TOGGLE_CHORD:I = 0x18

.field private static final MSG_SCREENSHOT_CHORD:I = 0x10

.field private static final MSG_SET_DEFERRED_KEY_ACTIONS_EXECUTABLE:I = 0x1b

.field private static final MSG_SHOW_PICTURE_IN_PICTURE_MENU:I = 0xf

.field private static final MSG_SHOW_SWITCH_KEYBOARD_LAYOUT_TOAST:I = 0x65

.field private static final MSG_SWITCH_KEYBOARD_LAYOUT:I = 0x19

.field private static final MSG_SYSTEM_KEY_PRESS:I = 0x15

.field private static final MSG_WINDOW_MANAGER_DRAWN_COMPLETE:I = 0x7

.field static final MULTI_PRESS_POWER_BRIGHTNESS_BOOST:I = 0x2

.field static final MULTI_PRESS_POWER_LAUNCH_TARGET_ACTIVITY:I = 0x3

.field static final MULTI_PRESS_POWER_NOTHING:I = 0x0

.field static final MULTI_PRESS_POWER_THEATER_MODE:I = 0x1

.field static final PENDING_KEY_NULL:I = -0x1

.field private static final POWER_BUTTON_SUPPRESSION_DELAY_DEFAULT_MILLIS:I = 0x320

.field public static final POWER_MULTI_PRESS_TIMEOUT_MILLIS:I

.field static final POWER_VOLUME_UP_BEHAVIOR_GLOBAL_ACTIONS:I = 0x2

.field static final POWER_VOLUME_UP_BEHAVIOR_MUTE:I = 0x1

.field static final POWER_VOLUME_UP_BEHAVIOR_NOTHING:I = 0x0

.field static final SEARCH_KEY_BEHAVIOR_DEFAULT_SEARCH:I = 0x0

.field static final SEARCH_KEY_BEHAVIOR_TARGET_ACTIVITY:I = 0x1

.field static final SETTINGS_KEY_BEHAVIOR_NOTHING:I = 0x2

.field static final SETTINGS_KEY_BEHAVIOR_NOTIFICATION_PANEL:I = 0x1

.field static final SETTINGS_KEY_BEHAVIOR_SETTINGS_ACTIVITY:I = 0x0

.field static final SHORT_PRESS_POWER_CLOSE_IME_OR_GO_HOME:I = 0x5

.field static final SHORT_PRESS_POWER_DREAM_OR_AWAKE_OR_SLEEP:I = 0x9

.field static final SHORT_PRESS_POWER_DREAM_OR_SLEEP:I = 0x7

.field static final SHORT_PRESS_POWER_GO_HOME:I = 0x4

.field static final SHORT_PRESS_POWER_GO_TO_SLEEP:I = 0x1

.field static final SHORT_PRESS_POWER_HUB_OR_DREAM_OR_SLEEP:I = 0x8

.field static final SHORT_PRESS_POWER_LOCK_OR_SLEEP:I = 0x6

.field static final SHORT_PRESS_POWER_NOTHING:I = 0x0

.field static final SHORT_PRESS_POWER_REALLY_GO_TO_SLEEP:I = 0x2

.field static final SHORT_PRESS_POWER_REALLY_GO_TO_SLEEP_AND_GO_HOME:I = 0x3

.field static final SHORT_PRESS_PRIMARY_LAUNCH_ALL_APPS:I = 0x1

.field static final SHORT_PRESS_PRIMARY_LAUNCH_TARGET_ACTIVITY:I = 0x2

.field static final SHORT_PRESS_PRIMARY_NOTHING:I = 0x0

.field static final SHORT_PRESS_SLEEP_GO_TO_SLEEP:I = 0x0

.field static final SHORT_PRESS_SLEEP_GO_TO_SLEEP_AND_GO_HOME:I = 0x1

.field static final SHORT_PRESS_WINDOW_NOTHING:I = 0x0

.field static final SHORT_PRESS_WINDOW_PICTURE_IN_PICTURE:I = 0x1

.field private static final SHOW_SWITCH_KEYBOARD_TOAST_DELAY_MILLIS:I = 0x32

.field public static final SYSTEM_DIALOG_REASON_ASSIST:Ljava/lang/String; = "assist"

.field public static final SYSTEM_DIALOG_REASON_GESTURE_NAV:Ljava/lang/String; = "gestureNav"

.field public static final SYSTEM_DIALOG_REASON_GLOBAL_ACTIONS:Ljava/lang/String; = "globalactions"

.field public static final SYSTEM_DIALOG_REASON_HOME_KEY:Ljava/lang/String; = "homekey"

.field public static final SYSTEM_DIALOG_REASON_KEY:Ljava/lang/String; = "reason"

.field public static final SYSTEM_DIALOG_REASON_RECENT_APPS:Ljava/lang/String; = "recentapps"

.field public static final SYSTEM_DIALOG_REASON_SCREENSHOT:Ljava/lang/String; = "screenshot"

.field static final TAG:Ljava/lang/String; = "WindowManager"

.field public static final TOAST_WINDOW_ANIM_BUFFER:I = 0x258

.field public static final TOAST_WINDOW_TIMEOUT:I = 0x1004

.field public static final TRACE_WAIT_FOR_ALL_WINDOWS_DRAWN_METHOD:Ljava/lang/String; = "waitForAllWindowsDrawn"

.field static final TRIPLE_PRESS_PRIMARY_NOTHING:I = 0x0

.field static final TRIPLE_PRESS_PRIMARY_TOGGLE_ACCESSIBILITY:I = 0x1

.field static final VERY_LONG_PRESS_POWER_GLOBAL_ACTIONS:I = 0x1

.field static final VERY_LONG_PRESS_POWER_NOTHING:I = 0x0

.field static final WAITING_FOR_DRAWN_TIMEOUT:I = 0x3e8

.field private static final WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

.field private static lastInterceptPowerKeyOffTime:J = 0x0L

.field static final localLOGV:Z = false

.field private static final mInterceptPowerKeySuppressionDelayMillis:J = 0x12cL


# instance fields
.field mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field mAccessibilityManagerInternal:Lcom/android/server/AccessibilityManagerInternal;

.field private mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

.field mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field mActivityManagerService:Landroid/app/IActivityManager;

.field mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field private mAllowLockscreenWhenOnDisplays:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mAllowStartActivityForLongPressOnPowerDuringSetup:Z

.field mAppOpsManager:Landroid/app/AppOpsManager;

.field mAudioManagerInternal:Landroid/media/AudioManagerInternal;

.field mAutofillManagerInternal:Landroid/view/autofill/AutofillManagerInternal;

.field volatile mBackKeyHandled:Z

.field private mBackgroundRecentTaskInfoOnStemPrimarySingleKeyUp:Landroid/app/ActivityManager$RecentTaskInfo;

.field mBeingHangUp:Z

.field volatile mBootAnimationDismissable:Z

.field mBootMessageNeedsHiding:Z

.field mBootMsgDialog:Landroid/app/ProgressDialog;

.field mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

.field mBurnInProtectionHelper:Lcom/android/server/policy/BurnInProtectionHelper;

.field private mButtonOverridePermissionChecker:Lcom/android/server/policy/PhoneWindowManager$ButtonOverridePermissionChecker;

.field mCameraLensCoverState:I

.field mCarDockIntent:Landroid/content/Intent;

.field private final mConsumedKeysForDevice:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field mDefaultDisplay:Landroid/view/Display;

.field mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

.field mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

.field private final mDeferredKeyActionExecutor:Lcom/android/server/policy/DeferredKeyActionExecutor;

.field mDeskDockIntent:Landroid/content/Intent;

.field volatile mDeviceGoingToSleep:Z

.field private volatile mDismissImeOnBackKeyPressed:Z

.field private mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

.field private final mDisplayHomeButtonHandlers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;",
            ">;"
        }
    .end annotation
.end field

.field mDisplayManager:Landroid/hardware/display/DisplayManager;

.field mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field mDockObserverInternal:Lcom/android/server/DockObserverInternal;

.field mDockReceiver:Landroid/content/BroadcastReceiver;

.field mDoublePressOnPowerBehavior:I

.field private mDoublePressOnStemPrimaryBehavior:I

.field mDoubleTapOnHomeBehavior:I

.field mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

.field mEnableBugReportKeyboardShortcut:Z

.field private mEnableCarDockHomeCapture:Z

.field volatile mEndCallKeyHandled:Z

.field private final mEndCallLongPress:Ljava/lang/Runnable;

.field mEndcallBehavior:I

.field private mExtEventObserver:Landroid/os/UEventObserver;

.field private mFocusedTaskInfoOnStemPrimarySingleKeyUp:Landroid/app/ActivityTaskManager$RootTaskInfo;

.field private mGestureLauncherService:Lcom/android/server/GestureLauncherService;

.field private mGlobalActions:Lcom/android/server/policy/GlobalActions;

.field private mGlobalActionsFactory:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lcom/android/server/policy/GlobalActions;",
            ">;"
        }
    .end annotation
.end field

.field private mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

.field private mGoToSleepOnButtonPressTheaterMode:Z

.field private mHDMIObserver:Landroid/os/UEventObserver;

.field private mHDMISwitchObserver:Landroid/os/UEventObserver;

.field private mHandleVolumeKeysInWM:Z

.field private mHandler:Landroid/os/Handler;

.field private mHasFeatureAuto:Z

.field private mHasFeatureHdmiCec:Z

.field private mHasFeatureLeanback:Z

.field private mHasFeatureWatch:Z

.field mHasSoftInput:Z

.field mHaveBuiltInKeyboard:Z

.field mHavePendingMediaKeyRepeatWithWakeLock:Z

.field mHdmiControl:Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

.field mHomeIntent:Landroid/content/Intent;

.field mIncallBackBehavior:I

.field mIncallPowerBehavior:I

.field mInputManager:Landroid/hardware/input/InputManager;

.field mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

.field private mIsFactoryBuild:I

.field volatile mIsFinishedGoingToSleep:Z

.field volatile mIsGoingToSleepDefaultDisplay:Z

.field protected mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

.field private mKeyguardBound:Z

.field mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

.field final mKeyguardDrawnCallback:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;

.field private mKeyguardDrawnOnce:Z

.field private mKeyguardDrawnTimeout:I

.field private mKeyguardOccludedChanged:Z

.field mKidsModeEnabled:Z

.field mLidKeyboardAccessibility:I

.field mLidNavigationAccessibility:I

.field private final mLock:Ljava/lang/Object;

.field private mLockAfterDreamingTransitionFinished:Z

.field private mLockNowPending:Z

.field mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field mLockScreenTimeout:I

.field mLockScreenTimerActive:Z

.field private final mLogDecelerateInterpolator:Lcom/android/internal/policy/LogDecelerateInterpolator;

.field mLogger:Lcom/android/internal/logging/MetricsLogger;

.field mLongPressOnBackBehavior:I

.field mLongPressOnHomeBehavior:I

.field mLongPressOnPowerAssistantTimeoutMs:J

.field mLongPressOnPowerBehavior:I

.field private mLongPressOnStemPrimaryBehavior:I

.field mModifierShortcutManager:Lcom/android/server/policy/ModifierShortcutManager;

.field mMultiuserReceiver:Landroid/content/BroadcastReceiver;

.field volatile mNavBarVirtualKeyHapticFeedbackEnabled:Z

.field mPackageManager:Landroid/content/pm/PackageManager;

.field mPendingCapsLockToggle:Z

.field private mPendingKeyguardOccluded:Z

.field mPendingMetaAction:Z

.field volatile mPendingWakeKey:I

.field final mPersistentVrModeListener:Landroid/service/vr/IPersistentVrStateCallbacks;

.field volatile mPictureInPictureVisible:Z

.field volatile mPowerButtonLaunchGestureTriggered:Z

.field volatile mPowerButtonLaunchGestureTriggeredDuringGoingToSleep:Z

.field private mPowerButtonSuppressionDelayMillis:I

.field mPowerDoublePressTargetActivity:Landroid/content/ComponentName;

.field volatile mPowerKeyHandled:Z

.field protected mPowerKeyRule:Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;

.field mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

.field mPowerManager:Landroid/os/PowerManager;

.field mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field private mPowerMenuUnderKeyguard:Z

.field mPowerVolUpBehavior:I

.field mPreloadedRecentApps:Z

.field mPrimaryShortPressTargetActivity:Landroid/content/ComponentName;

.field mRecentAppsHeldModifiers:I

.field volatile mRecentsVisible:Z

.field volatile mRequestedOrSleepingDefaultDisplay:Z

.field mRingerToggleChord:I

.field mSafeMode:Z

.field final mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

.field private mScreenOnDelay:J

.field private final mScreenOnListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;",
            ">;"
        }
    .end annotation
.end field

.field mSearchKeyBehavior:I

.field mSearchKeyTargetActivity:Landroid/content/ComponentName;

.field mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

.field final mServiceAcquireLock:Ljava/lang/Object;

.field mSettingsKeyBehavior:I

.field mSettingsObserver:Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;

.field mShortPressOnPowerBehavior:I

.field mShortPressOnSleepBehavior:I

.field private mShortPressOnStemPrimaryBehavior:I

.field mShortPressOnWindowBehavior:I

.field private mShouldEarlyShortPressOnPower:Z

.field mShouldEarlyShortPressOnStemPrimary:Z

.field mSideFpsEventHandler:Lcom/android/server/policy/SideFpsEventHandler;

.field mSilenceRingerOnSleepKey:Z

.field protected mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

.field mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field mStylusButtonsEnabled:Z

.field private mSupportLongPressPowerWhenNonInteractive:Z

.field private mSupportShortPressPowerWhenDefaultDisplayOn:Z

.field mSystemBooted:Z

.field mSystemNavigationKeysEnabled:Z

.field mSystemReady:Z

.field private mTalkbackShortcutController:Lcom/android/server/policy/TalkbackShortcutController;

.field private volatile mTopFocusedDisplayId:I

.field mTriplePressOnPowerBehavior:I

.field private mTriplePressOnStemPrimaryBehavior:I

.field mUiMode:I

.field mUiModeManager:Landroid/app/IUiModeManager;

.field mUnisocPhoneWindowUtil:Lcom/android/server/policy/UFwPhoneWindowManagerUtil;

.field mUseTvRouting:Z

.field mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

.field mVeryLongPressOnPowerBehavior:I

.field mVibrator:Landroid/os/Vibrator;

.field private final mVisibleBackgroundUsersEnabled:Z

.field private mVoiceAccessShortcutController:Lcom/android/server/policy/VoiceAccessShortcutController;

.field final mVolumeDownLongPress:Ljava/lang/Runnable;

.field final mVolumeUpLongPress:Ljava/lang/Runnable;

.field mVrHeadsetHomeIntent:Landroid/content/Intent;

.field volatile mVrManagerInternal:Lcom/android/server/vr/VrManagerInternal;

.field mWakeGestureEnabledSetting:Z

.field mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

.field mWakeOnAssistKeyPress:Z

.field mWakeOnBackKeyPress:Z

.field mWakeOnDpadKeyPress:Z

.field mWakeUpToLastStateTimeout:J

.field private mWallpaperManagerInternal:Lcom/android/server/wallpaper/WallpaperManagerInternal;

.field mWindowManager:Landroid/view/IWindowManager;

.field mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

.field mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

.field private mWindowWakeUpPolicy:Lcom/android/server/policy/WindowWakeUpPolicy;


# direct methods
.method public static synthetic $r8$lambda$HsdZ1AfL-mrHwMvboPYQ-e8DrWU(Lcom/android/server/policy/PhoneWindowManager;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->lambda$powerPress$0(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$Nxxt3y6WeKPeZnoQW6vajtugk2M(Lcom/android/server/policy/PhoneWindowManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->lambda$handleKeyGestureEvent$5(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$QC2bbpvSHd9xWq-lQP6GZkyB6v8(Lcom/android/server/policy/PhoneWindowManager;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->lambda$powerPress$1(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$cjpFuuMQpoXRPvhwWotLtmxoXSs(Lcom/android/server/policy/PhoneWindowManager;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->lambda$powerPress$2(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$o1IbWpGnvS7oTobWCvMjpoMMPso(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->lambda$updateSettings$3()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAccessibilityShortcutController(Lcom/android/server/policy/PhoneWindowManager;)Lcom/android/internal/accessibility/AccessibilityShortcutController;
    .registers 1

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeferredKeyActionExecutor(Lcom/android/server/policy/PhoneWindowManager;)Lcom/android/server/policy/DeferredKeyActionExecutor;
    .registers 1

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeferredKeyActionExecutor:Lcom/android/server/policy/DeferredKeyActionExecutor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFocusedTaskInfoOnStemPrimarySingleKeyUp(Lcom/android/server/policy/PhoneWindowManager;)Landroid/app/ActivityTaskManager$RootTaskInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedTaskInfoOnStemPrimarySingleKeyUp:Landroid/app/ActivityTaskManager$RootTaskInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/policy/PhoneWindowManager;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsFactoryBuild(Lcom/android/server/policy/PhoneWindowManager;)I
    .registers 1

    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mIsFactoryBuild:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/policy/PhoneWindowManager;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLockAfterDreamingTransitionFinished(Lcom/android/server/policy/PhoneWindowManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockAfterDreamingTransitionFinished:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLongPressOnStemPrimaryBehavior(Lcom/android/server/policy/PhoneWindowManager;)I
    .registers 1

    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnStemPrimaryBehavior:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmScreenOnDelay(Lcom/android/server/policy/PhoneWindowManager;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnDelay:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmShortPressOnStemPrimaryBehavior(Lcom/android/server/policy/PhoneWindowManager;)I
    .registers 1

    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnStemPrimaryBehavior:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmShouldEarlyShortPressOnPower(Lcom/android/server/policy/PhoneWindowManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShouldEarlyShortPressOnPower:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSupportLongPressPowerWhenNonInteractive(Lcom/android/server/policy/PhoneWindowManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSupportLongPressPowerWhenNonInteractive:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTriplePressOnStemPrimaryBehavior(Lcom/android/server/policy/PhoneWindowManager;)I
    .registers 1

    iget p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnStemPrimaryBehavior:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWindowWakeUpPolicy(Lcom/android/server/policy/PhoneWindowManager;)Lcom/android/server/policy/WindowWakeUpPolicy;
    .registers 1

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowWakeUpPolicy:Lcom/android/server/policy/WindowWakeUpPolicy;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmBackgroundRecentTaskInfoOnStemPrimarySingleKeyUp(Lcom/android/server/policy/PhoneWindowManager;Landroid/app/ActivityManager$RecentTaskInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBackgroundRecentTaskInfoOnStemPrimarySingleKeyUp:Landroid/app/ActivityManager$RecentTaskInfo;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmFocusedTaskInfoOnStemPrimarySingleKeyUp(Lcom/android/server/policy/PhoneWindowManager;Landroid/app/ActivityTaskManager$RootTaskInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedTaskInfoOnStemPrimarySingleKeyUp:Landroid/app/ActivityTaskManager$RootTaskInfo;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLockAfterDreamingTransitionFinished(Lcom/android/server/policy/PhoneWindowManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockAfterDreamingTransitionFinished:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLockNowPending(Lcom/android/server/policy/PhoneWindowManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockNowPending:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmScreenOnDelay(Lcom/android/server/policy/PhoneWindowManager;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnDelay:J

    return-void
.end method

.method static bridge synthetic -$$Nest$maccessibilityShortcutActivated(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->accessibilityShortcutActivated()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mbackKeyPress(Lcom/android/server/policy/PhoneWindowManager;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->backKeyPress()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mbackLongPress(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->backLongPress()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcancelAccessibilityGestureTv(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelAccessibilityGestureTv()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcancelBugreportGestureTv(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelBugreportGestureTv()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcancelGlobalActionsAction(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelGlobalActionsAction()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcancelPendingAccessibilityShortcutAction(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingAccessibilityShortcutAction()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcancelPendingRingerToggleChordAction(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingRingerToggleChordAction()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcancelPendingScreenshotChordAction(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcancelPreloadRecentApps(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPreloadRecentApps()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfinishKeyguardDrawn(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishKeyguardDrawn()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfinishWindowsDrawn(Lcom/android/server/policy/PhoneWindowManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->finishWindowsDrawn(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetDreamManagerInternal(Lcom/android/server/policy/PhoneWindowManager;)Landroid/service/dreams/DreamManagerInternal;
    .registers 1

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getDreamManagerInternal()Landroid/service/dreams/DreamManagerInternal;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetMaxMultiPressPowerCount(Lcom/android/server/policy/PhoneWindowManager;)I
    .registers 1

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getMaxMultiPressPowerCount()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetMaxMultiPressStemPrimaryCount(Lcom/android/server/policy/PhoneWindowManager;)I
    .registers 1

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getMaxMultiPressStemPrimaryCount()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetResolvedLongPressOnPowerBehavior(Lcom/android/server/policy/PhoneWindowManager;)I
    .registers 1

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getResolvedLongPressOnPowerBehavior()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetScreenshotChordLongPressDelay(Lcom/android/server/policy/PhoneWindowManager;)J
    .registers 3

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getScreenshotChordLongPressDelay()J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$mhandleHideBootMessage(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->handleHideBootMessage()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleKeyGestureInKeyGestureController(Lcom/android/server/policy/PhoneWindowManager;IIII)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/policy/PhoneWindowManager;->handleKeyGestureInKeyGestureController(IIII)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleRingerChordGesture(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->handleRingerChordGesture()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleScreenShot(Lcom/android/server/policy/PhoneWindowManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->handleScreenShot(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleShortPressOnHome(Lcom/android/server/policy/PhoneWindowManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->handleShortPressOnHome(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSwitchKeyboardLayout(Lcom/android/server/policy/PhoneWindowManager;IILandroid/os/IBinder;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->handleSwitchKeyboardLayout(IILandroid/os/IBinder;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleTransitionForKeyguardLw(Lcom/android/server/policy/PhoneWindowManager;ZZ)I
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->handleTransitionForKeyguardLw(ZZ)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mhasLongPressOnBackBehavior(Lcom/android/server/policy/PhoneWindowManager;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasLongPressOnBackBehavior()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mhasLongPressOnPowerBehavior(Lcom/android/server/policy/PhoneWindowManager;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasLongPressOnPowerBehavior()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mhasLongPressOnStemPrimaryBehavior(Lcom/android/server/policy/PhoneWindowManager;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasLongPressOnStemPrimaryBehavior()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mhasVeryLongPressOnPowerBehavior(Lcom/android/server/policy/PhoneWindowManager;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasVeryLongPressOnPowerBehavior()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$minterceptAccessibilityGestureTv(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->interceptAccessibilityGestureTv()V

    return-void
.end method

.method static bridge synthetic -$$Nest$minterceptAccessibilityShortcutChord(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->interceptAccessibilityShortcutChord()V

    return-void
.end method

.method static bridge synthetic -$$Nest$minterceptBugreportGestureTv(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->interceptBugreportGestureTv()V

    return-void
.end method

.method static bridge synthetic -$$Nest$minterceptRingerToggleChord(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->interceptRingerToggleChord()V

    return-void
.end method

.method static bridge synthetic -$$Nest$minterceptScreenshotChord(Lcom/android/server/policy/PhoneWindowManager;IJ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->interceptScreenshotChord(IJ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$misKeyEventForCurrentUser(Lcom/android/server/policy/PhoneWindowManager;IILjava/lang/String;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->isKeyEventForCurrentUser(IILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mlaunchAllAppsAction(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->launchAllAppsAction()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mlaunchAssistAction(Lcom/android/server/policy/PhoneWindowManager;Ljava/lang/String;IJI)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/policy/PhoneWindowManager;->launchAssistAction(Ljava/lang/String;IJI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmakeSwitchKeyboardLayoutToast(Lcom/android/server/policy/PhoneWindowManager;Landroid/view/KeyEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->makeSwitchKeyboardLayoutToast(Landroid/view/KeyEvent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyKeyGestureCompleted(Lcom/android/server/policy/PhoneWindowManager;Landroid/view/KeyEvent;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->notifyKeyGestureCompleted(Landroid/view/KeyEvent;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mperformHapticFeedback(Lcom/android/server/policy/PhoneWindowManager;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(ILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpowerLongPress(Lcom/android/server/policy/PhoneWindowManager;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->powerLongPress(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpowerVeryLongPress(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->powerVeryLongPress()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpreloadRecentApps(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->preloadRecentApps()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendSystemKeyToStatusBar(Lcom/android/server/policy/PhoneWindowManager;Landroid/view/KeyEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->sendSystemKeyToStatusBar(Landroid/view/KeyEvent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshouldEnableWakeGestureLp(Lcom/android/server/policy/PhoneWindowManager;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->shouldEnableWakeGestureLp()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mshowPictureInPictureMenuInternal(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->showPictureInPictureMenuInternal()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowRecentApps(Lcom/android/server/policy/PhoneWindowManager;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->showRecentApps(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstemPrimaryLongPress(Lcom/android/server/policy/PhoneWindowManager;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->stemPrimaryLongPress(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstemPrimaryPress(Lcom/android/server/policy/PhoneWindowManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->stemPrimaryPress(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtoggleNotificationPanel(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->toggleNotificationPanel()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtoggleRecentApps(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->toggleRecentApps()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateSettings(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateSettings()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetWINDOW_TYPES_WHERE_HOME_DOESNT_WORK()[I
    .registers 1

    sget-object v0, Lcom/android/server/policy/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/policy/PhoneWindowManager;->lastInterceptPowerKeyOffTime:J

    invoke-static {}, Landroid/view/ViewConfiguration;->getMultiPressTimeout()I

    move-result v0

    sput v0, Lcom/android/server/policy/PhoneWindowManager;->POWER_MULTI_PRESS_TIMEOUT_MILLIS:I

    const/16 v0, 0x7d3

    const/16 v1, 0x7da

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnListeners:Landroid/util/SparseArray;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mServiceAcquireLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mEnableBugReportKeyboardShortcut:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mEnableCarDockHomeCapture:Z

    new-instance v2, Lcom/android/server/policy/PhoneWindowManager$1;

    invoke-direct {v2, p0}, Lcom/android/server/policy/PhoneWindowManager$1;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnCallback:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavBarVirtualKeyHapticFeedbackEnabled:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingWakeKey:I

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStylusButtonsEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowLockscreenWhenOnDisplays:Ljava/util/HashSet;

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRingerToggleChord:I

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mConsumedKeysForDevice:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/internal/policy/LogDecelerateInterpolator;

    const/16 v3, 0x64

    invoke-direct {v1, v3, v0}, Lcom/android/internal/policy/LogDecelerateInterpolator;-><init>(II)V

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLogDecelerateInterpolator:Lcom/android/internal/policy/LogDecelerateInterpolator;

    new-instance v1, Lcom/android/server/policy/DeferredKeyActionExecutor;

    invoke-direct {v1}, Lcom/android/server/policy/DeferredKeyActionExecutor;-><init>()V

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeferredKeyActionExecutor:Lcom/android/server/policy/DeferredKeyActionExecutor;

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFocusedDisplayId:I

    const/16 v1, 0x320

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerButtonSuppressionDelayMillis:I

    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;

    invoke-direct {v1, p0}, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyRule:Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockNowPending:Z

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnTimeout:I

    invoke-static {}, Landroid/os/UserManager;->isVisibleBackgroundUsersEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVisibleBackgroundUsersEnabled:Z

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$2;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHDMIObserver:Landroid/os/UEventObserver;

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$3;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$3;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHDMISwitchObserver:Landroid/os/UEventObserver;

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$4;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$4;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExtEventObserver:Landroid/os/UEventObserver;

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$5;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$5;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPersistentVrModeListener:Landroid/service/vr/IPersistentVrStateCallbacks;

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$6;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$6;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mEndCallLongPress:Ljava/lang/Runnable;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayHomeButtonHandlers:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$15;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$15;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$16;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$16;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mMultiuserReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$MusicPrev;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$MusicPrev;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVolumeDownLongPress:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$MusicNext;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$MusicNext;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVolumeUpLongPress:Ljava/lang/Runnable;

    return-void
.end method

.method private CheckDisplayState()Z
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isScreenOnFully()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private accessibilityShortcutActivated()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    invoke-virtual {v0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->performAccessibilityShortcut()V

    return-void
.end method

.method private applyLidSwitchState()V
    .registers 7

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getLidState()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getLidBehavior()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0  #0x2
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v2}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->lockDeviceNow()V

    goto :goto_0

    :pswitch_1  #0x1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x3

    const/4 v5, 0x1

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/server/policy/PhoneWindowManager;->sleepDefaultDisplay(JII)V

    nop

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateWakeGestureListenerLp()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1  #00000001
        :pswitch_0  #00000002
    .end packed-switch
.end method

.method private attemptToDreamOrAwakeFromShortPowerButtonPress(ZZLjava/lang/Runnable;)V
    .registers 8

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnPowerBehavior:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnPowerBehavior:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnPowerBehavior:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getDreamManagerInternal()Landroid/service/dreams/DreamManagerInternal;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t access dream manager dreaming when attempting to start or stop dream from short power press (isScreenOn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", awakeWhenDream="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_1
    invoke-virtual {v0, p1}, Landroid/service/dreams/DreamManagerInternal;->canStartDreaming(Z)Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz p2, :cond_2

    invoke-virtual {v0}, Landroid/service/dreams/DreamManagerInternal;->isDreaming()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    const-string v2, "short press power"

    invoke-virtual {v0, v1, v2}, Landroid/service/dreams/DreamManagerInternal;->stopDream(ZLjava/lang/String;)V

    return-void

    :cond_2
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t start dreaming and the device is not dreaming when attempting to start or stop dream from short power press (isScreenOn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", awakeWhenDream="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockAfterDreamingTransitionFinished:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/service/dreams/DreamManagerInternal;->requestDream()V

    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private static awakenDreams()V
    .registers 2

    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getDreamManager()Landroid/service/dreams/IDreamManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :cond_0
    :goto_0
    return-void
.end method

.method private backKeyPress()Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLogger:Lcom/android/internal/logging/MetricsLogger;

    const-string v1, "key_back_press"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureWatch:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->silenceRinger()V

    const/4 v2, 0x0

    return v2

    :cond_0
    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallBackBehavior:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->endCall()Z

    move-result v2

    return v2

    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAutofillManagerInternal:Landroid/view/autofill/AutofillManagerInternal;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    return v0
.end method

.method private backLongPress()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnBackBehavior:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0  #0x1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->launchVoiceAssist(Z)V

    goto :goto_0

    :pswitch_1  #0x0
    nop

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1  #00000000
        :pswitch_0  #00000001
    .end packed-switch
.end method

.method private bindKeyguard()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardBound:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardBound:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->bindService(Landroid/content/Context;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private cancelAccessibilityGestureTv()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private cancelBugreportGestureTv()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private cancelGlobalActionsAction()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private cancelPendingAccessibilityShortcutAction()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private cancelPendingRingerToggleChordAction()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private cancelPendingScreenshotChordAction()V
    .registers 5

    invoke-static {}, Lcom/android/server/policy/PhoneWindowManagerStub;->getInstance()Lcom/android/server/policy/PhoneWindowManagerStub;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const-string v2, "key up when screenshot"

    const/16 v3, 0x10

    invoke-interface {v0, v1, v3, v2}, Lcom/android/server/policy/PhoneWindowManagerStub;->logMessageRemoved(Landroid/os/Handler;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private cancelPreloadRecentApps()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->cancelPreloadRecentApps()V

    :cond_0
    return-void
.end method

.method private changeDisplayBrightnessValue(II)V
    .registers 13

    const/4 v0, 0x0

    if-gez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2, v1, v0}, Landroid/os/PowerManager;->getBrightnessConstraint(II)F

    move-result v0

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/os/PowerManager;->getBrightnessConstraint(II)F

    move-result v2

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v4, v1}, Landroid/hardware/display/DisplayManager;->getBrightness(I)F

    move-result v4

    invoke-static {v4}, Lcom/android/internal/display/BrightnessUtils;->convertLinearToGamma(F)F

    move-result v5

    const v6, 0x3dcccccd

    int-to-float v7, p2

    mul-float/2addr v7, v6

    add-float/2addr v7, v5

    const/4 v6, 0x0

    const/high16 v8, 0x3f800000

    invoke-static {v7, v6, v8}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v6

    invoke-static {v6}, Lcom/android/internal/display/BrightnessUtils;->convertGammaToLinear(F)F

    move-result v7

    invoke-static {v7, v0, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v7

    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v8, v1, v7}, Landroid/hardware/display/DisplayManager;->setBrightness(IF)V

    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.android.intent.action.SHOW_BRIGHTNESS_DIALOG"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v9, 0x50000

    invoke-virtual {v8, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v9, "android.intent.extra.FROM_BRIGHTNESS_KEY"

    invoke-virtual {v8, v9, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-direct {p0, v8, v3}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private checkVolBtn(Landroid/view/KeyEvent;)I
    .registers 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->CheckDisplayState()Z

    move-result v3

    if-nez v3, :cond_2

    sget-boolean v3, Lcom/android/server/policy/VolBtnHelper;->mVolBtnMusicControls:Z

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->handleVolumeLongPress(I)V

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->handleVolumeLongPressAbort()V

    sget-boolean v3, Lcom/android/server/policy/VolBtnHelper;->mIsVolLongPressed:Z

    if-nez v3, :cond_1

    invoke-static {p1, v1}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/policy/PhoneWindowManager;->dispatchDirectAudioEvent(Landroid/view/KeyEvent;)V

    invoke-static {p1, v2}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/policy/PhoneWindowManager;->dispatchDirectAudioEvent(Landroid/view/KeyEvent;)V

    :cond_1
    sput-boolean v1, Lcom/android/server/policy/VolBtnHelper;->mIsVolLongPressed:Z

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method private dismissKeyboardShortcutsMenu()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->dismissKeyboardShortcutsMenu()V

    :cond_0
    return-void
.end method

.method private dispatchDirectAudioEvent(Landroid/view/KeyEvent;)V
    .registers 7

    const-string v0, "WindowManager"

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getHdmiControlManager()Landroid/hardware/hdmi/HdmiControlManager;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiControlManager;->getSystemAudioMode()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->shouldCecAudioDeviceForwardVolumeKeysSystemAudioModeOff()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiControlManager;->getAudioSystemClient()Landroid/hardware/hdmi/HdmiAudioSystemClient;

    move-result-object v2

    if-eqz v2, :cond_1

    nop

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v0, v3}, Landroid/hardware/hdmi/HdmiAudioSystemClient;->sendKeyEvent(IZ)V

    return-void

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getAudioService()Landroid/media/IAudioService;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mUseTvRouting:Z

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, p1, v3, v4, v0}, Landroid/media/IAudioService;->handleVolumeKey(Landroid/view/KeyEvent;ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error dispatching volume key in handleVolumeKey for event:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method private static doublePressOnStemPrimaryBehaviorToString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0  #0x2
    const-string v0, "DOUBLE_PRESS_PRIMARY_LAUNCH_DEFAULT_FITNESS_APP"

    return-object v0

    :pswitch_1  #0x1
    const-string v0, "DOUBLE_PRESS_PRIMARY_SWITCH_RECENT_APP"

    return-object v0

    :pswitch_2  #0x0
    const-string v0, "DOUBLE_PRESS_PRIMARY_NOTHING"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2  #00000000
        :pswitch_1  #00000001
        :pswitch_0  #00000002
    .end packed-switch
.end method

.method private static doubleTapOnHomeBehaviorToString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0  #0x2
    const-string v0, "DOUBLE_TAP_HOME_PIP_MENU"

    return-object v0

    :pswitch_1  #0x1
    const-string v0, "DOUBLE_TAP_HOME_RECENT_SYSTEM_UI"

    return-object v0

    :pswitch_2  #0x0
    const-string v0, "DOUBLE_TAP_HOME_NOTHING"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2  #00000000
        :pswitch_1  #00000001
        :pswitch_0  #00000002
    .end packed-switch
.end method

.method private enableScreen(Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;Z)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isAwake()Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnOnce:Z

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnOnce:Z

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMessageNeedsHiding:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMessageNeedsHiding:Z

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->hideBootMessages()V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    iget-wide v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnDelay:J

    invoke-interface {p1, v3, v4}, Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;->onScreenOn(J)V

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnDelay:J

    :cond_2
    if-eqz v2, :cond_3

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v1}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->enableScreenIfNeeded()V

    :cond_3
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    invoke-static {}, Lcom/android/server/policy/PhoneWindowManagerStub;->getInstance()Lcom/android/server/policy/PhoneWindowManagerStub;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/android/server/policy/PhoneWindowManagerStub;->setForcedDisplayDensityForUser(Landroid/view/IWindowManager;)V

    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private static endcallBehaviorToString(I)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    const-string v1, "home|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1

    const-string v1, "sleep|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_2

    const-string v2, "<nothing>"

    return-object v2

    :cond_2
    const/4 v2, 0x0

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private finishKeyguardDrawn()V
    .registers 7

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->finishKeyguardDrawn()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v0, 0x20

    const-string v2, "waitForAllWindowsDrawn"

    const/4 v3, -0x1

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v1, v4, v5, v3}, Lcom/android/server/wm/WindowManagerInternal;->waitForAllWindowsDrawn(Landroid/os/Message;JI)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private finishPowerKeyPress()V
    .registers 11

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long v8, v2, v0

    invoke-static {}, Lcom/android/server/input/InputDfsReportStub;->get()Lcom/android/server/input/InputDfsReportStub;

    move-result-object v4

    const-string v6, "power key has locked time out "

    const/4 v7, 0x1

    const-string v5, "PowerKeyLockException"

    invoke-interface/range {v4 .. v9}, Lcom/android/server/input/InputDfsReportStub;->reportPowerKeyLockException(Ljava/lang/String;Ljava/lang/String;IJ)V

    const-wide/16 v2, 0x14

    cmp-long v2, v8, v2

    if-lez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "long wakeLock duration time for power up:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WindowManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private finishScreenTurningOn()V
    .registers 6

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListener()V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getScreenOnListener()Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->finishScreenTurningOn()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v1, "screenTurningOn"

    const/4 v2, 0x0

    const-wide/16 v3, 0x20

    invoke-static {v3, v4, v1, v2}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->enableScreen(Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;Z)V

    return-void
.end method

.method private finishWindowsDrawn(I)V
    .registers 3

    invoke-static {}, Lcom/android/server/wm/FoldScreenListenerStub;->getInstance()Lcom/android/server/wm/FoldScreenListenerStub;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/wm/FoldScreenListenerStub;->onFinishWindowDrawn(I)V

    if-eqz p1, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;->onScreenOn()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->finishWindowsDrawn()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishScreenTurningOn()V

    return-void
.end method

.method private getAccessibilityShortcutTimeout()J
    .registers 8

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    const-string v3, "accessibility_shortcut_dialog_shown"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "skip_accessibility_shortcut_dialog_timeout_restriction"

    iget v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    invoke-static {v3, v5, v4, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_1

    move v4, v2

    :cond_1
    if-nez v1, :cond_3

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getAccessibilityShortcutKeyTimeout()J

    move-result-wide v2

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getAccessibilityShortcutKeyTimeoutAfterConfirmation()J

    move-result-wide v2

    :goto_2
    return-wide v2
.end method

.method static getAudioService()Landroid/media/IAudioService;
    .registers 3

    nop

    const-string v0, "audio"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "WindowManager"

    const-string v2, "Unable to find IAudioService interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method static getDreamManager()Landroid/service/dreams/IDreamManager;
    .registers 1

    nop

    const-string v0, "dreams"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v0

    return-object v0
.end method

.method private getDreamManagerInternal()Landroid/service/dreams/DreamManagerInternal;
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    if-nez v0, :cond_0

    const-class v0, Landroid/service/dreams/DreamManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/dreams/DreamManagerInternal;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    return-object v0
.end method

.method private getHdmiControl()Lcom/android/server/policy/PhoneWindowManager$HdmiControl;
    .registers 5

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiControl:Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureHdmiCec:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "hdmi_control"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/HdmiControlManager;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiControlManager;->getPlaybackClient()Landroid/hardware/hdmi/HdmiPlaybackClient;

    move-result-object v2

    :cond_1
    new-instance v3, Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    invoke-direct {v3, v2, v1}, Lcom/android/server/policy/PhoneWindowManager$HdmiControl;-><init>(Landroid/hardware/hdmi/HdmiPlaybackClient;Lcom/android/server/policy/PhoneWindowManager-IA;)V

    iput-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiControl:Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiControl:Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    return-object v0
.end method

.method private getHdmiControlManager()Landroid/hardware/hdmi/HdmiControlManager;
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureHdmiCec:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/hdmi/HdmiControlManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/HdmiControlManager;

    return-object v0
.end method

.method private getKeyguardDrawnTimeout()J
    .registers 4

    const-class v0, Lcom/android/server/SystemServiceManager;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/SystemServiceManager;

    invoke-virtual {v0}, Lcom/android/server/SystemServiceManager;->isBootCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnTimeout:I

    int-to-long v1, v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x1388

    :goto_0
    return-wide v1
.end method

.method private getLidBehavior()I
    .registers 4

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lid_behavior"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getMaxMultiPressPowerCount()I
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureWatch:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/GestureLauncherService;->isEmergencyGestureSettingEnabled(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    return v0

    :cond_0
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    return v0

    :cond_1
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    return v0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private getMaxMultiPressStemPrimaryCount()I
    .registers 2

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnStemPrimaryBehavior:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0  #0x1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTalkbackShortcutController:Lcom/android/server/policy/TalkbackShortcutController;

    invoke-virtual {v0}, Lcom/android/server/policy/TalkbackShortcutController;->isTalkBackShortcutGestureEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    return v0

    :pswitch_1  #0x0
    nop

    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnStemPrimaryBehavior:I

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1  #00000000
        :pswitch_0  #00000001
    .end packed-switch
.end method

.method private getResolvedLongPressOnPowerBehavior()I
    .registers 3

    invoke-static {}, Landroid/os/FactoryTest;->isLongPressOnPowerOffEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    return v0

    :cond_0
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->isLongPressToAssistantEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    return v0

    :cond_2
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    return v0
.end method

.method private getRingerToggleChordDelay()J
    .registers 3

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method private getScreenshotChordLongPressDelay()J
    .registers 5

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScreenshotChordKeyTimeout()J

    move-result-wide v0

    const-string v2, "systemui"

    const-string v3, "screenshot_keychord_delay"

    invoke-static {v2, v3, v0, v1}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    const/high16 v2, 0x40200000

    long-to-float v3, v0

    mul-float/2addr v3, v2

    float-to-long v2, v3

    return-wide v2

    :cond_0
    return-wide v0
.end method

.method private getTargetDisplayIdForKeyEvent(Landroid/view/KeyEvent;)I
    .registers 4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFocusedDisplayId:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFocusedDisplayId:I

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private getTargetDisplayIdForKeyGestureEvent(Landroid/hardware/input/KeyGestureEvent;)I
    .registers 4

    invoke-virtual {p1}, Landroid/hardware/input/KeyGestureEvent;->getDisplayId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/hardware/input/KeyGestureEvent;->getDisplayId()I

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFocusedDisplayId:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFocusedDisplayId:I

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private getWallpaperManagerInternal()Lcom/android/server/wallpaper/WallpaperManagerInternal;
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWallpaperManagerInternal:Lcom/android/server/wallpaper/WallpaperManagerInternal;

    if-nez v0, :cond_0

    const-class v0, Lcom/android/server/wallpaper/WallpaperManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerInternal;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWallpaperManagerInternal:Lcom/android/server/wallpaper/WallpaperManagerInternal;

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWallpaperManagerInternal:Lcom/android/server/wallpaper/WallpaperManagerInternal;

    return-object v0
.end method

.method private handleCameraGesture(Landroid/view/KeyEvent;Z)Z
    .registers 7

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGestureLauncherService:Lcom/android/server/GestureLauncherService;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerButtonLaunchGestureTriggered:Z

    new-instance v0, Landroid/util/MutableBoolean;

    invoke-direct {v0, v1}, Landroid/util/MutableBoolean;-><init>(Z)V

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mGestureLauncherService:Lcom/android/server/GestureLauncherService;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/server/GestureLauncherService;->interceptPowerKeyDown(Landroid/view/KeyEvent;ZLandroid/util/MutableBoolean;)Z

    move-result v1

    iget-boolean v2, v0, Landroid/util/MutableBoolean;->value:Z

    if-nez v2, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerButtonLaunchGestureTriggered:Z

    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mRequestedOrSleepingDefaultDisplay:Z

    if-eqz v3, :cond_2

    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerButtonLaunchGestureTriggeredDuringGoingToSleep:Z

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowWakeUpPolicy:Lcom/android/server/policy/WindowWakeUpPolicy;

    invoke-virtual {v3}, Lcom/android/server/policy/WindowWakeUpPolicy;->wakeUpFromPowerKeyCameraGesture()Z

    :cond_2
    return v2
.end method

.method private handleHideBootMessage()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnOnce:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMessageNeedsHiding:Z

    monitor-exit v0

    return-void

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    const-string v0, "WindowManager"

    const-string v1, "handleHideBootMessage: dismissing"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private handleHomeShortcuts(Landroid/os/IBinder;Landroid/view/KeyEvent;)Z
    .registers 6

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayHomeButtonHandlers:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;

    if-nez v0, :cond_0

    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;-><init>(Lcom/android/server/policy/PhoneWindowManager;I)V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayHomeButtonHandlers:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->handleHomeButton(Landroid/os/IBinder;Landroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method private handleKeyGesture(Landroid/view/KeyEvent;ZZ)V
    .registers 6

    invoke-static {}, Landroid/hardware/input/InputSettings;->doesKeyGestureEventHandlerSupportMultiKeyGestures()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/KeyCombinationManager;->interceptKey(Landroid/view/KeyEvent;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-virtual {v0}, Lcom/android/server/policy/SingleKeyGestureDetector;->reset()V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mIsFactoryBuild:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->handleCameraGesture(Landroid/view/KeyEvent;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-virtual {v0}, Lcom/android/server/policy/SingleKeyGestureDetector;->reset()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/policy/SingleKeyGestureDetector;->interceptKey(Landroid/view/KeyEvent;ZZ)V

    return-void
.end method

.method private handleKeyGestureInKeyGestureController(IIII)V
    .registers 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    filled-new-array {p3}, [I

    move-result-object v1

    invoke-virtual {v0, p2, v1, p4, p1}, Lcom/android/server/input/InputManagerInternal;->handleKeyGestureInKeyGestureController(I[III)V

    return-void
.end method

.method private handleRingerChordGesture()V
    .registers 4

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRingerToggleChord:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getAudioManagerInternal()Landroid/media/AudioManagerInternal;

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    const-string v1, "volume_hush"

    invoke-virtual {v0, v1}, Landroid/media/AudioManagerInternal;->silenceRingerModeInternal(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hush_gesture_used"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v1, 0x5a0

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mRingerToggleChord:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->action(II)V

    return-void
.end method

.method private handleScreenShot(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/DisplayPolicy;->takeScreenshot(II)V

    return-void
.end method

.method private handleShortPressOnHome(I)V
    .registers 6

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getHdmiControl()Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$HdmiControl;->turnOnTv()V

    :cond_0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getDreamManagerInternal()Landroid/service/dreams/DreamManagerInternal;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/service/dreams/DreamManagerInternal;->isDreaming()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    const-string v3, "short press on home"

    invoke-virtual {v1, v2, v3}, Landroid/service/dreams/DreamManagerInternal;->stopDream(ZLjava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(I)V

    return-void
.end method

.method private handleSwitchKeyboardLayout(IILandroid/os/IBinder;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0, p3}, Lcom/android/server/wm/WindowManagerInternal;->getTargetWindowTokenFromInputToken(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    move-result-object v1

    invoke-virtual {v1, p2, p1, v0}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->onSwitchKeyboardLayoutShortcut(IILandroid/os/IBinder;)V

    return-void
.end method

.method private handleSwitchKeyboardLayoutToast(Landroid/view/KeyEvent;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private handleTransitionForKeyguardLw(ZZ)I
    .registers 6

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->applyKeyguardOcclusionChange()I

    move-result v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->startKeyguardExitAnimation(J)V

    :cond_1
    return v0
.end method

.method private handleUnhandledSystemKey(Landroid/view/KeyEvent;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal keycode provided to handleUnhandledSystemKey: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-static {v1}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->setDeferredKeyActionsExecutableAsync(IJ)V

    :cond_1
    return-void
.end method

.method private handleVolumeLongPress(I)V
    .registers 6

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x18

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVolumeUpLongPress:Ljava/lang/Runnable;

    :goto_0
    sget v2, Lcom/android/server/policy/VolBtnHelper;->mVolBtnTimeout:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVolumeDownLongPress:Ljava/lang/Runnable;

    goto :goto_0
.end method

.method private hasLongPressOnBackBehavior()Z
    .registers 2

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnBackBehavior:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private hasLongPressOnPowerBehavior()Z
    .registers 2

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getResolvedLongPressOnPowerBehavior()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private hasLongPressOnStemPrimaryBehavior()Z
    .registers 2

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnStemPrimaryBehavior:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private hasStemPrimaryBehavior()Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e014d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00ca

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getMaxMultiPressStemPrimaryCount()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_1

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :cond_1
    :goto_0
    return v3
.end method

.method private hasVeryLongPressOnPowerBehavior()Z
    .registers 2

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressOnPowerBehavior:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private hideRecentApps(ZZ)V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->hideRecentApps(ZZ)V

    :cond_0
    return-void
.end method

.method private static incallBackBehaviorToString(I)Ljava/lang/String;
    .registers 2

    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    const-string v0, "hangup"

    return-object v0

    :cond_0
    const-string v0, "<nothing>"

    return-object v0
.end method

.method private static incallPowerBehaviorToString(I)Ljava/lang/String;
    .registers 2

    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_0

    const-string v0, "hangup"

    return-object v0

    :cond_0
    const-string v0, "sleep"

    return-object v0
.end method

.method private initKeyCombinationRules()V
    .registers 7

    new-instance v0, Lcom/android/server/policy/KeyCombinationManager;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/android/server/policy/KeyCombinationManager;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    invoke-static {}, Landroid/hardware/input/InputSettings;->doesKeyGestureEventHandlerSupportMultiKeyGestures()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111018d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/16 v1, 0x19

    const/16 v2, 0x1a

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    new-instance v4, Lcom/android/server/policy/PhoneWindowManager$8;

    invoke-direct {v4, p0, v1, v2}, Lcom/android/server/policy/PhoneWindowManager$8;-><init>(Lcom/android/server/policy/PhoneWindowManager;II)V

    invoke-virtual {v3, v4}, Lcom/android/server/policy/KeyCombinationManager;->addRule(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)V

    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureWatch:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    new-instance v4, Lcom/android/server/policy/PhoneWindowManager$9;

    const/16 v5, 0x108

    invoke-direct {v4, p0, v2, v5}, Lcom/android/server/policy/PhoneWindowManager$9;-><init>(Lcom/android/server/policy/PhoneWindowManager;II)V

    invoke-virtual {v3, v4}, Lcom/android/server/policy/KeyCombinationManager;->addRule(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)V

    :cond_1
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    new-instance v4, Lcom/android/server/policy/PhoneWindowManager$10;

    const/16 v5, 0x18

    invoke-direct {v4, p0, v1, v5}, Lcom/android/server/policy/PhoneWindowManager$10;-><init>(Lcom/android/server/policy/PhoneWindowManager;II)V

    invoke-virtual {v3, v4}, Lcom/android/server/policy/KeyCombinationManager;->addRule(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)V

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    new-instance v3, Lcom/android/server/policy/PhoneWindowManager$11;

    invoke-direct {v3, p0, v5, v2}, Lcom/android/server/policy/PhoneWindowManager$11;-><init>(Lcom/android/server/policy/PhoneWindowManager;II)V

    invoke-virtual {v1, v3}, Lcom/android/server/policy/KeyCombinationManager;->addRule(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)V

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureLeanback:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    new-instance v2, Lcom/android/server/policy/PhoneWindowManager$12;

    const/16 v3, 0x14

    const/4 v4, 0x4

    invoke-direct {v2, p0, v4, v3}, Lcom/android/server/policy/PhoneWindowManager$12;-><init>(Lcom/android/server/policy/PhoneWindowManager;II)V

    invoke-virtual {v1, v2}, Lcom/android/server/policy/KeyCombinationManager;->addRule(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)V

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    new-instance v2, Lcom/android/server/policy/PhoneWindowManager$13;

    const/16 v3, 0x17

    invoke-direct {v2, p0, v3, v4}, Lcom/android/server/policy/PhoneWindowManager$13;-><init>(Lcom/android/server/policy/PhoneWindowManager;II)V

    invoke-virtual {v1, v2}, Lcom/android/server/policy/KeyCombinationManager;->addRule(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;)V

    :cond_2
    return-void
.end method

.method private initKeyGestures()V
    .registers 34

    move-object/from16 v0, p0

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->useKeyGestureEventHandler()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v2, 0x1f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v2, 0x35

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v2, 0x34

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v2, 0x1b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v2, 0x1c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v2, 0x36

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/16 v2, 0x15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v2, 0x17

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    const/16 v2, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v2, 0x3d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    const/16 v2, 0x33

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    const/16 v2, 0x4b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    const/16 v2, 0x38

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    const/16 v2, 0x39

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v31

    const/16 v2, 0x3b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    filled-new-array/range {v3 .. v32}, [Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/util/List;->of([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->enableTalkbackAndMagnifierKeyGestures()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x3f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->enableVoiceAccessKeyGestures()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x4c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mInputManager:Landroid/hardware/input/InputManager;

    new-instance v3, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda5;

    invoke-direct {v3, v0}, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    invoke-virtual {v2, v1, v3}, Landroid/hardware/input/InputManager;->registerKeyGestureEventHandler(Ljava/util/List;Landroid/hardware/input/InputManager$KeyGestureEventHandler;)V

    return-void
.end method

.method private initSingleKeyGestureRules(Landroid/os/Looper;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/server/policy/SingleKeyGestureDetector;->get(Landroid/content/Context;Landroid/os/Looper;)Lcom/android/server/policy/SingleKeyGestureDetector;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyRule:Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/SingleKeyGestureDetector;->addRule(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;)V

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasLongPressOnBackBehavior()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$BackKeyRule;

    invoke-direct {v1, p0}, Lcom/android/server/policy/PhoneWindowManager$BackKeyRule;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    invoke-virtual {v0, v1}, Lcom/android/server/policy/SingleKeyGestureDetector;->addRule(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasStemPrimaryBehavior()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;

    invoke-direct {v1, p0}, Lcom/android/server/policy/PhoneWindowManager$StemPrimaryKeyRule;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    invoke-virtual {v0, v1}, Lcom/android/server/policy/SingleKeyGestureDetector;->addRule(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$StylusTailButtonRule;

    invoke-direct {v1, p0}, Lcom/android/server/policy/PhoneWindowManager$StylusTailButtonRule;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    invoke-virtual {v0, v1}, Lcom/android/server/policy/SingleKeyGestureDetector;->addRule(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;)V

    return-void
.end method

.method private injectBackGesture(J)V
    .registers 17

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->requestBackGesture()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/view/KeyEvent;

    const/16 v12, 0x48

    const/16 v13, 0x101

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    move-wide v4, p1

    move-wide v2, p1

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mInputManager:Landroid/hardware/input/InputManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    const/4 v0, 0x1

    invoke-static {v1, v0}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v3, v0, v2}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    invoke-virtual {v1}, Landroid/view/KeyEvent;->recycle()V

    invoke-virtual {v0}, Landroid/view/KeyEvent;->recycle()V

    return-void
.end method

.method private interceptAccessibilityGestureTv()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getAccessibilityShortcutTimeout()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private interceptAccessibilityShortcutChord()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getAccessibilityShortcutTimeout()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private interceptBugreportGestureTv()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private interceptPowerKeyDown(Landroid/view/KeyEvent;ZZ)V
    .registers 14

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long v8, v2, v0

    invoke-static {}, Lcom/android/server/input/InputDfsReportStub;->get()Lcom/android/server/input/InputDfsReportStub;

    move-result-object v4

    const-string v6, "power key has locked time out "

    const/4 v7, 0x0

    const-string v5, "PowerKeyLockException"

    invoke-interface/range {v4 .. v9}, Lcom/android/server/input/InputDfsReportStub;->reportPowerKeyLockException(Ljava/lang/String;Ljava/lang/String;IJ)V

    const-wide/16 v2, 0x14

    cmp-long v2, v8, v2

    const-string v3, "WindowManager"

    if-lez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "long wakeLock duration time for power down:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-virtual {v2}, Lcom/android/server/policy/SingleKeyGestureDetector;->reset()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " has been canceled"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v2, p2}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->onPowerKeyDown(Z)V

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v2

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->silenceRinger()V

    goto :goto_0

    :cond_3
    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallPowerBehavior:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_4

    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v5

    if-eqz v5, :cond_4

    if-eqz p2, :cond_4

    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->endCall()Z

    move-result v4

    :cond_4
    :goto_0
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v5, p1}, Landroid/os/PowerManagerInternal;->interceptPowerKeyDown(Landroid/view/KeyEvent;)Z

    move-result v5

    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->sendSystemKeyToStatusBarAsync(Landroid/view/KeyEvent;)V

    iget-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    if-nez v6, :cond_6

    if-nez v4, :cond_6

    if-nez v5, :cond_6

    if-nez p3, :cond_6

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    invoke-virtual {v6}, Lcom/android/server/policy/KeyCombinationManager;->isPowerKeyIntercepted()Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_1

    :cond_5
    const/4 v6, 0x0

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v6, 0x1

    :goto_2
    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    iget-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    if-nez v6, :cond_7

    if-nez p2, :cond_8

    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromWakeKey(Landroid/view/KeyEvent;)V

    goto :goto_3

    :cond_7
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    const/16 v7, 0x1a

    invoke-virtual {v6, v7}, Lcom/android/server/policy/SingleKeyGestureDetector;->isKeyIntercepted(I)Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v6, "Skip power key gesture for other policy has handled it."

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-virtual {v3}, Lcom/android/server/policy/SingleKeyGestureDetector;->reset()V

    :cond_8
    :goto_3
    return-void
.end method

.method private interceptPowerKeyUp(Landroid/view/KeyEvent;Z)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->sendSystemKeyToStatusBarAsync(Landroid/view/KeyEvent;)V

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishPowerKeyPress()V

    return-void
.end method

.method private interceptRingerToggleChord()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getRingerToggleChordDelay()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private interceptScreenshotChord(IJ)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private interceptSystemKeysAndShortcuts(Landroid/os/IBinder;Landroid/view/KeyEvent;)Z
    .registers 4

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->useKeyGestureEventHandler()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->interceptSystemKeysAndShortcutsNew(Landroid/os/IBinder;Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->interceptSystemKeysAndShortcutsOld(Landroid/os/IBinder;Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method private interceptSystemKeysAndShortcutsNew(Landroid/os/IBinder;Landroid/view/KeyEvent;)Z
    .registers 9

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->prepareToSendSystemKeyToApplication(Landroid/os/IBinder;Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v2

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/policy/PhoneWindowManager;->sendSystemKeyToStatusBarAsync(Landroid/view/KeyEvent;)V

    return v3

    :sswitch_1
    iget-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mUseTvRouting:Z

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandleVolumeKeysInWM:Z

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayPolicy;->isPersistentVrModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/view/InputDevice;->isExternal()Z

    move-result v5

    if-nez v5, :cond_2

    return v3

    :cond_2
    goto :goto_1

    :cond_3
    :goto_0
    invoke-direct {p0, p2}, Lcom/android/server/policy/PhoneWindowManager;->dispatchDirectAudioEvent(Landroid/view/KeyEvent;)V

    return v3

    :sswitch_2
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->handleHomeShortcuts(Landroid/os/IBinder;Landroid/view/KeyEvent;)Z

    move-result v2

    return v2

    :cond_4
    :goto_1
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->isValidGlobalKey(I)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, v0, p2}, Lcom/android/server/policy/GlobalKeyManager;->handleGlobalKey(Landroid/content/Context;ILandroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_5

    return v3

    :cond_5
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->fixSearchModifierFallbacks()Z

    move-result v4

    if-eqz v4, :cond_6

    return v2

    :cond_6
    const/high16 v4, 0x10000

    and-int/2addr v4, v1

    if-eqz v4, :cond_7

    move v2, v3

    :cond_7
    return v2

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_2
        0x18 -> :sswitch_1
        0x19 -> :sswitch_1
        0xa4 -> :sswitch_1
        0x108 -> :sswitch_0
    .end sparse-switch
.end method

.method private interceptSystemKeysAndShortcutsOld(Landroid/os/IBinder;Landroid/view/KeyEvent;)Z
    .registers 21

    move-object/from16 v1, p0

    move-object/from16 v7, p2

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    move-result v8

    invoke-virtual {v7}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v9

    invoke-virtual {v7}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v10

    invoke-virtual {v7}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v11

    invoke-virtual {v7}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    const/4 v12, 0x1

    if-nez v0, :cond_0

    move v0, v12

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    move v13, v0

    invoke-virtual {v7}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v14

    invoke-virtual {v7}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v15

    invoke-virtual {v7}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v3

    if-eqz v13, :cond_1

    if-nez v10, :cond_1

    move v0, v12

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    move/from16 v16, v0

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    if-eqz v0, :cond_2

    invoke-static {v9}, Landroid/view/KeyEvent;->isMetaKey(I)Z

    move-result v0

    if-nez v0, :cond_2

    iput-boolean v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    :cond_2
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    if-eqz v0, :cond_3

    invoke-static {v9}, Landroid/view/KeyEvent;->isMetaKey(I)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v9}, Landroid/view/KeyEvent;->isAltKey(I)Z

    move-result v0

    if-nez v0, :cond_3

    iput-boolean v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    :cond_3
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez v8, :cond_5

    invoke-static {}, Lcom/android/server/policy/PhoneWindowManagerStub;->getInstance()Lcom/android/server/policy/PhoneWindowManagerStub;

    move-result-object v0

    iget-object v4, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-interface {v0, v4}, Lcom/android/server/policy/PhoneWindowManagerStub;->triggerModifierShortcut(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mModifierShortcutManager:Lcom/android/server/policy/ModifierShortcutManager;

    invoke-virtual {v0, v7}, Lcom/android/server/policy/ModifierShortcutManager;->interceptKey(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_5

    nop

    invoke-virtual {v7}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v0

    invoke-virtual {v7}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const-string v5, "dismissKeyboardShortcutsMenu"

    invoke-direct {v1, v0, v4, v5}, Lcom/android/server/policy/PhoneWindowManager;->isKeyEventForCurrentUser(IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {v1}, Lcom/android/server/policy/PhoneWindowManager;->dismissKeyboardShortcutsMenu()V

    :cond_4
    iput-boolean v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    iput-boolean v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    return v12

    :cond_5
    const-wide/16 v5, 0x0

    const/16 v4, 0x16

    move/from16 v17, v12

    const-string v12, "WindowManager"

    const/4 v0, 0x2

    sparse-switch v9, :sswitch_data_0

    goto :goto_e

    :sswitch_0
    return v17

    :sswitch_1
    if-eqz v16, :cond_6

    invoke-direct {v1, v0, v5, v6}, Lcom/android/server/policy/PhoneWindowManager;->interceptScreenshotChord(IJ)V

    :cond_6
    return v17

    :sswitch_2
    if-eqz v16, :cond_7

    invoke-direct {v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->showRecentApps(Z)V

    invoke-direct {v1, v7, v0}, Lcom/android/server/policy/PhoneWindowManager;->notifyKeyGestureCompleted(Landroid/view/KeyEvent;I)V

    :cond_7
    return v17

    :sswitch_3
    const-string v0, "KEYCODE_STYLUS_BUTTON_* should be handled in interceptKeyBeforeQueueing"

    invoke-static {v12, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v17

    :sswitch_4
    if-nez v13, :cond_8

    const/16 v0, 0x11

    invoke-direct {v1, v7, v0}, Lcom/android/server/policy/PhoneWindowManager;->notifyKeyGestureCompleted(Landroid/view/KeyEvent;I)V

    :cond_8
    return v17

    :sswitch_5
    if-eqz v13, :cond_9

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    invoke-virtual {v7}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/input/InputManagerInternal;->incrementKeyboardBacklight(I)V

    const/16 v0, 0xf

    invoke-direct {v1, v7, v0}, Lcom/android/server/policy/PhoneWindowManager;->notifyKeyGestureCompleted(Landroid/view/KeyEvent;I)V

    :cond_9
    return v17

    :sswitch_6
    if-eqz v13, :cond_a

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    invoke-virtual {v7}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/input/InputManagerInternal;->decrementKeyboardBacklight(I)V

    const/16 v0, 0x10

    invoke-direct {v1, v7, v0}, Lcom/android/server/policy/PhoneWindowManager;->notifyKeyGestureCompleted(Landroid/view/KeyEvent;I)V

    :cond_a
    return v17

    :sswitch_7
    if-eqz v16, :cond_b

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Landroid/view/KeyEvent;

    invoke-direct {v2, v7}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    invoke-virtual {v0, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    move/from16 v4, v17

    invoke-virtual {v0, v4}, Landroid/os/Message;->setAsynchronous(Z)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    const/16 v2, 0x15

    invoke-direct {v1, v7, v2}, Lcom/android/server/policy/PhoneWindowManager;->notifyKeyGestureCompleted(Landroid/view/KeyEvent;I)V

    goto :goto_2

    :cond_b
    move/from16 v4, v17

    :goto_2
    return v4

    :sswitch_8
    move/from16 v4, v17

    invoke-direct/range {p0 .. p2}, Lcom/android/server/policy/PhoneWindowManager;->prepareToSendSystemKeyToApplication(Landroid/os/IBinder;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_c

    return v2

    :cond_c
    invoke-direct {v1, v7}, Lcom/android/server/policy/PhoneWindowManager;->sendSystemKeyToStatusBarAsync(Landroid/view/KeyEvent;)V

    return v4

    :sswitch_9
    move/from16 v4, v17

    const-string v0, "KEYCODE_VOICE_ASSIST should be handled in interceptKeyBeforeQueueing"

    invoke-static {v12, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :sswitch_a
    if-eqz v13, :cond_f

    const/16 v0, 0xdd

    if-ne v9, v0, :cond_d

    const/4 v5, 0x1

    goto :goto_3

    :cond_d
    const/4 v5, -0x1

    :goto_3
    invoke-direct {v1, v15, v5}, Lcom/android/server/policy/PhoneWindowManager;->changeDisplayBrightnessValue(II)V

    const/16 v0, 0xdc

    if-ne v9, v0, :cond_e

    const/16 v0, 0xe

    goto :goto_4

    :cond_e
    const/16 v0, 0xd

    :goto_4
    nop

    invoke-direct {v1, v7, v0}, Lcom/android/server/policy/PhoneWindowManager;->notifyKeyGestureCompleted(Landroid/view/KeyEvent;I)V

    :cond_f
    const/16 v17, 0x1

    return v17

    :sswitch_b
    const-string v0, "KEYCODE_ASSIST should be handled in interceptKeyBeforeQueueing"

    invoke-static {v12, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v17

    :sswitch_c
    if-eqz v16, :cond_11

    and-int/lit16 v0, v11, 0xc1

    if-eqz v0, :cond_10

    const/4 v5, -0x1

    goto :goto_5

    :cond_10
    const/4 v5, 0x1

    :goto_5
    move-object/from16 v6, p1

    invoke-direct {v1, v15, v6, v5}, Lcom/android/server/policy/PhoneWindowManager;->sendSwitchKeyboardLayout(ILandroid/os/IBinder;I)V

    const/16 v0, 0x17

    invoke-direct {v1, v7, v0}, Lcom/android/server/policy/PhoneWindowManager;->notifyKeyGestureCompleted(Landroid/view/KeyEvent;I)V

    const/16 v17, 0x1

    return v17

    :cond_11
    move-object/from16 v6, p1

    goto :goto_e

    :sswitch_d
    move-object/from16 v6, p1

    if-nez v8, :cond_13

    if-eqz v16, :cond_12

    invoke-direct {v1}, Lcom/android/server/policy/PhoneWindowManager;->preloadRecentApps()V

    goto :goto_6

    :cond_12
    if-nez v13, :cond_13

    invoke-direct {v1}, Lcom/android/server/policy/PhoneWindowManager;->toggleRecentApps()V

    const/4 v0, 0x4

    invoke-direct {v1, v7, v0}, Lcom/android/server/policy/PhoneWindowManager;->notifyKeyGestureCompleted(Landroid/view/KeyEvent;I)V

    :cond_13
    :goto_6
    const/4 v4, 0x1

    return v4

    :sswitch_e
    move-object/from16 v6, p1

    move/from16 v4, v17

    if-eqz v16, :cond_15

    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mSettingsKeyBehavior:I

    if-ne v0, v4, :cond_14

    invoke-direct {v1}, Lcom/android/server/policy/PhoneWindowManager;->toggleNotificationPanel()V

    const/16 v0, 0x8

    invoke-direct {v1, v7, v0}, Lcom/android/server/policy/PhoneWindowManager;->notifyKeyGestureCompleted(Landroid/view/KeyEvent;I)V

    goto :goto_7

    :cond_14
    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mSettingsKeyBehavior:I

    if-nez v0, :cond_15

    invoke-direct {v1}, Lcom/android/server/policy/PhoneWindowManager;->showSystemSettings()V

    const/4 v0, 0x7

    invoke-direct {v1, v7, v0}, Lcom/android/server/policy/PhoneWindowManager;->notifyKeyGestureCompleted(Landroid/view/KeyEvent;I)V

    :cond_15
    :goto_7
    const/4 v4, 0x1

    return v4

    :sswitch_f
    move-object/from16 v6, p1

    move/from16 v4, v17

    if-eqz v13, :cond_17

    invoke-virtual {v7}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v0

    if-eqz v0, :cond_16

    iput-boolean v4, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    iput-boolean v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    goto :goto_8

    :cond_16
    iput-boolean v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    iput-boolean v4, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    goto :goto_8

    :cond_17
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    if-eqz v0, :cond_18

    invoke-static {}, Lcom/android/server/policy/PhoneWindowManagerStub;->getInstance()Lcom/android/server/policy/PhoneWindowManagerStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/policy/PhoneWindowManagerStub;->isPad()Z

    move-result v0

    if-eqz v0, :cond_18

    iput-boolean v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    :cond_18
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    if-eqz v0, :cond_19

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    invoke-virtual {v7}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/server/input/InputManagerInternal;->toggleCapsLock(I)V

    iput-boolean v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    const/16 v0, 0x19

    invoke-direct {v1, v7, v0}, Lcom/android/server/policy/PhoneWindowManager;->notifyKeyGestureCompleted(Landroid/view/KeyEvent;I)V

    goto :goto_8

    :cond_19
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    if-eqz v0, :cond_1c

    if-nez v14, :cond_1b

    invoke-virtual {v7}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v0

    invoke-virtual {v7}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const-string v5, "launchAllAppsViaA11y"

    invoke-direct {v1, v0, v4, v5}, Lcom/android/server/policy/PhoneWindowManager;->isKeyEventForCurrentUser(IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-direct {v1}, Lcom/android/server/policy/PhoneWindowManager;->launchAllAppsAction()V

    :cond_1a
    const/16 v0, 0x15

    invoke-direct {v1, v7, v0}, Lcom/android/server/policy/PhoneWindowManager;->notifyKeyGestureCompleted(Landroid/view/KeyEvent;I)V

    :cond_1b
    iput-boolean v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    :cond_1c
    :goto_8
    const/16 v17, 0x1

    return v17

    :sswitch_10
    move-object/from16 v6, p1

    if-nez v13, :cond_2c

    const/16 v0, 0x19

    invoke-direct {v1, v7, v0}, Lcom/android/server/policy/PhoneWindowManager;->notifyKeyGestureCompleted(Landroid/view/KeyEvent;I)V

    goto :goto_e

    :sswitch_11
    move-object/from16 v6, p1

    if-eqz v16, :cond_2c

    invoke-virtual {v7}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v0

    if-eqz v0, :cond_2c

    const/4 v0, 0x3

    invoke-direct {v1, v7, v0}, Lcom/android/server/policy/PhoneWindowManager;->notifyKeyGestureCompleted(Landroid/view/KeyEvent;I)V

    invoke-virtual {v7}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Lcom/android/server/policy/PhoneWindowManager;->injectBackGesture(J)V

    const/16 v17, 0x1

    return v17

    :sswitch_12
    move-object/from16 v6, p1

    if-eqz v16, :cond_2c

    if-nez v8, :cond_2c

    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mSearchKeyBehavior:I

    packed-switch v0, :pswitch_data_0

    goto :goto_e

    :pswitch_0  #0x1
    invoke-direct {v1}, Lcom/android/server/policy/PhoneWindowManager;->launchTargetSearchActivity()V

    invoke-direct {v1, v7, v4}, Lcom/android/server/policy/PhoneWindowManager;->notifyKeyGestureCompleted(Landroid/view/KeyEvent;I)V

    const/16 v17, 0x1

    return v17

    :sswitch_13
    move-object/from16 v6, p1

    if-nez v13, :cond_1d

    invoke-direct {v1}, Lcom/android/server/policy/PhoneWindowManager;->toggleNotificationPanel()V

    const/16 v0, 0x8

    invoke-direct {v1, v7, v0}, Lcom/android/server/policy/PhoneWindowManager;->notifyKeyGestureCompleted(Landroid/view/KeyEvent;I)V

    :cond_1d
    const/16 v17, 0x1

    return v17

    :sswitch_14
    move-object/from16 v6, p1

    if-eqz v16, :cond_2c

    invoke-virtual {v7}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v0

    if-eqz v0, :cond_2c

    if-nez v8, :cond_2c

    invoke-virtual {v7}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/android/server/policy/PhoneWindowManager;->toggleKeyboardShortcutsMenu(I)V

    const/16 v0, 0xc

    invoke-direct {v1, v7, v0}, Lcom/android/server/policy/PhoneWindowManager;->notifyKeyGestureCompleted(Landroid/view/KeyEvent;I)V

    const/16 v17, 0x1

    return v17

    :sswitch_15
    move-object/from16 v6, p1

    invoke-static {}, Lcom/android/server/flags/Flags;->newBugreportKeyboardShortcut()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mEnableBugReportKeyboardShortcut:Z

    if-eqz v0, :cond_2c

    if-eqz v16, :cond_2c

    invoke-virtual {v7}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual {v7}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-eqz v0, :cond_2c

    :try_start_0
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mActivityManagerService:Landroid/app/IActivityManager;

    invoke-interface {v0}, Landroid/app/IActivityManager;->launchBugReportHandlerApp()Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mActivityManagerService:Landroid/app/IActivityManager;

    invoke-interface {v0}, Landroid/app/IActivityManager;->requestInteractiveBugReport()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1e
    goto :goto_9

    :catch_0
    move-exception v0

    const-string v2, "Error taking bugreport"

    invoke-static {v12, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_9
    const/16 v0, 0x1f

    invoke-direct {v1, v7, v0}, Lcom/android/server/policy/PhoneWindowManager;->notifyKeyGestureCompleted(Landroid/view/KeyEvent;I)V

    const/16 v17, 0x1

    return v17

    :sswitch_16
    move-object/from16 v6, p1

    if-eqz v16, :cond_2c

    if-nez v8, :cond_2c

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v4

    if-eqz v4, :cond_2c

    invoke-virtual {v7}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-direct {v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->showRecentApps(Z)V

    invoke-direct {v1, v7, v0}, Lcom/android/server/policy/PhoneWindowManager;->notifyKeyGestureCompleted(Landroid/view/KeyEvent;I)V

    const/16 v17, 0x1

    return v17

    :cond_1f
    iget v4, v1, Lcom/android/server/policy/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    if-nez v4, :cond_2c

    nop

    invoke-virtual {v7}, Landroid/view/KeyEvent;->getModifiers()I

    move-result v4

    and-int/lit16 v4, v4, -0xc2

    invoke-static {v4, v0}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v5

    if-eqz v5, :cond_20

    iput v4, v1, Lcom/android/server/policy/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    invoke-direct {v1, v7, v0}, Lcom/android/server/policy/PhoneWindowManager;->notifyKeyGestureCompleted(Landroid/view/KeyEvent;I)V

    const/16 v17, 0x1

    return v17

    :cond_20
    goto :goto_e

    :sswitch_17
    move-object/from16 v6, p1

    if-eqz v13, :cond_22

    invoke-virtual {v7}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    iput-boolean v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    goto :goto_e

    :cond_21
    iput-boolean v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    goto :goto_e

    :cond_22
    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    if-eqz v0, :cond_23

    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    and-int/2addr v0, v11

    if-nez v0, :cond_23

    iput v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    const/16 v17, 0x1

    return v17

    :cond_23
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    if-eqz v0, :cond_2c

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    invoke-virtual {v7}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/server/input/InputManagerInternal;->toggleCapsLock(I)V

    iput-boolean v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    const/16 v0, 0x19

    invoke-direct {v1, v7, v0}, Lcom/android/server/policy/PhoneWindowManager;->notifyKeyGestureCompleted(Landroid/view/KeyEvent;I)V

    const/16 v17, 0x1

    return v17

    :sswitch_18
    move-object/from16 v6, p1

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->enableTalkbackAndMagnifierKeyGestures()Z

    move-result v0

    if-eqz v0, :cond_2c

    if-eqz v16, :cond_2c

    invoke-virtual {v7}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual {v7}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mTalkbackShortcutController:Lcom/android/server/policy/TalkbackShortcutController;

    iget v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    sget-object v4, Lcom/android/server/policy/TalkbackShortcutController$ShortcutSource;->KEYBOARD:Lcom/android/server/policy/TalkbackShortcutController$ShortcutSource;

    invoke-virtual {v0, v2, v4}, Lcom/android/server/policy/TalkbackShortcutController;->toggleTalkback(ILcom/android/server/policy/TalkbackShortcutController$ShortcutSource;)Z

    const/16 v0, 0x3f

    invoke-direct {v1, v7, v0}, Lcom/android/server/policy/PhoneWindowManager;->notifyKeyGestureCompleted(Landroid/view/KeyEvent;I)V

    const/16 v17, 0x1

    return v17

    :sswitch_19
    if-eqz v16, :cond_2c

    invoke-virtual {v7}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v4

    if-eqz v4, :cond_2c

    invoke-direct {v1, v0, v5, v6}, Lcom/android/server/policy/PhoneWindowManager;->interceptScreenshotChord(IJ)V

    const/16 v0, 0xa

    invoke-direct {v1, v7, v0}, Lcom/android/server/policy/PhoneWindowManager;->notifyKeyGestureCompleted(Landroid/view/KeyEvent;I)V

    const/16 v17, 0x1

    return v17

    :sswitch_1a
    if-eqz v16, :cond_2c

    invoke-virtual {v7}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-direct {v1}, Lcom/android/server/policy/PhoneWindowManager;->toggleNotificationPanel()V

    const/16 v0, 0x8

    invoke-direct {v1, v7, v0}, Lcom/android/server/policy/PhoneWindowManager;->notifyKeyGestureCompleted(Landroid/view/KeyEvent;I)V

    const/16 v17, 0x1

    return v17

    :sswitch_1b
    if-eqz v16, :cond_2c

    invoke-virtual {v7}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v0

    if-eqz v0, :cond_2c

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/android/server/policy/PhoneWindowManager;->lockNow(Landroid/os/Bundle;)V

    const/16 v0, 0x20

    invoke-direct {v1, v7, v0}, Lcom/android/server/policy/PhoneWindowManager;->notifyKeyGestureCompleted(Landroid/view/KeyEvent;I)V

    const/16 v17, 0x1

    return v17

    :sswitch_1c
    if-eqz v16, :cond_2c

    invoke-virtual {v7}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v0

    if-eqz v0, :cond_2c

    if-nez v8, :cond_2c

    invoke-direct {v1}, Lcom/android/server/policy/PhoneWindowManager;->showSystemSettings()V

    const/4 v0, 0x7

    invoke-direct {v1, v7, v0}, Lcom/android/server/policy/PhoneWindowManager;->notifyKeyGestureCompleted(Landroid/view/KeyEvent;I)V

    const/16 v17, 0x1

    return v17

    :sswitch_1d
    invoke-virtual {v7}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-direct/range {p0 .. p2}, Lcom/android/server/policy/PhoneWindowManager;->handleHomeShortcuts(Landroid/os/IBinder;Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :sswitch_1e
    if-eqz v16, :cond_2c

    invoke-virtual {v7}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v0

    if-eqz v0, :cond_2c

    nop

    invoke-virtual {v7}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    const-string v2, "android.intent.extra.ASSIST_INPUT_HINT_KEYBOARD"

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/policy/PhoneWindowManager;->launchAssistAction(Ljava/lang/String;IJI)V

    const/4 v0, 0x5

    invoke-direct {v1, v7, v0}, Lcom/android/server/policy/PhoneWindowManager;->notifyKeyGestureCompleted(Landroid/view/KeyEvent;I)V

    const/16 v17, 0x1

    return v17

    :sswitch_1f
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mUseTvRouting:Z

    if-nez v0, :cond_26

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandleVolumeKeysInWM:Z

    if-eqz v0, :cond_24

    goto :goto_a

    :cond_24
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isPersistentVrModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual {v7}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Landroid/view/InputDevice;->isExternal()Z

    move-result v4

    if-nez v4, :cond_25

    const/16 v17, 0x1

    return v17

    :cond_25
    goto :goto_e

    :cond_26
    :goto_a
    invoke-direct {v1, v7}, Lcom/android/server/policy/PhoneWindowManager;->dispatchDirectAudioEvent(Landroid/view/KeyEvent;)V

    const/16 v17, 0x1

    return v17

    :sswitch_20
    if-eqz v16, :cond_2c

    invoke-virtual {v7}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual {v7}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-direct {v1, v7}, Lcom/android/server/policy/PhoneWindowManager;->getTargetDisplayIdForKeyEvent(Landroid/view/KeyEvent;)I

    move-result v0

    invoke-direct {v1, v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->moveFocusedTaskToStageSplit(IZ)V

    const/16 v0, 0x1c

    invoke-direct {v1, v7, v0}, Lcom/android/server/policy/PhoneWindowManager;->notifyKeyGestureCompleted(Landroid/view/KeyEvent;I)V

    const/16 v17, 0x1

    return v17

    :sswitch_21
    if-eqz v16, :cond_2c

    invoke-virtual {v7}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual {v7}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-direct {v1, v7}, Lcom/android/server/policy/PhoneWindowManager;->getTargetDisplayIdForKeyEvent(Landroid/view/KeyEvent;)I

    move-result v0

    const/4 v4, 0x1

    invoke-direct {v1, v0, v4}, Lcom/android/server/policy/PhoneWindowManager;->moveFocusedTaskToStageSplit(IZ)V

    const/16 v0, 0x1b

    invoke-direct {v1, v7, v0}, Lcom/android/server/policy/PhoneWindowManager;->notifyKeyGestureCompleted(Landroid/view/KeyEvent;I)V

    goto :goto_b

    :cond_27
    const/4 v0, 0x3

    invoke-direct {v1, v7, v0}, Lcom/android/server/policy/PhoneWindowManager;->notifyKeyGestureCompleted(Landroid/view/KeyEvent;I)V

    invoke-virtual {v7}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Lcom/android/server/policy/PhoneWindowManager;->injectBackGesture(J)V

    :goto_b
    const/16 v17, 0x1

    return v17

    :sswitch_22
    if-eqz v16, :cond_2c

    invoke-virtual {v7}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual {v7}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-direct {v1, v7}, Lcom/android/server/policy/PhoneWindowManager;->getTargetDisplayIdForKeyEvent(Landroid/view/KeyEvent;)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->moveFocusedTaskToDesktop(I)V

    const/16 v2, 0x34

    invoke-direct {v1, v7, v2}, Lcom/android/server/policy/PhoneWindowManager;->notifyKeyGestureCompleted(Landroid/view/KeyEvent;I)V

    const/16 v17, 0x1

    return v17

    :cond_28
    goto :goto_e

    :sswitch_23
    if-eqz v16, :cond_2c

    invoke-virtual {v7}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual {v7}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_29

    invoke-direct {v1, v7}, Lcom/android/server/policy/PhoneWindowManager;->getTargetDisplayIdForKeyEvent(Landroid/view/KeyEvent;)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->moveFocusedTaskToFullscreen(I)V

    const/16 v2, 0x35

    invoke-direct {v1, v7, v2}, Lcom/android/server/policy/PhoneWindowManager;->notifyKeyGestureCompleted(Landroid/view/KeyEvent;I)V

    const/16 v17, 0x1

    return v17

    :cond_29
    goto :goto_e

    :sswitch_24
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->keyboardA11yShortcutControl()Z

    move-result v0

    if-eqz v0, :cond_2c

    if-eqz v16, :cond_2c

    invoke-virtual {v7}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual {v7}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/input/InputSettings;->isAccessibilitySlowKeysEnabled(Landroid/content/Context;)Z

    move-result v0

    iget-object v4, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2a

    goto :goto_c

    :cond_2a
    const/16 v2, 0x1f4

    :goto_c
    invoke-static {v4, v2}, Landroid/hardware/input/InputSettings;->setAccessibilitySlowKeysThreshold(Landroid/content/Context;I)V

    const/16 v2, 0x42

    invoke-direct {v1, v7, v2}, Lcom/android/server/policy/PhoneWindowManager;->notifyKeyGestureCompleted(Landroid/view/KeyEvent;I)V

    const/16 v17, 0x1

    return v17

    :sswitch_25
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->keyboardA11yShortcutControl()Z

    move-result v0

    if-eqz v0, :cond_2c

    if-eqz v16, :cond_2c

    invoke-virtual {v7}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual {v7}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/input/InputSettings;->isAccessibilityStickyKeysEnabled(Landroid/content/Context;)Z

    move-result v0

    iget-object v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    xor-int/lit8 v4, v0, 0x1

    invoke-static {v2, v4}, Landroid/hardware/input/InputSettings;->setAccessibilityStickyKeysEnabled(Landroid/content/Context;Z)V

    const/16 v2, 0x40

    invoke-direct {v1, v7, v2}, Lcom/android/server/policy/PhoneWindowManager;->notifyKeyGestureCompleted(Landroid/view/KeyEvent;I)V

    const/16 v17, 0x1

    return v17

    :sswitch_26
    invoke-static {}, Landroid/hardware/input/InputSettings;->isAccessibilityMouseKeysFeatureFlagEnabled()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->keyboardA11yShortcutControl()Z

    move-result v0

    if-eqz v0, :cond_2c

    if-eqz v16, :cond_2c

    invoke-virtual {v7}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual {v7}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/input/InputSettings;->isAccessibilityMouseKeysEnabled(Landroid/content/Context;)Z

    move-result v0

    iget-object v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    xor-int/lit8 v4, v0, 0x1

    invoke-static {v2, v4}, Landroid/hardware/input/InputSettings;->setAccessibilityMouseKeysEnabled(Landroid/content/Context;Z)V

    const/16 v2, 0x43

    invoke-direct {v1, v7, v2}, Lcom/android/server/policy/PhoneWindowManager;->notifyKeyGestureCompleted(Landroid/view/KeyEvent;I)V

    const/16 v17, 0x1

    return v17

    :sswitch_27
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->keyboardA11yShortcutControl()Z

    move-result v0

    if-eqz v0, :cond_2c

    if-eqz v16, :cond_2c

    invoke-virtual {v7}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual {v7}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/input/InputSettings;->isAccessibilityBounceKeysEnabled(Landroid/content/Context;)Z

    move-result v0

    iget-object v4, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2b

    goto :goto_d

    :cond_2b
    const/16 v2, 0x1f4

    :goto_d
    invoke-static {v4, v2}, Landroid/hardware/input/InputSettings;->setAccessibilityBounceKeysThreshold(Landroid/content/Context;I)V

    const/16 v2, 0x41

    invoke-direct {v1, v7, v2}, Lcom/android/server/policy/PhoneWindowManager;->notifyKeyGestureCompleted(Landroid/view/KeyEvent;I)V

    const/16 v17, 0x1

    return v17

    :sswitch_28
    invoke-direct/range {p0 .. p2}, Lcom/android/server/policy/PhoneWindowManager;->handleHomeShortcuts(Landroid/os/IBinder;Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :cond_2c
    :goto_e
    invoke-static {v9}, Lcom/android/server/policy/PhoneWindowManager;->isValidGlobalKey(I)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    iget-object v4, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4, v9, v7}, Lcom/android/server/policy/GlobalKeyManager;->handleGlobalKey(Landroid/content/Context;ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2d

    const/16 v17, 0x1

    return v17

    :cond_2d
    const/high16 v0, 0x10000

    and-int/2addr v0, v11

    if-nez v0, :cond_2e

    return v2

    :cond_2e
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManagerStub;->getInstance()Lcom/android/server/policy/PhoneWindowManagerStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/policy/PhoneWindowManagerStub;->interceptKeyWithMeta()Z

    move-result v0

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_28
        0xa -> :sswitch_27
        0xb -> :sswitch_26
        0xc -> :sswitch_25
        0xd -> :sswitch_24
        0x13 -> :sswitch_23
        0x14 -> :sswitch_22
        0x15 -> :sswitch_21
        0x16 -> :sswitch_20
        0x18 -> :sswitch_1f
        0x19 -> :sswitch_1f
        0x1d -> :sswitch_1e
        0x24 -> :sswitch_1d
        0x25 -> :sswitch_1c
        0x28 -> :sswitch_1b
        0x2a -> :sswitch_1a
        0x2f -> :sswitch_19
        0x30 -> :sswitch_18
        0x39 -> :sswitch_17
        0x3a -> :sswitch_17
        0x3d -> :sswitch_16
        0x42 -> :sswitch_1d
        0x43 -> :sswitch_15
        0x4c -> :sswitch_14
        0x53 -> :sswitch_13
        0x54 -> :sswitch_12
        0x6f -> :sswitch_11
        0x73 -> :sswitch_10
        0x75 -> :sswitch_f
        0x76 -> :sswitch_f
        0xa4 -> :sswitch_1f
        0xb0 -> :sswitch_e
        0xbb -> :sswitch_d
        0xcc -> :sswitch_c
        0xdb -> :sswitch_b
        0xdc -> :sswitch_a
        0xdd -> :sswitch_a
        0xe7 -> :sswitch_9
        0x108 -> :sswitch_8
        0x11c -> :sswitch_7
        0x131 -> :sswitch_6
        0x132 -> :sswitch_5
        0x133 -> :sswitch_4
        0x134 -> :sswitch_3
        0x135 -> :sswitch_3
        0x136 -> :sswitch_3
        0x137 -> :sswitch_3
        0x138 -> :sswitch_2
        0x13e -> :sswitch_1
        0x142 -> :sswitch_0
        0x144 -> :sswitch_0
        0x145 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0  #00000001
    .end packed-switch
.end method

.method private interceptSystemNavigationKey(Landroid/view/KeyEvent;)V
    .registers 4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendFingerprintGesture(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemNavigationKeysEnabled:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->sendSystemKeyToStatusBarAsync(Landroid/view/KeyEvent;)V

    :cond_1
    return-void
.end method

.method private isAutoUserSetupComplete()Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string v2, "android.car.SETUP_WIZARD_IN_PROGRESS"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method private isHidden(I)Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getLidState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    return v1

    :pswitch_0  #0x2
    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1

    :pswitch_1  #0x1
    if-nez v0, :cond_1

    move v1, v2

    :cond_1
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1  #00000001
        :pswitch_0  #00000002
    .end packed-switch
.end method

.method private isInRetailMode()Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_demo_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    return v2
.end method

.method private isKeyEventForCurrentUser(IILjava/lang/String;)Z
    .registers 8

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVisibleBackgroundUsersEnabled:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->getUserAssignedToDisplay(I)I

    move-result v0

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    sget-boolean v1, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p3, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for visible background user(u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v1, 0x0

    return v1
.end method

.method public static isLongPressToAssistantEnabled(Landroid/content/Context;)Z
    .registers 7

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string v2, "clockwork_long_press_to_assistant_enabled"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x3

    const-string v4, "WindowManager"

    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "longPressToAssistant = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-ne v1, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method private isRoundWindow()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->isScreenRound()Z

    move-result v0

    return v0
.end method

.method private isTheaterModeEnabled()Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "theater_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    return v2
.end method

.method private isTvUserSetupComplete()Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string v2, "tv_user_setup_complete"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method private static isValidGlobalKey(I)Z
    .registers 2

    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x1

    return v0

    :sswitch_0
    const/4 v0, 0x0

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1a -> :sswitch_0
        0xdf -> :sswitch_0
        0xe0 -> :sswitch_0
    .end sparse-switch
.end method

.method private isWakeKeyWhenScreenOff(I)Z
    .registers 3

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x1

    return v0

    :sswitch_0
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStylusButtonsEnabled:Z

    return v0

    :sswitch_1
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeOnAssistKeyPress:Z

    return v0

    :sswitch_2
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeOnDpadKeyPress:Z

    return v0

    :sswitch_3
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeOnBackKeyPress:Z

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_3
        0x13 -> :sswitch_2
        0x14 -> :sswitch_2
        0x15 -> :sswitch_2
        0x16 -> :sswitch_2
        0x17 -> :sswitch_2
        0xdb -> :sswitch_1
        0x134 -> :sswitch_0
        0x135 -> :sswitch_0
        0x136 -> :sswitch_0
        0x137 -> :sswitch_0
    .end sparse-switch
.end method

.method static synthetic lambda$handleKeyGestureEvent$4(I)Z
    .registers 2

    const/16 v0, 0x1a

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$handleKeyGestureEvent$5(I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->handleShortPressOnHome(I)V

    return-void
.end method

.method private synthetic lambda$powerPress$0(J)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/policy/PhoneWindowManager;->sleepDefaultDisplayFromPowerButton(JI)Z

    return-void
.end method

.method private synthetic lambda$powerPress$1(J)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/policy/PhoneWindowManager;->sleepDefaultDisplayFromPowerButton(JI)Z

    return-void
.end method

.method private synthetic lambda$powerPress$2(J)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/policy/PhoneWindowManager;->sleepDefaultDisplayFromPowerButton(JI)Z

    return-void
.end method

.method private synthetic lambda$updateSettings$3()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->updateSettings(Landroid/os/Handler;)V

    return-void
.end method

.method private launchAllAppsAction()V
    .registers 6

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureLeanback:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureWatch:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getAccessibilityManagerInternal()Lcom/android/server/AccessibilityManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_3

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/android/server/AccessibilityManagerInternal;->performSystemAction(I)V

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ALL_APPS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureLeanback:Z

    if-eqz v1, :cond_2

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 v3, 0x100000

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    nop

    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->dismissKeyboardShortcutsMenu()V

    return-void
.end method

.method private launchAssistAction(Ljava/lang/String;IJI)V
    .registers 9

    const-string v0, "assist"

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v0, -0x2

    if-eq p2, v0, :cond_1

    const-string v0, "android.intent.extra.ASSIST_INPUT_DEVICE_ID"

    invoke-virtual {v1, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    invoke-virtual {v1, p1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_2
    const-string v0, "android.intent.extra.TIME"

    invoke-virtual {v1, v0, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "invocation_type"

    invoke-virtual {v1, v0, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/SearchManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroid/app/SearchManager;->launchAssist(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {v2, v1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->startAssist(Landroid/os/Bundle;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private launchTargetActivityOnMultiPressPower()V
    .registers 6

    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    const-string v1, "WindowManager"

    if-eqz v0, :cond_0

    const-string v0, "Executing the double press power action."

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerDoublePressTargetActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerDoublePressTargetActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    nop

    :goto_0
    const/high16 v1, 0x10200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-nez v3, :cond_2

    sget-object v1, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1, v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->dismissKeyguardToLaunch(Landroid/content/Intent;)V

    :goto_1
    goto :goto_2

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not resolve activity with : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerDoublePressTargetActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " name."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    return-void
.end method

.method private launchTargetSearchActivity()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSearchKeyTargetActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSearchKeyTargetActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.WEB_SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_0
    const/high16 v1, 0x10200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    sget-object v1, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not resolve activity with : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " name."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WindowManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private launchVoiceAssist(Z)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "android.intent.action.VOICE_ASSIST"

    if-nez v0, :cond_1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    sget-object v3, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-direct {p0, v2, v1, v3, p1}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;Z)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->dismissKeyguardToLaunch(Landroid/content/Intent;)V

    :goto_1
    return-void
.end method

.method private static lidBehaviorToString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0  #0x2
    const-string v0, "LID_BEHAVIOR_LOCK"

    return-object v0

    :pswitch_1  #0x1
    const-string v0, "LID_BEHAVIOR_SLEEP"

    return-object v0

    :pswitch_2  #0x0
    const-string v0, "LID_BEHAVIOR_NONE"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2  #00000000
        :pswitch_1  #00000001
        :pswitch_0  #00000002
    .end packed-switch
.end method

.method private static longPressOnBackBehaviorToString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0  #0x1
    const-string v0, "LONG_PRESS_BACK_GO_TO_VOICE_ASSIST"

    return-object v0

    :pswitch_1  #0x0
    const-string v0, "LONG_PRESS_BACK_NOTHING"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1  #00000000
        :pswitch_0  #00000001
    .end packed-switch
.end method

.method private static longPressOnHomeBehaviorToString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0  #0x3
    const-string v0, "LONG_PRESS_HOME_NOTIFICATION_PANEL"

    return-object v0

    :pswitch_1  #0x2
    const-string v0, "LONG_PRESS_HOME_ASSIST"

    return-object v0

    :pswitch_2  #0x1
    const-string v0, "LONG_PRESS_HOME_ALL_APPS"

    return-object v0

    :pswitch_3  #0x0
    const-string v0, "LONG_PRESS_HOME_NOTHING"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3  #00000000
        :pswitch_2  #00000001
        :pswitch_1  #00000002
        :pswitch_0  #00000003
    .end packed-switch
.end method

.method private static longPressOnPowerBehaviorToString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0  #0x5
    const-string v0, "LONG_PRESS_POWER_ASSISTANT"

    return-object v0

    :pswitch_1  #0x4
    const-string v0, "LONG_PRESS_POWER_GO_TO_VOICE_ASSIST"

    return-object v0

    :pswitch_2  #0x3
    const-string v0, "LONG_PRESS_POWER_SHUT_OFF_NO_CONFIRM"

    return-object v0

    :pswitch_3  #0x2
    const-string v0, "LONG_PRESS_POWER_SHUT_OFF"

    return-object v0

    :pswitch_4  #0x1
    const-string v0, "LONG_PRESS_POWER_GLOBAL_ACTIONS"

    return-object v0

    :pswitch_5  #0x0
    const-string v0, "LONG_PRESS_POWER_NOTHING"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5  #00000000
        :pswitch_4  #00000001
        :pswitch_3  #00000002
        :pswitch_2  #00000003
        :pswitch_1  #00000004
        :pswitch_0  #00000005
    .end packed-switch
.end method

.method private static longPressOnStemPrimaryBehaviorToString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0  #0x1
    const-string v0, "LONG_PRESS_PRIMARY_LAUNCH_VOICE_ASSISTANT"

    return-object v0

    :pswitch_1  #0x0
    const-string v0, "LONG_PRESS_PRIMARY_NOTHING"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1  #00000000
        :pswitch_0  #00000001
    .end packed-switch
.end method

.method private makeSwitchKeyboardLayoutToast(Landroid/view/KeyEvent;)V
    .registers 6

    invoke-static {}, Lcom/android/server/policy/PhoneWindowManagerStub;->getInstance()Lcom/android/server/policy/PhoneWindowManagerStub;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-interface {v0, v1, p1, v2}, Lcom/android/server/policy/PhoneWindowManagerStub;->getOldKeyboardLayoutDescription(Landroid/content/Context;Landroid/view/KeyEvent;Landroid/hardware/input/InputManager;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/server/policy/PhoneWindowManagerStub;->getInstance()Lcom/android/server/policy/PhoneWindowManagerStub;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-interface {v1, v2, p1, v3, v0}, Lcom/android/server/policy/PhoneWindowManagerStub;->onSwitchKeyboardLayoutShortcutAfter(Landroid/content/Context;Landroid/view/KeyEvent;Landroid/hardware/input/InputManager;Ljava/lang/String;)V

    return-void
.end method

.method private moveFocusedTaskToStageSplit(IZ)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->moveFocusedTaskToStageSplit(IZ)V

    :cond_0
    return-void
.end method

.method private static multiPressOnPowerBehaviorToString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0  #0x3
    const-string v0, "MULTI_PRESS_POWER_LAUNCH_TARGET_ACTIVITY"

    return-object v0

    :pswitch_1  #0x2
    const-string v0, "MULTI_PRESS_POWER_BRIGHTNESS_BOOST"

    return-object v0

    :pswitch_2  #0x1
    const-string v0, "MULTI_PRESS_POWER_THEATER_MODE"

    return-object v0

    :pswitch_3  #0x0
    const-string v0, "MULTI_PRESS_POWER_NOTHING"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3  #00000000
        :pswitch_2  #00000001
        :pswitch_1  #00000002
        :pswitch_0  #00000003
    .end packed-switch
.end method

.method private notifyKeyGestureCompleted(Landroid/view/KeyEvent;I)V
    .registers 7

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    filled-new-array {v2}, [I

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/input/InputManagerInternal;->notifyKeyGestureCompleted(I[III)V

    return-void
.end method

.method private notifyKeyGestureCompletedOnActionDown(Landroid/view/KeyEvent;I)V
    .registers 4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->notifyKeyGestureCompleted(Landroid/view/KeyEvent;I)V

    return-void
.end method

.method private notifyKeyGestureCompletedOnActionUp(Landroid/view/KeyEvent;I)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->notifyKeyGestureCompleted(Landroid/view/KeyEvent;I)V

    return-void
.end method

.method private performHapticFeedback(ILjava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(ILjava/lang/String;I)V

    return-void
.end method

.method private performHapticFeedback(ILjava/lang/String;I)V
    .registers 8

    and-int/lit8 v0, p3, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManagerStub;->getInstance()Lcom/android/server/policy/PhoneWindowManagerStub;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-interface {v2, v3, v1, p1, v0}, Lcom/android/server/policy/PhoneWindowManagerStub;->performHapticFeedback(Landroid/content/Context;ZIZ)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v2, p1, p2, p3, v1}, Landroid/os/Vibrator;->performHapticFeedback(ILjava/lang/String;II)V

    :cond_1
    return-void
.end method

.method private powerLongPress(J)V
    .registers 11

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getResolvedLongPressOnPowerBehavior()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "powerLongPress: eventTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mLongPressOnPowerBehavior="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/shared/Flags;->enableLppSqueezeEffect()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    new-instance v1, Landroid/view/KeyEvent;

    const/16 v4, 0x1a

    invoke-direct {v1, v3, v4}, Landroid/view/KeyEvent;-><init>(II)V

    const/16 v4, 0x80

    invoke-virtual {v1, v4}, Landroid/view/KeyEvent;->setFlags(I)V

    invoke-virtual {v1, p1, p2, p1, p2}, Landroid/view/KeyEvent;->setTime(JJ)V

    invoke-direct {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->sendSystemKeyToStatusBarAsync(Landroid/view/KeyEvent;)V

    :cond_0
    const/16 v1, 0x2713

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    move-wide v5, p1

    move-object p1, p0

    goto :goto_0

    :pswitch_0  #0x5
    iput-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    const/16 v1, 0x2712

    const-string v2, "Power - Long Press - Go To Assistant"

    invoke-direct {p0, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(ILjava/lang/String;)V

    const/4 v1, -0x2

    const/4 v4, -0x2

    const/4 v7, 0x6

    const/4 v3, 0x0

    move-object v2, p0

    move-wide v5, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/policy/PhoneWindowManager;->launchAssistAction(Ljava/lang/String;IJI)V

    move-object p1, v2

    goto :goto_0

    :pswitch_1  #0x4
    move-wide v5, p1

    move-object p1, p0

    iput-boolean v4, p1, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    const-string p2, "Power - Long Press - Go To Voice Assist"

    invoke-direct {p0, v1, p2}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(ILjava/lang/String;)V

    iget-boolean p2, p1, Lcom/android/server/policy/PhoneWindowManager;->mAllowStartActivityForLongPressOnPowerDuringSetup:Z

    invoke-direct {p0, p2}, Lcom/android/server/policy/PhoneWindowManager;->launchVoiceAssist(Z)V

    goto :goto_0

    :pswitch_2  #0x2, 0x3
    move-wide v5, p1

    move-object p1, p0

    iput-boolean v4, p1, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const-string p2, "Power - Long Press - Shut Off"

    invoke-direct {p0, v1, p2}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(ILjava/lang/String;)V

    const-string p2, "globalactions"

    invoke-virtual {p0, p2}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    iget-object p2, p1, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    move v3, v4

    :cond_2
    invoke-interface {p2, v3}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->shutdown(Z)V

    goto :goto_0

    :pswitch_3  #0x1
    move-wide v5, p1

    move-object p1, p0

    sget-boolean p2, Lmiui/enterprise/EnterpriseManagerStub;->ENTERPRISE_ACTIVATED:Z

    if-eqz p2, :cond_3

    invoke-static {}, Lmiui/enterprise/RestrictionsHelperStub;->getInstance()Lmiui/enterprise/IRestrictionsHelper;

    move-result-object p2

    const-string v3, "disable_key_behavior_long_press_power_key"

    invoke-interface {p2, v3}, Lmiui/enterprise/IRestrictionsHelper;->isRestriction(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "enterprise Restriction reboot by power long"

    invoke-static {v2, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iput-boolean v4, p1, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    const-string p2, "Power - Long Press - Global Actions"

    invoke-direct {p0, v1, p2}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(ILjava/lang/String;)V

    invoke-static {}, Lcom/android/server/policy/PhoneWindowManagerStub;->getInstance()Lcom/android/server/policy/PhoneWindowManagerStub;

    move-result-object p2

    const-string v1, "long_press_power_key"

    invoke-interface {p2, v1}, Lcom/android/server/policy/PhoneWindowManagerStub;->trackGlobalActions(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->showGlobalActions()V

    goto :goto_0

    :pswitch_4  #0x0
    move-wide v5, p1

    move-object p1, p0

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4  #00000000
        :pswitch_3  #00000001
        :pswitch_2  #00000002
        :pswitch_2  #00000003
        :pswitch_1  #00000004
        :pswitch_0  #00000005
    .end packed-switch
.end method

.method private powerMultiPressAction(JZI)V
    .registers 10

    const/16 v0, 0x1a

    const/4 v1, 0x0

    const-string v2, "WindowManager"

    packed-switch p4, :pswitch_data_0

    goto :goto_0

    :pswitch_0  #0x3
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->launchTargetActivityOnMultiPressPower()V

    goto :goto_0

    :pswitch_1  #0x2
    const-string v3, "Starting brightness boost."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromWakeKey(JIZ)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0, p1, p2}, Landroid/os/PowerManager;->boostScreenBrightness(J)V

    goto :goto_0

    :pswitch_2  #0x1
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v0, "Ignoring toggling theater mode - device not setup."

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isTheaterModeEnabled()Z

    move-result v3

    const-string v4, "theater_mode_on"

    if-eqz v3, :cond_3

    const-string v3, "Toggling theater mode off."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-nez p3, :cond_4

    sget-boolean v3, Lmiui/enterprise/EnterpriseManagerStub;->ENTERPRISE_ACTIVATED:Z

    if-eqz v3, :cond_2

    invoke-static {}, Lmiui/enterprise/RestrictionsHelperStub;->getInstance()Lmiui/enterprise/IRestrictionsHelper;

    move-result-object v3

    const-string v4, "disable_key_behavior_short_press_power_key"

    invoke-interface {v3, v4}, Lmiui/enterprise/IRestrictionsHelper;->isRestriction(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v0, "enterprise Restriction behavior: short press power key to wake up."

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromWakeKey(JIZ)V

    goto :goto_0

    :cond_3
    const-string v0, "Toggling theater mode on."

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGoToSleepOnButtonPressTheaterMode:Z

    if-eqz v0, :cond_4

    if-eqz p3, :cond_4

    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->sleepDefaultDisplay(JII)V

    goto :goto_0

    :pswitch_3  #0x0
    nop

    :cond_4
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3  #00000000
        :pswitch_2  #00000001
        :pswitch_1  #00000002
        :pswitch_0  #00000003
    .end packed-switch
.end method

.method private powerVeryLongPress()V
    .registers 3

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressOnPowerBehavior:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0  #0x1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    const/16 v0, 0x2713

    const-string v1, "Power - Very Long Press - Show Global Actions"

    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(ILjava/lang/String;)V

    invoke-static {}, Lcom/android/server/policy/PhoneWindowManagerStub;->getInstance()Lcom/android/server/policy/PhoneWindowManagerStub;

    move-result-object v0

    const-string v1, "very_long_press_power"

    invoke-interface {v0, v1}, Lcom/android/server/policy/PhoneWindowManagerStub;->trackGlobalActions(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->showGlobalActions()V

    goto :goto_0

    :pswitch_1  #0x0
    nop

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1  #00000000
        :pswitch_0  #00000001
    .end packed-switch
.end method

.method private static powerVolumeUpBehaviorToString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0  #0x2
    const-string v0, "POWER_VOLUME_UP_BEHAVIOR_GLOBAL_ACTIONS"

    return-object v0

    :pswitch_1  #0x1
    const-string v0, "POWER_VOLUME_UP_BEHAVIOR_MUTE"

    return-object v0

    :pswitch_2  #0x0
    const-string v0, "POWER_VOLUME_UP_BEHAVIOR_NOTHING"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2  #00000000
        :pswitch_1  #00000001
        :pswitch_0  #00000002
    .end packed-switch
.end method

.method private preloadRecentApps()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->preloadRecentApps()V

    :cond_0
    return-void
.end method

.method private prepareToSendSystemKeyToApplication(Landroid/os/IBinder;Landroid/view/KeyEvent;)Z
    .registers 11

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal keycode provided to prepareToSendSystemKeyToApplication: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "WindowManager"

    invoke-static {v3, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v4, p1}, Lcom/android/server/wm/WindowManagerInternal;->getKeyInterceptionInfoFromToken(Landroid/os/IBinder;)Lcom/android/internal/policy/KeyInterceptionInfo;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mButtonOverridePermissionChecker:Lcom/android/server/policy/PhoneWindowManager$ButtonOverridePermissionChecker;

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget v7, v4, Lcom/android/internal/policy/KeyInterceptionInfo;->windowOwnerUid:I

    invoke-virtual {v5, v6, v7}, Lcom/android/server/policy/PhoneWindowManager$ButtonOverridePermissionChecker;->canAppOverrideSystemKey(Landroid/content/Context;I)Z

    move-result v5

    if-eqz v5, :cond_2

    return v3

    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v5

    invoke-direct {p0, v0, v5, v6}, Lcom/android/server/policy/PhoneWindowManager;->setDeferredKeyActionsExecutableAsync(IJ)V

    return v2

    :cond_3
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mConsumedKeysForDevice:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    if-eqz v4, :cond_4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v5, v3

    goto :goto_1

    :cond_4
    move v5, v2

    :goto_1
    if-nez v5, :cond_5

    move v2, v3

    :cond_5
    return v2
.end method

.method private readCameraLensCoverState()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->getCameraLensCoverState()I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    return-void
.end method

.method private readConfigurationDependentBehaviors()V
    .registers 6

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    const/4 v2, 0x0

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    const/4 v3, 0x3

    if-le v1, v3, :cond_1

    :cond_0
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    :cond_1
    const v1, 0x10e008f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    const/4 v3, 0x2

    if-ltz v1, :cond_2

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    if-le v1, v3, :cond_3

    :cond_2
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    :cond_3
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnWindowBehavior:I

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v4, "android.software.picture_in_picture"

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnWindowBehavior:I

    :cond_4
    const v1, 0x10e014a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSettingsKeyBehavior:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSettingsKeyBehavior:I

    if-ltz v1, :cond_5

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSettingsKeyBehavior:I

    if-le v1, v3, :cond_6

    :cond_5
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSettingsKeyBehavior:I

    :cond_6
    return-void
.end method

.method private reportScreenStateToVrManager(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrManagerInternal:Lcom/android/server/vr/VrManagerInternal;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrManagerInternal:Lcom/android/server/vr/VrManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/vr/VrManagerInternal;->onScreenStateChanged(Z)V

    return-void
.end method

.method private reportScreenTurnedOnToWallpaper(I)V
    .registers 3

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getWallpaperManagerInternal()Lcom/android/server/wallpaper/WallpaperManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/wallpaper/WallpaperManagerInternal;->onScreenTurnedOn(I)V

    :cond_0
    return-void
.end method

.method private reportScreenTurningOnToWallpaper(I)V
    .registers 3

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getWallpaperManagerInternal()Lcom/android/server/wallpaper/WallpaperManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/wallpaper/WallpaperManagerInternal;->onScreenTurningOn(I)V

    :cond_0
    return-void
.end method

.method private responseToTheCall(Landroid/view/KeyEvent;)V
    .registers 9

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ResponseToTheCall: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v3

    if-eqz v3, :cond_0

    const/16 v4, 0xa4

    if-ne v2, v4, :cond_1

    invoke-virtual {v3}, Landroid/telecom/TelecomManager;->silenceRinger()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v4, 0x18

    if-ne v2, v4, :cond_2

    const-string v1, "answer_from_volume_up_key"

    :goto_1
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v1, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ResponseToTheCall: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0  #0x1
    invoke-virtual {v3}, Landroid/telecom/TelecomManager;->endCall()Z

    goto :goto_0

    :cond_2
    const-string v1, "answer_from_volume_down_key"

    goto :goto_1

    :pswitch_1  #0x2
    invoke-virtual {v3}, Landroid/telecom/TelecomManager;->acceptRingingCall()V

    goto :goto_0

    :pswitch_2  #0x3
    invoke-virtual {v3}, Landroid/telecom/TelecomManager;->silenceRinger()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0  #00000001
        :pswitch_1  #00000002
        :pswitch_2  #00000003
    .end packed-switch
.end method

.method private sendSwitchKeyboardLayout(ILandroid/os/IBinder;I)V
    .registers 7

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/android/server/policy/PhoneWindowManager$SwitchKeyboardLayoutMessageObject;-><init>(ILandroid/os/IBinder;ILcom/android/server/policy/PhoneWindowManager-IA;)V

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x19

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private sendSystemKeyToStatusBar(Landroid/view/KeyEvent;)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const-string v2, "handleSystemKey"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->isKeyEventForCurrentUser(IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBarService;->handleSystemKey(Landroid/view/KeyEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :cond_1
    :goto_0
    return-void
.end method

.method private sendSystemKeyToStatusBarAsync(Landroid/view/KeyEvent;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x15

    invoke-static {p1}, Landroid/view/KeyEvent;->obtain(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private setDeferredKeyActionsExecutableAsync(IJ)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1b

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private setKeyguardOccludedLw(Z)Z
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccludedChanged:Z

    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingKeyguardOccluded:Z

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setOccluded(ZZ)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    return v0
.end method

.method private static settingsKeyBehaviorToString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0  #0x2
    const-string v0, "SETTINGS_KEY_BEHAVIOR_NOTHING"

    return-object v0

    :pswitch_1  #0x1
    const-string v0, "SETTINGS_KEY_BEHAVIOR_NOTIFICATION_PANEL"

    return-object v0

    :pswitch_2  #0x0
    const-string v0, "SETTINGS_KEY_BEHAVIOR_SETTINGS_ACTIVITY"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2  #00000000
        :pswitch_1  #00000001
        :pswitch_0  #00000002
    .end packed-switch
.end method

.method private static shortPressOnPowerBehaviorToString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0  #0x5
    const-string v0, "SHORT_PRESS_POWER_CLOSE_IME_OR_GO_HOME"

    return-object v0

    :pswitch_1  #0x4
    const-string v0, "SHORT_PRESS_POWER_GO_HOME"

    return-object v0

    :pswitch_2  #0x3
    const-string v0, "SHORT_PRESS_POWER_REALLY_GO_TO_SLEEP_AND_GO_HOME"

    return-object v0

    :pswitch_3  #0x2
    const-string v0, "SHORT_PRESS_POWER_REALLY_GO_TO_SLEEP"

    return-object v0

    :pswitch_4  #0x1
    const-string v0, "SHORT_PRESS_POWER_GO_TO_SLEEP"

    return-object v0

    :pswitch_5  #0x0
    const-string v0, "SHORT_PRESS_POWER_NOTHING"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5  #00000000
        :pswitch_4  #00000001
        :pswitch_3  #00000002
        :pswitch_2  #00000003
        :pswitch_1  #00000004
        :pswitch_0  #00000005
    .end packed-switch
.end method

.method private static shortPressOnSleepBehaviorToString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0  #0x1
    const-string v0, "SHORT_PRESS_SLEEP_GO_TO_SLEEP_AND_GO_HOME"

    return-object v0

    :pswitch_1  #0x0
    const-string v0, "SHORT_PRESS_SLEEP_GO_TO_SLEEP"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1  #00000000
        :pswitch_0  #00000001
    .end packed-switch
.end method

.method private static shortPressOnStemPrimaryBehaviorToString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0  #0x2
    const-string v0, "SHORT_PRESS_PRIMARY_LAUNCH_TARGET_ACTIVITY"

    return-object v0

    :pswitch_1  #0x1
    const-string v0, "SHORT_PRESS_PRIMARY_LAUNCH_ALL_APPS"

    return-object v0

    :pswitch_2  #0x0
    const-string v0, "SHORT_PRESS_PRIMARY_NOTHING"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2  #00000000
        :pswitch_1  #00000001
        :pswitch_0  #00000002
    .end packed-switch
.end method

.method private static shortPressOnWindowBehaviorToString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0  #0x1
    const-string v0, "SHORT_PRESS_WINDOW_PICTURE_IN_PICTURE"

    return-object v0

    :pswitch_1  #0x0
    const-string v0, "SHORT_PRESS_WINDOW_NOTHING"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1  #00000000
        :pswitch_0  #00000001
    .end packed-switch
.end method

.method private shortPressPowerGoHome()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v0}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(IZZ)V

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onShortPowerPressedGoHome()V

    :cond_0
    return-void
.end method

.method private shouldCecAudioDeviceForwardVolumeKeysSystemAudioModeOff()Z
    .registers 2

    sget-boolean v0, Lcom/android/internal/os/RoSystemProperties;->CEC_AUDIO_DEVICE_FORWARD_VOLUME_KEYS_SYSTEM_AUDIO_MODE_OFF:Z

    return v0
.end method

.method private shouldDispatchInputWhenNonInteractive(II)Z
    .registers 12

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplay:Landroid/view/Display;

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v3, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v3

    :goto_2
    nop

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/view/Display;->getState()I

    move-result v4

    if-ne v4, v1, :cond_3

    goto :goto_3

    :cond_3
    move v4, v0

    goto :goto_4

    :cond_4
    :goto_3
    move v4, v1

    :goto_4
    if-eqz v4, :cond_5

    invoke-static {}, Lcom/android/server/policy/PhoneWindowManagerStub;->getInstance()Lcom/android/server/policy/PhoneWindowManagerStub;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/server/policy/PhoneWindowManagerStub;->shouldDispatchInputWhenNonInteractive(I)Z

    move-result v0

    return v0

    :cond_5
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {}, Lcom/android/server/policy/PhoneWindowManagerStub;->getInstance()Lcom/android/server/policy/PhoneWindowManagerStub;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/server/policy/PhoneWindowManagerStub;->isInHangUpState()Z

    move-result v5

    if-nez v5, :cond_6

    return v1

    :cond_6
    if-eqz v2, :cond_8

    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getDreamManager()Landroid/service/dreams/IDreamManager;

    move-result-object v5

    if-eqz v5, :cond_7

    :try_start_0
    invoke-interface {v5}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    move-result v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_7

    return v1

    :catch_0
    move-exception v6

    const-string v7, "WindowManager"

    const-string v8, "RemoteException when checking if dreaming"

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :cond_7
    nop

    :goto_5
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManagerStub;->getInstance()Lcom/android/server/policy/PhoneWindowManagerStub;

    move-result-object v6

    invoke-interface {v6, v0}, Lcom/android/server/policy/PhoneWindowManagerStub;->shouldDispatchInputWhenNonInteractiveById(I)Z

    move-result v6

    if-eqz v6, :cond_8

    return v1

    :cond_8
    invoke-static {}, Lcom/android/server/wm/DisplayContentStub;->get()Lcom/android/server/wm/DisplayContentStub;

    move-result-object v5

    invoke-interface {v5, p1}, Lcom/android/server/wm/DisplayContentStub;->isSubDisplay(I)Z

    move-result v5

    if-eqz v5, :cond_9

    if-nez v4, :cond_9

    return v1

    :cond_9
    return v0
.end method

.method private shouldEnableWakeGestureLp()Z
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureEnabledSetting:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isAwake()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getLidBehavior()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->getLidState()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private shouldHandleShortPressPowerAction(ZJ)Z
    .registers 10

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSupportShortPressPowerWhenDefaultDisplayOn:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "WindowManager"

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v0

    invoke-static {v0}, Landroid/view/Display;->isOnState(I)Z

    move-result v0

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-virtual {v4}, Lcom/android/server/policy/SingleKeyGestureDetector;->beganFromDefaultDisplayOn()Z

    move-result v4

    if-eqz v0, :cond_1

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring short press of power button because the default display is not on. defaultDisplayOn="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", beganFromDefaultDisplayOn="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-virtual {v0}, Lcom/android/server/policy/SingleKeyGestureDetector;->beganFromNonInteractive()Z

    move-result v0

    if-eqz p1, :cond_5

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mSideFpsEventHandler:Lcom/android/server/policy/SideFpsEventHandler;

    invoke-virtual {v4, p2, p3}, Lcom/android/server/policy/SideFpsEventHandler;->shouldConsumeSinglePress(J)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v1, "Suppressing power key because the user is interacting with the fingerprint sensor"

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_4
    return v1

    :cond_5
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring short press of power button because the device is not interactive. interactive="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", beganFromNonInteractive="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private shouldWakeUpWithHomeIntent()Z
    .registers 7

    iget-wide v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeUpToLastStateTimeout:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v0}, Landroid/os/PowerManagerInternal;->getLastWakeup()Landroid/os/PowerManager$WakeData;

    move-result-object v0

    iget-wide v2, v0, Landroid/os/PowerManager$WakeData;->sleepDurationRealtime:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shouldWakeUpWithHomeIntent: sleepDurationRealtime= "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " mWakeUpToLastStateTimeout= "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeUpToLastStateTimeout:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "WindowManager"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeUpToLastStateTimeout:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private showPictureInPictureMenu(Landroid/view/KeyEvent;)V
    .registers 4

    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showPictureInPictureMenu event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private showPictureInPictureMenuInternal()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->showPictureInPictureMenu()V

    :cond_0
    return-void
.end method

.method private showRecentApps(Z)V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->showRecentApps(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->dismissKeyboardShortcutsMenu()V

    return-void
.end method

.method private showSystemSettings()V
    .registers 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private sleepDefaultDisplay(JII)V
    .registers 7

    const/4 v0, 0x4

    if-ne p3, v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/policy/PhoneWindowManager;->lastInterceptPowerKeyOffTime:J

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRequestedOrSleepingDefaultDisplay:Z

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/PowerManager;->goToSleep(JII)V

    return-void
.end method

.method private sleepDefaultDisplayFromPowerButton(JI)Z
    .registers 14

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSideFpsEventHandler:Lcom/android/server/policy/SideFpsEventHandler;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/SideFpsEventHandler;->shouldConsumeSinglePress(J)Z

    move-result v0

    const-string v1, "WindowManager"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string v0, "Suppressing power key because the user is interacting with the fingerprint sensor"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v0}, Landroid/os/PowerManagerInternal;->getLastWakeup()Landroid/os/PowerManager$WakeData;

    move-result-object v0

    const/4 v3, 0x4

    if-eqz v0, :cond_2

    iget v4, v0, Landroid/os/PowerManager$WakeData;->wakeReason:I

    if-eq v4, v3, :cond_1

    iget v4, v0, Landroid/os/PowerManager$WakeData;->wakeReason:I

    const/16 v5, 0x10

    if-eq v4, v5, :cond_1

    iget v4, v0, Landroid/os/PowerManager$WakeData;->wakeReason:I

    const/16 v5, 0x11

    if-ne v4, v5, :cond_2

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerButtonSuppressionDelayMillis:I

    if-lez v6, :cond_2

    iget-wide v6, v0, Landroid/os/PowerManager$WakeData;->wakeTime:J

    iget v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerButtonSuppressionDelayMillis:I

    int-to-long v8, v8

    add-long/2addr v6, v8

    cmp-long v6, v4, v6

    if-gez v6, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sleep from power button suppressed. Time since gesture: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v6, v0, Landroid/os/PowerManager$WakeData;->wakeTime:J

    sub-long v6, v4, v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "ms"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    invoke-static {}, Lcom/android/server/devicestate/DeviceStateManagerServiceStub;->getInstance()Lcom/android/server/devicestate/DeviceStateManagerServiceStub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/devicestate/DeviceStateManagerServiceStub;->skipDueToReversedState()Z

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    invoke-direct {p0, p1, p2, v3, p3}, Lcom/android/server/policy/PhoneWindowManager;->sleepDefaultDisplay(JII)V

    const/4 v1, 0x1

    return v1
.end method

.method private sleepPress()V
    .registers 3

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnSleepBehavior:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(IZZ)V

    :cond_0
    return-void
.end method

.method private sleepRelease(J)V
    .registers 6

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSilenceRingerOnSleepKey:Z

    const-string v1, "WindowManager"

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->silenceRinger()V

    const-string v2, "sleepRelease() silence ringer"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnSleepBehavior:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0  #0x0, 0x1
    const-string v0, "sleepRelease() calling goToSleep(GO_TO_SLEEP_REASON_SLEEP_BUTTON)"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->sleepDefaultDisplay(JII)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0  #00000000
        :pswitch_0  #00000001
    .end packed-switch
.end method

.method private startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;Z)V

    return-void
.end method

.method private startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;Z)V
    .registers 7

    if-nez p4, :cond_1

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not starting activity because user setup is in progress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->dismissKeyboardShortcutsMenu()V

    :goto_1
    return-void
.end method

.method private startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    return-void
.end method

.method private stemPrimaryDoublePressAction(I)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stemPrimaryDoublePressAction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0  #0x2
    const/4 v1, -0x2

    const/4 v2, -0x2

    const/16 v3, 0x108

    const/16 v4, 0x32

    invoke-direct {p0, v4, v2, v3, v0}, Lcom/android/server/policy/PhoneWindowManager;->handleKeyGestureInKeyGestureController(IIII)V

    goto :goto_1

    :pswitch_1  #0x1
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    :goto_0
    nop

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->performStemPrimaryDoublePressSwitchToRecentTask()V

    goto :goto_1

    :pswitch_2  #0x0
    nop

    :cond_1
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2  #00000000
        :pswitch_1  #00000001
        :pswitch_0  #00000002
    .end packed-switch
.end method

.method private stemPrimaryLongPress(J)V
    .registers 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stemPrimaryLongPress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnStemPrimaryBehavior:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnStemPrimaryBehavior:I

    packed-switch v0, :pswitch_data_0

    move-wide v4, p1

    goto :goto_0

    :pswitch_0  #0x1
    const/4 v0, -0x2

    const/4 v3, -0x2

    const/4 v6, 0x0

    const/4 v2, 0x0

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/policy/PhoneWindowManager;->launchAssistAction(Ljava/lang/String;IJI)V

    goto :goto_0

    :pswitch_1  #0x0
    move-wide v4, p1

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1  #00000000
        :pswitch_0  #00000001
    .end packed-switch
.end method

.method private stemPrimaryPress(I)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stemPrimaryPress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnStemPrimaryBehavior:I

    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->stemPrimaryTriplePressAction(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnStemPrimaryBehavior:I

    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->stemPrimaryDoublePressAction(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnStemPrimaryBehavior:I

    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->stemPrimarySinglePressAction(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private stemPrimarySinglePressAction(I)V
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stemPrimarySinglePressAction: behavior="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    const/16 v3, 0x108

    invoke-virtual {v2, v3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onSystemKeyPressed(I)V

    const-string v2, "stemPrimarySinglePressAction: skip due to keyguard"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    packed-switch p1, :pswitch_data_0

    goto :goto_2

    :pswitch_0  #0x2
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPrimaryShortPressTargetActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_4

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mPrimaryShortPressTargetActivity:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    const v1, 0x10204000

    invoke-virtual {v3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-object v1, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-direct {p0, v3, v1}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_1

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not resolve activity with : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mPrimaryShortPressTargetActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " name."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    goto :goto_2

    :cond_4
    const-string v2, "mPrimaryShortPressTargetActivity must not be null and correctly specified"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :pswitch_1  #0x1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.ALL_APPS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10200000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-direct {p0, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    nop

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1  #00000001
        :pswitch_0  #00000002
    .end packed-switch
.end method

.method private stemPrimaryTriplePressAction(I)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stemPrimaryTriplePressAction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0  #0x1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTalkbackShortcutController:Lcom/android/server/policy/TalkbackShortcutController;

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    sget-object v2, Lcom/android/server/policy/TalkbackShortcutController$ShortcutSource;->GESTURE:Lcom/android/server/policy/TalkbackShortcutController$ShortcutSource;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/TalkbackShortcutController;->toggleTalkback(ILcom/android/server/policy/TalkbackShortcutController$ShortcutSource;)Z

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTalkbackShortcutController:Lcom/android/server/policy/TalkbackShortcutController;

    invoke-virtual {v0}, Lcom/android/server/policy/TalkbackShortcutController;->isTalkBackShortcutGestureEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    const-string v1, "Stem primary - Triple Press - Toggle Accessibility"

    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_1  #0x0
    nop

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1  #00000000
        :pswitch_0  #00000001
    .end packed-switch
.end method

.method private toggleKeyboardShortcutsMenu(I)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->toggleKeyboardShortcutsMenu(I)V

    :cond_0
    return-void
.end method

.method private toggleMicrophoneMuteFromKey()V
    .registers 7

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Landroid/hardware/SensorPrivacyManager;->supportsSensorToggle(II)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    invoke-virtual {v0, v1, v1}, Landroid/hardware/SensorPrivacyManager;->isSensorPrivacyEnabled(II)Z

    move-result v0

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    xor-int/lit8 v3, v0, 0x1

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    const/4 v5, 0x5

    invoke-virtual {v2, v5, v1, v3, v4}, Landroid/hardware/SensorPrivacyManager;->setSensorPrivacy(IIZI)V

    if-eqz v0, :cond_0

    const v1, 0x10406f5

    goto :goto_0

    :cond_0
    const v1, 0x10406f4

    :goto_0
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/server/UiThread;->get()Lcom/android/server/UiThread;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/UiThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void
.end method

.method private toggleNotificationPanel()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->togglePanel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :cond_0
    :goto_0
    return-void
.end method

.method private toggleRecentApps()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->toggleRecentApps()V

    :cond_0
    return-void
.end method

.method private toggleTaskbar()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->toggleTaskbar()V

    :cond_0
    return-void
.end method

.method private static triplePressOnStemPrimaryBehaviorToString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0  #0x1
    const-string v0, "TRIPLE_PRESS_PRIMARY_TOGGLE_ACCESSIBILITY"

    return-object v0

    :pswitch_1  #0x0
    const-string v0, "TRIPLE_PRESS_PRIMARY_NOTHING"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1  #00000000
        :pswitch_0  #00000001
    .end packed-switch
.end method

.method private updateKidsModeSettings(Z)V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1110227

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    const/16 v2, 0x8

    filled-new-array {v0, v2}, [I

    move-result-object v0

    const/4 v2, 0x6

    filled-new-array {v2, v2}, [I

    move-result-object v2

    invoke-virtual {v1, v3, v0, v2}, Lcom/android/server/wm/WindowManagerInternal;->setOrientationRequestPolicy(Z[I[I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0, v3, v1, v1}, Lcom/android/server/wm/WindowManagerInternal;->setOrientationRequestPolicy(Z[I[I)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v2, v0, v1, v1}, Lcom/android/server/wm/WindowManagerInternal;->setOrientationRequestPolicy(Z[I[I)V

    :goto_0
    return-void
.end method

.method private updateLockScreenTimeout()V
    .registers 7

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockNowPending:Z

    if-eqz v1, :cond_0

    const-string v1, "WindowManager"

    const-string v2, "lockNow pending, ignore updating lockscreen timeout"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowLockscreenWhenOnDisplays:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->isAwake()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isSecure(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimerActive:Z

    if-eq v2, v1, :cond_3

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_1
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimerActive:Z

    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateSettings()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->updateSettings(Landroid/os/Handler;)V

    return-void
.end method

.method private updateWakeGestureListenerLp()V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->shouldEnableWakeGestureLp()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->requestWakeUpTrigger()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->cancelWakeUpTrigger()V

    :goto_0
    return-void
.end method

.method private static veryLongPressOnPowerBehaviorToString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0  #0x1
    const-string v0, "VERY_LONG_PRESS_POWER_GLOBAL_ACTIONS"

    return-object v0

    :pswitch_1  #0x0
    const-string v0, "VERY_LONG_PRESS_POWER_NOTHING"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1  #00000000
        :pswitch_0  #00000001
    .end packed-switch
.end method

.method private wakeUpFromWakeKey(JIZ)V
    .registers 14

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/android/server/policy/PhoneWindowManager;->lastInterceptPowerKeyOffTime:J

    const-wide/16 v4, 0x12c

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sleep from power key up suppressed. Time since gesture: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v3, Lcom/android/server/policy/PhoneWindowManager;->lastInterceptPowerKeyOffTime:J

    sub-long v3, v0, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WindowManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mIsFinishedGoingToSleep:Z

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowWakeUpPolicy:Lcom/android/server/policy/WindowWakeUpPolicy;

    const/4 v4, 0x0

    move-wide v5, p1

    move v7, p3

    move v8, p4

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/policy/WindowWakeUpPolicy;->wakeUpFromKey(IJIZ)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x3

    const/4 p2, 0x1

    if-eq v7, p1, :cond_2

    const/16 p3, 0x1a

    if-ne v7, p3, :cond_1

    goto :goto_0

    :cond_1
    move p3, v2

    goto :goto_1

    :cond_2
    :goto_0
    move p3, p2

    :goto_1
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->shouldWakeUpWithHomeIntent()Z

    move-result p4

    if-eqz p4, :cond_4

    if-eqz p3, :cond_4

    if-ne v7, p1, :cond_3

    move p1, p2

    goto :goto_2

    :cond_3
    move p1, v2

    :goto_2
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wake from "

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-static {v7}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, v2, p1, p2, p4}, Lcom/android/server/policy/PhoneWindowManager;->startDockOrHome(IZZLjava/lang/String;)V

    :cond_4
    return-void
.end method

.method private wakeUpFromWakeKey(Landroid/view/KeyEvent;)V
    .registers 6

    nop

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const-string v2, "wakeUpFromWakeKey"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->isKeyEventForCurrentUser(IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    nop

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromWakeKey(JIZ)V

    return-void
.end method


# virtual methods
.method public adjustConfigurationLw(Landroid/content/res/Configuration;II)V
    .registers 7

    and-int/lit8 v0, p2, 0x1

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHaveBuiltInKeyboard:Z

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->readConfigurationDependentBehaviors()V

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->readLidState()V

    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    const/4 v2, 0x2

    if-eq v0, v1, :cond_1

    if-ne p2, v1, :cond_2

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidKeyboardAccessibility:I

    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->isHidden(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iput v2, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    if-nez v0, :cond_2

    iput v2, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    :cond_2
    iget v0, p1, Landroid/content/res/Configuration;->navigation:I

    if-eq v0, v1, :cond_3

    if-ne p3, v1, :cond_4

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidNavigationAccessibility:I

    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->isHidden(I)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iput v2, p1, Landroid/content/res/Configuration;->navigationHidden:I

    :cond_4
    return-void
.end method

.method public applyKeyguardOcclusionChange()I
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingKeyguardOccluded:Z

    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->setKeyguardOccludedLw(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public canDismissBootAnimation()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardDrawComplete()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootAnimationDismissable:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public checkAddPermission(IZLjava/lang/String;[II)I
    .registers 22

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p5

    const-string v4, "android.permission.INTERNAL_SYSTEM_WINDOW"

    const/4 v5, -0x8

    if-eqz p2, :cond_0

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    return v5

    :cond_0
    const/4 v0, -0x1

    const/4 v6, 0x0

    aput v0, p4, v6

    const/4 v0, 0x1

    const/16 v7, 0xbb7

    const/16 v8, 0x7d0

    const/16 v9, 0x3e8

    if-lt v2, v0, :cond_1

    const/16 v0, 0x63

    if-le v2, v0, :cond_3

    :cond_1
    if-lt v2, v9, :cond_2

    const/16 v0, 0x7cf

    if-le v2, v0, :cond_3

    :cond_2
    if-lt v2, v8, :cond_12

    if-le v2, v7, :cond_3

    goto :goto_7

    :cond_3
    if-lt v2, v8, :cond_11

    if-le v2, v7, :cond_4

    goto :goto_6

    :cond_4
    invoke-static {v2}, Landroid/view/WindowManager$LayoutParams;->isSystemAlertWindowType(I)Z

    move-result v0

    if-nez v0, :cond_8

    sparse-switch v2, :sswitch_data_0

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7

    move v5, v6

    goto :goto_0

    :sswitch_0
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/CrossDeviceManager;->isCallerAllowed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v5, v6

    :cond_5
    return v5

    :sswitch_1
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/view/contentprotection/flags/Flags;->createAccessibilityOverlayAppOpEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x8a

    aput v0, p4, v6

    return v6

    :sswitch_2
    const/16 v0, 0x2d

    aput v0, p4, v6

    return v6

    :cond_6
    :sswitch_3
    return v6

    :cond_7
    nop

    :goto_0
    return v5

    :cond_8
    const/16 v0, 0x18

    aput v0, p4, v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    invoke-static {v12}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    if-ne v0, v9, :cond_9

    return v6

    :cond_9
    :try_start_0
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v13, p3

    :try_start_1
    invoke-virtual {v0, v13, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object/from16 v13, p3

    :goto_1
    const/4 v7, 0x0

    move-object v0, v7

    :goto_2
    if-eqz v0, :cond_f

    const/16 v7, 0x7f6

    if-eq v2, v7, :cond_a

    iget v7, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v8, 0x1a

    if-lt v7, v8, :cond_a

    goto :goto_4

    :cond_a
    iget-object v4, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.SYSTEM_APPLICATION_OVERLAY"

    invoke-virtual {v4, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_b

    return v6

    :cond_b
    iget-object v4, v1, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v4, v3, v12}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->isCallerVirtualDeviceOwner(II)Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, v1, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v4, v3}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->isDisplayTrusted(I)Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.CREATE_VIRTUAL_DEVICE"

    invoke-virtual {v4, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_c

    return v6

    :cond_c
    iget-object v10, v1, Lcom/android/server/policy/PhoneWindowManager;->mAppOpsManager:Landroid/app/AppOpsManager;

    aget v11, p4, v6

    const/4 v14, 0x0

    const-string v15, "check-add"

    invoke-virtual/range {v10 .. v15}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    iget-object v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-virtual {v7, v8}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_e

    move v5, v6

    goto :goto_3

    :pswitch_0  #0x2
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v8, 0x17

    if-ge v7, v8, :cond_d

    return v6

    :cond_d
    return v5

    :pswitch_1  #0x0, 0x1
    return v6

    :cond_e
    nop

    :goto_3
    return v5

    :cond_f
    :goto_4
    iget-object v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_10

    move v5, v6

    goto :goto_5

    :cond_10
    nop

    :goto_5
    return v5

    :cond_11
    :goto_6
    return v6

    :cond_12
    :goto_7
    const/16 v0, -0xa

    return v0

    :sswitch_data_0
    .sparse-switch
        0x7d0 -> :sswitch_3
        0x7d5 -> :sswitch_2
        0x7db -> :sswitch_3
        0x7dd -> :sswitch_3
        0x7e1 -> :sswitch_3
        0x7e3 -> :sswitch_3
        0x7e8 -> :sswitch_3
        0x7ee -> :sswitch_3
        0x7ef -> :sswitch_3
        0x7f0 -> :sswitch_1
        0x7f1 -> :sswitch_3
        0x7f3 -> :sswitch_3
        0x7f5 -> :sswitch_3
        0x7f8 -> :sswitch_3
        0x7f9 -> :sswitch_3
        0x832 -> :sswitch_0
        0xbb6 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1  #00000000
        :pswitch_1  #00000001
        :pswitch_0  #00000002
    .end packed-switch
.end method

.method public createHiddenByKeyguardExit(ZZZ)Landroid/view/animation/Animation;
    .registers 6

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLogDecelerateInterpolator:Lcom/android/internal/policy/LogDecelerateInterpolator;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/android/internal/policy/TransitionAnimation;->createHiddenByKeyguardExit(Landroid/content/Context;Lcom/android/internal/policy/LogDecelerateInterpolator;ZZZ)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method createHomeDockIntent()Landroid/content/Intent;
    .registers 7

    goto :goto_2e

    nop

    :goto_0
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    goto :goto_1a

    nop

    :goto_1
    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_8

    nop

    :goto_2
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mEnableCarDockHomeCapture:Z

    goto :goto_e

    nop

    :goto_3
    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_23

    nop

    :goto_4
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    goto :goto_10

    nop

    :goto_5
    if-nez v2, :cond_0

    goto :goto_9

    :cond_0
    goto :goto_15

    nop

    :goto_6
    if-eq v1, v2, :cond_1

    goto :goto_35

    :cond_1
    goto :goto_2

    nop

    :goto_7
    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    goto :goto_25

    nop

    :goto_8
    return-object v1

    :goto_9
    goto :goto_32

    nop

    :goto_a
    iget-object v2, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    :goto_b
    goto :goto_5

    nop

    :goto_c
    invoke-virtual {v3, v0, v4, v5}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    goto :goto_3c

    nop

    :goto_d
    const/4 v1, 0x0

    goto :goto_39

    nop

    :goto_e
    if-nez v1, :cond_2

    goto :goto_2b

    :cond_2
    goto :goto_3b

    nop

    :goto_f
    const v4, 0x10080

    goto :goto_33

    nop

    :goto_10
    const/4 v2, 0x3

    goto :goto_6

    nop

    :goto_11
    if-nez v4, :cond_3

    goto :goto_9

    :cond_3
    goto :goto_38

    nop

    :goto_12
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPackageManager:Landroid/content/pm/PackageManager;

    goto :goto_f

    nop

    :goto_13
    if-eq v1, v2, :cond_4

    goto :goto_1e

    :cond_4
    goto :goto_2a

    nop

    :goto_14
    if-eq v1, v3, :cond_5

    goto :goto_17

    :cond_5
    goto :goto_19

    nop

    :goto_15
    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    goto :goto_26

    nop

    :goto_16
    goto :goto_2b

    :goto_17
    goto :goto_0

    nop

    :goto_18
    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    goto :goto_3

    nop

    :goto_19
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    goto :goto_29

    nop

    :goto_1a
    const/4 v2, 0x7

    goto :goto_13

    nop

    :goto_1b
    goto :goto_2b

    :goto_1c
    goto :goto_36

    nop

    :goto_1d
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    :goto_1e
    goto :goto_16

    nop

    :goto_1f
    const/4 v3, 0x1

    goto :goto_2d

    nop

    :goto_20
    return-object v1

    :goto_21
    goto :goto_2f

    nop

    :goto_22
    if-ne v1, v3, :cond_6

    goto :goto_31

    :cond_6
    goto :goto_30

    nop

    :goto_23
    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    goto :goto_1

    nop

    :goto_24
    const/4 v3, 0x2

    goto :goto_27

    nop

    :goto_25
    const-string v5, "android.dock_home"

    goto :goto_28

    nop

    :goto_26
    if-nez v4, :cond_7

    goto :goto_9

    :cond_7
    goto :goto_7

    nop

    :goto_27
    if-eq v1, v3, :cond_8

    goto :goto_1c

    :cond_8
    goto :goto_1b

    nop

    :goto_28
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    goto :goto_11

    nop

    :goto_29
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->getDockMode()I

    move-result v1

    goto :goto_1f

    nop

    :goto_2a
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrHeadsetHomeIntent:Landroid/content/Intent;

    :goto_2b
    goto :goto_d

    nop

    :goto_2c
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    goto :goto_24

    nop

    :goto_2d
    if-ne v1, v3, :cond_9

    goto :goto_31

    :cond_9
    goto :goto_3a

    nop

    :goto_2e
    const/4 v0, 0x0

    goto :goto_4

    nop

    :goto_2f
    const/4 v2, 0x0

    goto :goto_12

    nop

    :goto_30
    if-eq v1, v2, :cond_a

    goto :goto_1e

    :cond_a
    :goto_31
    goto :goto_1d

    nop

    :goto_32
    return-object v1

    :goto_33
    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    goto :goto_c

    nop

    :goto_34
    goto :goto_2b

    :goto_35
    goto :goto_2c

    nop

    :goto_36
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    goto :goto_37

    nop

    :goto_37
    const/4 v3, 0x6

    goto :goto_14

    nop

    :goto_38
    new-instance v1, Landroid/content/Intent;

    goto :goto_18

    nop

    :goto_39
    if-eqz v0, :cond_b

    goto :goto_21

    :cond_b
    goto :goto_20

    nop

    :goto_3a
    const/4 v3, 0x4

    goto :goto_22

    nop

    :goto_3b
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    goto :goto_34

    nop

    :goto_3c
    if-nez v3, :cond_c

    goto :goto_b

    :cond_c
    goto :goto_a

    nop
.end method

.method public createKeyguardWallpaperExit(Z)Landroid/view/animation/Animation;
    .registers 4

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const v1, 0x10a0071

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public dismissKeyguardLw(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->dismiss(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    :try_start_0
    invoke-interface {p1}, Lcom/android/internal/policy/IKeyguardDismissCallback;->onDismissError()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "WindowManager"

    const-string v2, "Failed to call callback"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method dispatchMediaKeyRepeatWithWakeLock(Landroid/view/KeyEvent;)V
    .registers 6

    goto :goto_7

    nop

    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    nop

    :goto_1
    const/4 v3, 0x1

    goto :goto_11

    nop

    :goto_2
    sget-boolean v1, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    goto :goto_a

    nop

    :goto_3
    const-string v2, "WindowManager"

    goto :goto_8

    nop

    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    goto :goto_10

    nop

    :goto_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    goto :goto_12

    nop

    :goto_6
    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V

    goto :goto_e

    nop

    :goto_7
    const/4 v0, 0x0

    goto :goto_d

    nop

    :goto_8
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9
    goto :goto_6

    nop

    :goto_a
    if-nez v1, :cond_0

    goto :goto_9

    :cond_0
    goto :goto_4

    nop

    :goto_b
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_14

    nop

    :goto_c
    const-string v2, "dispatchMediaKeyRepeatWithWakeLock: "

    goto :goto_f

    nop

    :goto_d
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    nop

    goto :goto_5

    nop

    :goto_e
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_b

    nop

    :goto_f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    goto :goto_13

    nop

    :goto_10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_c

    nop

    :goto_11
    invoke-static {p1, v0, v1, v3, v2}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JII)Landroid/view/KeyEvent;

    move-result-object v0

    goto :goto_2

    nop

    :goto_12
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    goto :goto_15

    nop

    :goto_13
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    goto :goto_0

    nop

    :goto_14
    return-void

    :goto_15
    or-int/lit16 v2, v2, 0x80

    goto :goto_1

    nop
.end method

.method dispatchMediaKeyWithWakeLock(Landroid/view/KeyEvent;)V
    .registers 6

    goto :goto_2

    nop

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    goto :goto_1d

    nop

    :goto_1
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    goto :goto_11

    nop

    :goto_2
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    goto :goto_d

    nop

    :goto_3
    if-nez v0, :cond_0

    goto :goto_1c

    :cond_0
    goto :goto_18

    nop

    :goto_4
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :goto_5
    goto :goto_10

    nop

    :goto_6
    if-eqz v0, :cond_1

    goto :goto_c

    :cond_1
    goto :goto_a

    nop

    :goto_7
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    goto :goto_1a

    nop

    :goto_8
    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v2

    goto :goto_2c

    nop

    :goto_9
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    goto :goto_26

    nop

    :goto_a
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    goto :goto_f

    nop

    :goto_b
    goto :goto_5

    :goto_c
    goto :goto_2d

    nop

    :goto_d
    const-string v1, "WindowManager"

    goto :goto_3

    nop

    :goto_e
    const-string v2, "dispatchMediaKeyWithWakeLock: "

    goto :goto_19

    nop

    :goto_f
    if-eqz v0, :cond_2

    goto :goto_c

    :cond_2
    goto :goto_1e

    nop

    :goto_10
    return-void

    :goto_11
    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    goto :goto_20

    nop

    :goto_12
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    goto :goto_6

    nop

    :goto_13
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_2a

    nop

    :goto_14
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    goto :goto_27

    nop

    :goto_15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_e

    nop

    :goto_16
    const-string v0, "dispatchMediaKeyWithWakeLock: canceled repeat"

    goto :goto_21

    nop

    :goto_17
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_b

    nop

    :goto_18
    new-instance v0, Ljava/lang/StringBuilder;

    goto :goto_15

    nop

    :goto_19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    goto :goto_0

    nop

    :goto_1a
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_25

    nop

    :goto_1b
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1c
    goto :goto_14

    nop

    :goto_1d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    nop

    :goto_1e
    const/4 v0, 0x1

    goto :goto_24

    nop

    :goto_1f
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    goto :goto_13

    nop

    :goto_20
    invoke-virtual {v1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    goto :goto_28

    nop

    :goto_21
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_22
    goto :goto_7

    nop

    :goto_23
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V

    goto :goto_12

    nop

    :goto_24
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    goto :goto_1

    nop

    :goto_25
    const/4 v0, 0x0

    goto :goto_1f

    nop

    :goto_26
    if-nez v0, :cond_3

    goto :goto_22

    :cond_3
    goto :goto_16

    nop

    :goto_27
    const/4 v2, 0x4

    goto :goto_29

    nop

    :goto_28
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    goto :goto_8

    nop

    :goto_29
    if-nez v0, :cond_4

    goto :goto_2b

    :cond_4
    goto :goto_9

    nop

    :goto_2a
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :goto_2b
    goto :goto_23

    nop

    :goto_2c
    int-to-long v2, v2

    goto :goto_17

    nop

    :goto_2d
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_4

    nop
.end method

.method dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V
    .registers 4

    goto :goto_0

    nop

    :goto_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    goto :goto_8

    nop

    :goto_1
    if-nez v0, :cond_0

    goto :goto_4

    :cond_0
    goto :goto_7

    nop

    :goto_2
    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    goto :goto_5

    nop

    :goto_3
    invoke-virtual {v0, p1, v1}, Landroid/media/session/MediaSessionLegacyHelper;->sendMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    :goto_4
    goto :goto_6

    nop

    :goto_5
    const/4 v1, 0x1

    goto :goto_3

    nop

    :goto_6
    return-void

    :goto_7
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    goto :goto_2

    nop

    :goto_8
    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v0

    goto :goto_1

    nop
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSafeMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSafeMode:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mSystemReady="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemReady:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mSystemBooted="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCameraLensCoverState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    invoke-static {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->cameraLensStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mWakeGestureEnabledSetting="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureEnabledSetting:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mUiMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    invoke-static {v0}, Landroid/content/res/Configuration;->uiModeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEnableCarDockHomeCapture="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mEnableCarDockHomeCapture:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLidKeyboardAccessibility="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidKeyboardAccessibility:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mLidNavigationAccessibility="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidNavigationAccessibility:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " getLidBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getLidBehavior()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->lidBehaviorToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLongPressOnBackBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnBackBehavior:I

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->longPressOnBackBehaviorToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLongPressOnHomeBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->longPressOnHomeBehaviorToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDoubleTapOnHomeBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->doubleTapOnHomeBehaviorToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mShortPressOnPowerBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnPowerBehavior:I

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->shortPressOnPowerBehaviorToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLongPressOnPowerBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->longPressOnPowerBehaviorToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSettingsKeyBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSettingsKeyBehavior:I

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->settingsKeyBehaviorToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLongPressOnPowerAssistantTimeoutMs="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerAssistantTimeoutMs:J

    invoke-virtual {p2, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mVeryLongPressOnPowerBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressOnPowerBehavior:I

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->veryLongPressOnPowerBehaviorToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDoublePressOnPowerBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->multiPressOnPowerBehaviorToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTriplePressOnPowerBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->multiPressOnPowerBehaviorToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSupportShortPressPowerWhenDefaultDisplayOn="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSupportShortPressPowerWhenDefaultDisplayOn:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPowerVolUpBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerVolUpBehavior:I

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->powerVolumeUpBehaviorToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mShortPressOnSleepBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnSleepBehavior:I

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->shortPressOnSleepBehaviorToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mShortPressOnWindowBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnWindowBehavior:I

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->shortPressOnWindowBehaviorToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mShortPressOnStemPrimaryBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnStemPrimaryBehavior:I

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->shortPressOnStemPrimaryBehaviorToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDoublePressOnStemPrimaryBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnStemPrimaryBehavior:I

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->doublePressOnStemPrimaryBehaviorToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTriplePressOnStemPrimaryBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnStemPrimaryBehavior:I

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->triplePressOnStemPrimaryBehaviorToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLongPressOnStemPrimaryBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnStemPrimaryBehavior:I

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->longPressOnStemPrimaryBehaviorToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAllowStartActivityForLongPressOnPowerDuringSetup="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowStartActivityForLongPressOnPowerDuringSetup:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHasSoftInput="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDismissImeOnBackKeyPressed="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDismissImeOnBackKeyPressed:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mIncallPowerBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallPowerBehavior:I

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->incallPowerBehaviorToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mIncallBackBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallBackBehavior:I

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->incallBackBehaviorToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mEndcallBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mEndcallBehavior:I

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->endcallBehaviorToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDisplayHomeButtonHandlers="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayHomeButtonHandlers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const-string v2, "  "

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayHomeButtonHandlers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayHomeButtonHandlers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mKeyguardOccluded="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardOccluded()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mKeyguardOccludedChanged="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccludedChanged:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mPendingKeyguardOccluded="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingKeyguardOccluded:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAllowLockscreenWhenOnDisplays="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowLockscreenWhenOnDisplays:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mLockScreenTimeout="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mLockScreenTimerActive="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimerActive:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mKidsModeEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKidsModeEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/GlobalKeyManager;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/KeyCombinationManager;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/SingleKeyGestureDetector;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeferredKeyActionExecutor:Lcom/android/server/policy/DeferredKeyActionExecutor;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/DeferredKeyActionExecutor;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    invoke-virtual {v0, p2, p1}, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBurnInProtectionHelper:Lcom/android/server/policy/BurnInProtectionHelper;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBurnInProtectionHelper:Lcom/android/server/policy/BurnInProtectionHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/BurnInProtectionHelper;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_3
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Looper state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Landroid/util/PrintWriterPrinter;

    invoke-direct {v1, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Looper;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->modifierShortcutDump()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mModifierShortcutManager:Lcom/android/server/policy/ModifierShortcutManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/ModifierShortcutManager;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_4
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayRotation;->getUserRotationMode()I

    move-result v2

    const-wide v3, 0x10e00000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayRotation;->getUserRotation()I

    move-result v2

    const-wide v3, 0x10e00000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayRotation;->getCurrentAppOrientation()I

    move-result v2

    const-wide v3, 0x10e00000004L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayPolicy;->isScreenOnFully()Z

    move-result v2

    const-wide v3, 0x10800000005L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayPolicy;->isKeyguardDrawComplete()Z

    move-result v2

    const-wide v3, 0x10800000006L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayPolicy;->isWindowManagerDrawComplete()Z

    move-result v2

    const-wide v3, 0x10800000007L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v2, 0x1080000000cL

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardOccluded()Z

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v2, 0x1080000000dL

    iget-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccludedChanged:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v2, 0x1080000000eL

    iget-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingKeyguardOccluded:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    const-wide v3, 0x10b00000014L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_0
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public enableKeyguard(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setKeyguardEnabled(Z)V

    :cond_0
    return-void
.end method

.method public enableScreenAfterBoot()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->readLidState()V

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->applyLidSwitchState()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(Z)V

    return-void
.end method

.method public exitKeyguardSecurely(Lcom/android/server/policy/WindowManagerPolicy$OnKeyguardExitResult;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->verifyUnlock(Lcom/android/server/policy/WindowManagerPolicy$OnKeyguardExitResult;)V

    :cond_0
    return-void
.end method

.method public finishedDisplayStateON(I)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Finished setting display state ... (groupId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->finishedDisplayStateON()V

    :cond_1
    return-void
.end method

.method public finishedGoingToSleep(II)V
    .registers 7

    if-nez p1, :cond_3

    invoke-static {}, Lcom/android/server/policy/PhoneWindowManagerStub;->getInstance()Lcom/android/server/policy/PhoneWindowManagerStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/policy/PhoneWindowManagerStub;->isInHangUpState()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/policy/EventLogTags;->writeScreenToggled(I)V

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finished going to sleep... (groupId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " why="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Landroid/view/WindowManagerPolicyConstants;->translateSleepReasonToOffReason(I)I

    move-result v3

    invoke-static {v3}, Landroid/view/WindowManagerPolicyConstants;->offReasonToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "screen_timeout"

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    div-int/lit16 v3, v3, 0x3e8

    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRequestedOrSleepingDefaultDisplay:Z

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mIsGoingToSleepDefaultDisplay:Z

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayPolicy;->setAwake(Z)V

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateWakeGestureListenerLp()V

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateLockScreenTimeout()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListener()V

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerButtonLaunchGestureTriggeredDuringGoingToSleep:Z

    invoke-virtual {v1, p2, v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onFinishedGoingToSleep(IZ)V

    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

    invoke-virtual {v1}, Lcom/android/server/policy/DisplayFoldController;->finishedGoingToSleep()V

    :cond_2
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerButtonLaunchGestureTriggeredDuringGoingToSleep:Z

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerButtonLaunchGestureTriggered:Z

    invoke-static {}, Lcom/android/server/policy/PhoneWindowManagerStub;->getInstance()Lcom/android/server/policy/PhoneWindowManagerStub;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/server/policy/PhoneWindowManagerStub;->setIsGoingToSleep(Z)V

    invoke-static {}, Lcom/android/server/am/SmartPowerServiceStub;->getInstance()Lcom/android/server/am/SmartPowerServiceStub;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/android/server/am/SmartPowerServiceStub;->onActionEnd(IJ)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    :goto_0
    return-void
.end method

.method public finishedGoingToSleepGlobal(I)V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeviceGoingToSleep:Z

    return-void
.end method

.method public finishedWakingUp(II)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Finished waking up... (groupId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " why="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Landroid/view/WindowManagerPolicyConstants;->translateWakeReasonToOnReason(I)I

    move-result v1

    invoke-static {v1}, Landroid/view/WindowManagerPolicyConstants;->onReasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onFinishedWakingUp()V

    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

    invoke-virtual {v0}, Lcom/android/server/policy/DisplayFoldController;->finishedWakingUp()V

    :cond_2
    return-void
.end method

.method public finishedWakingUpGlobal(I)V
    .registers 2

    return-void
.end method

.method getAccessibilityManagerInternal()Lcom/android/server/AccessibilityManagerInternal;
    .registers 3

    goto :goto_2

    nop

    :goto_0
    throw v1

    :goto_1
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManagerInternal:Lcom/android/server/AccessibilityManagerInternal;

    if-nez v1, :cond_0

    const-class v1, Lcom/android/server/AccessibilityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AccessibilityManagerInternal;

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManagerInternal:Lcom/android/server/AccessibilityManagerInternal;

    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManagerInternal:Lcom/android/server/AccessibilityManagerInternal;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    nop

    :goto_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mServiceAcquireLock:Ljava/lang/Object;

    goto :goto_1

    nop
.end method

.method public getApplicationLaunchKeyboardShortcuts(I)Landroid/view/KeyboardShortcutGroup;
    .registers 4

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->useKeyGestureEventHandler()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mModifierShortcutManager:Lcom/android/server/policy/ModifierShortcutManager;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v1}, Landroid/hardware/input/InputManager;->getAppLaunchBookmarks()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/policy/ModifierShortcutManager;->getApplicationLaunchKeyboardShortcuts(ILjava/util/List;)Landroid/view/KeyboardShortcutGroup;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mModifierShortcutManager:Lcom/android/server/policy/ModifierShortcutManager;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/ModifierShortcutManager;->getApplicationLaunchKeyboardShortcuts(I)Landroid/view/KeyboardShortcutGroup;

    move-result-object v0

    return-object v0
.end method

.method getAudioManagerInternal()Landroid/media/AudioManagerInternal;
    .registers 3

    goto :goto_2

    nop

    :goto_0
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    if-nez v1, :cond_0

    const-class v1, Landroid/media/AudioManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManagerInternal;

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    nop

    :goto_1
    throw v1

    :goto_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mServiceAcquireLock:Ljava/lang/Object;

    goto :goto_0

    nop
.end method

.method public getFoldedArea()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

    invoke-virtual {v0}, Lcom/android/server/policy/DisplayFoldController;->getFoldedArea()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    return-object v0
.end method

.method public getLockScreenTimeout()J
    .registers 3

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    int-to-long v0, v0

    return-wide v0
.end method

.method getNotificationService()Landroid/app/NotificationManager;
    .registers 3

    goto :goto_4

    nop

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3

    nop

    :goto_1
    return-object v0

    :goto_2
    const-class v1, Landroid/app/NotificationManager;

    goto :goto_0

    nop

    :goto_3
    check-cast v0, Landroid/app/NotificationManager;

    goto :goto_1

    nop

    :goto_4
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    goto :goto_2

    nop
.end method

.method getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;
    .registers 3

    goto :goto_1

    nop

    :goto_0
    throw v1

    :goto_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mServiceAcquireLock:Ljava/lang/Object;

    goto :goto_2

    nop

    :goto_2
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-nez v1, :cond_0

    const-class v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    nop
.end method

.method getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .registers 3

    goto :goto_1

    nop

    :goto_0
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v1, :cond_0

    const-string v1, "statusbar"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    nop

    :goto_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mServiceAcquireLock:Ljava/lang/Object;

    goto :goto_0

    nop

    :goto_2
    throw v1
.end method

.method getTelecommService()Landroid/telecom/TelecomManager;
    .registers 3

    goto :goto_3

    nop

    :goto_0
    const-string v1, "telecom"

    goto :goto_1

    nop

    :goto_1
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    nop

    :goto_2
    check-cast v0, Landroid/telecom/TelecomManager;

    goto :goto_4

    nop

    :goto_3
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    goto :goto_0

    nop

    :goto_4
    return-object v0
.end method

.method public getUiMode()I
    .registers 2

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    return v0
.end method

.method goHome()Z
    .registers 24

    goto :goto_c

    nop

    :goto_0
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v0

    goto :goto_8

    nop

    :goto_1
    if-eqz v0, :cond_0

    goto :goto_e

    :cond_0
    goto :goto_f

    nop

    :goto_2
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    nop

    :goto_3
    return v4

    :goto_4
    return v3

    :goto_5
    goto :goto_a

    nop

    :goto_6
    const/4 v4, 0x1

    :try_start_0
    const-string v0, "persist.sys.uts-test-mode"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_1

    const-string v0, "UTS-TEST-MODE"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->stopAppSwitches()V

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows()V

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->createHomeDockIntent()Landroid/content/Intent;

    move-result-object v0

    move-object v9, v0

    if-eqz v9, :cond_2

    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v5

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v8

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v10

    const/4 v6, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, -0x2

    invoke-interface/range {v5 .. v17}, Landroid/app/IActivityTaskManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v0

    if-ne v0, v4, :cond_2

    return v3

    :cond_2
    :goto_7
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v10

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v12

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v13

    iget-object v14, v1, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    iget-object v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v15

    const/4 v11, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, -0x2

    invoke-interface/range {v10 .. v22}, Landroid/app/IActivityTaskManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_10

    nop

    :goto_8
    const-string v2, "WindowManager"

    goto :goto_9

    nop

    :goto_9
    const/4 v3, 0x0

    goto :goto_1

    nop

    :goto_a
    goto :goto_b

    :catch_0
    move-exception v0

    :goto_b
    goto :goto_3

    nop

    :goto_c
    move-object/from16 v1, p0

    goto :goto_0

    nop

    :goto_d
    return v3

    :goto_e
    goto :goto_6

    nop

    :goto_f
    const-string v0, "Not going home because user setup is in progress."

    goto :goto_2

    nop

    :goto_10
    if-eq v0, v4, :cond_3

    goto :goto_5

    :cond_3
    goto :goto_4

    nop
.end method

.method handleKeyGestureEvent(Landroid/hardware/input/KeyGestureEvent;Landroid/os/IBinder;)V
    .registers 19

    goto :goto_83

    nop

    :goto_0
    if-nez v7, :cond_0

    goto :goto_131

    :cond_0
    nop

    goto :goto_69

    nop

    :goto_1
    move-object/from16 v2, p1

    goto :goto_109

    nop

    :goto_2
    move-object/from16 v15, p2

    goto :goto_12e

    nop

    :goto_3
    move-object/from16 v2, p1

    goto :goto_b

    nop

    :goto_4
    move-object/from16 v2, p1

    goto :goto_c

    nop

    :goto_5
    move-object/from16 v2, p1

    goto :goto_160

    nop

    :goto_6
    move v3, v6

    goto :goto_a9

    nop

    :goto_7
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v0

    goto :goto_2e

    nop

    :goto_8
    invoke-direct {v1, v0, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->isKeyEventForCurrentUser(IILjava/lang/String;)Z

    move-result v0

    goto :goto_13

    nop

    :goto_9
    move-object/from16 v15, p2

    goto :goto_40

    nop

    :goto_a
    invoke-direct {v1, v4, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->interceptScreenshotChord(IJ)V

    goto :goto_162

    nop

    :goto_b
    move v3, v5

    goto :goto_126

    nop

    :goto_c
    move-object/from16 v15, p2

    goto :goto_19a

    nop

    :goto_d
    if-nez v7, :cond_1

    goto :goto_170

    :cond_1
    goto :goto_c4

    nop

    :goto_e
    if-nez v8, :cond_2

    goto :goto_d1

    :cond_2
    goto :goto_46

    nop

    :goto_f
    if-nez v0, :cond_3

    goto :goto_3d

    :cond_3
    :try_start_0
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mActivityManagerService:Landroid/app/IActivityManager;

    invoke-interface {v0}, Landroid/app/IActivityManager;->launchBugReportHandlerApp()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mActivityManagerService:Landroid/app/IActivityManager;

    invoke-interface {v0}, Landroid/app/IActivityManager;->requestInteractiveBugReport()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8f

    nop

    :goto_10
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/input/KeyGestureEvent;->getKeyGestureType()I

    move-result v9

    goto :goto_d2

    nop

    :goto_11
    goto :goto_1ac

    :goto_12
    goto :goto_139

    nop

    :goto_13
    if-nez v0, :cond_4

    goto :goto_1c3

    :cond_4
    goto :goto_87

    nop

    :goto_14
    const-string v14, "Key gesture DND"

    goto :goto_1de

    nop

    :goto_15
    move-object/from16 v2, p1

    goto :goto_18f

    nop

    :goto_16
    move v3, v5

    goto :goto_23

    nop

    :goto_17
    if-nez v0, :cond_5

    goto :goto_148

    :cond_5
    goto :goto_147

    nop

    :goto_18
    move-object/from16 v2, p1

    goto :goto_38

    nop

    :goto_19
    move-object/from16 v2, p1

    goto :goto_b6

    nop

    :goto_1a
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/input/KeyGestureEvent;->getKeycodes()[I

    move-result-object v3

    goto :goto_196

    nop

    :goto_1b
    goto :goto_1ac

    :goto_1c
    goto :goto_1

    nop

    :goto_1d
    const/16 v0, 0x2713

    goto :goto_1a9

    nop

    :goto_1e
    move v3, v5

    goto :goto_182

    nop

    :goto_1f
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/input/KeyGestureEvent;->getDeviceId()I

    move-result v5

    goto :goto_10

    nop

    :goto_20
    if-nez v8, :cond_6

    goto :goto_ac

    :cond_6
    goto :goto_e1

    nop

    :goto_21
    move-object/from16 v2, p1

    goto :goto_a2

    nop

    :goto_22
    move v3, v5

    goto :goto_12f

    nop

    :goto_23
    goto :goto_1ac

    :sswitch_0
    goto :goto_142

    nop

    :goto_24
    move v3, v6

    goto :goto_187

    nop

    :goto_25
    invoke-direct {v1}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    goto :goto_dd

    nop

    :goto_26
    goto :goto_1ac

    :sswitch_1
    goto :goto_149

    nop

    :goto_27
    if-eq v0, v3, :cond_7

    goto :goto_5a

    :cond_7
    goto :goto_1cd

    nop

    :goto_28
    move-object/from16 v2, p1

    goto :goto_47

    nop

    :goto_29
    move-object/from16 v2, p1

    goto :goto_1b8

    nop

    :goto_2a
    invoke-virtual {v2, v0}, Lcom/android/server/policy/ModifierShortcutManager;->launchApplication(Landroid/hardware/input/AppLaunchData;)Z

    move-result v2

    goto :goto_15f

    nop

    :goto_2b
    goto :goto_1ac

    :sswitch_2
    goto :goto_132

    nop

    :goto_2c
    new-instance v2, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda4;

    goto :goto_1b5

    nop

    :goto_2d
    move-object/from16 v15, p2

    goto :goto_1cb

    nop

    :goto_2e
    if-nez v0, :cond_8

    goto :goto_ae

    :cond_8
    goto :goto_145

    nop

    :goto_2f
    move v6, v5

    goto :goto_137

    nop

    :goto_30
    move v3, v5

    goto :goto_185

    nop

    :goto_31
    move-object/from16 v2, p1

    goto :goto_19c

    nop

    :goto_32
    goto :goto_1ac

    :sswitch_3
    goto :goto_6b

    nop

    :goto_33
    invoke-direct {v1, v10, v15, v3}, Lcom/android/server/policy/PhoneWindowManager;->sendSwitchKeyboardLayout(ILandroid/os/IBinder;I)V

    goto :goto_15

    nop

    :goto_34
    invoke-direct {v1, v0, v3}, Lcom/android/server/policy/PhoneWindowManager;->moveFocusedTaskToStageSplit(IZ)V

    goto :goto_1af

    nop

    :goto_35
    const-wide/16 v2, 0x0

    goto :goto_a

    nop

    :goto_36
    goto :goto_1ac

    :goto_37
    goto :goto_71

    nop

    :goto_38
    move v3, v6

    goto :goto_130

    nop

    :goto_39
    move v3, v5

    goto :goto_a3

    nop

    :goto_3a
    move-object/from16 v15, p2

    goto :goto_1c4

    nop

    :goto_3b
    if-nez v8, :cond_9

    goto :goto_1c

    :cond_9
    goto :goto_76

    nop

    :goto_3c
    goto :goto_1ac

    :goto_3d
    goto :goto_d8

    nop

    :goto_3e
    goto :goto_1ac

    :goto_3f
    goto :goto_6c

    nop

    :goto_40
    move v3, v5

    goto :goto_154

    nop

    :goto_41
    const-string v2, "Error taking bugreport"

    goto :goto_de

    nop

    :goto_42
    move-object/from16 v2, p1

    goto :goto_158

    nop

    :goto_43
    invoke-interface {v0, v6}, Ljava/util/stream/IntStream;->anyMatch(Ljava/util/function/IntPredicate;)Z

    move-result v0

    goto :goto_17

    nop

    :goto_44
    if-nez v0, :cond_a

    goto :goto_f8

    :cond_a
    nop

    goto :goto_1c8

    nop

    :goto_45
    goto :goto_1ac

    :sswitch_4
    goto :goto_fc

    nop

    :goto_46
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mTalkbackShortcutController:Lcom/android/server/policy/TalkbackShortcutController;

    goto :goto_1a0

    nop

    :goto_47
    move v3, v6

    goto :goto_3e

    nop

    :goto_48
    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    goto :goto_66

    nop

    :goto_49
    move-object/from16 v15, p2

    goto :goto_f9

    nop

    :goto_4a
    invoke-direct {v1}, Lcom/android/server/policy/PhoneWindowManager;->cancelBugreportGestureTv()V

    goto :goto_a1

    nop

    :goto_4b
    move-object/from16 v15, p2

    goto :goto_17d

    nop

    :goto_4c
    move-object/from16 v2, p1

    goto :goto_b1

    nop

    :goto_4d
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    goto :goto_14c

    nop

    :goto_4e
    const/4 v6, 0x0

    goto :goto_115

    nop

    :goto_4f
    move-object/from16 v15, p2

    goto :goto_f0

    nop

    :goto_50
    move v3, v5

    goto :goto_c1

    nop

    :goto_51
    if-nez v8, :cond_b

    goto :goto_9c

    :cond_b
    goto :goto_102

    nop

    :goto_52
    const/4 v2, 0x0

    goto :goto_7b

    nop

    :goto_53
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_96

    nop

    :goto_54
    goto :goto_1ac

    :goto_55
    goto :goto_85

    nop

    :goto_56
    move-object/from16 v2, p1

    goto :goto_8a

    nop

    :goto_57
    move v6, v5

    goto :goto_f1

    nop

    :goto_58
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_16
        0x2 -> :sswitch_14
        0x3 -> :sswitch_17
        0x4 -> :sswitch_11
        0x5 -> :sswitch_b
        0x6 -> :sswitch_b
        0x7 -> :sswitch_a
        0x8 -> :sswitch_4
        0xa -> :sswitch_9
        0xb -> :sswitch_0
        0xc -> :sswitch_13
        0xd -> :sswitch_15
        0xe -> :sswitch_15
        0x15 -> :sswitch_1
        0x16 -> :sswitch_1b
        0x17 -> :sswitch_c
        0x1b -> :sswitch_6
        0x1c -> :sswitch_8
        0x1f -> :sswitch_7
        0x20 -> :sswitch_12
        0x33 -> :sswitch_e
        0x34 -> :sswitch_1a
        0x35 -> :sswitch_18
        0x36 -> :sswitch_5
        0x38 -> :sswitch_19
        0x39 -> :sswitch_10
        0x3b -> :sswitch_3
        0x3c -> :sswitch_f
        0x3d -> :sswitch_2
        0x3f -> :sswitch_1c
        0x4b -> :sswitch_d
        0x4c -> :sswitch_1d
    .end sparse-switch

    :goto_59
    goto :goto_15d

    :goto_5a
    goto :goto_15c

    nop

    :goto_5b
    move v3, v5

    goto :goto_54

    nop

    :goto_5c
    const-string v4, " that was not registered by this handler"

    goto :goto_10a

    nop

    :goto_5d
    goto :goto_1ac

    :goto_5e
    goto :goto_cf

    nop

    :goto_5f
    move-object/from16 v2, p1

    goto :goto_a8

    nop

    :goto_60
    move v3, v5

    goto :goto_104

    nop

    :goto_61
    move-object/from16 v2, p1

    goto :goto_134

    nop

    :goto_62
    goto :goto_1ac

    :goto_63
    goto :goto_5

    nop

    :goto_64
    move-object/from16 v2, p1

    goto :goto_15b

    nop

    :goto_65
    move-object/from16 v2, p1

    goto :goto_49

    nop

    :goto_66
    new-instance v6, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda3;

    goto :goto_b7

    nop

    :goto_67
    if-nez v8, :cond_c

    goto :goto_1c3

    :cond_c
    goto :goto_b5

    nop

    :goto_68
    goto :goto_1ac

    :sswitch_5
    goto :goto_97

    nop

    :goto_69
    move v6, v5

    goto :goto_14a

    nop

    :goto_6a
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/input/KeyGestureEvent;->getKeycodes()[I

    move-result-object v0

    goto :goto_48

    nop

    :goto_6b
    if-nez v7, :cond_d

    goto :goto_180

    :cond_d
    goto :goto_1b0

    nop

    :goto_6c
    move-object/from16 v2, p1

    goto :goto_1df

    nop

    :goto_6d
    invoke-direct {v1, v10, v3}, Lcom/android/server/policy/PhoneWindowManager;->changeDisplayBrightnessValue(II)V

    goto :goto_163

    nop

    :goto_6e
    move-object/from16 v15, p2

    goto :goto_8b

    nop

    :goto_6f
    if-nez v8, :cond_e

    goto :goto_14f

    :cond_e
    goto :goto_ed

    nop

    :goto_70
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->getNotificationService()Landroid/app/NotificationManager;

    move-result-object v0

    goto :goto_11b

    nop

    :goto_71
    move-object/from16 v2, p1

    goto :goto_1d5

    nop

    :goto_72
    goto :goto_1ac

    :goto_73
    goto :goto_10b

    nop

    :goto_74
    move-object/from16 v15, p2

    goto :goto_ca

    nop

    :goto_75
    move-object/from16 v15, p2

    goto :goto_22

    nop

    :goto_76
    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->getTargetDisplayIdForKeyGestureEvent(Landroid/hardware/input/KeyGestureEvent;)I

    move-result v0

    goto :goto_ef

    nop

    :goto_77
    move-object/from16 v2, p1

    goto :goto_1a4

    nop

    :goto_78
    goto :goto_1ac

    :sswitch_6
    goto :goto_51

    nop

    :goto_79
    move-object/from16 v2, p1

    goto :goto_199

    nop

    :goto_7a
    if-nez v8, :cond_f

    goto :goto_1c1

    :cond_f
    goto :goto_9e

    nop

    :goto_7b
    const/4 v3, 0x1

    goto :goto_27

    nop

    :goto_7c
    move-object/from16 v2, p1

    goto :goto_ce

    nop

    :goto_7d
    goto :goto_1ac

    :sswitch_7
    goto :goto_1d7

    nop

    :goto_7e
    move-object/from16 v15, p2

    goto :goto_167

    nop

    :goto_7f
    invoke-interface {v0, v2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->moveFocusedTaskToDesktop(I)V

    :goto_80
    goto :goto_cc

    nop

    :goto_81
    goto :goto_1ac

    :goto_82
    goto :goto_42

    nop

    :goto_83
    move-object/from16 v1, p0

    goto :goto_19b

    nop

    :goto_84
    invoke-direct {v1}, Lcom/android/server/policy/PhoneWindowManager;->launchTargetSearchActivity()V

    goto :goto_155

    nop

    :goto_85
    invoke-direct {v1, v3, v2}, Lcom/android/server/policy/PhoneWindowManager;->hideRecentApps(ZZ)V

    goto :goto_c0

    nop

    :goto_86
    invoke-virtual {v0, v2, v3}, Lcom/android/server/policy/TalkbackShortcutController;->toggleTalkback(ILcom/android/server/policy/TalkbackShortcutController$ShortcutSource;)Z

    goto :goto_5f

    nop

    :goto_87
    invoke-direct {v1}, Lcom/android/server/policy/PhoneWindowManager;->launchAllAppsAction()V

    goto :goto_8c

    nop

    :goto_88
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_aa

    nop

    :goto_89
    invoke-direct {v1, v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(ILjava/lang/String;)V

    goto :goto_e3

    nop

    :goto_8a
    move v3, v5

    goto :goto_15a

    nop

    :goto_8b
    move v3, v5

    goto :goto_16f

    nop

    :goto_8c
    move-object/from16 v2, p1

    goto :goto_18c

    nop

    :goto_8d
    if-nez v8, :cond_10

    goto :goto_bb

    :cond_10
    goto :goto_e0

    nop

    :goto_8e
    move v8, v0

    goto :goto_1f

    nop

    :goto_8f
    goto :goto_df

    :catch_0
    move-exception v0

    goto :goto_41

    nop

    :goto_90
    move-object/from16 v2, p1

    goto :goto_9

    nop

    :goto_91
    goto :goto_e9

    :goto_92
    goto :goto_e8

    nop

    :goto_93
    move-object/from16 v15, p2

    goto :goto_143

    nop

    :goto_94
    move-object/from16 v2, p1

    goto :goto_1d1

    nop

    :goto_95
    move-object/from16 v15, p2

    goto :goto_168

    nop

    :goto_96
    const-string v2, "Received a key gesture "

    goto :goto_1c5

    nop

    :goto_97
    if-nez v7, :cond_11

    goto :goto_55

    :cond_11
    goto :goto_194

    nop

    :goto_98
    invoke-direct {v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->showRecentApps(Z)V

    goto :goto_bc

    nop

    :goto_99
    move-object/from16 v2, p1

    goto :goto_1bc

    nop

    :goto_9a
    if-nez v7, :cond_12

    goto :goto_5e

    :cond_12
    goto :goto_a0

    nop

    :goto_9b
    goto :goto_1ac

    :goto_9c
    goto :goto_cd

    nop

    :goto_9d
    move-object/from16 v15, p2

    goto :goto_af

    nop

    :goto_9e
    if-nez v13, :cond_13

    goto :goto_1c1

    :cond_13
    goto :goto_1ce

    nop

    :goto_9f
    if-nez v8, :cond_14

    goto :goto_135

    :cond_14
    goto :goto_136

    nop

    :goto_a0
    invoke-direct {v1}, Lcom/android/server/policy/PhoneWindowManager;->preloadRecentApps()V

    goto :goto_117

    nop

    :goto_a1
    move-object/from16 v2, p1

    goto :goto_2d

    nop

    :goto_a2
    move v3, v6

    goto :goto_62

    nop

    :goto_a3
    goto :goto_1ac

    :goto_a4
    goto :goto_133

    nop

    :goto_a5
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mVoiceAccessShortcutController:Lcom/android/server/policy/VoiceAccessShortcutController;

    goto :goto_161

    nop

    :goto_a6
    invoke-direct {v1}, Lcom/android/server/policy/PhoneWindowManager;->toggleRecentApps()V

    goto :goto_1c9

    nop

    :goto_a7
    goto :goto_1ac

    :sswitch_8
    goto :goto_3b

    nop

    :goto_a8
    move-object/from16 v15, p2

    goto :goto_f3

    nop

    :goto_a9
    goto :goto_1ac

    :sswitch_9
    goto :goto_e2

    nop

    :goto_aa
    move-object/from16 v2, p1

    goto :goto_d9

    nop

    :goto_ab
    goto :goto_1ac

    :goto_ac
    goto :goto_99

    nop

    :goto_ad
    goto :goto_114

    :goto_ae
    goto :goto_113

    nop

    :goto_af
    move v3, v5

    goto :goto_e6

    nop

    :goto_b0
    if-eqz v0, :cond_15

    goto :goto_1dd

    :cond_15
    goto :goto_16c

    nop

    :goto_b1
    move-object/from16 v15, p2

    goto :goto_150

    nop

    :goto_b2
    move v3, v5

    goto :goto_16a

    nop

    :goto_b3
    if-nez v8, :cond_16

    goto :goto_18b

    :cond_16
    goto :goto_11f

    nop

    :goto_b4
    move v3, v5

    goto :goto_36

    nop

    :goto_b5
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/input/KeyGestureEvent;->getDisplayId()I

    move-result v0

    goto :goto_1a

    nop

    :goto_b6
    move-object/from16 v15, p2

    goto :goto_128

    nop

    :goto_b7
    invoke-direct {v6}, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda3;-><init>()V

    goto :goto_43

    nop

    :goto_b8
    goto :goto_1ac

    :sswitch_a
    goto :goto_1b2

    nop

    :goto_b9
    goto :goto_1ac

    :sswitch_b
    goto :goto_184

    nop

    :goto_ba
    goto :goto_1ac

    :goto_bb
    goto :goto_183

    nop

    :goto_bc
    move-object/from16 v2, p1

    goto :goto_1a2

    nop

    :goto_bd
    move-object/from16 v2, p1

    goto :goto_74

    nop

    :goto_be
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    goto :goto_108

    nop

    :goto_bf
    move v13, v0

    goto :goto_105

    nop

    :goto_c0
    move-object/from16 v2, p1

    goto :goto_15e

    nop

    :goto_c1
    if-nez v8, :cond_17

    goto :goto_1a3

    :cond_17
    goto :goto_98

    nop

    :goto_c2
    invoke-direct {v1, v4, v5}, Lcom/android/server/policy/PhoneWindowManager;->injectBackGesture(J)V

    goto :goto_11e

    nop

    :goto_c3
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_94

    nop

    :goto_c4
    invoke-direct {v1}, Lcom/android/server/policy/PhoneWindowManager;->interceptRingerToggleChord()V

    goto :goto_10d

    nop

    :goto_c5
    move-object/from16 v15, p2

    goto :goto_1e0

    nop

    :goto_c6
    move v3, v5

    goto :goto_120

    nop

    :goto_c7
    move-object/from16 v15, p2

    goto :goto_f4

    nop

    :goto_c8
    move v3, v5

    goto :goto_198

    nop

    :goto_c9
    move-object/from16 v2, p1

    goto :goto_95

    nop

    :goto_ca
    move v3, v5

    goto :goto_1c0

    nop

    :goto_cb
    move-object/from16 v2, p1

    goto :goto_173

    nop

    :goto_cc
    move-object/from16 v2, p1

    goto :goto_2

    nop

    :goto_cd
    move-object/from16 v2, p1

    goto :goto_9d

    nop

    :goto_ce
    move v3, v5

    goto :goto_190

    nop

    :goto_cf
    if-nez v8, :cond_18

    goto :goto_16e

    :cond_18
    goto :goto_a6

    nop

    :goto_d0
    goto :goto_1ac

    :goto_d1
    goto :goto_65

    nop

    :goto_d2
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/input/KeyGestureEvent;->getDisplayId()I

    move-result v10

    goto :goto_138

    nop

    :goto_d3
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/input/KeyGestureEvent;->getAction()I

    move-result v0

    goto :goto_197

    nop

    :goto_d4
    move-object/from16 v15, p2

    goto :goto_30

    nop

    :goto_d5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    goto :goto_c2

    nop

    :goto_d6
    move v3, v0

    :goto_d7
    goto :goto_fa

    nop

    :goto_d8
    move-object/from16 v2, p1

    goto :goto_116

    nop

    :goto_d9
    goto :goto_1ac

    :goto_da
    goto :goto_1ab

    nop

    :goto_db
    move v0, v3

    goto :goto_ad

    nop

    :goto_dc
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/input/KeyGestureEvent;->getAppLaunchData()Landroid/hardware/input/AppLaunchData;

    move-result-object v0

    goto :goto_7a

    nop

    :goto_dd
    move-object/from16 v2, p1

    goto :goto_6

    nop

    :goto_de
    invoke-static {v14, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_19
    :goto_df
    goto :goto_106

    nop

    :goto_e0
    if-nez v13, :cond_1a

    goto :goto_bb

    :cond_1a
    goto :goto_84

    nop

    :goto_e1
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    goto :goto_44

    nop

    :goto_e2
    move-object/from16 v15, p2

    goto :goto_57

    nop

    :goto_e3
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->showGlobalActions()V

    goto :goto_181

    nop

    :goto_e4
    if-nez v0, :cond_1b

    goto :goto_80

    :cond_1b
    nop

    goto :goto_101

    nop

    :goto_e5
    move v3, v5

    goto :goto_a7

    nop

    :goto_e6
    goto :goto_1ac

    :sswitch_c
    goto :goto_107

    nop

    :goto_e7
    move-object/from16 v15, p2

    goto :goto_156

    nop

    :goto_e8
    move v3, v0

    :goto_e9
    goto :goto_6d

    nop

    :goto_ea
    move-object/from16 v2, p1

    goto :goto_16

    nop

    :goto_eb
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    goto :goto_5c

    nop

    :goto_ec
    move v3, v6

    goto :goto_45

    nop

    :goto_ed
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    goto :goto_e4

    nop

    :goto_ee
    move-object/from16 v15, p2

    goto :goto_b3

    nop

    :goto_ef
    invoke-direct {v1, v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->moveFocusedTaskToStageSplit(IZ)V

    goto :goto_77

    nop

    :goto_f0
    move v3, v5

    goto :goto_3c

    nop

    :goto_f1
    if-nez v8, :cond_1c

    goto :goto_73

    :cond_1c
    goto :goto_35

    nop

    :goto_f2
    move v6, v5

    goto :goto_153

    nop

    :goto_f3
    move v3, v5

    goto :goto_d0

    nop

    :goto_f4
    move v3, v5

    goto :goto_ab

    nop

    :goto_f5
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    goto :goto_103

    nop

    :goto_f6
    move-object/from16 v2, p1

    goto :goto_c7

    nop

    :goto_f7
    invoke-interface {v0, v2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->moveFocusedTaskToFullscreen(I)V

    :goto_f8
    goto :goto_f6

    nop

    :goto_f9
    move v3, v5

    goto :goto_2b

    nop

    :goto_fa
    move-object/from16 v15, p2

    goto :goto_33

    nop

    :goto_fb
    const/4 v0, -0x1

    goto :goto_12a

    nop

    :goto_fc
    move-object/from16 v15, p2

    goto :goto_f2

    nop

    :goto_fd
    goto :goto_1ac

    :goto_fe
    goto :goto_1aa

    nop

    :goto_ff
    invoke-virtual {v0, v2}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->isAccessibilityShortcutAvailable(Z)Z

    move-result v0

    goto :goto_10e

    nop

    :goto_100
    move v3, v5

    goto :goto_1b3

    nop

    :goto_101
    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->getTargetDisplayIdForKeyGestureEvent(Landroid/hardware/input/KeyGestureEvent;)I

    move-result v2

    goto :goto_7f

    nop

    :goto_102
    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->getTargetDisplayIdForKeyGestureEvent(Landroid/hardware/input/KeyGestureEvent;)I

    move-result v0

    goto :goto_34

    nop

    :goto_103
    invoke-virtual {v0}, Landroid/content/Context;->closeSystemDialogs()V

    goto :goto_4c

    nop

    :goto_104
    goto :goto_1ac

    :sswitch_d
    goto :goto_70

    nop

    :goto_105
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/input/KeyGestureEvent;->isCancelled()Z

    move-result v0

    goto :goto_125

    nop

    :goto_106
    move-object/from16 v2, p1

    goto :goto_4f

    nop

    :goto_107
    if-nez v8, :cond_1d

    goto :goto_fe

    :cond_1d
    goto :goto_13f

    nop

    :goto_108
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v2

    goto :goto_ff

    nop

    :goto_109
    move-object/from16 v15, p2

    goto :goto_1bf

    nop

    :goto_10a
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    goto :goto_191

    nop

    :goto_10b
    move-object/from16 v2, p1

    goto :goto_ec

    nop

    :goto_10c
    move v3, v5

    goto :goto_179

    nop

    :goto_10d
    move-object/from16 v2, p1

    goto :goto_6e

    nop

    :goto_10e
    if-nez v0, :cond_1e

    goto :goto_a4

    :cond_1e
    goto :goto_4d

    nop

    :goto_10f
    move-object/from16 v15, p2

    goto :goto_c6

    nop

    :goto_110
    iget-object v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mModifierShortcutManager:Lcom/android/server/policy/ModifierShortcutManager;

    goto :goto_2a

    nop

    :goto_111
    invoke-static {v14, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d3

    nop

    :goto_112
    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v4

    goto :goto_1cc

    nop

    :goto_113
    move v0, v2

    :goto_114
    goto :goto_bf

    nop

    :goto_115
    invoke-direct/range {v1 .. v6}, Lcom/android/server/policy/PhoneWindowManager;->launchAssistAction(Ljava/lang/String;IJI)V

    goto :goto_61

    nop

    :goto_116
    move-object/from16 v15, p2

    goto :goto_e5

    nop

    :goto_117
    move-object/from16 v2, p1

    goto :goto_5d

    nop

    :goto_118
    if-eq v9, v2, :cond_1f

    goto :goto_92

    :cond_1f
    goto :goto_91

    nop

    :goto_119
    if-nez v7, :cond_20

    goto :goto_16b

    :cond_20
    goto :goto_1d

    nop

    :goto_11a
    move v7, v0

    goto :goto_d3

    nop

    :goto_11b
    if-nez v0, :cond_21

    goto :goto_37

    :cond_21
    goto :goto_112

    nop

    :goto_11c
    invoke-direct {v1, v3, v4, v5}, Lcom/android/server/policy/PhoneWindowManager;->interceptScreenshotChord(IJ)V

    goto :goto_18

    nop

    :goto_11d
    if-nez v13, :cond_22

    goto :goto_63

    :cond_22
    goto :goto_1ca

    nop

    :goto_11e
    move-object/from16 v2, p1

    goto :goto_81

    nop

    :goto_11f
    const/16 v2, 0xd

    goto :goto_118

    nop

    :goto_120
    goto :goto_1ac

    :goto_121
    goto :goto_c9

    nop

    :goto_122
    move v3, v5

    goto :goto_18a

    nop

    :goto_123
    move v3, v5

    goto :goto_17e

    nop

    :goto_124
    move v3, v6

    goto :goto_4e

    nop

    :goto_125
    if-eqz v0, :cond_23

    goto :goto_148

    :cond_23
    goto :goto_6a

    nop

    :goto_126
    goto :goto_1ac

    :goto_127
    goto :goto_ea

    nop

    :goto_128
    move v3, v5

    goto :goto_19e

    nop

    :goto_129
    invoke-virtual {v1, v6}, Lcom/android/server/policy/PhoneWindowManager;->lockNow(Landroid/os/Bundle;)V

    goto :goto_1a7

    nop

    :goto_12a
    const/4 v6, 0x0

    goto :goto_12b

    nop

    :goto_12b
    const-string v14, "WindowManager"

    sparse-switch v9, :sswitch_data_0

    goto :goto_93

    nop

    :goto_12c
    move-object/from16 v15, p2

    goto :goto_50

    nop

    :goto_12d
    if-nez v8, :cond_24

    goto :goto_da

    :cond_24
    goto :goto_1ba

    nop

    :goto_12e
    move v3, v5

    goto :goto_14e

    nop

    :goto_12f
    goto :goto_1ac

    :sswitch_e
    goto :goto_dc

    nop

    :goto_130
    goto :goto_1ac

    :goto_131
    goto :goto_188

    nop

    :goto_132
    if-nez v8, :cond_25

    goto :goto_13b

    :cond_25
    goto :goto_f5

    nop

    :goto_133
    move-object/from16 v2, p1

    goto :goto_e7

    nop

    :goto_134
    goto :goto_1ac

    :goto_135
    goto :goto_24

    nop

    :goto_136
    if-nez v13, :cond_26

    goto :goto_135

    :cond_26
    nop

    goto :goto_166

    nop

    :goto_137
    if-nez v8, :cond_27

    goto :goto_63

    :cond_27
    goto :goto_11d

    nop

    :goto_138
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/input/KeyGestureEvent;->getModifierState()I

    move-result v11

    goto :goto_1d4

    nop

    :goto_139
    move-object/from16 v2, p1

    goto :goto_1d2

    nop

    :goto_13a
    goto :goto_1ac

    :goto_13b
    goto :goto_29

    nop

    :goto_13c
    goto :goto_1ac

    :sswitch_f
    goto :goto_1cf

    nop

    :goto_13d
    goto :goto_1ac

    :sswitch_10
    goto :goto_119

    nop

    :goto_13e
    move-object/from16 v15, p2

    goto :goto_b2

    nop

    :goto_13f
    and-int/lit16 v2, v11, 0xc1

    goto :goto_1ad

    nop

    :goto_140
    move v3, v5

    goto :goto_13c

    nop

    :goto_141
    invoke-virtual {v0, v2}, Lcom/android/server/policy/VoiceAccessShortcutController;->toggleVoiceAccess(I)Z

    goto :goto_1b1

    nop

    :goto_142
    move-object/from16 v15, p2

    goto :goto_0

    nop

    :goto_143
    move v3, v5

    goto :goto_14b

    nop

    :goto_144
    move v4, v3

    goto :goto_1b6

    nop

    :goto_145
    if-eqz v12, :cond_28

    goto :goto_ae

    :cond_28
    goto :goto_db

    nop

    :goto_146
    move v3, v5

    goto :goto_26

    nop

    :goto_147
    iput-boolean v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    :goto_148
    goto :goto_fb

    nop

    :goto_149
    move-object/from16 v15, p2

    goto :goto_67

    nop

    :goto_14a
    invoke-direct {v1}, Lcom/android/server/policy/PhoneWindowManager;->getScreenshotChordLongPressDelay()J

    move-result-wide v4

    goto :goto_11c

    nop

    :goto_14b
    new-instance v0, Ljava/lang/StringBuilder;

    goto :goto_53

    nop

    :goto_14c
    iget-object v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    goto :goto_159

    nop

    :goto_14d
    move-object/from16 v2, p1

    goto :goto_c5

    nop

    :goto_14e
    goto :goto_1ac

    :goto_14f
    goto :goto_1a8

    nop

    :goto_150
    move v3, v5

    goto :goto_13a

    nop

    :goto_151
    goto :goto_1ac

    :sswitch_11
    goto :goto_d4

    nop

    :goto_152
    sget-object v3, Lcom/android/server/policy/TalkbackShortcutController$ShortcutSource;->KEYBOARD:Lcom/android/server/policy/TalkbackShortcutController$ShortcutSource;

    goto :goto_86

    nop

    :goto_153
    if-nez v8, :cond_29

    goto :goto_3f

    :cond_29
    goto :goto_1db

    nop

    :goto_154
    goto :goto_1ac

    :sswitch_12
    goto :goto_17a

    nop

    :goto_155
    move-object/from16 v2, p1

    goto :goto_18e

    nop

    :goto_156
    move v3, v5

    goto :goto_32

    nop

    :goto_157
    goto :goto_1ac

    :sswitch_13
    goto :goto_1d0

    nop

    :goto_158
    goto :goto_1ac

    :sswitch_14
    goto :goto_12c

    nop

    :goto_159
    const/16 v3, 0x11

    goto :goto_1d6

    nop

    :goto_15a
    goto :goto_1ac

    :sswitch_15
    goto :goto_ee

    nop

    :goto_15b
    goto :goto_1ac

    :sswitch_16
    goto :goto_4b

    nop

    :goto_15c
    move v0, v2

    :goto_15d
    goto :goto_11a

    nop

    :goto_15e
    move-object/from16 v15, p2

    goto :goto_10c

    nop

    :goto_15f
    if-nez v2, :cond_2a

    goto :goto_19f

    :cond_2a
    goto :goto_17c

    nop

    :goto_160
    move v3, v6

    goto :goto_b9

    nop

    :goto_161
    iget v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    goto :goto_141

    nop

    :goto_162
    move-object/from16 v2, p1

    goto :goto_1d8

    nop

    :goto_163
    move-object/from16 v2, p1

    goto :goto_122

    nop

    :goto_164
    move v4, v2

    :goto_165
    goto :goto_189

    nop

    :goto_166
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    goto :goto_17b

    nop

    :goto_167
    move v3, v5

    goto :goto_11

    nop

    :goto_168
    move v3, v5

    goto :goto_7d

    nop

    :goto_169
    move-object/from16 v2, p1

    goto :goto_175

    nop

    :goto_16a
    goto :goto_1ac

    :goto_16b
    goto :goto_1b9

    nop

    :goto_16c
    move v0, v3

    goto :goto_1dc

    nop

    :goto_16d
    goto :goto_1ac

    :goto_16e
    goto :goto_31

    nop

    :goto_16f
    goto :goto_1ac

    :goto_170
    goto :goto_1a6

    nop

    :goto_171
    move-object/from16 v15, p2

    goto :goto_8d

    nop

    :goto_172
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/input/KeyGestureEvent;->isCancelled()Z

    move-result v0

    goto :goto_b0

    nop

    :goto_173
    goto :goto_1ac

    :sswitch_17
    goto :goto_1be

    nop

    :goto_174
    move v6, v5

    goto :goto_9f

    nop

    :goto_175
    move-object/from16 v15, p2

    goto :goto_b4

    nop

    :goto_176
    goto :goto_1c7

    :goto_177
    goto :goto_1c6

    nop

    :goto_178
    const-string v3, "launchAllAppsViaA11y"

    goto :goto_8

    nop

    :goto_179
    goto :goto_1ac

    :sswitch_18
    goto :goto_20

    nop

    :goto_17a
    if-nez v8, :cond_2b

    goto :goto_121

    :cond_2b
    goto :goto_129

    nop

    :goto_17b
    const-string v2, "android.intent.extra.ASSIST_INPUT_HINT_KEYBOARD"

    goto :goto_124

    nop

    :goto_17c
    invoke-direct {v1}, Lcom/android/server/policy/PhoneWindowManager;->dismissKeyboardShortcutsMenu()V

    goto :goto_19

    nop

    :goto_17d
    move v3, v5

    goto :goto_12d

    nop

    :goto_17e
    goto :goto_1ac

    :sswitch_19
    goto :goto_d

    nop

    :goto_17f
    goto :goto_1ac

    :goto_180
    goto :goto_4a

    nop

    :goto_181
    move-object/from16 v2, p1

    goto :goto_13e

    nop

    :goto_182
    goto :goto_1ac

    :sswitch_1a
    goto :goto_6f

    nop

    :goto_183
    move-object/from16 v2, p1

    goto :goto_146

    nop

    :goto_184
    move-object/from16 v15, p2

    goto :goto_174

    nop

    :goto_185
    if-eqz v12, :cond_2c

    goto :goto_19d

    :cond_2c
    goto :goto_9a

    nop

    :goto_186
    if-nez v8, :cond_2d

    goto :goto_127

    :cond_2d
    goto :goto_192

    nop

    :goto_187
    move-object/from16 v2, p1

    goto :goto_151

    nop

    :goto_188
    move v6, v5

    goto :goto_25

    nop

    :goto_189
    if-nez v4, :cond_2e

    goto :goto_177

    :cond_2e
    goto :goto_176

    nop

    :goto_18a
    goto :goto_1ac

    :goto_18b
    goto :goto_193

    nop

    :goto_18c
    move v3, v5

    goto :goto_1c2

    nop

    :goto_18d
    move-object/from16 v2, p1

    goto :goto_195

    nop

    :goto_18e
    move v3, v5

    goto :goto_ba

    nop

    :goto_18f
    move v3, v5

    goto :goto_fd

    nop

    :goto_190
    goto :goto_1ac

    :sswitch_1b
    goto :goto_171

    nop

    :goto_191
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_111

    nop

    :goto_192
    invoke-direct {v1, v5}, Lcom/android/server/policy/PhoneWindowManager;->toggleKeyboardShortcutsMenu(I)V

    goto :goto_3

    nop

    :goto_193
    move-object/from16 v2, p1

    goto :goto_1b4

    nop

    :goto_194
    invoke-direct {v1, v3}, Lcom/android/server/policy/PhoneWindowManager;->showRecentApps(Z)V

    goto :goto_79

    nop

    :goto_195
    move-object/from16 v15, p2

    goto :goto_123

    nop

    :goto_196
    aget v2, v3, v2

    goto :goto_178

    nop

    :goto_197
    const/4 v4, 0x2

    goto :goto_1a1

    nop

    :goto_198
    goto :goto_1ac

    :sswitch_1c
    goto :goto_e

    nop

    :goto_199
    move-object/from16 v15, p2

    goto :goto_5b

    nop

    :goto_19a
    move v3, v5

    goto :goto_17f

    nop

    :goto_19b
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/input/KeyGestureEvent;->getAction()I

    move-result v0

    goto :goto_52

    nop

    :goto_19c
    goto :goto_1ac

    :goto_19d
    goto :goto_cb

    nop

    :goto_19e
    goto :goto_1ac

    :goto_19f
    goto :goto_bd

    nop

    :goto_1a0
    iget v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    goto :goto_152

    nop

    :goto_1a1
    if-eq v0, v4, :cond_2f

    goto :goto_1dd

    :cond_2f
    goto :goto_172

    nop

    :goto_1a2
    goto :goto_1ac

    :goto_1a3
    goto :goto_64

    nop

    :goto_1a4
    move-object/from16 v15, p2

    goto :goto_1bd

    nop

    :goto_1a5
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mEnableBugReportKeyboardShortcut:Z

    goto :goto_f

    nop

    :goto_1a6
    invoke-direct {v1}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingRingerToggleChordAction()V

    goto :goto_14d

    nop

    :goto_1a7
    move-object/from16 v2, p1

    goto :goto_10f

    nop

    :goto_1a8
    move-object/from16 v2, p1

    goto :goto_75

    nop

    :goto_1a9
    const-string v2, "KEY_GESTURE_TYPE_GLOBAL_ACTIONS - Global Actions"

    goto :goto_89

    nop

    :goto_1aa
    move-object/from16 v15, p2

    goto :goto_7c

    nop

    :goto_1ab
    move-object/from16 v2, p1

    :goto_1ac
    goto :goto_58

    nop

    :goto_1ad
    if-nez v2, :cond_30

    goto :goto_d7

    :cond_30
    goto :goto_d6

    nop

    :goto_1ae
    move-object/from16 v2, p1

    goto :goto_eb

    nop

    :goto_1af
    move-object/from16 v2, p1

    goto :goto_3a

    nop

    :goto_1b0
    invoke-direct {v1}, Lcom/android/server/policy/PhoneWindowManager;->interceptBugreportGestureTv()V

    goto :goto_4

    nop

    :goto_1b1
    move-object/from16 v2, p1

    goto :goto_7e

    nop

    :goto_1b2
    move-object/from16 v15, p2

    goto :goto_2f

    nop

    :goto_1b3
    if-nez v8, :cond_31

    goto :goto_82

    :cond_31
    goto :goto_d5

    nop

    :goto_1b4
    move v3, v5

    goto :goto_157

    nop

    :goto_1b5
    invoke-direct {v2, v1, v10}, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/policy/PhoneWindowManager;I)V

    goto :goto_88

    nop

    :goto_1b6
    goto :goto_165

    :goto_1b7
    goto :goto_164

    nop

    :goto_1b8
    move-object/from16 v15, p2

    goto :goto_140

    nop

    :goto_1b9
    invoke-direct {v1}, Lcom/android/server/policy/PhoneWindowManager;->cancelGlobalActionsAction()V

    goto :goto_18d

    nop

    :goto_1ba
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    goto :goto_2c

    nop

    :goto_1bb
    if-nez v8, :cond_32

    goto :goto_12

    :cond_32
    goto :goto_a5

    nop

    :goto_1bc
    move-object/from16 v15, p2

    goto :goto_1e

    nop

    :goto_1bd
    move v3, v5

    goto :goto_1b

    nop

    :goto_1be
    move-object/from16 v15, p2

    goto :goto_100

    nop

    :goto_1bf
    move v3, v5

    goto :goto_78

    nop

    :goto_1c0
    goto :goto_1ac

    :goto_1c1
    goto :goto_90

    nop

    :goto_1c2
    goto :goto_1ac

    :goto_1c3
    goto :goto_56

    nop

    :goto_1c4
    move v3, v5

    goto :goto_9b

    nop

    :goto_1c5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    goto :goto_1ae

    nop

    :goto_1c6
    move v2, v3

    :goto_1c7
    nop

    goto :goto_14

    nop

    :goto_1c8
    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->getTargetDisplayIdForKeyGestureEvent(Landroid/hardware/input/KeyGestureEvent;)I

    move-result v2

    goto :goto_f7

    nop

    :goto_1c9
    move-object/from16 v2, p1

    goto :goto_16d

    nop

    :goto_1ca
    invoke-direct {v1}, Lcom/android/server/policy/PhoneWindowManager;->showSystemSettings()V

    goto :goto_21

    nop

    :goto_1cb
    move v3, v5

    goto :goto_13d

    nop

    :goto_1cc
    if-nez v4, :cond_33

    goto :goto_1b7

    :cond_33
    goto :goto_144

    nop

    :goto_1cd
    move v0, v3

    goto :goto_59

    nop

    :goto_1ce
    if-nez v0, :cond_34

    goto :goto_1c1

    :cond_34
    goto :goto_110

    nop

    :goto_1cf
    if-nez v8, :cond_35

    goto :goto_a4

    :cond_35
    goto :goto_be

    nop

    :goto_1d0
    move-object/from16 v15, p2

    goto :goto_186

    nop

    :goto_1d1
    move-object/from16 v15, p2

    goto :goto_39

    nop

    :goto_1d2
    move-object/from16 v15, p2

    goto :goto_60

    nop

    :goto_1d3
    goto :goto_1ac

    :sswitch_1d
    goto :goto_1bb

    nop

    :goto_1d4
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    move-result v12

    goto :goto_7

    nop

    :goto_1d5
    move-object/from16 v15, p2

    goto :goto_c8

    nop

    :goto_1d6
    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    goto :goto_c3

    nop

    :goto_1d7
    if-nez v8, :cond_36

    goto :goto_3d

    :cond_36
    goto :goto_1a5

    nop

    :goto_1d8
    move v3, v6

    goto :goto_72

    nop

    :goto_1d9
    move v0, v2

    :goto_1da
    goto :goto_8e

    nop

    :goto_1db
    invoke-direct {v1}, Lcom/android/server/policy/PhoneWindowManager;->toggleNotificationPanel()V

    goto :goto_28

    nop

    :goto_1dc
    goto :goto_1da

    :goto_1dd
    goto :goto_1d9

    nop

    :goto_1de
    invoke-virtual {v0, v2, v6, v14, v3}, Landroid/app/NotificationManager;->setZenMode(ILandroid/net/Uri;Ljava/lang/String;Z)V

    goto :goto_169

    nop

    :goto_1df
    move v3, v6

    goto :goto_b8

    nop

    :goto_1e0
    move v3, v5

    goto :goto_68

    nop
.end method

.method handleVolumeLongPressAbort()V
    .registers 3

    goto :goto_0

    nop

    :goto_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    goto :goto_2

    nop

    :goto_1
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mVolumeDownLongPress:Ljava/lang/Runnable;

    goto :goto_6

    nop

    :goto_2
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mVolumeUpLongPress:Ljava/lang/Runnable;

    goto :goto_3

    nop

    :goto_3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_4

    nop

    :goto_4
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    goto :goto_1

    nop

    :goto_5
    return-void

    :goto_6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_5

    nop
.end method

.method public hasNavigationBar()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->hasNavigationBar()Z

    move-result v0

    return v0
.end method

.method public hideBootMessages()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public inKeyguardRestrictedKeyInputMode()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isInputRestricted()Z

    move-result v0

    return v0
.end method

.method public init(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;Landroid/view/IWindowManager;)V
    .registers 5

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$Injector;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManager$Injector;-><init>(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;Landroid/view/IWindowManager;)V

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->init(Lcom/android/server/policy/PhoneWindowManager$Injector;)V

    return-void
.end method

.method init(Lcom/android/server/policy/PhoneWindowManager$Injector;)V
    .registers 21

    goto :goto_176

    nop

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/policy/PhoneWindowManager$Injector;->getActivityManagerService()Landroid/app/IActivityManager;

    move-result-object v1

    goto :goto_c6

    nop

    :goto_1
    invoke-direct {v6, v0, v7, v9}, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;-><init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_db

    nop

    :goto_2
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    goto :goto_18d

    nop

    :goto_3
    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    goto :goto_10b

    nop

    :goto_4
    iget-object v13, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    goto :goto_195

    nop

    :goto_5
    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    goto :goto_2f

    nop

    :goto_6
    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    goto :goto_f5

    nop

    :goto_7
    iput v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnBackBehavior:I

    goto :goto_131

    nop

    :goto_8
    const v7, 0x10e0169

    goto :goto_d5

    nop

    :goto_9
    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    goto :goto_3d

    nop

    :goto_a
    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mPackageManager:Landroid/content/pm/PackageManager;

    goto :goto_17c

    nop

    :goto_b
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_184

    nop

    :goto_c
    const/high16 v9, 0x10200000

    goto :goto_c7

    nop

    :goto_d
    invoke-virtual {v6}, Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;->observe()V

    goto :goto_aa

    nop

    :goto_e
    iput-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    goto :goto_85

    nop

    :goto_f
    const/4 v8, 0x1

    goto :goto_172

    nop

    :goto_10
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    goto :goto_10c

    nop

    :goto_11
    invoke-static {v6}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    goto :goto_a4

    nop

    :goto_12
    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    goto :goto_76

    nop

    :goto_13
    iget v10, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    goto :goto_f2

    nop

    :goto_14
    iget-object v10, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    goto :goto_1ad

    nop

    :goto_15
    if-nez v5, :cond_0

    goto :goto_af

    :cond_0
    :goto_16
    goto :goto_8d

    nop

    :goto_17
    new-instance v6, Landroid/content/Intent;

    goto :goto_143

    nop

    :goto_18
    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    goto :goto_be

    nop

    :goto_19
    const/4 v9, -0x4

    goto :goto_63

    nop

    :goto_1a
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_7e

    nop

    :goto_1b
    iput-boolean v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mSupportShortPressPowerWhenDefaultDisplayOn:Z

    goto :goto_2e

    nop

    :goto_1c
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    goto :goto_186

    nop

    :goto_1d
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    goto :goto_15f

    nop

    :goto_1e
    iget-object v9, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    goto :goto_13

    nop

    :goto_1f
    const/4 v8, -0x8

    goto :goto_19

    nop

    :goto_20
    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    goto :goto_a6

    nop

    :goto_21
    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    goto :goto_b1

    nop

    :goto_22
    const v9, 0x10e0047

    goto :goto_73

    nop

    :goto_23
    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    goto :goto_c

    nop

    :goto_24
    invoke-static {v6}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    goto :goto_cd

    nop

    :goto_25
    check-cast v1, Landroid/hardware/display/DisplayManager;

    goto :goto_196

    nop

    :goto_26
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    goto :goto_b2

    nop

    :goto_27
    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    goto :goto_fd

    nop

    :goto_28
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    goto :goto_68

    nop

    :goto_29
    invoke-virtual {v6, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_41

    nop

    :goto_2a
    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    goto :goto_75

    nop

    :goto_2b
    const-class v1, Landroid/app/ActivityManagerInternal;

    goto :goto_b4

    nop

    :goto_2c
    invoke-virtual {v6, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_162

    nop

    :goto_2d
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    goto :goto_33

    nop

    :goto_2e
    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    goto :goto_134

    nop

    :goto_2f
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    goto :goto_171

    nop

    :goto_30
    new-instance v6, Landroid/content/Intent;

    goto :goto_192

    nop

    :goto_31
    const-string v7, "android.intent.category.VR_HOME"

    goto :goto_e7

    nop

    :goto_32
    invoke-virtual {v6, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_3a

    nop

    :goto_33
    iput-boolean v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mSilenceRingerOnSleepKey:Z

    goto :goto_12b

    nop

    :goto_34
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    goto :goto_1af

    nop

    :goto_35
    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    goto :goto_2b

    nop

    :goto_36
    new-instance v6, Landroid/content/IntentFilter;

    goto :goto_20

    nop

    :goto_37
    check-cast v6, Landroid/os/Vibrator;

    goto :goto_a1

    nop

    :goto_38
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    goto :goto_1b

    nop

    :goto_39
    iput-boolean v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mGoToSleepOnButtonPressTheaterMode:Z

    goto :goto_165

    nop

    :goto_3a
    iget-object v8, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    goto :goto_59

    nop

    :goto_3b
    const v7, 0x11101bb

    goto :goto_f9

    nop

    :goto_3c
    iput-boolean v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mAllowStartActivityForLongPressOnPowerDuringSetup:Z

    goto :goto_10d

    nop

    :goto_3d
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    goto :goto_6c

    nop

    :goto_3e
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    goto :goto_17e

    nop

    :goto_3f
    const-string v1, "ro.boot.factorybuild"

    goto :goto_18b

    nop

    :goto_40
    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnisocPhoneWindowUtil:Lcom/android/server/policy/UFwPhoneWindowManagerUtil;

    goto :goto_154

    nop

    :goto_41
    sget-object v8, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    goto :goto_110

    nop

    :goto_42
    iput v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mIsFactoryBuild:I

    goto :goto_83

    nop

    :goto_43
    iput v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    goto :goto_30

    nop

    :goto_44
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mPackageManager:Landroid/content/pm/PackageManager;

    goto :goto_103

    nop

    :goto_45
    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    goto :goto_d2

    nop

    :goto_46
    check-cast v1, Lcom/android/server/wm/WindowManagerInternal;

    goto :goto_35

    nop

    :goto_47
    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    goto :goto_16a

    nop

    :goto_48
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    goto :goto_1a2

    nop

    :goto_49
    iget-object v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    goto :goto_b3

    nop

    :goto_4a
    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    goto :goto_a7

    nop

    :goto_4b
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_170

    nop

    :goto_4c
    new-instance v6, Landroid/content/Intent;

    goto :goto_fe

    nop

    :goto_4d
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mPackageManager:Landroid/content/pm/PackageManager;

    goto :goto_bf

    nop

    :goto_4e
    new-instance v6, Landroid/content/Intent;

    goto :goto_1a6

    nop

    :goto_4f
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    goto :goto_6d

    nop

    :goto_50
    new-instance v6, Lcom/android/server/policy/GlobalKeyManager;

    goto :goto_132

    nop

    :goto_51
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    goto :goto_14a

    nop

    :goto_52
    const v3, 0x11102b5

    goto :goto_3e

    nop

    :goto_53
    const v10, 0x1110170

    goto :goto_107

    nop

    :goto_54
    invoke-virtual {v8, v9, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_187

    nop

    :goto_55
    const-class v1, Lcom/android/server/input/InputManagerInternal;

    goto :goto_1a

    nop

    :goto_56
    const-string v9, "android.intent.category.HOME"

    goto :goto_91

    nop

    :goto_57
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    goto :goto_de

    nop

    :goto_58
    new-instance v2, Landroid/os/Handler;

    goto :goto_62

    nop

    :goto_59
    iget-object v9, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockReceiver:Landroid/content/BroadcastReceiver;

    goto :goto_54

    nop

    :goto_5a
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    goto :goto_199

    nop

    :goto_5b
    const v7, 0x10e0073

    goto :goto_11f

    nop

    :goto_5c
    iput v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mSearchKeyBehavior:I

    goto :goto_174

    nop

    :goto_5d
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    goto :goto_125

    nop

    :goto_5e
    iput-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mWakeOnAssistKeyPress:Z

    nop

    goto :goto_18f

    nop

    :goto_5f
    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    goto :goto_3f

    nop

    :goto_60
    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSideFpsEventHandler:Lcom/android/server/policy/SideFpsEventHandler;

    goto :goto_161

    nop

    :goto_61
    const-string v5, "persist.debug.force_burn_in"

    goto :goto_c1

    nop

    :goto_62
    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    goto :goto_d6

    nop

    :goto_63
    invoke-direct {v0}, Lcom/android/server/policy/PhoneWindowManager;->isRoundWindow()Z

    move-result v10

    goto :goto_183

    nop

    :goto_64
    invoke-direct {v0}, Lcom/android/server/policy/PhoneWindowManager;->initKeyGestures()V

    goto :goto_120

    nop

    :goto_65
    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    goto :goto_7f

    nop

    :goto_66
    goto :goto_81

    :goto_67
    goto :goto_80

    nop

    :goto_68
    iput v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnSleepBehavior:I

    goto :goto_19b

    nop

    :goto_69
    check-cast v6, Landroid/os/PowerManager;

    goto :goto_167

    nop

    :goto_6a
    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureHdmiCec:Z

    goto :goto_d3

    nop

    :goto_6b
    invoke-virtual {v4}, Lcom/android/server/policy/PhoneWindowManager$Injector;->getKeyguardServiceDelegate()Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    move-result-object v2

    goto :goto_6

    nop

    :goto_6c
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    goto :goto_a

    nop

    :goto_6d
    int-to-long v6, v6

    goto :goto_181

    nop

    :goto_6e
    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    goto :goto_ad

    nop

    :goto_6f
    iput-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_13b

    nop

    :goto_70
    invoke-direct {v6, v0, v7, v8}, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;-><init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/os/Looper;Lcom/android/server/policy/PhoneWindowManager-IA;)V

    goto :goto_e0

    nop

    :goto_71
    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureAuto:Z

    goto :goto_44

    nop

    :goto_72
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    goto :goto_122

    nop

    :goto_73
    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    goto :goto_d7

    nop

    :goto_74
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/policy/PhoneWindowManager$Injector;->getContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_e1

    nop

    :goto_75
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    goto :goto_3b

    nop

    :goto_76
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    goto :goto_77

    nop

    :goto_77
    const v8, 0x11101c0

    goto :goto_e4

    nop

    :goto_78
    const-string v10, "android.intent.category.DESK_DOCK"

    goto :goto_155

    nop

    :goto_79
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_11

    nop

    :goto_7a
    iget-object v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    goto :goto_86

    nop

    :goto_7b
    const v8, 0x10e0148

    goto :goto_121

    nop

    :goto_7c
    invoke-virtual {v2, v6}, Lcom/android/server/wm/WindowManagerInternal;->registerAppTransitionListener(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    goto :goto_158

    nop

    :goto_7d
    const/4 v6, -0x8

    goto :goto_11a

    nop

    :goto_7e
    check-cast v1, Lcom/android/server/input/InputManagerInternal;

    goto :goto_ed

    nop

    :goto_7f
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    goto :goto_c8

    nop

    :goto_80
    const/4 v10, -0x1

    :goto_81
    goto :goto_9b

    nop

    :goto_82
    const v7, 0x10402c7

    goto :goto_92

    nop

    :goto_83
    new-instance v1, Lcom/android/internal/logging/MetricsLogger;

    goto :goto_a9

    nop

    :goto_84
    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActionsFactory:Ljava/util/function/Supplier;

    goto :goto_14b

    nop

    :goto_85
    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    goto :goto_78

    nop

    :goto_86
    iget-object v9, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    goto :goto_1

    nop

    :goto_87
    iget-object v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    goto :goto_1e

    nop

    :goto_88
    iput-boolean v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandleVolumeKeysInWM:Z

    goto :goto_112

    nop

    :goto_89
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    goto :goto_ef

    nop

    :goto_8a
    move/from16 v17, v9

    goto :goto_a3

    nop

    :goto_8b
    check-cast v1, Lcom/android/server/pm/UserManagerInternal;

    goto :goto_9

    nop

    :goto_8c
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mPackageManager:Landroid/content/pm/PackageManager;

    goto :goto_8f

    nop

    :goto_8d
    if-nez v5, :cond_1

    goto :goto_149

    :cond_1
    goto :goto_7d

    nop

    :goto_8e
    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    goto :goto_113

    nop

    :goto_8f
    const-string v2, "android.software.leanback"

    goto :goto_2

    nop

    :goto_90
    const v7, 0x10e014c

    goto :goto_28

    nop

    :goto_91
    invoke-virtual {v6, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_23

    nop

    :goto_92
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_105

    nop

    :goto_93
    iget-object v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    goto :goto_17a

    nop

    :goto_94
    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_b0

    nop

    :goto_95
    new-instance v6, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    goto :goto_a0

    nop

    :goto_96
    sget-object v8, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    goto :goto_29

    nop

    :goto_97
    check-cast v1, Landroid/app/AppOpsManager;

    goto :goto_133

    nop

    :goto_98
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    goto :goto_7c

    nop

    :goto_99
    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    goto :goto_14e

    nop

    :goto_9a
    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    goto :goto_34

    nop

    :goto_9b
    move v14, v6

    goto :goto_146

    nop

    :goto_9c
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    goto :goto_15b

    nop

    :goto_9d
    iput v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mLidNavigationAccessibility:I

    goto :goto_2a

    nop

    :goto_9e
    move/from16 v18, v11

    :goto_9f
    goto :goto_153

    nop

    :goto_a0
    invoke-virtual {v4}, Lcom/android/server/policy/PhoneWindowManager$Injector;->getLooper()Landroid/os/Looper;

    move-result-object v7

    goto :goto_f1

    nop

    :goto_a1
    iput-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    goto :goto_50

    nop

    :goto_a2
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_f8

    nop

    :goto_a3
    move/from16 v18, v10

    goto :goto_148

    nop

    :goto_a4
    iput-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mPrimaryShortPressTargetActivity:Landroid/content/ComponentName;

    goto :goto_99

    nop

    :goto_a5
    if-eqz v6, :cond_2

    goto :goto_118

    :cond_2
    goto :goto_c5

    nop

    :goto_a6
    sget-object v8, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    goto :goto_142

    nop

    :goto_a7
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    goto :goto_140

    nop

    :goto_a8
    if-eqz v3, :cond_3

    goto :goto_16

    :cond_3
    goto :goto_15

    nop

    :goto_a9
    invoke-direct {v1}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    goto :goto_19f

    nop

    :goto_aa
    new-instance v6, Lcom/android/server/policy/ModifierShortcutManager;

    goto :goto_87

    nop

    :goto_ab
    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    goto :goto_177

    nop

    :goto_ac
    if-eq v6, v7, :cond_4

    goto :goto_bb

    :cond_4
    goto :goto_ba

    nop

    :goto_ad
    const-string v7, "PhoneWindowManager.mBroadcastWakeLock"

    goto :goto_f

    nop

    :goto_ae
    iput-object v12, v0, Lcom/android/server/policy/PhoneWindowManager;->mBurnInProtectionHelper:Lcom/android/server/policy/BurnInProtectionHelper;

    :goto_af
    goto :goto_95

    nop

    :goto_b0
    iput-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    goto :goto_10f

    nop

    :goto_b1
    const-class v8, Landroid/view/accessibility/AccessibilityManager;

    goto :goto_189

    nop

    :goto_b2
    const v7, 0x1040316

    goto :goto_79

    nop

    :goto_b3
    iget-object v9, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    goto :goto_14

    nop

    :goto_b4
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_16c

    nop

    :goto_b5
    iput-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    goto :goto_15d

    nop

    :goto_b6
    invoke-direct {v6, v9}, Lcom/android/server/policy/GlobalKeyManager;-><init>(Landroid/content/Context;)V

    goto :goto_b5

    nop

    :goto_b7
    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    goto :goto_0

    nop

    :goto_b8
    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    goto :goto_bc

    nop

    :goto_b9
    invoke-virtual {v6, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_37

    nop

    :goto_ba
    goto :goto_1ac

    :goto_bb
    goto :goto_1ab

    nop

    :goto_bc
    int-to-long v8, v6

    goto :goto_10a

    nop

    :goto_bd
    const v8, 0x104032e

    goto :goto_d9

    nop

    :goto_be
    move v14, v7

    goto :goto_188

    nop

    :goto_bf
    const-string v2, "android.hardware.type.automotive"

    goto :goto_1a8

    nop

    :goto_c0
    iput-boolean v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mEnableBugReportKeyboardShortcut:Z

    goto :goto_178

    nop

    :goto_c1
    invoke-static {v5, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    goto :goto_a8

    nop

    :goto_c2
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    goto :goto_109

    nop

    :goto_c3
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_69

    nop

    :goto_c4
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_42

    nop

    :goto_c5
    invoke-virtual {v0, v2, v7}, Lcom/android/server/policy/PhoneWindowManager;->startedGoingToSleep(II)V

    goto :goto_117

    nop

    :goto_c6
    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mActivityManagerService:Landroid/app/IActivityManager;

    goto :goto_19d

    nop

    :goto_c7
    invoke-virtual {v6, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_15e

    nop

    :goto_c8
    const-class v2, Landroid/hardware/display/DisplayManager;

    goto :goto_c9

    nop

    :goto_c9
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_25

    nop

    :goto_ca
    invoke-virtual {v6, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_45

    nop

    :goto_cb
    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    goto :goto_147

    nop

    :goto_cc
    move/from16 v16, v8

    goto :goto_8a

    nop

    :goto_cd
    iput-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mSearchKeyTargetActivity:Landroid/content/ComponentName;

    goto :goto_100

    nop

    :goto_ce
    invoke-virtual {v4, v1, v2, v3}, Lcom/android/server/policy/PhoneWindowManager$Injector;->getAccessibilityShortcutController(Landroid/content/Context;Landroid/os/Handler;I)Lcom/android/internal/accessibility/AccessibilityShortcutController;

    move-result-object v1

    goto :goto_119

    nop

    :goto_cf
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    nop

    goto :goto_61

    nop

    :goto_d0
    const v7, 0x10e00c9

    goto :goto_4f

    nop

    :goto_d1
    invoke-virtual {v6, v9, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_156

    nop

    :goto_d2
    invoke-virtual {v6, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_4e

    nop

    :goto_d3
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    goto :goto_58

    nop

    :goto_d4
    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mVrHeadsetHomeIntent:Landroid/content/Intent;

    goto :goto_12e

    nop

    :goto_d5
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    goto :goto_197

    nop

    :goto_d6
    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    goto :goto_17b

    nop

    :goto_d7
    const v10, 0x10e0045

    goto :goto_1a1

    nop

    :goto_d8
    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceAccessShortcutController:Lcom/android/server/policy/VoiceAccessShortcutController;

    goto :goto_17f

    nop

    :goto_d9
    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_24

    nop

    :goto_da
    iput-boolean v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mEnableCarDockHomeCapture:Z

    goto :goto_4c

    nop

    :goto_db
    iput-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    goto :goto_15a

    nop

    :goto_dc
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    goto :goto_6a

    nop

    :goto_dd
    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mInputManager:Landroid/hardware/input/InputManager;

    goto :goto_55

    nop

    :goto_de
    iput-boolean v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mSupportLongPressPowerWhenNonInteractive:Z

    goto :goto_5

    nop

    :goto_df
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_97

    nop

    :goto_e0
    iput-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    goto :goto_1a4

    nop

    :goto_e1
    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    goto :goto_194

    nop

    :goto_e2
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_12c

    nop

    :goto_e3
    invoke-virtual {v4}, Lcom/android/server/policy/PhoneWindowManager$Injector;->getGlobalActionsFactory()Ljava/util/function/Supplier;

    move-result-object v1

    goto :goto_84

    nop

    :goto_e4
    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    goto :goto_88

    nop

    :goto_e5
    const-string v9, "vibrator"

    goto :goto_b9

    nop

    :goto_e6
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1aa

    nop

    :goto_e7
    invoke-virtual {v6, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_d4

    nop

    :goto_e8
    iput-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mWakeOnBackKeyPress:Z

    goto :goto_72

    nop

    :goto_e9
    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mButtonOverridePermissionChecker:Lcom/android/server/policy/PhoneWindowManager$ButtonOverridePermissionChecker;

    goto :goto_180

    nop

    :goto_ea
    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    goto :goto_26

    nop

    :goto_eb
    const/4 v7, 0x2

    goto :goto_ac

    nop

    :goto_ec
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    goto :goto_173

    nop

    :goto_ed
    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    goto :goto_18e

    nop

    :goto_ee
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_46

    nop

    :goto_ef
    const v7, 0x10e00c8

    goto :goto_159

    nop

    :goto_f0
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    goto :goto_16b

    nop

    :goto_f1
    const/4 v8, 0x0

    goto :goto_70

    nop

    :goto_f2
    invoke-static {v10}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v10

    goto :goto_124

    nop

    :goto_f3
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    goto :goto_7

    nop

    :goto_f4
    iput-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

    goto :goto_21

    nop

    :goto_f5
    invoke-virtual {v4}, Lcom/android/server/policy/PhoneWindowManager$Injector;->getTalkbackShortcutController()Lcom/android/server/policy/TalkbackShortcutController;

    move-result-object v2

    goto :goto_18c

    nop

    :goto_f6
    const-string v7, "PhoneWindowManager.mPowerKeyWakeLock"

    goto :goto_fc

    nop

    :goto_f7
    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_106

    nop

    :goto_f8
    check-cast v1, Landroid/hardware/display/DisplayManagerInternal;

    goto :goto_185

    nop

    :goto_f9
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    goto :goto_39

    nop

    :goto_fa
    invoke-direct {v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->initSingleKeyGestureRules(Landroid/os/Looper;)V

    goto :goto_64

    nop

    :goto_fb
    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    goto :goto_5d

    nop

    :goto_fc
    invoke-virtual {v6, v8, v7}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    goto :goto_138

    nop

    :goto_fd
    invoke-virtual {v6, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_17

    nop

    :goto_fe
    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_11e

    nop

    :goto_ff
    const-string v9, "android.intent.action.USER_SWITCHED"

    goto :goto_8e

    nop

    :goto_100
    invoke-direct {v0}, Lcom/android/server/policy/PhoneWindowManager;->readConfigurationDependentBehaviors()V

    goto :goto_47

    nop

    :goto_101
    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    goto :goto_22

    nop

    :goto_102
    iput-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mModifierShortcutManager:Lcom/android/server/policy/ModifierShortcutManager;

    goto :goto_157

    nop

    :goto_103
    const-string v2, "android.hardware.hdmi.cec"

    goto :goto_dc

    nop

    :goto_104
    sget-object v8, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    goto :goto_2c

    nop

    :goto_105
    invoke-static {v6}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    goto :goto_19a

    nop

    :goto_106
    const-string v7, "1"

    goto :goto_136

    nop

    :goto_107
    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    goto :goto_da

    nop

    :goto_108
    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->initializeHdmiState()V

    goto :goto_13a

    nop

    :goto_109
    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureWatch:Z

    goto :goto_8c

    nop

    :goto_10a
    iput-wide v8, v0, Lcom/android/server/policy/PhoneWindowManager;->mWakeUpToLastStateTimeout:J

    goto :goto_ab

    nop

    :goto_10b
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    goto :goto_d0

    nop

    :goto_10c
    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnTimeout:I

    goto :goto_6b

    nop

    :goto_10d
    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    goto :goto_129

    nop

    :goto_10e
    invoke-virtual {v4}, Lcom/android/server/policy/PhoneWindowManager$Injector;->getLooper()Landroid/os/Looper;

    move-result-object v2

    goto :goto_fa

    nop

    :goto_10f
    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    goto :goto_56

    nop

    :goto_110
    invoke-virtual {v6, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_104

    nop

    :goto_111
    const v11, 0x10e0044

    goto :goto_18

    nop

    :goto_112
    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    goto :goto_130

    nop

    :goto_113
    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    goto :goto_16f

    nop

    :goto_114
    const-class v1, Lcom/android/server/pm/UserManagerInternal;

    goto :goto_145

    nop

    :goto_115
    const-class v1, Landroid/os/PowerManagerInternal;

    goto :goto_4b

    nop

    :goto_116
    invoke-virtual {v6}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v6

    goto :goto_a5

    nop

    :goto_117
    invoke-virtual {v0, v2, v7}, Lcom/android/server/policy/PhoneWindowManager;->finishedGoingToSleep(II)V

    :goto_118
    goto :goto_1a3

    nop

    :goto_119
    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    goto :goto_e3

    nop

    :goto_11a
    const/16 v7, 0x8

    goto :goto_1f

    nop

    :goto_11b
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    goto :goto_5b

    nop

    :goto_11c
    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    goto :goto_152

    nop

    :goto_11d
    const-string v2, "android.hardware.type.watch"

    goto :goto_c2

    nop

    :goto_11e
    iput-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    goto :goto_17d

    nop

    :goto_11f
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    goto :goto_43

    nop

    :goto_120
    invoke-virtual {v4}, Lcom/android/server/policy/PhoneWindowManager$Injector;->getButtonOverridePermissionChecker()Lcom/android/server/policy/PhoneWindowManager$ButtonOverridePermissionChecker;

    move-result-object v2

    goto :goto_e9

    nop

    :goto_121
    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    goto :goto_5c

    nop

    :goto_122
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    goto :goto_191

    nop

    :goto_123
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/policy/PhoneWindowManager$Injector;->getWindowManagerFuncs()Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    move-result-object v1

    goto :goto_11c

    nop

    :goto_124
    invoke-direct {v6, v7, v9, v10}, Lcom/android/server/policy/ModifierShortcutManager;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/UserHandle;)V

    goto :goto_102

    nop

    :goto_125
    const-class v2, Landroid/app/AppOpsManager;

    goto :goto_df

    nop

    :goto_126
    iput-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mVrHeadsetHomeIntent:Landroid/content/Intent;

    goto :goto_14d

    nop

    :goto_127
    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    goto :goto_123

    nop

    :goto_128
    move/from16 v17, v10

    goto :goto_9e

    nop

    :goto_129
    invoke-static {v6}, Landroid/media/AudioSystem;->getPlatformType(Landroid/content/Context;)I

    move-result v6

    goto :goto_eb

    nop

    :goto_12a
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    goto :goto_12d

    nop

    :goto_12b
    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    goto :goto_12a

    nop

    :goto_12c
    check-cast v1, Landroid/service/dreams/DreamManagerInternal;

    goto :goto_16d

    nop

    :goto_12d
    const v7, 0x1110024

    goto :goto_1a5

    nop

    :goto_12e
    invoke-virtual {v6, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_175

    nop

    :goto_12f
    const-string v6, "ro.debuggable"

    goto :goto_f7

    nop

    :goto_130
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    goto :goto_18a

    nop

    :goto_131
    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    goto :goto_89

    nop

    :goto_132
    iget-object v9, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    goto :goto_b6

    nop

    :goto_133
    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mAppOpsManager:Landroid/app/AppOpsManager;

    goto :goto_9c

    nop

    :goto_134
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    goto :goto_144

    nop

    :goto_135
    move/from16 v16, v9

    goto :goto_128

    nop

    :goto_136
    invoke-virtual {v7, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    goto :goto_c0

    nop

    :goto_137
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    goto :goto_bd

    nop

    :goto_138
    iput-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_12f

    nop

    :goto_139
    iput v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    goto :goto_3

    nop

    :goto_13a
    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    goto :goto_116

    nop

    :goto_13b
    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    goto :goto_f6

    nop

    :goto_13c
    const v8, 0x10e0043

    goto :goto_101

    nop

    :goto_13d
    const v3, 0x11102b3

    goto :goto_163

    nop

    :goto_13e
    iput-boolean v8, v0, Lcom/android/server/policy/PhoneWindowManager;->mUseTvRouting:Z

    goto :goto_12

    nop

    :goto_13f
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    goto :goto_82

    nop

    :goto_140
    const-class v2, Landroid/hardware/input/InputManager;

    goto :goto_166

    nop

    :goto_141
    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    goto :goto_13f

    nop

    :goto_142
    invoke-virtual {v6, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_96

    nop

    :goto_143
    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_126

    nop

    :goto_144
    const v7, 0x10e00c6

    goto :goto_f3

    nop

    :goto_145
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_8b

    nop

    :goto_146
    move v15, v7

    goto :goto_cc

    nop

    :goto_147
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    goto :goto_8

    nop

    :goto_148
    goto :goto_9f

    :goto_149
    goto :goto_9a

    nop

    :goto_14a
    iput v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mLidKeyboardAccessibility:I

    goto :goto_151

    nop

    :goto_14b
    invoke-virtual {v4}, Lcom/android/server/policy/PhoneWindowManager$Injector;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    goto :goto_5f

    nop

    :goto_14c
    iput-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mSettingsObserver:Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;

    goto :goto_15c

    nop

    :goto_14d
    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mVrHeadsetHomeIntent:Landroid/content/Intent;

    goto :goto_31

    nop

    :goto_14e
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    goto :goto_90

    nop

    :goto_14f
    invoke-virtual {v4}, Lcom/android/server/policy/PhoneWindowManager$Injector;->getVoiceAccessShortcutController()Lcom/android/server/policy/VoiceAccessShortcutController;

    move-result-object v2

    goto :goto_d8

    nop

    :goto_150
    const/4 v10, 0x6

    goto :goto_66

    nop

    :goto_151
    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    goto :goto_ec

    nop

    :goto_152
    invoke-static {}, Lcom/android/server/ufw/UltraFrameworkServiceFactory;->getInstance()Lcom/android/server/ufw/UltraFrameworkServiceFactory;

    move-result-object v1

    goto :goto_182

    nop

    :goto_153
    new-instance v12, Lcom/android/server/policy/BurnInProtectionHelper;

    goto :goto_4

    nop

    :goto_154
    const-class v1, Lcom/android/server/wm/WindowManagerInternal;

    goto :goto_ee

    nop

    :goto_155
    invoke-virtual {v6, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_27

    nop

    :goto_156
    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    goto :goto_e5

    nop

    :goto_157
    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    goto :goto_11b

    nop

    :goto_158
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    goto :goto_48

    nop

    :goto_159
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    goto :goto_139

    nop

    :goto_15a
    new-instance v6, Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;

    goto :goto_93

    nop

    :goto_15b
    const-class v2, Landroid/hardware/SensorPrivacyManager;

    goto :goto_b

    nop

    :goto_15c
    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mSettingsObserver:Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;

    goto :goto_d

    nop

    :goto_15d
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManagerStub;->getInstance()Lcom/android/server/policy/PhoneWindowManagerStub;

    move-result-object v6

    goto :goto_1a9

    nop

    :goto_15e
    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    goto :goto_179

    nop

    :goto_15f
    const v7, 0x1110248

    goto :goto_2d

    nop

    :goto_160
    invoke-interface {v6, v9}, Lcom/android/server/policy/PhoneWindowManagerStub;->init(Landroid/content/Context;)V

    goto :goto_108

    nop

    :goto_161
    return-void

    :goto_162
    const-string v8, "android.intent.action.DOCK_EVENT"

    goto :goto_32

    nop

    :goto_163
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    goto :goto_5e

    nop

    :goto_164
    invoke-direct {v0}, Lcom/android/server/policy/PhoneWindowManager;->initKeyCombinationRules()V

    goto :goto_10e

    nop

    :goto_165
    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    goto :goto_f0

    nop

    :goto_166
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1a7

    nop

    :goto_167
    iput-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    goto :goto_6e

    nop

    :goto_168
    const-class v1, Landroid/hardware/display/DisplayManagerInternal;

    goto :goto_a2

    nop

    :goto_169
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    goto :goto_13c

    nop

    :goto_16a
    invoke-static {v6, v2}, Lcom/android/server/policy/DisplayFoldController;->create(Landroid/content/Context;I)Lcom/android/server/policy/DisplayFoldController;

    move-result-object v6

    goto :goto_f4

    nop

    :goto_16b
    const v7, 0x1110267

    goto :goto_57

    nop

    :goto_16c
    check-cast v1, Landroid/app/ActivityManagerInternal;

    goto :goto_b7

    nop

    :goto_16d
    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    goto :goto_115

    nop

    :goto_16e
    const-string v7, "power"

    goto :goto_c3

    nop

    :goto_16f
    iget-object v9, v0, Lcom/android/server/policy/PhoneWindowManager;->mMultiuserReceiver:Landroid/content/BroadcastReceiver;

    goto :goto_d1

    nop

    :goto_170
    check-cast v1, Landroid/os/PowerManagerInternal;

    goto :goto_fb

    nop

    :goto_171
    const v7, 0x111026b

    goto :goto_38

    nop

    :goto_172
    invoke-virtual {v6, v8, v7}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    goto :goto_6f

    nop

    :goto_173
    const v7, 0x10e00c2

    goto :goto_193

    nop

    :goto_174
    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    goto :goto_137

    nop

    :goto_175
    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    goto :goto_16e

    nop

    :goto_176
    move-object/from16 v0, p0

    goto :goto_74

    nop

    :goto_177
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    goto :goto_7b

    nop

    :goto_178
    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    goto :goto_5a

    nop

    :goto_179
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    goto :goto_53

    nop

    :goto_17a
    invoke-direct {v6, v0, v7}, Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;-><init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/os/Handler;)V

    goto :goto_14c

    nop

    :goto_17b
    move-object/from16 v4, p1

    goto :goto_ce

    nop

    :goto_17c
    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mPackageManager:Landroid/content/pm/PackageManager;

    goto :goto_11d

    nop

    :goto_17d
    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    goto :goto_1a0

    nop

    :goto_17e
    iput-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mWakeOnDpadKeyPress:Z

    nop

    goto :goto_13d

    nop

    :goto_17f
    invoke-virtual {v4}, Lcom/android/server/policy/PhoneWindowManager$Injector;->getWindowWakeUpPolicy()Lcom/android/server/policy/WindowWakeUpPolicy;

    move-result-object v2

    goto :goto_190

    nop

    :goto_180
    new-instance v2, Lcom/android/server/policy/SideFpsEventHandler;

    goto :goto_49

    nop

    :goto_181
    iput-wide v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerAssistantTimeoutMs:J

    goto :goto_cb

    nop

    :goto_182
    invoke-virtual {v1}, Lcom/android/server/ufw/UltraFrameworkServiceFactory;->makeUnisocPhoneWindowManagerUtil()Lcom/android/server/policy/UFwPhoneWindowManagerUtil;

    move-result-object v1

    goto :goto_40

    nop

    :goto_183
    if-nez v10, :cond_5

    goto :goto_67

    :cond_5
    goto :goto_150

    nop

    :goto_184
    check-cast v1, Landroid/hardware/SensorPrivacyManager;

    goto :goto_65

    nop

    :goto_185
    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    goto :goto_114

    nop

    :goto_186
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    nop

    goto :goto_52

    nop

    :goto_187
    new-instance v8, Landroid/content/IntentFilter;

    goto :goto_ff

    nop

    :goto_188
    move v15, v8

    goto :goto_135

    nop

    :goto_189
    invoke-virtual {v6, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_19c

    nop

    :goto_18a
    const v8, 0x10e0177

    goto :goto_b8

    nop

    :goto_18b
    const/4 v2, 0x0

    goto :goto_c4

    nop

    :goto_18c
    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mTalkbackShortcutController:Lcom/android/server/policy/TalkbackShortcutController;

    goto :goto_14f

    nop

    :goto_18d
    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureLeanback:Z

    goto :goto_4d

    nop

    :goto_18e
    const-class v1, Landroid/service/dreams/DreamManagerInternal;

    goto :goto_e2

    nop

    :goto_18f
    const v3, 0x11102b4

    goto :goto_198

    nop

    :goto_190
    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowWakeUpPolicy:Lcom/android/server/policy/WindowWakeUpPolicy;

    goto :goto_164

    nop

    :goto_191
    const v5, 0x111016f

    goto :goto_cf

    nop

    :goto_192
    const-string v7, "android.intent.action.MAIN"

    goto :goto_94

    nop

    :goto_193
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    goto :goto_9d

    nop

    :goto_194
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/policy/PhoneWindowManager$Injector;->getWindowManager()Landroid/view/IWindowManager;

    move-result-object v1

    goto :goto_127

    nop

    :goto_195
    invoke-direct/range {v12 .. v18}, Lcom/android/server/policy/BurnInProtectionHelper;-><init>(Landroid/content/Context;IIIII)V

    goto :goto_ae

    nop

    :goto_196
    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    goto :goto_168

    nop

    :goto_197
    iput v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressOnPowerBehavior:I

    goto :goto_141

    nop

    :goto_198
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    goto :goto_e8

    nop

    :goto_199
    const v7, 0x10e00c1

    goto :goto_51

    nop

    :goto_19a
    iput-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerDoublePressTargetActivity:Landroid/content/ComponentName;

    goto :goto_ea

    nop

    :goto_19b
    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    goto :goto_1d

    nop

    :goto_19c
    check-cast v6, Landroid/view/accessibility/AccessibilityManager;

    goto :goto_19e

    nop

    :goto_19d
    const-class v1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    goto :goto_e6

    nop

    :goto_19e
    iput-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    goto :goto_36

    nop

    :goto_19f
    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mLogger:Lcom/android/internal/logging/MetricsLogger;

    goto :goto_1c

    nop

    :goto_1a0
    const-string v10, "android.intent.category.CAR_DOCK"

    goto :goto_ca

    nop

    :goto_1a1
    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    goto :goto_111

    nop

    :goto_1a2
    const v7, 0x10e00ba

    goto :goto_10

    nop

    :goto_1a3
    new-instance v6, Lcom/android/server/policy/PhoneWindowManager$7;

    goto :goto_1ae

    nop

    :goto_1a4
    new-instance v6, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    goto :goto_7a

    nop

    :goto_1a5
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    goto :goto_3c

    nop

    :goto_1a6
    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_e

    nop

    :goto_1a7
    check-cast v1, Landroid/hardware/input/InputManager;

    goto :goto_dd

    nop

    :goto_1a8
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    goto :goto_71

    nop

    :goto_1a9
    iget-object v9, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    goto :goto_160

    nop

    :goto_1aa
    check-cast v1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    goto :goto_4a

    nop

    :goto_1ab
    move v8, v2

    :goto_1ac
    goto :goto_13e

    nop

    :goto_1ad
    invoke-direct {v2, v7, v9, v10}, Lcom/android/server/policy/SideFpsEventHandler;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/PowerManager;)V

    goto :goto_60

    nop

    :goto_1ae
    invoke-direct {v6, v0, v2}, Lcom/android/server/policy/PhoneWindowManager$7;-><init>(Lcom/android/server/policy/PhoneWindowManager;I)V

    goto :goto_98

    nop

    :goto_1af
    const v7, 0x10e0046

    goto :goto_169

    nop
.end method

.method initializeHdmiState()V
    .registers 3

    goto :goto_3

    nop

    :goto_0
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    goto :goto_4

    nop

    :goto_1
    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    nop

    :goto_2
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    nop

    goto :goto_1

    nop

    :goto_3
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReadsMask()I

    move-result v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->initializeHdmiStateInternal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    nop

    :goto_4
    throw v1
.end method

.method initializeHdmiStateInternal()V
    .registers 12

    goto :goto_1

    nop

    :goto_0
    goto :goto_31

    :catchall_0
    move-exception v0

    goto :goto_4

    nop

    :goto_1
    const-string v0, "Couldn\'t read hdmi state from /sys/class/switch/hdmi/state: "

    goto :goto_2e

    nop

    :goto_2
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    nop

    :goto_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    goto :goto_10

    nop

    :goto_4
    goto :goto_d

    :catch_0
    move-exception v4

    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    goto :goto_3c

    nop

    :goto_5
    const-string v3, "/sys/class/switch/hdmi/state"

    goto :goto_3b

    nop

    :goto_6
    if-nez v6, :cond_0

    goto :goto_33

    :cond_0
    :try_start_1
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_32

    nop

    :goto_7
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_27

    nop

    :goto_8
    if-nez v6, :cond_1

    goto :goto_2a

    :cond_1
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_29

    nop

    :goto_9
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHDMIObserver:Landroid/os/UEventObserver;

    :goto_a
    goto :goto_36

    nop

    :goto_b
    if-nez v3, :cond_2

    goto :goto_25

    :cond_2
    goto :goto_2c

    nop

    :goto_c
    goto :goto_a

    :goto_d
    goto :goto_8

    nop

    :goto_e
    const/4 v5, 0x1

    goto :goto_21

    nop

    :goto_f
    const-string v6, "DEVPATH=/devices/virtual/switch/hdmi"

    goto :goto_2f

    nop

    :goto_10
    if-eqz v1, :cond_3

    goto :goto_a

    :cond_3
    goto :goto_39

    nop

    :goto_11
    invoke-static {}, Lxiaomi/platform/flags/Flags;->qcomEnabled()Z

    move-result v3

    goto :goto_b

    nop

    :goto_12
    invoke-static {v1, v3}, Lcom/android/server/policy/PhoneWindowManager$HdmiVideoExtconUEventObserver;->-$$Nest$minit(Lcom/android/server/policy/PhoneWindowManager$HdmiVideoExtconUEventObserver;Lcom/android/server/ExtconUEventObserver$ExtconInfo;)Z

    move-result v2

    goto :goto_9

    nop

    :goto_13
    invoke-static {}, Lxiaomi/platform/flags/Flags;->qcomEnabled()Z

    move-result v3

    goto :goto_28

    nop

    :goto_14
    invoke-static {v0}, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->getExtconInfoForTypes([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_3

    nop

    :goto_15
    move v4, v5

    :goto_16
    goto :goto_30

    nop

    :goto_17
    const/4 v4, 0x0

    goto :goto_e

    nop

    :goto_18
    throw v0

    :goto_19
    goto :goto_26

    nop

    :goto_1a
    check-cast v3, Lcom/android/server/ExtconUEventObserver$ExtconInfo;

    goto :goto_12

    nop

    :goto_1b
    if-nez v0, :cond_4

    goto :goto_16

    :cond_4
    goto :goto_15

    nop

    :goto_1c
    const-string v4, "change@/devices/virtual/graphics/fb2"

    goto :goto_1e

    nop

    :goto_1d
    invoke-direct {v1, p0, v3}, Lcom/android/server/policy/PhoneWindowManager$HdmiVideoExtconUEventObserver;-><init>(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/PhoneWindowManager-IA;)V

    goto :goto_35

    nop

    :goto_1e
    invoke-virtual {v3, v4}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    :goto_1f
    goto :goto_37

    nop

    :goto_20
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mHDMISwitchObserver:Landroid/os/UEventObserver;

    goto :goto_1c

    nop

    :goto_21
    if-nez v3, :cond_5

    goto :goto_19

    :cond_5
    goto :goto_2b

    nop

    :goto_22
    return-void

    :goto_23
    const-string v4, "mdss_mdp/drm/card"

    goto :goto_24

    nop

    :goto_24
    invoke-virtual {v3, v4}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    :goto_25
    goto :goto_13

    nop

    :goto_26
    const-string v0, "HDMI"

    goto :goto_2

    nop

    :goto_27
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    goto :goto_17

    nop

    :goto_28
    if-nez v3, :cond_6

    goto :goto_1f

    :cond_6
    goto :goto_20

    nop

    :goto_29
    goto :goto_2a

    :catch_1
    move-exception v1

    :goto_2a
    goto :goto_18

    nop

    :goto_2b
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mHDMIObserver:Landroid/os/UEventObserver;

    goto :goto_f

    nop

    :goto_2c
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mExtEventObserver:Landroid/os/UEventObserver;

    goto :goto_23

    nop

    :goto_2d
    const-string v4, "/sys/devices/virtual/switch/hdmi/state"

    goto :goto_7

    nop

    :goto_2e
    const-string v1, "WindowManager"

    goto :goto_34

    nop

    :goto_2f
    invoke-virtual {v3, v6}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    goto :goto_5

    nop

    :goto_30
    move v2, v4

    :cond_7
    nop

    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_31
    goto :goto_3a

    nop

    :goto_32
    goto :goto_31

    :goto_33
    goto :goto_c

    nop

    :goto_34
    const/4 v2, 0x0

    goto :goto_11

    nop

    :goto_35
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1a

    nop

    :goto_36
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    goto :goto_38

    nop

    :goto_37
    new-instance v3, Ljava/io/File;

    goto :goto_2d

    nop

    :goto_38
    invoke-virtual {v0, v2, v5}, Lcom/android/server/wm/DisplayPolicy;->setHdmiPlugged(ZZ)V

    goto :goto_22

    nop

    :goto_39
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$HdmiVideoExtconUEventObserver;

    goto :goto_3d

    nop

    :goto_3a
    goto :goto_33

    :catch_2
    move-exception v0

    goto :goto_0

    nop

    :goto_3b
    const/4 v6, 0x0

    :try_start_4
    new-instance v7, Ljava/io/FileReader;

    const-string v8, "/sys/class/switch/hdmi/state"

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object v6, v7

    const/16 v7, 0xf

    new-array v7, v7, [C

    invoke-virtual {v6, v7}, Ljava/io/FileReader;->read([C)I

    move-result v8

    if-le v8, v5, :cond_7

    new-instance v9, Ljava/lang/String;

    add-int/lit8 v10, v8, -0x1

    invoke-direct {v9, v7, v4, v10}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1b

    nop

    :goto_3c
    if-nez v6, :cond_8

    goto :goto_33

    :cond_8
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3e

    nop

    :goto_3d
    const/4 v3, 0x0

    goto :goto_1d

    nop

    :goto_3e
    goto :goto_31

    :catch_3
    move-exception v4

    :try_start_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    nop

    goto :goto_6

    nop
.end method

.method public interceptKeyBeforeDispatching(Landroid/os/IBinder;Landroid/view/KeyEvent;I)J
    .registers 20

    move-object/from16 v0, p0

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    const-wide/16 v3, -0x1

    const-wide/16 v5, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v7

    sget-boolean v8, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v8, :cond_0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "interceptKeyTi keyCode="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " action="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " repeatCount="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " keyguardOn="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " canceled="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "WindowManager"

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Landroid/hardware/input/InputSettings;->doesKeyGestureEventHandlerSupportMultiKeyGestures()Z

    move-result v8

    const-wide/16 v9, -0x1

    if-nez v8, :cond_2

    iget-object v8, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    move-object/from16 v11, p2

    invoke-virtual {v8, v11}, Lcom/android/server/policy/KeyCombinationManager;->isKeyConsumed(Landroid/view/KeyEvent;)Z

    move-result v8

    if-eqz v8, :cond_1

    return-wide v9

    :cond_1
    and-int/lit16 v8, v2, 0x400

    if-nez v8, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    iget-object v8, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyCombinationManager:Lcom/android/server/policy/KeyCombinationManager;

    invoke-virtual {v8, v1}, Lcom/android/server/policy/KeyCombinationManager;->getKeyInterceptTimeout(I)J

    move-result-wide v14

    cmp-long v8, v12, v14

    if-gez v8, :cond_3

    sub-long v8, v14, v12

    return-wide v8

    :cond_2
    move-object/from16 v11, p2

    :cond_3
    iget-object v8, v0, Lcom/android/server/policy/PhoneWindowManager;->mConsumedKeysForDevice:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    if-nez v8, :cond_4

    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    move-object v8, v12

    iget-object v12, v0, Lcom/android/server/policy/PhoneWindowManager;->mConsumedKeysForDevice:Landroid/util/SparseArray;

    invoke-virtual {v12, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_4
    invoke-direct/range {p0 .. p2}, Lcom/android/server/policy/PhoneWindowManager;->interceptSystemKeysAndShortcuts(Landroid/os/IBinder;Landroid/view/KeyEvent;)Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-virtual {v11}, Landroid/view/KeyEvent;->getAction()I

    move-result v12

    if-nez v12, :cond_5

    invoke-virtual {v11}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v12

    if-nez v12, :cond_5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v8, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-wide v9

    :cond_5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v8, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    invoke-virtual {v11}, Landroid/view/KeyEvent;->getAction()I

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_6

    invoke-virtual {v11}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v13

    if-eqz v13, :cond_7

    :cond_6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v8, v13}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_7

    iget-object v13, v0, Lcom/android/server/policy/PhoneWindowManager;->mConsumedKeysForDevice:Landroid/util/SparseArray;

    invoke-virtual {v13, v7}, Landroid/util/SparseArray;->remove(I)V

    :cond_7
    if-eqz v12, :cond_8

    goto :goto_0

    :cond_8
    const-wide/16 v9, 0x0

    :goto_0
    return-wide v9
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
    .registers 37

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v5, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v5

    :goto_0
    move v7, v0

    and-int/lit8 v0, v3, 0x1

    if-nez v0, :cond_2

    invoke-virtual {v2}, Landroid/view/KeyEvent;->isWakeKey()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v5

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    :goto_2
    const/high16 v8, 0x40000

    and-int/2addr v8, v3

    if-eqz v8, :cond_3

    const/4 v8, 0x1

    goto :goto_3

    :cond_3
    move v8, v5

    :goto_3
    iget-boolean v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mVisibleBackgroundUsersEnabled:Z

    const/4 v10, 0x0

    if-eqz v9, :cond_4

    invoke-static {v4}, Landroid/view/KeyEvent;->isVisibleBackgroundUserAllowedKey(I)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v9

    invoke-direct {v1, v9, v4, v10}, Lcom/android/server/policy/PhoneWindowManager;->isKeyEventForCurrentUser(IILjava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    return v5

    :cond_4
    invoke-static {}, Lxiaomi/platform/flags/Flags;->mtkEnabled()Z

    move-result v9

    const-string v11, "WindowManager"

    if-eqz v9, :cond_6

    const-string v9, "sys.hu.status"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_6

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    const-string v10, "shutdown"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    const-string v10, "boot_started"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IPO skip key request when huStatus is "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_6
    iget-boolean v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z

    const/16 v10, 0xb1

    const/16 v12, 0x1a

    if-nez v9, :cond_c

    const/4 v6, 0x0

    if-eqz v7, :cond_8

    if-eq v4, v12, :cond_7

    if-ne v4, v10, :cond_8

    :cond_7
    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromWakeKey(Landroid/view/KeyEvent;)V

    const/4 v6, 0x1

    goto :goto_4

    :cond_8
    if-eqz v7, :cond_a

    if-nez v0, :cond_9

    const/16 v9, 0xe0

    if-ne v4, v9, :cond_a

    :cond_9
    invoke-direct {v1, v4}, Lcom/android/server/policy/PhoneWindowManager;->isWakeKeyWhenScreenOff(I)Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromWakeKey(Landroid/view/KeyEvent;)V

    const/4 v6, 0x1

    :cond_a
    :goto_4
    if-eqz v6, :cond_b

    invoke-direct {v1}, Lcom/android/server/policy/PhoneWindowManager;->getHdmiControl()Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    move-result-object v9

    if-eqz v9, :cond_b

    invoke-virtual {v9}, Lcom/android/server/policy/PhoneWindowManager$HdmiControl;->turnOnTv()V

    :cond_b
    return v5

    :cond_c
    const/high16 v9, 0x20000000

    and-int/2addr v9, v3

    if-eqz v9, :cond_d

    const/4 v9, 0x1

    goto :goto_5

    :cond_d
    move v9, v5

    :goto_5
    invoke-virtual {v2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v13

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v14

    const/high16 v15, 0x1000000

    and-int/2addr v15, v3

    if-eqz v15, :cond_e

    const/4 v15, 0x1

    goto :goto_6

    :cond_e
    move v15, v5

    :goto_6
    move/from16 v16, v5

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    if-ne v5, v12, :cond_f

    if-eqz v7, :cond_f

    iget-object v5, v1, Lcom/android/server/policy/PhoneWindowManager;->mSideFpsEventHandler:Lcom/android/server/policy/SideFpsEventHandler;

    invoke-virtual {v5}, Lcom/android/server/policy/SideFpsEventHandler;->notifyPowerPressed()V

    :cond_f
    sget-boolean v5, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v5, :cond_12

    iget-object v5, v1, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v5, :cond_11

    if-eqz v9, :cond_10

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v5

    if-eqz v5, :cond_11

    goto :goto_7

    :cond_10
    iget-object v5, v1, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v5}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_11

    :goto_7
    const/4 v5, 0x1

    goto :goto_8

    :cond_11
    move/from16 v5, v16

    :goto_8
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "interceptKeyTq keycode="

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, " interactive="

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, " keyguardActive="

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, " policyFlags="

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManagerStub;->getInstance()Lcom/android/server/policy/PhoneWindowManagerStub;

    move-result-object v5

    invoke-interface {v5, v2}, Lcom/android/server/policy/PhoneWindowManagerStub;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_13

    return v16

    :cond_13
    invoke-static {}, Lxiaomi/platform/flags/Flags;->mtkEnabled()Z

    move-result v5

    const/4 v6, -0x1

    if-eqz v5, :cond_14

    if-nez v9, :cond_14

    if-eqz v15, :cond_14

    if-nez v0, :cond_14

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Inject keyevent when screen off. ignore! keyevent="

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    move v12, v5

    move v5, v0

    goto :goto_a

    :cond_14
    if-nez v9, :cond_1a

    if-eqz v15, :cond_15

    if-nez v0, :cond_15

    goto :goto_9

    :cond_15
    invoke-direct {v1, v14, v4}, Lcom/android/server/policy/PhoneWindowManager;->shouldDispatchInputWhenNonInteractive(II)Z

    move-result v5

    if-eqz v5, :cond_16

    const/4 v5, 0x1

    iput v6, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingWakeKey:I

    move v12, v5

    move v5, v0

    goto :goto_a

    :cond_16
    const/4 v5, 0x0

    if-eqz v0, :cond_18

    if-eqz v7, :cond_17

    invoke-direct {v1, v4}, Lcom/android/server/policy/PhoneWindowManager;->isWakeKeyWhenScreenOff(I)Z

    move-result v12

    if-nez v12, :cond_18

    :cond_17
    const/4 v0, 0x0

    :cond_18
    if-eqz v0, :cond_19

    if-eqz v7, :cond_19

    iput v4, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingWakeKey:I

    :cond_19
    move v12, v5

    move v5, v0

    goto :goto_a

    :cond_1a
    :goto_9
    const/4 v5, 0x1

    const/4 v0, 0x0

    if-eqz v9, :cond_1c

    iget v12, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingWakeKey:I

    if-ne v4, v12, :cond_1b

    if-nez v7, :cond_1b

    const/4 v5, 0x0

    :cond_1b
    iput v6, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingWakeKey:I

    move v12, v5

    move v5, v0

    goto :goto_a

    :cond_1c
    move v12, v5

    move v5, v0

    :goto_a
    invoke-static {v4}, Lcom/android/server/policy/PhoneWindowManager;->isValidGlobalKey(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    invoke-virtual {v0, v4}, Lcom/android/server/policy/GlobalKeyManager;->shouldHandleGlobalKey(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    if-nez v9, :cond_1d

    if-eqz v5, :cond_1d

    if-eqz v7, :cond_1d

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    invoke-virtual {v0, v4}, Lcom/android/server/policy/GlobalKeyManager;->shouldDispatchFromNonInteractive(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalKeyManager;->setBeganFromNonInteractive()V

    const/4 v12, 0x1

    iput v6, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingWakeKey:I

    :cond_1d
    if-eqz v5, :cond_1e

    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromWakeKey(Landroid/view/KeyEvent;)V

    :cond_1e
    return v12

    :cond_1f
    invoke-direct {v1}, Lcom/android/server/policy/PhoneWindowManager;->getHdmiControlManager()Landroid/hardware/hdmi/HdmiControlManager;

    move-result-object v19

    if-ne v4, v10, :cond_21

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureLeanback:Z

    if-eqz v0, :cond_21

    if-eqz v19, :cond_20

    invoke-virtual/range {v19 .. v19}, Landroid/hardware/hdmi/HdmiControlManager;->shouldHandleTvPowerKey()Z

    move-result v0

    if-nez v0, :cond_21

    :cond_20
    nop

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v20

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v22

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getAction()I

    move-result v24

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v26

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v27

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v28

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v29

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v30

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getSource()I

    move-result v31

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v32

    const/16 v25, 0x1a

    const/16 v33, 0x0

    invoke-static/range {v20 .. v33}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v0

    invoke-virtual {v1, v0, v3}, Lcom/android/server/policy/PhoneWindowManager;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I

    move-result v2

    return v2

    :cond_21
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v0

    invoke-static {v0}, Landroid/view/Display;->isOnState(I)Z

    move-result v10

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isAwake()Z

    move-result v20

    if-eqz v9, :cond_22

    if-eqz v20, :cond_22

    const/4 v0, 0x1

    goto :goto_b

    :cond_22
    move/from16 v0, v16

    :goto_b
    move/from16 v21, v0

    if-eqz v8, :cond_23

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-virtual {v0}, Lcom/android/server/policy/SingleKeyGestureDetector;->reset()V

    move/from16 v6, v21

    goto :goto_c

    :cond_23
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_25

    invoke-static {}, Lcom/android/server/policy/PhoneWindowManagerStub;->getInstance()Lcom/android/server/policy/PhoneWindowManagerStub;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/server/policy/PhoneWindowManagerStub;->skipKeyGesutre(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_24

    move/from16 v6, v21

    invoke-direct {v1, v2, v6, v10}, Lcom/android/server/policy/PhoneWindowManager;->handleKeyGesture(Landroid/view/KeyEvent;ZZ)V

    goto :goto_c

    :cond_24
    move/from16 v6, v21

    goto :goto_c

    :cond_25
    move/from16 v6, v21

    :goto_c
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    goto :goto_d

    :cond_26
    move/from16 v0, v16

    :goto_d
    move/from16 v21, v0

    if-eqz v7, :cond_28

    and-int/lit8 v0, v3, 0x2

    if-eqz v0, :cond_28

    if-eqz v21, :cond_27

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mNavBarVirtualKeyHapticFeedbackEnabled:Z

    if-eqz v0, :cond_28

    :cond_27
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_28

    const/4 v0, 0x1

    goto :goto_e

    :cond_28
    move/from16 v0, v16

    :goto_e
    move/from16 v23, v0

    const/16 v0, 0x22

    const/4 v3, 0x3

    sparse-switch v4, :sswitch_data_0

    move/from16 v24, v5

    move/from16 v27, v6

    move/from16 v17, v7

    move/from16 v25, v9

    move/from16 v26, v10

    goto :goto_1b

    :sswitch_0
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->enableNew25q2Keycodes()Z

    move-result v0

    if-nez v0, :cond_29

    and-int/lit8 v12, v12, -0x2

    move/from16 v27, v6

    move/from16 v17, v7

    move/from16 v25, v9

    move/from16 v26, v10

    goto :goto_1c

    :cond_29
    move/from16 v24, v5

    move/from16 v27, v6

    move/from16 v17, v7

    move/from16 v25, v9

    move/from16 v26, v10

    goto :goto_1b

    :sswitch_1
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManagerStub;->getInstance()Lcom/android/server/policy/PhoneWindowManagerStub;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/server/policy/PhoneWindowManagerStub;->skipInterceptMacroEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2a

    move/from16 v24, v5

    move/from16 v27, v6

    move/from16 v17, v7

    move/from16 v25, v9

    move/from16 v26, v10

    goto :goto_1b

    :cond_2a
    and-int/lit8 v12, v12, -0x2

    move/from16 v27, v6

    move/from16 v17, v7

    move/from16 v25, v9

    move/from16 v26, v10

    goto :goto_1c

    :sswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stylus buttons event: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " received. Should handle event? "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mStylusButtonsEnabled:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mStylusButtonsEnabled:Z

    if-eqz v0, :cond_2b

    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->sendSystemKeyToStatusBarAsync(Landroid/view/KeyEvent;)V

    :cond_2b
    and-int/lit8 v12, v12, -0x2

    move/from16 v27, v6

    move/from16 v17, v7

    move/from16 v25, v9

    move/from16 v26, v10

    goto :goto_1c

    :sswitch_3
    and-int/lit8 v12, v12, -0x2

    move/from16 v27, v6

    move/from16 v17, v7

    move/from16 v25, v9

    move/from16 v26, v10

    goto :goto_1c

    :sswitch_4
    const/16 v0, 0x23

    invoke-direct {v1, v2, v0}, Lcom/android/server/policy/PhoneWindowManager;->notifyKeyGestureCompletedOnActionUp(Landroid/view/KeyEvent;I)V

    and-int/lit8 v12, v12, -0x2

    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->interceptSystemNavigationKey(Landroid/view/KeyEvent;)V

    move/from16 v27, v6

    move/from16 v17, v7

    move/from16 v25, v9

    move/from16 v26, v10

    goto :goto_1c

    :sswitch_5
    const/16 v0, 0x24

    invoke-direct {v1, v2, v0}, Lcom/android/server/policy/PhoneWindowManager;->notifyKeyGestureCompletedOnActionUp(Landroid/view/KeyEvent;I)V

    and-int/lit8 v12, v12, -0x2

    const/4 v5, 0x0

    if-nez v7, :cond_2c

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v0}, Landroid/os/PowerManagerInternal;->setUserInactiveOverrideFromWindowManager()V

    :cond_2c
    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->sendSystemKeyToStatusBarAsync(Landroid/view/KeyEvent;)V

    move/from16 v27, v6

    move/from16 v17, v7

    move/from16 v25, v9

    move/from16 v26, v10

    goto :goto_1c

    :sswitch_6
    if-eqz v7, :cond_2d

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_2d

    and-int/lit8 v0, v12, 0x1

    if-nez v0, :cond_2d

    move/from16 v25, v9

    move/from16 v26, v10

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v9

    invoke-direct {v1, v4, v9, v10}, Lcom/android/server/policy/PhoneWindowManager;->setDeferredKeyActionsExecutableAsync(IJ)V

    move/from16 v24, v5

    move/from16 v27, v6

    move/from16 v17, v7

    goto :goto_1b

    :cond_2d
    move/from16 v25, v9

    move/from16 v26, v10

    move/from16 v24, v5

    move/from16 v27, v6

    move/from16 v17, v7

    goto :goto_1b

    :sswitch_7
    move/from16 v25, v9

    move/from16 v26, v10

    if-nez v7, :cond_2e

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->notifyKeyGestureCompleted(Landroid/view/KeyEvent;I)V

    :cond_2e
    and-int/lit8 v12, v12, -0x2

    move/from16 v27, v6

    move/from16 v17, v7

    goto :goto_1c

    :sswitch_8
    move/from16 v25, v9

    move/from16 v26, v10

    const/16 v0, 0x25

    invoke-direct {v1, v2, v0}, Lcom/android/server/policy/PhoneWindowManager;->notifyKeyGestureCompletedOnActionUp(Landroid/view/KeyEvent;I)V

    and-int/lit8 v12, v12, -0x2

    const/4 v5, 0x1

    move/from16 v27, v6

    move/from16 v17, v7

    goto :goto_1c

    :sswitch_9
    move/from16 v25, v9

    move/from16 v26, v10

    const/16 v0, 0x24

    invoke-direct {v1, v2, v0}, Lcom/android/server/policy/PhoneWindowManager;->notifyKeyGestureCompletedOnActionUp(Landroid/view/KeyEvent;I)V

    and-int/lit8 v12, v12, -0x2

    const/4 v5, 0x0

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_2f

    const/16 v23, 0x0

    :cond_2f
    if-eqz v7, :cond_30

    invoke-direct {v1}, Lcom/android/server/policy/PhoneWindowManager;->sleepPress()V

    goto :goto_f

    :cond_30
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v9

    invoke-direct {v1, v9, v10}, Lcom/android/server/policy/PhoneWindowManager;->sleepRelease(J)V

    :goto_f
    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->sendSystemKeyToStatusBarAsync(Landroid/view/KeyEvent;)V

    move/from16 v27, v6

    move/from16 v17, v7

    goto :goto_1c

    :sswitch_a
    move/from16 v25, v9

    move/from16 v26, v10

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-lez v0, :cond_31

    const/4 v0, 0x1

    goto :goto_10

    :cond_31
    move/from16 v0, v16

    :goto_10
    if-eqz v7, :cond_32

    if-nez v0, :cond_32

    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v9

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v27

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    move/from16 v17, v0

    const/16 v0, 0x17

    move/from16 v24, v5

    move/from16 v5, v16

    invoke-virtual {v3, v0, v9, v5, v10}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->notifyKeyGestureCompleted(Landroid/view/KeyEvent;I)V

    goto :goto_11

    :cond_32
    move/from16 v17, v0

    move/from16 v24, v5

    :goto_11
    and-int/lit8 v12, v12, -0x2

    move/from16 v27, v6

    move/from16 v17, v7

    move/from16 v5, v24

    goto :goto_1c

    :sswitch_b
    move/from16 v24, v5

    move/from16 v25, v9

    move/from16 v26, v10

    invoke-direct {v1, v2, v0}, Lcom/android/server/policy/PhoneWindowManager;->notifyKeyGestureCompletedOnActionUp(Landroid/view/KeyEvent;I)V

    and-int/lit8 v12, v12, -0x2

    const/4 v5, 0x0

    if-eqz v7, :cond_33

    if-eqz v19, :cond_33

    invoke-virtual/range {v19 .. v19}, Landroid/hardware/hdmi/HdmiControlManager;->toggleAndFollowTvPower()V

    :cond_33
    :goto_12
    move/from16 v27, v6

    move/from16 v17, v7

    goto :goto_1c

    :sswitch_c
    move/from16 v24, v5

    move/from16 v25, v9

    move/from16 v26, v10

    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnWindowBehavior:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_36

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPictureInPictureVisible:Z

    if-eqz v0, :cond_35

    if-nez v7, :cond_34

    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->showPictureInPictureMenu(Landroid/view/KeyEvent;)V

    :cond_34
    and-int/lit8 v12, v12, -0x2

    move/from16 v27, v6

    move/from16 v17, v7

    move/from16 v5, v24

    goto :goto_1c

    :cond_35
    move/from16 v27, v6

    move/from16 v17, v7

    goto :goto_1b

    :cond_36
    move/from16 v27, v6

    move/from16 v17, v7

    goto :goto_1b

    :sswitch_d
    move/from16 v24, v5

    move/from16 v25, v9

    move/from16 v26, v10

    and-int/lit8 v12, v12, -0x2

    if-eqz v7, :cond_37

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_37

    const/16 v0, 0x1a

    invoke-direct {v1, v2, v0}, Lcom/android/server/policy/PhoneWindowManager;->notifyKeyGestureCompleted(Landroid/view/KeyEvent;I)V

    invoke-direct {v1}, Lcom/android/server/policy/PhoneWindowManager;->toggleMicrophoneMuteFromKey()V

    :cond_37
    :goto_13
    move/from16 v27, v6

    move/from16 v17, v7

    move/from16 v5, v24

    goto :goto_1c

    :sswitch_e
    move/from16 v24, v5

    move/from16 v25, v9

    move/from16 v26, v10

    const/16 v0, 0x26

    invoke-direct {v1, v2, v0}, Lcom/android/server/policy/PhoneWindowManager;->notifyKeyGestureCompletedOnActionUp(Landroid/view/KeyEvent;I)V

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/session/MediaSessionLegacyHelper;->isGlobalPriorityActive()Z

    move-result v0

    if-eqz v0, :cond_38

    and-int/lit8 v12, v12, -0x2

    :cond_38
    and-int/lit8 v0, v12, 0x1

    if-nez v0, :cond_37

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v5, Landroid/view/KeyEvent;

    invoke-direct {v5, v2}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    invoke-virtual {v0, v3, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_13

    :sswitch_f
    move/from16 v24, v5

    move/from16 v25, v9

    move/from16 v26, v10

    if-eqz v7, :cond_3a

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_3a

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    and-int/lit16 v0, v0, -0xc2

    const/16 v3, 0x1000

    invoke-static {v0, v3}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v0

    if-eqz v0, :cond_39

    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, v2}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    invoke-direct {v1, v0}, Lcom/android/server/policy/PhoneWindowManager;->handleSwitchKeyboardLayoutToast(Landroid/view/KeyEvent;)V

    move/from16 v27, v6

    move/from16 v17, v7

    goto :goto_1b

    :cond_39
    move/from16 v27, v6

    move/from16 v17, v7

    goto :goto_1b

    :cond_3a
    move/from16 v27, v6

    move/from16 v17, v7

    goto :goto_1b

    :sswitch_10
    move/from16 v24, v5

    move/from16 v25, v9

    move/from16 v26, v10

    invoke-direct {v1, v2, v0}, Lcom/android/server/policy/PhoneWindowManager;->notifyKeyGestureCompletedOnActionUp(Landroid/view/KeyEvent;I)V

    nop

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    invoke-static {v0}, Landroid/view/KeyEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v0

    iget-boolean v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    iget-object v5, v1, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    const/16 v9, 0x1a

    invoke-virtual {v5, v9}, Lcom/android/server/policy/SingleKeyGestureDetector;->getKeyPressCounter(I)I

    move-result v5

    invoke-static {v0, v3, v5}, Lcom/android/server/policy/EventLogTags;->writeInterceptPower(Ljava/lang/String;II)V

    and-int/lit8 v12, v12, -0x2

    const/4 v5, 0x0

    if-eqz v7, :cond_3b

    invoke-direct {v1, v2, v6, v8}, Lcom/android/server/policy/PhoneWindowManager;->interceptPowerKeyDown(Landroid/view/KeyEvent;ZZ)V

    goto :goto_12

    :cond_3b
    invoke-direct {v1, v2, v13}, Lcom/android/server/policy/PhoneWindowManager;->interceptPowerKeyUp(Landroid/view/KeyEvent;Z)V

    goto :goto_12

    :sswitch_11
    move/from16 v24, v5

    move/from16 v25, v9

    move/from16 v26, v10

    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->checkVolBtn(Landroid/view/KeyEvent;)I

    move-result v0

    if-nez v0, :cond_3c

    return v0

    :cond_3c
    const/16 v0, 0x19

    if-ne v4, v0, :cond_3d

    const/16 v0, 0x13

    goto :goto_14

    :cond_3d
    const/16 v0, 0x18

    if-ne v4, v0, :cond_3e

    const/16 v0, 0x12

    goto :goto_14

    :cond_3e
    const/16 v0, 0x14

    :goto_14
    move v5, v0

    invoke-direct {v1, v2, v5}, Lcom/android/server/policy/PhoneWindowManager;->notifyKeyGestureCompletedOnActionDown(Landroid/view/KeyEvent;I)V

    if-eqz v7, :cond_45

    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->sendSystemKeyToStatusBarAsync(Landroid/view/KeyEvent;)V

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->getNotificationService()Landroid/app/NotificationManager;

    move-result-object v10

    if-eqz v10, :cond_3f

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandleVolumeKeysInWM:Z

    if-nez v0, :cond_3f

    invoke-virtual {v10}, Landroid/app/NotificationManager;->silenceNotificationSound()V

    :cond_3f
    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v17

    if-eqz v17, :cond_40

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandleVolumeKeysInWM:Z

    if-nez v0, :cond_40

    invoke-virtual/range {v17 .. v17}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_40

    const-string v0, "interceptKeyBeforeQueueing: VOLUME key-down while ringing: Silence ringer!"

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->responseToTheCall(Landroid/view/KeyEvent;)V

    and-int/lit8 v12, v12, -0x2

    move/from16 v27, v6

    move/from16 v17, v7

    move/from16 v5, v24

    goto :goto_1c

    :cond_40
    const/16 v27, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getAudioService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioService;->getMode()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move/from16 v27, v0

    goto :goto_15

    :catch_0
    move-exception v0

    const-string v9, "Error getting AudioService in interceptKeyBeforeQueueing."

    invoke-static {v11, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move/from16 v0, v27

    :goto_15
    if-eqz v17, :cond_41

    invoke-virtual/range {v17 .. v17}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v9

    if-nez v9, :cond_42

    :cond_41
    if-ne v0, v3, :cond_43

    :cond_42
    const/4 v3, 0x1

    goto :goto_16

    :cond_43
    const/4 v3, 0x0

    :goto_16
    if-eqz v3, :cond_44

    and-int/lit8 v9, v12, 0x1

    if-nez v9, :cond_44

    iget-object v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v9

    move/from16 v27, v3

    move/from16 v16, v5

    const/high16 v3, -0x80000000

    const/4 v5, 0x0

    invoke-virtual {v9, v2, v3, v5}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;IZ)V

    move/from16 v27, v6

    move/from16 v17, v7

    goto :goto_1b

    :cond_44
    move/from16 v27, v3

    move/from16 v16, v5

    goto :goto_17

    :cond_45
    move/from16 v16, v5

    :goto_17
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mUseTvRouting:Z

    if-nez v0, :cond_48

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandleVolumeKeysInWM:Z

    if-eqz v0, :cond_46

    goto :goto_18

    :cond_46
    and-int/lit8 v0, v12, 0x1

    if-nez v0, :cond_47

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    const/high16 v3, -0x80000000

    const/4 v5, 0x1

    invoke-virtual {v0, v2, v3, v5}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;IZ)V

    move/from16 v27, v6

    move/from16 v17, v7

    goto :goto_1b

    :cond_47
    move/from16 v27, v6

    move/from16 v17, v7

    goto :goto_1b

    :cond_48
    :goto_18
    or-int/lit8 v12, v12, 0x1

    move/from16 v27, v6

    move/from16 v17, v7

    move/from16 v5, v24

    goto :goto_1c

    :sswitch_12
    move/from16 v24, v5

    move/from16 v25, v9

    move/from16 v26, v10

    and-int/lit8 v12, v12, -0x2

    if-eqz v7, :cond_4b

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_49

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->endCall()Z

    move-result v3

    :cond_49
    if-eqz v25, :cond_4a

    if-nez v3, :cond_4a

    const/4 v5, 0x0

    iput-boolean v5, v1, Lcom/android/server/policy/PhoneWindowManager;->mEndCallKeyHandled:Z

    iget-object v5, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mEndCallLongPress:Ljava/lang/Runnable;

    iget-object v10, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v10

    move/from16 v27, v6

    move/from16 v17, v7

    invoke-virtual {v10}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    move-result-wide v6

    invoke-virtual {v5, v9, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_19

    :cond_4a
    move/from16 v27, v6

    move/from16 v17, v7

    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/android/server/policy/PhoneWindowManager;->mEndCallKeyHandled:Z

    :goto_19
    goto :goto_1b

    :cond_4b
    move/from16 v27, v6

    move/from16 v17, v7

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mEndCallKeyHandled:Z

    if-nez v0, :cond_52

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mEndCallLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-nez v13, :cond_52

    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mEndcallBehavior:I

    const/16 v18, 0x1

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4c

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->goHome()Z

    move-result v0

    if-eqz v0, :cond_4c

    goto :goto_1b

    :cond_4c
    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mEndcallBehavior:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_52

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v5

    const/4 v0, 0x4

    const/4 v3, 0x0

    invoke-direct {v1, v5, v6, v0, v3}, Lcom/android/server/policy/PhoneWindowManager;->sleepDefaultDisplay(JII)V

    const/4 v5, 0x0

    goto :goto_1c

    :sswitch_13
    move/from16 v24, v5

    move/from16 v27, v6

    move/from16 v17, v7

    move/from16 v25, v9

    move/from16 v26, v10

    if-eqz v17, :cond_52

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v0

    if-eqz v0, :cond_4d

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_4d

    const-string v3, "interceptKeyBeforeQueueing: CALL key-down while ringing: Answer the call!"

    invoke-static {v11, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->acceptRingingCall()V

    and-int/lit8 v12, v12, -0x2

    :cond_4d
    move/from16 v5, v24

    goto :goto_1c

    :sswitch_14
    move/from16 v24, v5

    move/from16 v27, v6

    move/from16 v17, v7

    move/from16 v25, v9

    move/from16 v26, v10

    invoke-direct {v1, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->notifyKeyGestureCompletedOnActionUp(Landroid/view/KeyEvent;I)V

    if-eqz v17, :cond_50

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-lez v0, :cond_4e

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_4e

    const/4 v3, 0x1

    goto :goto_1a

    :cond_4e
    const/4 v3, 0x0

    :goto_1a
    if-nez v3, :cond_4f

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerInternal;->moveFocusToAdjacentEmbeddedActivityIfNeeded()Z

    const/4 v5, 0x0

    iput-boolean v5, v1, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    :cond_4f
    goto :goto_1b

    :cond_50
    invoke-direct {v1}, Lcom/android/server/policy/PhoneWindowManager;->hasLongPressOnBackBehavior()Z

    move-result v0

    if-nez v0, :cond_51

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    invoke-direct {v1}, Lcom/android/server/policy/PhoneWindowManager;->backKeyPress()Z

    move-result v3

    or-int/2addr v0, v3

    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    :cond_51
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    if-eqz v0, :cond_52

    and-int/lit8 v12, v12, -0x2

    move/from16 v5, v24

    goto :goto_1c

    :cond_52
    :goto_1b
    move/from16 v5, v24

    :goto_1c
    if-eqz v23, :cond_53

    const-string v0, "Virtual Key - Press"

    const/4 v3, 0x1

    invoke-direct {v1, v3, v0}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(ILjava/lang/String;)V

    :cond_53
    if-eqz v5, :cond_54

    invoke-static {}, Lcom/android/server/policy/PhoneWindowManagerStub;->getInstance()Lcom/android/server/policy/PhoneWindowManagerStub;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/server/policy/PhoneWindowManagerStub;->interceptWakeKey(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_54

    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromWakeKey(Landroid/view/KeyEvent;)V

    :cond_54
    and-int/lit8 v0, v12, 0x1

    if-eqz v0, :cond_56

    const/4 v3, -0x1

    if-eq v14, v3, :cond_56

    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mTopFocusedDisplayId:I

    if-eq v14, v0, :cond_56

    invoke-static {}, Lcom/android/server/policy/PhoneWindowManagerStub;->getInstance()Lcom/android/server/policy/PhoneWindowManagerStub;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/android/server/policy/PhoneWindowManagerStub;->shouldMoveDisplayToTop(I)Z

    move-result v0

    if-nez v0, :cond_55

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Don\'t move non-focused display "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " to top because a key "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " is targeting it"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v12

    :cond_55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempting to move non-focused display "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " to top because a key is targeting it"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0, v14}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->moveDisplayToTopIfAllowed(I)V

    :cond_56
    return v12

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_14
        0x5 -> :sswitch_13
        0x6 -> :sswitch_12
        0x18 -> :sswitch_11
        0x19 -> :sswitch_11
        0x1a -> :sswitch_10
        0x3e -> :sswitch_f
        0x4f -> :sswitch_e
        0x55 -> :sswitch_e
        0x56 -> :sswitch_e
        0x57 -> :sswitch_e
        0x58 -> :sswitch_e
        0x59 -> :sswitch_e
        0x5a -> :sswitch_e
        0x5b -> :sswitch_d
        0x7e -> :sswitch_e
        0x7f -> :sswitch_e
        0x82 -> :sswitch_e
        0xa4 -> :sswitch_11
        0xab -> :sswitch_c
        0xb1 -> :sswitch_b
        0xdb -> :sswitch_a
        0xde -> :sswitch_e
        0xdf -> :sswitch_9
        0xe0 -> :sswitch_8
        0xe7 -> :sswitch_7
        0x108 -> :sswitch_6
        0x114 -> :sswitch_5
        0x118 -> :sswitch_4
        0x119 -> :sswitch_4
        0x11a -> :sswitch_4
        0x11b -> :sswitch_4
        0x121 -> :sswitch_3
        0x122 -> :sswitch_3
        0x123 -> :sswitch_3
        0x124 -> :sswitch_3
        0x125 -> :sswitch_3
        0x126 -> :sswitch_3
        0x127 -> :sswitch_3
        0x128 -> :sswitch_3
        0x129 -> :sswitch_3
        0x12a -> :sswitch_3
        0x12b -> :sswitch_3
        0x12c -> :sswitch_3
        0x12d -> :sswitch_3
        0x12e -> :sswitch_3
        0x12f -> :sswitch_3
        0x130 -> :sswitch_3
        0x134 -> :sswitch_2
        0x135 -> :sswitch_2
        0x136 -> :sswitch_2
        0x137 -> :sswitch_2
        0x139 -> :sswitch_1
        0x13a -> :sswitch_1
        0x13b -> :sswitch_1
        0x13c -> :sswitch_1
        0x13f -> :sswitch_0
        0x140 -> :sswitch_0
        0x141 -> :sswitch_0
        0x143 -> :sswitch_0
        0x146 -> :sswitch_0
        0x147 -> :sswitch_0
        0x148 -> :sswitch_0
        0x149 -> :sswitch_0
        0x14a -> :sswitch_0
        0x14b -> :sswitch_0
        0x14c -> :sswitch_0
        0x14d -> :sswitch_0
        0x14e -> :sswitch_0
        0x14f -> :sswitch_0
        0x150 -> :sswitch_0
        0x151 -> :sswitch_0
    .end sparse-switch
.end method

.method public interceptMotionBeforeQueueingNonInteractive(IIIJI)I
    .registers 19

    and-int/lit8 v0, p6, 0x1

    const-wide/32 v1, 0xf4240

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowWakeUpPolicy:Lcom/android/server/policy/WindowWakeUpPolicy;

    div-long v7, p4, v1

    if-nez p3, :cond_0

    move v10, v4

    goto :goto_0

    :cond_0
    move v10, v3

    :goto_0
    iget-boolean v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeviceGoingToSleep:Z

    move v6, p1

    move v9, p2

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/policy/WindowWakeUpPolicy;->wakeUpFromMotion(IJIZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    return v4

    :cond_1
    invoke-direct {p0, p1, v3}, Lcom/android/server/policy/PhoneWindowManager;->shouldDispatchInputWhenNonInteractive(II)Z

    move-result v0

    if-eqz v0, :cond_2

    return v4

    :cond_2
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isTheaterModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    and-int/lit8 v0, p6, 0x1

    if-eqz v0, :cond_4

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowWakeUpPolicy:Lcom/android/server/policy/WindowWakeUpPolicy;

    div-long v7, p4, v1

    if-nez p3, :cond_3

    move v10, v4

    goto :goto_1

    :cond_3
    move v10, v3

    :goto_1
    iget-boolean v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeviceGoingToSleep:Z

    move v6, p1

    move v9, p2

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/policy/WindowWakeUpPolicy;->wakeUpFromMotion(IJIZZ)Z

    move-result v0

    if-eqz v0, :cond_4

    return v4

    :cond_4
    return v3
.end method

.method public interceptUnhandledKey(Landroid/view/KeyEvent;Landroid/os/IBinder;)Z
    .registers 11

    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/WindowManagerInternal;->getKeyInterceptionInfoFromToken(Landroid/os/IBinder;)Lcom/android/internal/policy/KeyInterceptionInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "<unknown>"

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/android/internal/policy/KeyInterceptionInfo;->windowTitle:Ljava/lang/String;

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled key: inputToken="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", title="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", flags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", keyCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", scanCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", metaState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", repeatCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WindowManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_2

    move v2, v4

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getModifiers()I

    move-result v5

    const/16 v6, 0x108

    if-ne v0, v6, :cond_3

    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->handleUnhandledSystemKey(Landroid/view/KeyEvent;)V

    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->sendSystemKeyToStatusBarAsync(Landroid/view/KeyEvent;)V

    return v4

    :cond_3
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->useKeyGestureEventHandler()Z

    move-result v6

    if-eqz v6, :cond_4

    return v3

    :cond_4
    sparse-switch v0, :sswitch_data_0

    goto :goto_3

    :sswitch_0
    if-eqz v2, :cond_6

    if-nez v1, :cond_6

    const/4 v3, 0x2

    const-wide/16 v6, 0x0

    invoke-direct {p0, v3, v6, v7}, Lcom/android/server/policy/PhoneWindowManager;->interceptScreenshotChord(IJ)V

    return v4

    :sswitch_1
    if-eqz v2, :cond_6

    invoke-static {v5}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v6

    if-eqz v6, :cond_6

    if-nez v1, :cond_6

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->closeSystemDialogs()V

    return v4

    :sswitch_2
    if-eqz v2, :cond_6

    if-nez v1, :cond_6

    and-int/lit16 v6, v5, -0xc2

    const/16 v7, 0x1000

    invoke-static {v6, v7}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v6

    if-eqz v6, :cond_6

    and-int/lit16 v3, v5, 0xc1

    if-eqz v3, :cond_5

    const/4 v3, -0x1

    goto :goto_2

    :cond_5
    move v3, v4

    :goto_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v6

    invoke-direct {p0, v6, p2, v3}, Lcom/android/server/policy/PhoneWindowManager;->sendSwitchKeyboardLayout(ILandroid/os/IBinder;I)V

    return v4

    :sswitch_3
    if-eqz v2, :cond_6

    const/16 v6, 0x1002

    invoke-static {v5, v6}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->isAccessibilityShortcutAvailable(Z)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x11

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return v4

    :cond_6
    :goto_3
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManagerStub;->getInstance()Lcom/android/server/policy/PhoneWindowManagerStub;

    move-result-object v6

    invoke-interface {v6, p1}, Lcom/android/server/policy/PhoneWindowManagerStub;->interceptUnhandledKey(Landroid/view/KeyEvent;)Z

    move-result v6

    if-eqz v6, :cond_7

    return v4

    :cond_7
    return v3

    :sswitch_data_0
    .sparse-switch
        0x36 -> :sswitch_3
        0x3e -> :sswitch_2
        0x6f -> :sswitch_1
        0x78 -> :sswitch_0
    .end sparse-switch
.end method

.method isDeviceProvisioned()Z
    .registers 4

    goto :goto_7

    nop

    :goto_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    goto :goto_2

    nop

    :goto_1
    return v2

    :goto_2
    const-string v1, "device_provisioned"

    goto :goto_8

    nop

    :goto_3
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_4

    nop

    :goto_4
    if-nez v0, :cond_0

    goto :goto_6

    :cond_0
    goto :goto_5

    nop

    :goto_5
    const/4 v2, 0x1

    :goto_6
    goto :goto_1

    nop

    :goto_7
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    goto :goto_0

    nop

    :goto_8
    const/4 v2, 0x0

    goto :goto_3

    nop
.end method

.method public isDisplayFolded()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

    invoke-virtual {v0}, Lcom/android/server/policy/DisplayFoldController;->isFolded()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isGlobalKey(I)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/GlobalKeyManager;->shouldHandleGlobalKey(I)Z

    move-result v0

    return v0
.end method

.method public isGoingToSleep()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeviceGoingToSleep:Z

    return v0
.end method

.method public isKeyguardDrawnLw()Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnOnce:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z
    .registers 4

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7f8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isKeyguardLocked()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    move-result v0

    return v0
.end method

.method public isKeyguardOccluded()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isOccluded()Z

    move-result v0

    return v0
.end method

.method public isKeyguardSecure(I)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isSecure(I)Z

    move-result v0

    return v0
.end method

.method public isKeyguardShowing()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    return v0
.end method

.method public isKeyguardShowingAndNotOccluded()Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardOccluded()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isKeyguardTrustedLw()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isTrusted()Z

    move-result v0

    return v0
.end method

.method public isScreenOn()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isScreenOnEarly()Z

    move-result v0

    return v0
.end method

.method public isUserSetupComplete()Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string v2, "user_setup_complete"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureLeanback:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isTvUserSetupComplete()Z

    move-result v0

    and-int/2addr v3, v0

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureAuto:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isAutoUserSetupComplete()Z

    move-result v0

    and-int/2addr v3, v0

    :cond_2
    :goto_0
    return v3
.end method

.method public keepScreenOnStartedLw()V
    .registers 1

    return-void
.end method

.method public keepScreenOnStoppedLw()V
    .registers 5

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    :cond_0
    return-void
.end method

.method keyguardOn()Z
    .registers 2

    goto :goto_7

    nop

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->inKeyguardRestrictedKeyInputMode()Z

    move-result v0

    goto :goto_4

    nop

    :goto_1
    goto :goto_6

    :goto_2
    goto :goto_5

    nop

    :goto_3
    return v0

    :goto_4
    if-nez v0, :cond_0

    goto :goto_9

    :cond_0
    goto :goto_8

    nop

    :goto_5
    const/4 v0, 0x1

    :goto_6
    goto :goto_3

    nop

    :goto_7
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    goto :goto_b

    nop

    :goto_8
    goto :goto_2

    :goto_9
    goto :goto_a

    nop

    :goto_a
    const/4 v0, 0x0

    goto :goto_1

    nop

    :goto_b
    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    goto :goto_0

    nop
.end method

.method launchHomeFromHotKey(I)V
    .registers 3

    goto :goto_1

    nop

    :goto_0
    invoke-virtual {p0, p1, v0, v0}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(IZZ)V

    goto :goto_2

    nop

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    nop

    :goto_2
    return-void
.end method

.method launchHomeFromHotKey(IZZ)V
    .registers 6

    goto :goto_8

    nop

    :goto_0
    return-void

    :goto_1
    goto :goto_9

    nop

    :goto_2
    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    goto :goto_14

    nop

    :goto_3
    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isInputRestricted()Z

    move-result v0

    goto :goto_20

    nop

    :goto_4
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    goto :goto_1c

    nop

    :goto_5
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    goto :goto_16

    nop

    :goto_6
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->awakenDreams()V

    :goto_7
    goto :goto_b

    nop

    :goto_8
    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    goto :goto_4

    nop

    :goto_9
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRecentsVisible:Z

    goto :goto_19

    nop

    :goto_a
    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager$14;-><init>(Lcom/android/server/policy/PhoneWindowManager;IZ)V

    goto :goto_e

    nop

    :goto_b
    const/4 v0, 0x0

    goto :goto_17

    nop

    :goto_c
    return-void

    :goto_d
    if-nez p2, :cond_2

    goto :goto_7

    :cond_2
    goto :goto_6

    nop

    :goto_e
    invoke-virtual {v0, v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->verifyUnlock(Lcom/android/server/policy/WindowManagerPolicy$OnKeyguardExitResult;)V

    goto :goto_0

    nop

    :goto_f
    if-eqz p1, :cond_3

    goto :goto_22

    :cond_3
    :goto_10
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->stopAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1a

    nop

    :goto_11
    if-nez v0, :cond_4

    goto :goto_10

    :cond_4
    goto :goto_f

    nop

    :goto_12
    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/policy/PhoneWindowManager;->startDockOrHome(IZZ)V

    :goto_13
    goto :goto_c

    nop

    :goto_14
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    goto :goto_3

    nop

    :goto_15
    if-nez v0, :cond_5

    goto :goto_22

    :cond_5
    goto :goto_18

    nop

    :goto_16
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$14;

    goto :goto_a

    nop

    :goto_17
    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->hideRecentApps(ZZ)V

    goto :goto_21

    nop

    :goto_18
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVisibleBackgroundUsersEnabled:Z

    goto :goto_11

    nop

    :goto_19
    const/4 v1, 0x1

    goto :goto_15

    nop

    :goto_1a
    goto :goto_1b

    :catch_0
    move-exception v0

    :goto_1b
    nop

    goto :goto_d

    nop

    :goto_1c
    if-nez v0, :cond_6

    goto :goto_1e

    :cond_6
    goto :goto_1d

    nop

    :goto_1d
    return-void

    :goto_1e
    goto :goto_1f

    nop

    :goto_1f
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardOccluded()Z

    move-result v0

    goto :goto_2

    nop

    :goto_20
    if-nez v0, :cond_7

    goto :goto_1

    :cond_7
    goto :goto_5

    nop

    :goto_21
    goto :goto_13

    :goto_22
    goto :goto_12

    nop
.end method

.method launchVoiceAssistWithWakeLock()V
    .registers 5

    goto :goto_14

    nop

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    move-result v0

    goto :goto_7

    nop

    :goto_1
    goto :goto_c

    :goto_2
    goto :goto_18

    nop

    :goto_3
    const-class v1, Landroid/os/DeviceIdleManager;

    goto :goto_9

    nop

    :goto_4
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_10

    nop

    :goto_5
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_12

    nop

    :goto_6
    new-instance v1, Landroid/content/Intent;

    goto :goto_1d

    nop

    :goto_7
    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    goto :goto_e

    nop

    :goto_8
    check-cast v0, Landroid/os/DeviceIdleManager;

    goto :goto_15

    nop

    :goto_9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_8

    nop

    :goto_a
    const/4 v3, 0x1

    goto :goto_d

    nop

    :goto_b
    move-object v0, v1

    :goto_c
    goto :goto_1c

    nop

    :goto_d
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_b

    nop

    :goto_e
    new-instance v0, Landroid/content/Intent;

    goto :goto_f

    nop

    :goto_f
    const-string v1, "android.speech.action.WEB_SEARCH"

    goto :goto_17

    nop

    :goto_10
    const-string v2, "android.speech.extras.EXTRA_SECURE"

    goto :goto_a

    nop

    :goto_11
    return-void

    :goto_12
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_11

    nop

    :goto_13
    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    goto :goto_0

    nop

    :goto_14
    const-string v0, "assist"

    goto :goto_13

    nop

    :goto_15
    if-nez v0, :cond_1

    goto :goto_1b

    :cond_1
    goto :goto_19

    nop

    :goto_16
    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_5

    nop

    :goto_17
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_1

    nop

    :goto_18
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    goto :goto_3

    nop

    :goto_19
    const-string v1, "voice-search"

    goto :goto_1a

    nop

    :goto_1a
    invoke-virtual {v0, v1}, Landroid/os/DeviceIdleManager;->endIdle(Ljava/lang/String;)V

    :goto_1b
    goto :goto_6

    nop

    :goto_1c
    sget-object v1, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    goto :goto_16

    nop

    :goto_1d
    const-string v2, "android.speech.action.VOICE_SEARCH_HANDS_FREE"

    goto :goto_4

    nop
.end method

.method public lockNow(Landroid/os/Bundle;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;->setLockOptions(Landroid/os/Bundle;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockNowPending:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifyCameraLensCoverSwitchChanged(JZ)V
    .registers 10

    move v0, p3

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11101dc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    if-nez v0, :cond_4

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v1

    :goto_0
    nop

    if-eqz v1, :cond_3

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_1
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowWakeUpPolicy:Lcom/android/server/policy/WindowWakeUpPolicy;

    const-wide/32 v4, 0xf4240

    div-long v4, p1, v4

    invoke-virtual {v3, v4, v5}, Lcom/android/server/policy/WindowWakeUpPolicy;->wakeUpFromCameraCover(J)Z

    sget-object v3, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-direct {p0, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_4
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    return-void
.end method

.method public notifyLidSwitchChanged(JZ)V
    .registers 9

    move v0, p3

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->getLidState()I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayPolicy;->setLidState(I)V

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->applyLidSwitchState()V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(Z)V

    if-eqz p3, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowWakeUpPolicy:Lcom/android/server/policy/WindowWakeUpPolicy;

    invoke-virtual {v1}, Lcom/android/server/policy/WindowWakeUpPolicy;->wakeUpFromLid()Z

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getLidBehavior()I

    move-result v2

    if-eq v2, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/PowerManager;->userActivity(JZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method public okToAnimate(Z)Z
    .registers 3

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeviceGoingToSleep:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onDefaultDisplayFocusChangedLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .registers 4

    invoke-static {}, Lcom/android/server/policy/PhoneWindowManagerStub;->getInstance()Lcom/android/server/policy/PhoneWindowManagerStub;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/policy/PhoneWindowManagerStub;->setFocusedWindow(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/server/policy/DisplayFoldController;->onDefaultDisplayFocusChanged(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onDisplaySwitchStart(I)V
    .registers 3

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->onDisplaySwitchStart()V

    :cond_0
    return-void
.end method

.method public onKeyguardOccludedChangedLw(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingKeyguardOccluded:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccludedChanged:Z

    :cond_0
    return-void
.end method

.method public onSystemUiStarted()V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->bindKeyguard()V

    return-void
.end method

.method performStemPrimaryDoublePressSwitchToRecentTask()V
    .registers 6

    goto :goto_a

    nop

    :goto_0
    iget-object v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    goto :goto_4

    nop

    :goto_1
    const-string v4, " from recents"

    goto :goto_24

    nop

    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    goto :goto_d

    nop

    :goto_3
    const-string v2, "No recent task available! Show wallpaper."

    goto :goto_25

    nop

    :goto_4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    goto :goto_21

    nop

    :goto_5
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_18

    nop

    :goto_6
    const-string v1, "WindowManager"

    goto :goto_27

    nop

    :goto_7
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mActivityManagerService:Landroid/app/IActivityManager;

    iget v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/app/IActivityManager;->startActivityFromRecents(ILandroid/os/Bundle;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_10

    nop

    :goto_9
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    goto :goto_2a

    nop

    :goto_a
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBackgroundRecentTaskInfoOnStemPrimarySingleKeyUp:Landroid/app/ActivityManager$RecentTaskInfo;

    goto :goto_6

    nop

    :goto_b
    return-void

    :goto_c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    goto :goto_1

    nop

    :goto_d
    const-string v3, ", topActivity="

    goto :goto_2c

    nop

    :goto_e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    goto :goto_16

    nop

    :goto_f
    sget-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    goto :goto_12

    nop

    :goto_10
    goto :goto_1b

    :catch_0
    move-exception v2

    goto :goto_2b

    nop

    :goto_11
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_13

    nop

    :goto_12
    if-nez v2, :cond_0

    goto :goto_26

    :cond_0
    goto :goto_3

    nop

    :goto_13
    const-string v4, "Failed to start task "

    goto :goto_19

    nop

    :goto_14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    goto :goto_0

    nop

    :goto_15
    new-instance v2, Ljava/lang/StringBuilder;

    goto :goto_5

    nop

    :goto_16
    iget v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    goto :goto_9

    nop

    :goto_17
    if-nez v2, :cond_1

    goto :goto_8

    :cond_1
    goto :goto_15

    nop

    :goto_18
    const-string v3, "Starting task from recents. id="

    goto :goto_e

    nop

    :goto_19
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    goto :goto_28

    nop

    :goto_1a
    invoke-static {v1, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1b
    goto :goto_b

    nop

    :goto_1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    goto :goto_23

    nop

    :goto_1d
    return-void

    :goto_1e
    goto :goto_2e

    nop

    :goto_1f
    iget v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    goto :goto_2

    nop

    :goto_20
    iget-object v3, v0, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    goto :goto_1c

    nop

    :goto_21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    nop

    :goto_22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    goto :goto_1f

    nop

    :goto_23
    const-string v3, ", baseIntent="

    goto :goto_14

    nop

    :goto_24
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    goto :goto_2d

    nop

    :goto_25
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_26
    goto :goto_29

    nop

    :goto_27
    if-eqz v0, :cond_2

    goto :goto_1e

    :cond_2
    goto :goto_f

    nop

    :goto_28
    iget v4, v0, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    goto :goto_c

    nop

    :goto_29
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->goHome()Z

    goto :goto_1d

    nop

    :goto_2a
    const-string v3, ", persistentId="

    goto :goto_22

    nop

    :goto_2b
    new-instance v3, Ljava/lang/StringBuilder;

    goto :goto_11

    nop

    :goto_2c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    goto :goto_20

    nop

    :goto_2d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1a

    nop

    :goto_2e
    sget-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    goto :goto_17

    nop
.end method

.method powerPress(JII)V
    .registers 13

    goto :goto_98

    nop

    :goto_0
    invoke-virtual {v3}, Landroid/service/dreams/DreamManagerInternal;->dreamConditionActive()Z

    move-result v6

    goto :goto_9a

    nop

    :goto_1
    const-string v3, " interactive="

    goto :goto_7b

    nop

    :goto_2
    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    goto :goto_1

    nop

    :goto_3
    goto :goto_a7

    :goto_4
    goto :goto_75

    nop

    :goto_5
    const-string v3, " count="

    goto :goto_9f

    nop

    :goto_6
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    goto :goto_9e

    nop

    :goto_7
    invoke-direct {v6, p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/policy/PhoneWindowManager;J)V

    goto :goto_72

    nop

    :goto_8
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    nop

    :goto_9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_46

    nop

    :goto_a
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isScreenOnEarly()Z

    move-result v0

    goto :goto_76

    nop

    :goto_b
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    goto :goto_1d

    nop

    :goto_c
    iget v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    goto :goto_5f

    nop

    :goto_d
    return-void

    :goto_e
    goto :goto_3f

    nop

    :goto_f
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    goto :goto_66

    nop

    :goto_10
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7  #00000000
        :pswitch_3  #00000001
        :pswitch_2  #00000002
        :pswitch_5  #00000003
        :pswitch_1  #00000004
        :pswitch_0  #00000005
        :pswitch_9  #00000006
        :pswitch_4  #00000007
        :pswitch_6  #00000008
        :pswitch_8  #00000009
    .end packed-switch

    :goto_11
    return-void

    :goto_12
    goto :goto_91

    nop

    :goto_13
    if-nez v5, :cond_0

    goto :goto_4b

    :cond_0
    goto :goto_0

    nop

    :goto_14
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->powerMultiPressAction(JZI)V

    goto :goto_3

    nop

    :goto_15
    goto :goto_a7

    :goto_16
    goto :goto_5c

    nop

    :goto_17
    new-instance v6, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda1;

    goto :goto_7

    nop

    :goto_18
    const/4 v1, 0x0

    goto :goto_24

    nop

    :goto_19
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    goto :goto_c

    nop

    :goto_1a
    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    goto :goto_2a

    nop

    :goto_1b
    invoke-static {}, Lmiui/enterprise/RestrictionsHelperStub;->getInstance()Lmiui/enterprise/IRestrictionsHelper;

    move-result-object v2

    goto :goto_2f

    nop

    :goto_1c
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isAwake()Z

    move-result v0

    goto :goto_65

    nop

    :goto_1d
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isScreenOnFully()Z

    move-result v0

    goto :goto_70

    nop

    :goto_1e
    if-nez v3, :cond_1

    goto :goto_a7

    :cond_1
    goto :goto_5e

    nop

    :goto_1f
    if-eqz v3, :cond_2

    goto :goto_42

    :cond_2
    goto :goto_41

    nop

    :goto_20
    invoke-direct {p0, v2, v2, v1}, Lcom/android/server/policy/PhoneWindowManager;->attemptToDreamOrAwakeFromShortPowerButtonPress(ZZLjava/lang/Runnable;)V

    goto :goto_97

    nop

    :goto_21
    goto :goto_3c

    :goto_22
    goto :goto_18

    nop

    :goto_23
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda0;

    goto :goto_8f

    nop

    :goto_24
    invoke-virtual {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->lockNow(Landroid/os/Bundle;)V

    goto :goto_3b

    nop

    :goto_25
    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->hasKeyguard()Z

    move-result v1

    goto :goto_8b

    nop

    :goto_26
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    goto :goto_25

    nop

    :goto_27
    new-instance v4, Landroid/os/Bundle;

    goto :goto_a9

    nop

    :goto_28
    goto :goto_a7

    :pswitch_0  #0x5
    goto :goto_92

    nop

    :goto_29
    if-eq p3, v2, :cond_3

    goto :goto_7d

    :cond_3
    goto :goto_f

    nop

    :goto_2a
    const-string v5, "glanceable_hub_enabled"

    goto :goto_47

    nop

    :goto_2b
    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/policy/PhoneWindowManager;J)V

    goto :goto_20

    nop

    :goto_2c
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    goto :goto_30

    nop

    :goto_2d
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getDreamManagerInternal()Landroid/service/dreams/DreamManagerInternal;

    move-result-object v3

    goto :goto_1f

    nop

    :goto_2e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_9c

    nop

    :goto_2f
    const-string v3, "disable_key_behavior_short_press_power_key"

    goto :goto_4c

    nop

    :goto_30
    const-string v3, " mShortPressOnPowerBehavior="

    goto :goto_90

    nop

    :goto_31
    goto :goto_a7

    :goto_32
    goto :goto_50

    nop

    :goto_33
    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnPowerBehavior:I

    goto :goto_45

    nop

    :goto_34
    xor-int/2addr v5, v2

    goto :goto_19

    nop

    :goto_35
    if-nez v6, :cond_4

    goto :goto_4b

    :cond_4
    goto :goto_4f

    nop

    :goto_36
    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/policy/PhoneWindowManager;->sleepDefaultDisplayFromPowerButton(JI)Z

    goto :goto_6f

    nop

    :goto_37
    invoke-virtual {v1, v2, p4}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->hideInputMethod(II)V

    goto :goto_73

    nop

    :goto_38
    goto :goto_3e

    :goto_39
    goto :goto_3d

    nop

    :goto_3a
    if-eqz v5, :cond_5

    goto :goto_32

    :cond_5
    goto :goto_82

    nop

    :goto_3b
    goto :goto_a7

    :goto_3c
    goto :goto_52

    nop

    :goto_3d
    move v1, v4

    :goto_3e
    goto :goto_2d

    nop

    :goto_3f
    invoke-direct {p0, p1, p2, v4}, Lcom/android/server/policy/PhoneWindowManager;->sleepDefaultDisplayFromPowerButton(JI)Z

    goto :goto_a6

    nop

    :goto_40
    if-nez v1, :cond_6

    goto :goto_3c

    :cond_6
    goto :goto_5d

    nop

    :goto_41
    goto :goto_a7

    :goto_42
    goto :goto_7e

    nop

    :goto_43
    invoke-static {}, Lcom/android/server/wm/BlackScreenWindowManager;->getInstance()Lcom/android/server/wm/BlackScreenWindowManager;

    move-result-object v3

    goto :goto_4e

    nop

    :goto_44
    if-eq v1, v2, :cond_7

    goto :goto_39

    :cond_7
    goto :goto_84

    nop

    :goto_45
    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_0

    goto :goto_aa

    nop

    :goto_46
    const-string v3, "powerPress: eventTime="

    goto :goto_81

    nop

    :goto_47
    invoke-static {v1, v5, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    goto :goto_44

    nop

    :goto_48
    invoke-virtual {v4, v6, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_62

    nop

    :goto_49
    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnPowerBehavior:I

    goto :goto_78

    nop

    :goto_4a
    goto :goto_a7

    :goto_4b
    goto :goto_17

    nop

    :goto_4c
    invoke-interface {v2, v3}, Lmiui/enterprise/IRestrictionsHelper;->isRestriction(Ljava/lang/String;)Z

    move-result v2

    goto :goto_79

    nop

    :goto_4d
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getMaxMultiPressPowerCount()I

    move-result v2

    goto :goto_a2

    nop

    :goto_4e
    invoke-virtual {v3}, Lcom/android/server/wm/BlackScreenWindowManager;->interceptPowerKey()Z

    move-result v3

    goto :goto_7a

    nop

    :goto_4f
    if-nez v1, :cond_8

    goto :goto_4b

    :cond_8
    goto :goto_13

    nop

    :goto_50
    invoke-direct {p0, p1, p2, v4}, Lcom/android/server/policy/PhoneWindowManager;->sleepDefaultDisplayFromPowerButton(JI)Z

    goto :goto_8d

    nop

    :goto_51
    const/4 v2, 0x2

    goto :goto_8e

    nop

    :goto_52
    invoke-direct {p0, p1, p2, v4}, Lcom/android/server/policy/PhoneWindowManager;->sleepDefaultDisplayFromPowerButton(JI)Z

    goto :goto_28

    nop

    :goto_53
    const-string v0, "Suppressed redundant power key press while already in the process of turning the screen on."

    goto :goto_8

    nop

    :goto_54
    new-instance v2, Ljava/lang/StringBuilder;

    goto :goto_a0

    nop

    :goto_55
    if-eq p3, v2, :cond_9

    goto :goto_a7

    :cond_9
    goto :goto_88

    nop

    :goto_56
    const-string v6, "extra_trigger_hub"

    goto :goto_48

    nop

    :goto_57
    goto :goto_32

    :goto_58
    goto :goto_64

    nop

    :goto_59
    return-void

    :goto_5a
    goto :goto_33

    nop

    :goto_5b
    if-nez v1, :cond_a

    goto :goto_a7

    :cond_a
    goto :goto_6e

    nop

    :goto_5c
    const/4 v2, 0x1

    goto :goto_55

    nop

    :goto_5d
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    move-result v1

    goto :goto_77

    nop

    :goto_5e
    invoke-static {}, Landroid/os/microsoft/flags/Flags;->ltwEnabled()Z

    move-result v3

    goto :goto_a5

    nop

    :goto_5f
    invoke-virtual {v6, v7}, Lcom/android/server/pm/UserManagerInternal;->isUserUnlocked(I)Z

    move-result v6

    goto :goto_35

    nop

    :goto_60
    goto :goto_a7

    :pswitch_1  #0x4
    goto :goto_95

    nop

    :goto_61
    goto :goto_a7

    :pswitch_2  #0x2
    goto :goto_36

    nop

    :goto_62
    invoke-virtual {p0, v4}, Lcom/android/server/policy/PhoneWindowManager;->lockNow(Landroid/os/Bundle;)V

    goto :goto_4a

    nop

    :goto_63
    iget v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    goto :goto_86

    nop

    :goto_64
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    goto :goto_63

    nop

    :goto_65
    new-instance v2, Ljava/lang/StringBuilder;

    goto :goto_9

    nop

    :goto_66
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->powerMultiPressAction(JZI)V

    goto :goto_7c

    nop

    :goto_67
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    goto :goto_69

    nop

    :goto_68
    if-gt p3, v2, :cond_b

    goto :goto_16

    :cond_b
    goto :goto_4d

    nop

    :goto_69
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    goto :goto_2e

    nop

    :goto_6a
    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/policy/PhoneWindowManager;->sleepDefaultDisplayFromPowerButton(JI)Z

    move-result v1

    goto :goto_5b

    nop

    :goto_6b
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_51

    nop

    :goto_6c
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    goto :goto_ac

    nop

    :goto_6d
    if-nez v0, :cond_c

    goto :goto_12

    :cond_c
    goto :goto_b

    nop

    :goto_6e
    invoke-virtual {p0, v4}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(I)V

    goto :goto_61

    nop

    :goto_6f
    goto :goto_a7

    :pswitch_3  #0x1
    goto :goto_7f

    nop

    :goto_70
    if-eqz v0, :cond_d

    goto :goto_12

    :cond_d
    goto :goto_53

    nop

    :goto_71
    const/16 v2, 0x11

    goto :goto_37

    nop

    :goto_72
    invoke-direct {p0, v2, v4, v6}, Lcom/android/server/policy/PhoneWindowManager;->attemptToDreamOrAwakeFromShortPowerButtonPress(ZZLjava/lang/Runnable;)V

    goto :goto_31

    nop

    :goto_73
    goto :goto_a7

    :goto_74
    goto :goto_9b

    nop

    :goto_75
    const/4 v2, 0x3

    goto :goto_29

    nop

    :goto_76
    const-string v1, "WindowManager"

    goto :goto_6d

    nop

    :goto_77
    if-nez v1, :cond_e

    goto :goto_22

    :cond_e
    goto :goto_21

    nop

    :goto_78
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    goto :goto_8c

    nop

    :goto_79
    if-nez v2, :cond_f

    goto :goto_e

    :cond_f
    goto :goto_83

    nop

    :goto_7a
    if-nez v3, :cond_10

    goto :goto_5a

    :cond_10
    goto :goto_59

    nop

    :goto_7b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    goto :goto_a3

    nop

    :goto_7c
    goto :goto_a7

    :goto_7d
    goto :goto_68

    nop

    :goto_7e
    invoke-virtual {v3}, Landroid/service/dreams/DreamManagerInternal;->isDreaming()Z

    move-result v5

    goto :goto_3a

    nop

    :goto_7f
    sget-boolean v2, Lmiui/enterprise/EnterpriseManagerStub;->ENTERPRISE_ACTIVATED:Z

    goto :goto_8a

    nop

    :goto_80
    if-nez v1, :cond_11

    goto :goto_74

    :cond_11
    goto :goto_a8

    nop

    :goto_81
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    goto :goto_2

    nop

    :goto_82
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowing()Z

    move-result v5

    goto :goto_94

    nop

    :goto_83
    const-string v2, "enterprise Restriction behavior: short press power key to sleep."

    goto :goto_a4

    nop

    :goto_84
    move v1, v2

    goto :goto_38

    nop

    :goto_85
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda2;

    goto :goto_2b

    nop

    :goto_86
    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v5

    goto :goto_34

    nop

    :goto_87
    if-nez v1, :cond_12

    goto :goto_3c

    :cond_12
    goto :goto_26

    nop

    :goto_88
    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->shouldHandleShortPressPowerAction(ZJ)Z

    move-result v3

    goto :goto_1e

    nop

    :goto_89
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    goto :goto_14

    nop

    :goto_8a
    if-nez v2, :cond_13

    goto :goto_e

    :cond_13
    goto :goto_1b

    nop

    :goto_8b
    if-nez v1, :cond_14

    goto :goto_3c

    :cond_14
    goto :goto_93

    nop

    :goto_8c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_6b

    nop

    :goto_8d
    goto :goto_a7

    :pswitch_4  #0x7
    goto :goto_23

    nop

    :goto_8e
    if-eq p3, v2, :cond_15

    goto :goto_4

    :cond_15
    goto :goto_89

    nop

    :goto_8f
    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/PhoneWindowManager;J)V

    goto :goto_99

    nop

    :goto_90
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    goto :goto_49

    nop

    :goto_91
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    goto :goto_1c

    nop

    :goto_92
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDismissImeOnBackKeyPressed:Z

    goto :goto_80

    nop

    :goto_93
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    goto :goto_6

    nop

    :goto_94
    if-nez v5, :cond_16

    goto :goto_58

    :cond_16
    goto :goto_57

    nop

    :goto_95
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->shortPressPowerGoHome()V

    goto :goto_96

    nop

    :goto_96
    goto :goto_a7

    :pswitch_5  #0x3
    goto :goto_6a

    nop

    :goto_97
    goto :goto_a7

    :pswitch_6  #0x8
    goto :goto_6c

    nop

    :goto_98
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    goto :goto_a

    nop

    :goto_99
    invoke-direct {p0, v2, v4, v1}, Lcom/android/server/policy/PhoneWindowManager;->attemptToDreamOrAwakeFromShortPowerButtonPress(ZZLjava/lang/Runnable;)V

    goto :goto_ab

    nop

    :goto_9a
    if-nez v6, :cond_17

    goto :goto_4b

    :cond_17
    goto :goto_27

    nop

    :goto_9b
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->shortPressPowerGoHome()V

    goto :goto_60

    nop

    :goto_9c
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    nop

    :goto_9d
    const-string v3, "No behavior defined for power press count "

    goto :goto_67

    nop

    :goto_9e
    invoke-virtual {v1, v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isSecure(I)Z

    move-result v1

    goto :goto_40

    nop

    :goto_9f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    goto :goto_2c

    nop

    :goto_a0
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_9d

    nop

    :goto_a1
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    goto :goto_87

    nop

    :goto_a2
    if-le p3, v2, :cond_18

    goto :goto_16

    :cond_18
    goto :goto_54

    nop

    :goto_a3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    goto :goto_5

    nop

    :goto_a4
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    nop

    :goto_a5
    if-nez v3, :cond_19

    goto :goto_5a

    :cond_19
    goto :goto_43

    nop

    :goto_a6
    goto :goto_a7

    :pswitch_7  #0x0
    nop

    :goto_a7
    goto :goto_10

    nop

    :goto_a8
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    move-result-object v1

    goto :goto_71

    nop

    :goto_a9
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    goto :goto_56

    nop

    :goto_aa
    goto :goto_a7

    :pswitch_8  #0x9
    goto :goto_85

    nop

    :goto_ab
    goto :goto_a7

    :pswitch_9  #0x6
    goto :goto_a1

    nop

    :goto_ac
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    goto :goto_1a

    nop
.end method

.method readLidState()V
    .registers 3

    goto :goto_3

    nop

    :goto_0
    return-void

    :goto_1
    invoke-interface {v1}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->getLidState()I

    move-result v1

    goto :goto_2

    nop

    :goto_2
    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayPolicy;->setLidState(I)V

    goto :goto_0

    nop

    :goto_3
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    goto :goto_4

    nop

    :goto_4
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    goto :goto_1

    nop
.end method

.method public registerDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/DisplayFoldController;->registerDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V

    :cond_0
    return-void
.end method

.method public registerShortcutKey(JLcom/android/internal/policy/IShortcutService;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->useKeyGestureEventHandler()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/input/InputManagerInternal;->registerShortcutKey(JLcom/android/internal/policy/IShortcutService;)V

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mModifierShortcutManager:Lcom/android/server/policy/ModifierShortcutManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/policy/ModifierShortcutManager;->registerShortcutKey(JLcom/android/internal/policy/IShortcutService;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method requestBugreportForTv()V
    .registers 4

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->launchBugReportHandlerApp()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->requestInteractiveBugReport()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_3

    nop

    :goto_0
    const-string v2, "Error taking bugreport"

    goto :goto_4

    nop

    :goto_1
    const-string v1, "WindowManager"

    goto :goto_0

    nop

    :goto_2
    return-void

    :goto_3
    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_1

    nop

    :goto_4
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5
    goto :goto_2

    nop
.end method

.method public screenTurnedOff(IZ)V
    .registers 7

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Display"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " turned off..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_4

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mIsGoingToSleepDefaultDisplay:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRequestedOrSleepingDefaultDisplay:Z

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mIsFinishedGoingToSleep:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/DisplayPolicy;->screenTurnedOff(Z)V

    :cond_2
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onScreenTurnedOff()V

    :cond_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListener()V

    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->reportScreenStateToVrManager(Z)V

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    :goto_2
    return-void
.end method

.method public screenTurnedOn(I)V
    .registers 5

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Display "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " turned on..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->reportScreenTurnedOnToWallpaper(I)V

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onScreenTurnedOn()V

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->screenTurnedOn()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->reportScreenStateToVrManager(Z)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public screenTurningOff(ILcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0, p1, p2}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->screenTurningOff(ILcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRequestedOrSleepingDefaultDisplay:Z

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onScreenTurningOff()V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public screenTurningOn(ILcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;)V
    .registers 9

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Display "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " turning on..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/wm/FoldScreenListenerStub;->getInstance()Lcom/android/server/wm/FoldScreenListenerStub;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/wm/FoldScreenListenerStub;->onScreenTurningOn(I)V

    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->reportScreenTurningOnToWallpaper(I)V

    const-wide/16 v0, 0x20

    const/4 v2, 0x0

    if-nez p1, :cond_1

    const-string v3, "screenTurningOn"

    invoke-static {v0, v1, v3, v2}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/DisplayPolicy;->screenTurningOn(Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;)V

    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootAnimationDismissable:Z

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->hasKeyguard()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getKeyguardDrawnTimeout()J

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnCallback:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onScreenTurningOn(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;)V

    goto :goto_0

    :cond_0
    const-string v0, "WindowManager"

    const-string v1, "null mKeyguardDelegate: setting mKeyguardDrawComplete."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnListeners:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v3, "waitForAllWindowsDrawn"

    invoke-static {v0, v1, v3, p1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v1, v3, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/server/wm/WindowManagerInternal;->waitForAllWindowsDrawn(Landroid/os/Message;JI)V

    :goto_1
    return-void
.end method

.method sendCloseSystemWindows()V
    .registers 3

    goto :goto_2

    nop

    :goto_0
    invoke-static {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    nop

    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    nop

    :goto_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    goto :goto_1

    nop

    :goto_3
    return-void
.end method

.method sendCloseSystemWindows(Ljava/lang/String;)V
    .registers 3

    goto :goto_0

    nop

    :goto_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    goto :goto_2

    nop

    :goto_1
    return-void

    :goto_2
    invoke-static {v0, p1}, Lcom/android/internal/policy/PhoneWindow;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    nop
.end method

.method public sendMediaButtonEvent(I)V
    .registers 11

    const/4 v6, 0x0

    sget-boolean v0, Lcom/android/server/policy/VolBtnHelper;->mVolBtnVibrate:Z

    if-eqz v0, :cond_0

    const-string v0, "Power - Long Press - Global Actions"

    invoke-direct {p0, v6, v0}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(ILjava/lang/String;)V

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    new-instance v1, Landroid/view/KeyEvent;

    move-wide v4, v2

    move v7, p1

    move v8, v6

    invoke-direct/range {v1 .. v8}, Landroid/view/KeyEvent;-><init>(JJIII)V

    invoke-virtual {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V

    const/4 v0, 0x1

    invoke-static {v1, v0}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V

    return-void
.end method

.method public setAllowLockscreenWhenOn(IZ)V
    .registers 5

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVisibleBackgroundUsersEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->getUserAssignedToDisplay(I)I

    move-result v0

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowLockscreenWhenOnDisplays:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowLockscreenWhenOnDisplays:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :goto_0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateLockScreenTimeout()V

    return-void
.end method

.method public setCurrentUserLw(I)V
    .registers 5

    iput p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setCurrentUser(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    invoke-virtual {v0, p1}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->setCurrentUser(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setCurrentUser(I)V

    :cond_2
    invoke-static {}, Lcom/android/server/flags/Flags;->modifierShortcutManagerMultiuser()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mModifierShortcutManager:Lcom/android/server/policy/ModifierShortcutManager;

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/policy/ModifierShortcutManager;->setCurrentUser(Landroid/os/UserHandle;)V

    :cond_3
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->inputManagerLifecycleSupport()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    invoke-virtual {v1, p1}, Lcom/android/server/input/InputManagerInternal;->setCurrentUser(I)V

    :cond_4
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManagerStub;->getInstance()Lcom/android/server/policy/PhoneWindowManagerStub;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/server/policy/PhoneWindowManagerStub;->onUserSwitch(I)V

    return-void
.end method

.method protected setDebugSwitch(Z)V
    .registers 3

    goto :goto_3

    nop

    :goto_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSingleKeyGestureDetector:Lcom/android/server/policy/SingleKeyGestureDetector;

    goto :goto_2

    nop

    :goto_1
    return-void

    :goto_2
    invoke-virtual {v0, p1}, Lcom/android/server/policy/SingleKeyGestureDetector;->setDebugSwitch(Z)V

    goto :goto_1

    nop

    :goto_3
    sput-boolean p1, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    goto :goto_0

    nop
.end method

.method public setDefaultDisplay(Lcom/android/server/policy/WindowManagerPolicy$DisplayContentInfo;)V
    .registers 3

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$DisplayContentInfo;->getDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplay:Landroid/view/Display;

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$DisplayContentInfo;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    return-void
.end method

.method public setDismissImeOnBackKeyPressed(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDismissImeOnBackKeyPressed:Z

    return-void
.end method

.method public setHangUpEnable(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBeingHangUp:Z

    return-void
.end method

.method public setNavBarVirtualKeyHapticFeedbackEnabledLw(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavBarVirtualKeyHapticFeedbackEnabled:Z

    return-void
.end method

.method public setOverrideFoldedArea(Landroid/graphics/Rect;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/DisplayFoldController;->setOverrideFoldedArea(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public setPipVisibilityLw(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPictureInPictureVisible:Z

    return-void
.end method

.method public setPowerKeyHandled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    return-void
.end method

.method public setRecentsVisibilityLw(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mRecentsVisible:Z

    return-void
.end method

.method public setSafeMode(Z)V
    .registers 5

    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSafeMode:Z

    if-eqz p1, :cond_0

    const-string v0, "Safe Mode Enabled"

    const/4 v1, 0x2

    const/16 v2, 0x2711

    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(ILjava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public setSwitchingUser(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setSwitchingUser(Z)V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->dismissKeyboardShortcutsMenu()V

    :cond_0
    return-void
.end method

.method public setTopFocusedDisplay(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFocusedDisplayId:I

    return-void
.end method

.method public showBootMessage(Ljava/lang/CharSequence;Z)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$17;

    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/PhoneWindowManager$17;-><init>(Lcom/android/server/policy/PhoneWindowManager;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showDismissibleKeyguard()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->showDismissibleKeyguard()V

    return-void
.end method

.method public showGlobalActions()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method showGlobalActionsInternal()V
    .registers 6

    goto :goto_21

    nop

    :goto_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActions:Lcom/android/server/policy/GlobalActions;

    goto :goto_1a

    nop

    :goto_1
    invoke-interface {v0, v1}, Lmiui/enterprise/IRestrictionsHelper;->isRestriction(Ljava/lang/String;)Z

    move-result v0

    goto :goto_19

    nop

    :goto_2
    if-nez v0, :cond_0

    goto :goto_6

    :cond_0
    goto :goto_1f

    nop

    :goto_3
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_14

    nop

    :goto_4
    if-nez v0, :cond_1

    goto :goto_d

    :cond_1
    goto :goto_c

    nop

    :goto_5
    return-void

    :goto_6
    goto :goto_18

    nop

    :goto_7
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActionsFactory:Ljava/util/function/Supplier;

    goto :goto_3

    nop

    :goto_8
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActions:Lcom/android/server/policy/GlobalActions;

    :goto_9
    goto :goto_b

    nop

    :goto_a
    const-string v0, "WindowManager"

    goto :goto_1d

    nop

    :goto_b
    sget-boolean v0, Lmiui/enterprise/EnterpriseManagerStub;->ENTERPRISE_ACTIVATED:Z

    goto :goto_2

    nop

    :goto_c
    goto :goto_11

    :goto_d
    goto :goto_0

    nop

    :goto_e
    const-string v1, "disable_key_behavior_long_press_power_key"

    goto :goto_1

    nop

    :goto_f
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    nop

    :goto_10
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/PowerManager;->userActivity(JZ)V

    :goto_11
    goto :goto_1b

    nop

    :goto_12
    if-eqz v0, :cond_2

    goto :goto_d

    :cond_2
    goto :goto_13

    nop

    :goto_13
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v0

    goto :goto_4

    nop

    :goto_14
    check-cast v0, Lcom/android/server/policy/GlobalActions;

    goto :goto_8

    nop

    :goto_15
    const/4 v4, 0x0

    goto :goto_10

    nop

    :goto_16
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    goto :goto_15

    nop

    :goto_17
    invoke-virtual {v1, v0, v2}, Lcom/android/server/policy/GlobalActions;->showDialog(ZZ)V

    goto :goto_20

    nop

    :goto_18
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    goto :goto_1e

    nop

    :goto_19
    if-nez v0, :cond_3

    goto :goto_6

    :cond_3
    goto :goto_a

    nop

    :goto_1a
    if-eqz v0, :cond_4

    goto :goto_9

    :cond_4
    goto :goto_7

    nop

    :goto_1b
    return-void

    :goto_1c
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isDeviceProvisioned()Z

    move-result v2

    goto :goto_17

    nop

    :goto_1d
    const-string v1, "enterprise Restriction show dialog"

    goto :goto_f

    nop

    :goto_1e
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActions:Lcom/android/server/policy/GlobalActions;

    goto :goto_1c

    nop

    :goto_1f
    invoke-static {}, Lmiui/enterprise/RestrictionsHelperStub;->getInstance()Lmiui/enterprise/IRestrictionsHelper;

    move-result-object v0

    goto :goto_e

    nop

    :goto_20
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    goto :goto_16

    nop

    :goto_21
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerMenuUnderKeyguard:Z

    goto :goto_12

    nop
.end method

.method public showRecentApps()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method startDockOrHome(IZZ)V
    .registers 5

    goto :goto_1

    nop

    :goto_0
    return-void

    :goto_1
    const-string v0, "startDockOrHome"

    goto :goto_2

    nop

    :goto_2
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/policy/PhoneWindowManager;->startDockOrHome(IZZLjava/lang/String;)V

    goto :goto_0

    nop
.end method

.method startDockOrHome(IZZLjava/lang/String;)V
    .registers 14

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->stopAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_b

    nop

    :goto_0
    return-void

    :goto_1
    const-string v0, "homekey"

    goto :goto_16

    nop

    :goto_2
    move v8, p2

    goto :goto_4

    nop

    :goto_3
    const-string v3, "startDockOrHome: startReason= "

    goto :goto_8

    nop

    :goto_4
    move-object v5, p4

    goto :goto_10

    nop

    :goto_5
    const/4 v7, 0x1

    goto :goto_13

    nop

    :goto_6
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    goto :goto_21

    nop

    :goto_7
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    goto :goto_1b

    nop

    :goto_8
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    goto :goto_6

    nop

    :goto_9
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    nop

    :goto_a
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureAuto:Z

    goto :goto_22

    nop

    :goto_b
    goto :goto_c

    :catch_0
    move-exception v0

    :goto_c
    nop

    goto :goto_1

    nop

    :goto_d
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->createHomeDockIntent()Landroid/content/Intent;

    move-result-object v2

    goto :goto_1a

    nop

    :goto_e
    new-instance v0, Ljava/lang/StringBuilder;

    goto :goto_f

    nop

    :goto_f
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_3

    nop

    :goto_10
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/ActivityTaskManagerInternal;->startHomeOnDisplay(ILjava/lang/String;IZZ)Z

    goto :goto_0

    nop

    :goto_11
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->awakenDreams()V

    :goto_12
    goto :goto_a

    nop

    :goto_13
    move v6, p1

    goto :goto_2

    nop

    :goto_14
    return-void

    :catch_1
    move-exception v0

    :goto_15
    goto :goto_e

    nop

    :goto_16
    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    goto :goto_19

    nop

    :goto_17
    return-void

    :goto_18
    goto :goto_d

    nop

    :goto_19
    if-nez p3, :cond_0

    goto :goto_12

    :cond_0
    goto :goto_11

    nop

    :goto_1a
    if-nez v2, :cond_1

    goto :goto_15

    :cond_1
    goto :goto_24

    nop

    :goto_1b
    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->getUserAssignedToDisplay(I)I

    move-result v4

    goto :goto_1e

    nop

    :goto_1c
    const-string v0, "Not going home because user setup is in progress."

    goto :goto_1f

    nop

    :goto_1d
    if-eqz v0, :cond_2

    goto :goto_18

    :cond_2
    goto :goto_23

    nop

    :goto_1e
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    goto :goto_5

    nop

    :goto_1f
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    nop

    :goto_20
    if-eqz v0, :cond_3

    goto :goto_18

    :cond_3
    goto :goto_1c

    nop

    :goto_21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    nop

    :goto_22
    const-string v1, "WindowManager"

    goto :goto_1d

    nop

    :goto_23
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v0

    goto :goto_20

    nop

    :goto_24
    if-nez p2, :cond_4

    goto :goto_25

    :cond_4
    :try_start_1
    const-string v0, "android.intent.extra.FROM_HOME_KEY"

    invoke-virtual {v2, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_25
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-direct {p0, v2, v0}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_14

    nop
.end method

.method public startKeyguardExitAnimation(J)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->startKeyguardExitAnimation(J)V

    :cond_0
    return-void
.end method

.method public startedGoingToSleep(II)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Started going to sleep... (groupId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " why="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Landroid/view/WindowManagerPolicyConstants;->translateSleepReasonToOffReason(I)I

    move-result v1

    invoke-static {v1}, Landroid/view/WindowManagerPolicyConstants;->offReasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRequestedOrSleepingDefaultDisplay:Z

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mIsGoingToSleepDefaultDisplay:Z

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mIsFinishedGoingToSleep:Z

    invoke-static {}, Lcom/android/server/policy/PhoneWindowManagerStub;->getInstance()Lcom/android/server/policy/PhoneWindowManagerStub;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/server/policy/PhoneWindowManagerStub;->setIsGoingToSleep(Z)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onStartedGoingToSleep(I)V

    :cond_1
    invoke-static {}, Lcom/android/server/am/SmartPowerServiceStub;->getInstance()Lcom/android/server/am/SmartPowerServiceStub;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/android/server/am/SmartPowerServiceStub;->onActionStart(IJ)V

    return-void
.end method

.method public startedGoingToSleepGlobal(I)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeviceGoingToSleep:Z

    return-void
.end method

.method public startedWakingUp(II)V
    .registers 6

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Started waking up... (groupId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " why="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Landroid/view/WindowManagerPolicyConstants;->translateWakeReasonToOnReason(I)I

    move-result v2

    invoke-static {v2}, Landroid/view/WindowManagerPolicyConstants;->onReasonToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/policy/EventLogTags;->writeScreenToggled(I)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mIsGoingToSleepDefaultDisplay:Z

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/DisplayPolicy;->setAwake(Z)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateWakeGestureListenerLp()V

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateLockScreenTimeout()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListener()V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerButtonLaunchGestureTriggered:Z

    invoke-virtual {v0, p2, v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onStartedWakingUp(IZ)V

    :cond_1
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerButtonLaunchGestureTriggered:Z

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public startedWakingUpGlobal(I)V
    .registers 2

    return-void
.end method

.method public systemBooted()V
    .registers 6

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->bindKeyguard()V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemReady:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onBootCompleted()V

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSideFpsEventHandler:Lcom/android/server/policy/SideFpsEventHandler;

    invoke-virtual {v0}, Lcom/android/server/policy/SideFpsEventHandler;->onFingerprintSensorReady()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/server/policy/PhoneWindowManager;->startedWakingUp(II)V

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->finishedDisplayStateON(I)V

    invoke-virtual {p0, v0, v0}, Lcom/android/server/policy/PhoneWindowManager;->finishedWakingUp(II)V

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v0

    :goto_0
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayPolicy;->getScreenOnListener()Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

    move-result-object v4

    if-eqz v4, :cond_2

    move v4, v1

    goto :goto_1

    :cond_2
    move v4, v0

    :goto_1
    if-nez v3, :cond_4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootAnimationDismissable:Z

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/server/policy/PhoneWindowManager;->enableScreen(Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;Z)V

    goto :goto_3

    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->getScreenOnListener()Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->screenTurningOn(ILcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;)V

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->screenTurnedOn(I)V

    :goto_3
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManagerStub;->getInstance()Lcom/android/server/policy/PhoneWindowManagerStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/policy/PhoneWindowManagerStub;->systemBooted()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public systemReady()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onSystemReady()V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mModifierShortcutManager:Lcom/android/server/policy/ModifierShortcutManager;

    invoke-virtual {v0}, Lcom/android/server/policy/ModifierShortcutManager;->onSystemReady()V

    const-class v0, Lcom/android/server/vr/VrManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vr/VrManagerInternal;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrManagerInternal:Lcom/android/server/vr/VrManagerInternal;

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrManagerInternal:Lcom/android/server/vr/VrManagerInternal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrManagerInternal:Lcom/android/server/vr/VrManagerInternal;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPersistentVrModeListener:Landroid/service/vr/IPersistentVrStateCallbacks;

    invoke-virtual {v0, v1}, Lcom/android/server/vr/VrManagerInternal;->addPersistentVrModeStateListener(Landroid/service/vr/IPersistentVrStateCallbacks;)V

    :cond_0
    const-class v0, Lcom/android/server/DockObserverInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DockObserverInternal;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockObserverInternal:Lcom/android/server/DockObserverInternal;

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockObserverInternal:Lcom/android/server/DockObserverInternal;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockObserverInternal:Lcom/android/server/DockObserverInternal;

    invoke-virtual {v0}, Lcom/android/server/DockObserverInternal;->getActualDockState()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayPolicy;->setDockMode(I)V

    :cond_1
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->readCameraLensCoverState()V

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateUiMode()V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->updateOrientationListener()V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemReady:Z

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->updateSettings(Landroid/os/Handler;)V

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onBootCompleted()V

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-class v0, Landroid/view/autofill/AutofillManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManagerInternal;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAutofillManagerInternal:Landroid/view/autofill/AutofillManagerInternal;

    const-class v0, Lcom/android/server/GestureLauncherService;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/GestureLauncherService;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGestureLauncherService:Lcom/android/server/GestureLauncherService;

    invoke-static {}, Lcom/android/server/policy/PhoneWindowManagerStub;->getInstance()Lcom/android/server/policy/PhoneWindowManagerStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/policy/PhoneWindowManagerStub;->systemReady()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public unregisterDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayFoldController:Lcom/android/server/policy/DisplayFoldController;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/DisplayFoldController;->unregisterDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V

    :cond_0
    return-void
.end method

.method updateRotation(Z)V
    .registers 4

    goto :goto_2

    nop

    :goto_0
    const/4 v1, 0x0

    goto :goto_1

    nop

    :goto_1
    invoke-interface {v0, p1, v1}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->updateRotation(ZZ)V

    goto :goto_3

    nop

    :goto_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    goto :goto_0

    nop

    :goto_3
    return-void
.end method

.method updateSettings(Landroid/os/Handler;)V
    .registers 18

    goto :goto_6

    nop

    :goto_0
    monitor-enter v6

    :try_start_0
    const-string v0, "end_button_behavior"

    const/4 v7, 0x2

    const/4 v8, -0x2

    invoke-static {v3, v0, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mEndcallBehavior:I

    const-string v0, "incall_power_button_behavior"

    const/4 v7, 0x1

    invoke-static {v3, v0, v7, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mIncallPowerBehavior:I

    const-string v0, "incall_back_button_behavior"

    const/4 v9, 0x0

    invoke-static {v3, v0, v9, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mIncallBackBehavior:I

    const-string v0, "system_navigation_keys_enabled"

    invoke-static {v3, v0, v9, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v7, :cond_0

    move v0, v7

    goto :goto_1

    :cond_0
    move v0, v9

    :goto_1
    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mSystemNavigationKeysEnabled:Z

    const-string v0, "power_menu_under_keyguard"

    invoke-static {v3, v0, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v7, :cond_1

    move v0, v7

    goto :goto_2

    :cond_1
    move v0, v9

    :goto_2
    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerMenuUnderKeyguard:Z

    const-string v0, "volume_hush_gesture"

    invoke-static {v3, v0, v9, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mRingerToggleChord:I

    const-string v0, "power_button_suppression_delay_after_gesture_wake"

    const/16 v10, 0x320

    invoke-static {v3, v0, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerButtonSuppressionDelayMillis:I

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v10, 0x11102af

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_2

    iput v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mRingerToggleChord:I

    :cond_2
    const/4 v0, 0x0

    iget-boolean v10, v1, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureEnabledSetting:Z

    if-eq v10, v0, :cond_3

    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureEnabledSetting:Z

    invoke-direct {v1}, Lcom/android/server/policy/PhoneWindowManager;->updateWakeGestureListenerLp()V

    :cond_3
    const-string v10, "screen_off_timeout"

    invoke-static {v3, v10, v9, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    iput v10, v1, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    const-string v10, "default_input_method"

    invoke-static {v3, v10, v8}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_4

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_4

    move v11, v7

    goto :goto_3

    :cond_4
    move v11, v9

    :goto_3
    iget-boolean v12, v1, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    if-eq v12, v11, :cond_5

    iput-boolean v11, v1, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    const/4 v4, 0x1

    :cond_5
    const-string v12, "power_button_short_press"

    iget-object v13, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x10e014b

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    invoke-static {v3, v12, v13}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    iput v12, v1, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnPowerBehavior:I

    const-string v12, "power_button_double_press"

    iget-object v13, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x10e008c

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    invoke-static {v3, v12, v13}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    iput v12, v1, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    const-string v12, "power_button_triple_press"

    iget-object v13, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x10e0163

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    invoke-static {v3, v12, v13}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    iput v12, v1, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    const-string v12, "power_button_long_press"

    iget-object v13, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x10e00c8

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    invoke-static {v3, v12, v13}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    const-string v13, "power_button_very_long_press"

    iget-object v14, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x10e0169

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    invoke-static {v3, v13, v14}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    iget v14, v1, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    if-ne v14, v12, :cond_6

    iget v14, v1, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressOnPowerBehavior:I

    if-eq v14, v13, :cond_7

    :cond_6
    iput v12, v1, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    iput v13, v1, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressOnPowerBehavior:I

    :cond_7
    iget-object v14, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "power_button_long_press_duration_ms"

    iget-object v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v7, 0x10e00c9

    invoke-virtual {v9, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    int-to-long v8, v7

    invoke-static {v14, v15, v8, v9}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerAssistantTimeoutMs:J

    const-string v7, "key_chord_power_volume_up"

    iget-object v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10e00b8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    invoke-static {v3, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    iput v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerVolUpBehavior:I

    const-string v7, "stem_primary_button_short_press"

    iget-object v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10e014d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    invoke-static {v3, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    iput v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnStemPrimaryBehavior:I

    const-string v7, "stem_primary_button_double_press"

    iget-object v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10e008d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    invoke-static {v3, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    iput v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnStemPrimaryBehavior:I

    const-string v7, "stem_primary_button_triple_press"

    iget-object v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10e0164

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    invoke-static {v3, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    iput v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnStemPrimaryBehavior:I

    const-string v7, "stem_primary_button_long_press"

    iget-object v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10e00ca

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    invoke-static {v3, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    iput v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnStemPrimaryBehavior:I

    iget-object v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x111023c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    iput-boolean v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mShouldEarlyShortPressOnPower:Z

    iget-object v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x111023d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    iput-boolean v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mShouldEarlyShortPressOnStemPrimary:Z

    const-string v7, "stylus_buttons_enabled"

    const/4 v8, -0x2

    const/4 v9, 0x1

    invoke-static {v3, v7, v9, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-ne v7, v9, :cond_8

    const/4 v7, 0x1

    goto :goto_4

    :cond_8
    const/4 v7, 0x0

    :goto_4
    iput-boolean v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mStylusButtonsEnabled:Z

    iget-object v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mInputManagerInternal:Lcom/android/server/input/InputManagerInternal;

    iget-boolean v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mStylusButtonsEnabled:Z

    invoke-virtual {v7, v8}, Lcom/android/server/input/InputManagerInternal;->setStylusButtonMotionEventsEnabled(Z)V

    const-string v7, "nav_bar_kids_mode"

    const/4 v8, -0x2

    const/4 v9, 0x0

    invoke-static {v3, v7, v9, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_9

    const/4 v9, 0x1

    :cond_9
    iget-boolean v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mKidsModeEnabled:Z

    if-eq v7, v9, :cond_a

    iput-boolean v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mKidsModeEnabled:Z

    const/4 v5, 0x1

    :cond_a
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    nop

    :goto_5
    if-nez v5, :cond_b

    goto :goto_13

    :cond_b
    goto :goto_12

    nop

    :goto_6
    move-object/from16 v1, p0

    goto :goto_19

    nop

    :goto_7
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    goto :goto_14

    nop

    :goto_8
    if-nez v4, :cond_c

    goto :goto_11

    :cond_c
    goto :goto_18

    nop

    :goto_9
    iget-object v6, v1, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    goto :goto_0

    nop

    :goto_a
    throw v0

    :goto_b
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda6;

    goto :goto_e

    nop

    :goto_c
    return-void

    :goto_d
    goto :goto_15

    nop

    :goto_e
    invoke-direct {v0, v1}, Lcom/android/server/policy/PhoneWindowManager$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    goto :goto_f

    nop

    :goto_f
    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_c

    nop

    :goto_10
    invoke-virtual {v1, v8}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(Z)V

    :goto_11
    goto :goto_16

    nop

    :goto_12
    invoke-direct {v1, v9}, Lcom/android/server/policy/PhoneWindowManager;->updateKidsModeSettings(Z)V

    :goto_13
    goto :goto_8

    nop

    :goto_14
    const/4 v4, 0x0

    goto :goto_17

    nop

    :goto_15
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    goto :goto_7

    nop

    :goto_16
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_a

    nop

    :goto_17
    const/4 v5, 0x0

    goto :goto_9

    nop

    :goto_18
    const/4 v8, 0x1

    goto :goto_10

    nop

    :goto_19
    move-object/from16 v2, p1

    goto :goto_1a

    nop

    :goto_1a
    if-nez v2, :cond_d

    goto :goto_d

    :cond_d
    goto :goto_b

    nop
.end method

.method updateUiMode()V
    .registers 2

    goto :goto_8

    nop

    :goto_0
    const-string v0, "uimode"

    goto :goto_6

    nop

    :goto_1
    goto :goto_2

    :catch_0
    move-exception v0

    :goto_2
    goto :goto_9

    nop

    :goto_3
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiModeManager:Landroid/app/IUiModeManager;

    :goto_4
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiModeManager:Landroid/app/IUiModeManager;

    invoke-interface {v0}, Landroid/app/IUiModeManager;->getCurrentModeType()I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    nop

    :goto_5
    if-eqz v0, :cond_0

    goto :goto_4

    :cond_0
    nop

    goto :goto_0

    nop

    :goto_6
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    goto :goto_7

    nop

    :goto_7
    invoke-static {v0}, Landroid/app/IUiModeManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiModeManager;

    move-result-object v0

    goto :goto_3

    nop

    :goto_8
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiModeManager:Landroid/app/IUiModeManager;

    goto :goto_5

    nop

    :goto_9
    return-void
.end method

.method public userActivity(II)V
    .registers 8

    if-nez p1, :cond_0

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->onUserActivityEventTouch()V

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimerActive:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

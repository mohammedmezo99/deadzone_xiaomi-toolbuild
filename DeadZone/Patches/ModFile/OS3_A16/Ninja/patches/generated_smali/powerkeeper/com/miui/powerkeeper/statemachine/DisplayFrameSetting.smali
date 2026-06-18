.class public Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;
.super Landroid/os/Handler;


# static fields
.field private static final CLOUD_AUTOMODE_VRR_GROUP:Ljava/lang/String; = "automode_vrr_group"

.field private static final CLOUD_CAMERA_IDLE_GROUP:Ljava/lang/String; = "camera_idle_group"

.field private static final CLOUD_DISPLAY_FPS_GROUP:Ljava/lang/String; = "display_fps_group"

.field private static final CLOUD_EBOOK_IDLE_GROUP:Ljava/lang/String; = "ebook_idle_pkg"

.field private static final CLOUD_EYE_MODE_GROUP:Ljava/lang/String; = "eye_protection_mode"

.field private static final CLOUD_FOSS_GROUP:Ljava/lang/String; = "foss_group"

.field private static final CLOUD_FPS_DEFINE_GROUP:Ljava/lang/String; = "fps_group"

.field private static final CLOUD_FPS_EXCLUDE_PKG:Ljava/lang/String; = "fps_exclude_pkg"

.field private static final CLOUD_FPS_FUN_STATE_GROUP:Ljava/lang/String; = "fps_fun_state_group"

.field private static final CLOUD_FPS_SMART_GROUP:Ljava/lang/String; = "fps_smart_group"

.field private static final CLOUD_FPS_TOP_SHORT_VIDEO_PKG:Ljava/lang/String; = "fps_top_short_video_pkg"

.field private static final CLOUD_FPS_TOP_VIDEO_IDLE_PKG:Ljava/lang/String; = "fps_top_video_idle_pkg"

.field private static final CLOUD_FPS_TOP_VIDEO_PKG:Ljava/lang/String; = "fps_top_video_pkg"

.field private static final CLOUD_FULL_SCREEN_GROUP:Ljava/lang/String; = "full_screen_fps_group"

.field private static final CLOUD_HIGHEST_FPS_GROUP:Ljava/lang/String; = "highest_fps_group"

.field private static final CLOUD_INPUT_AUDIO_GROUP:Ljava/lang/String; = "input_audio_group"

.field private static final CLOUD_LOW_FPS_GROUP:Ljava/lang/String; = "low_fps_group"

.field private static final CLOUD_MAP_FPS_GROUP:Ljava/lang/String; = "map_fps_group"

.field private static final CLOUD_NOTE_PKG:Ljava/lang/String; = "note_pkg"

.field private static final CLOUD_PROMOTION_GROUP:Ljava/lang/String; = "promotion_group"

.field private static final CLOUD_SMART_BACKLIGHT_GROUP:Ljava/lang/String; = "smart_backlight_mode"

.field private static final CLOUD_TP_IDLE_GROUP:Ljava/lang/String; = "tp_idle_pkg"

.field private static final CLOUD_VIOLENT_MODE_SWITCH:Ljava/lang/String; = "violent_mode_switch"

.field private static final CN_DEFAULT_KEY:Ljava/lang/String; = "cn_default"

.field private static final CUSTOM_SWITCH:Ljava/lang/String; = "custom_switch"

.field private static final DEFAULT_NULL:Ljava/lang/String; = "NULL"

.field private static final FPS_FILE_NAME:Ljava/lang/String; = "fps_local.config"

.field private static FPS_INTL_LOCAL_CONFIG_FILE_PATH:Ljava/lang/String; = null

.field private static final FPS_LOCAL_CONFIG_FILE_PATH:Ljava/lang/String;

.field private static final FPS_OPT_DEFAULT_LOCAL_CONFIG_PATH:Ljava/lang/String; = "smartfps/opt_dafault_config"

.field private static final INTL_DEFAULT_KEY:Ljava/lang/String; = "intl_default"

.field private static final MSG_NOTIFY_GESTURE:I = 0x13

.field private static final TAG:Ljava/lang/String; = "DisplayFrameSetting"

.field private static final VIDEO_IRIS_STATUS:Ljava/lang/String; = "video_iris_status"

.field private static mCameraActivityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mCloudControlStatus:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static mConfigType:I

.field private static mExtremeVideoActivityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mExtremeVideoPackageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mIsCustomFpsSwitch:Ljava/lang/String;

.field private static mIsHandleTopGgameList:Z

.field private static mIsSmart:Z

.field private static mLowFpsPkgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mMoveFrameRateStrategyUp:Z

.field private static mShortVideoApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;


# instance fields
.field private final ACTION_CAMERA_STATE:Ljava/lang/String;

.field private final ACTION_HIGH_FPS_LIST:Ljava/lang/String;

.field private final ACTION_JOYOSE_TOP_GAME_LIST:Ljava/lang/String;

.field private final ACTION_OVERRIDE_GAME_FRESHRATE:Ljava/lang/String;

.field private final ACTION_RECENT_TASK:Ljava/lang/String;

.field private final ACTION_SET_ACTIVITY_FPS:Ljava/lang/String;

.field private final ACTION_SET_FPS:Ljava/lang/String;

.field private final ACTION_TOP_GAME_LIST:Ljava/lang/String;

.field private final CAMERA_FPS_VALUE:I

.field private final CAMERA_PKG:Ljava/lang/String;

.field private final CAMERA_STATE_INIT:I

.field private final CAMERA_STATE_RELEASE:I

.field private final CAR_PKG:Ljava/lang/String;

.field private final COOKIE_AUTO_MODE:I

.field private final COOKIE_CAMERA:I

.field private final COOKIE_CHARGING_FULL:I

.field private final COOKIE_DEFAULT:I

.field private final COOKIE_DEFAULT_CAR:I

.field private final COOKIE_DISPLAY_FPS:I

.field private final COOKIE_EBOOK_IDLE_APP:I

.field private final COOKIE_EXCLUDE:I

.field private final COOKIE_FULL_SCREEN:I

.field private final COOKIE_GALLERY:I

.field private final COOKIE_GAME:I

.field private final COOKIE_HIGHEST_FPS:I

.field private final COOKIE_INPUT:I

.field private final COOKIE_LAUNCHER:I

.field private final COOKIE_MAP:I

.field private final COOKIE_MIN_VAL:I

.field private final COOKIE_MULTITASK:I

.field private final COOKIE_NOTE_APP:I

.field private final COOKIE_POLICY:I

.field private final COOKIE_PROMOTION:I

.field private final COOKIE_SHORT_VIDEO:I

.field private final COOKIE_SMART_FPS:I

.field private final COOKIE_THERMAL:I

.field private final COOKIE_TOP_APP:I

.field private final COOKIE_TP_IDLE_APP:I

.field private final COOKIE_VIDEO:I

.field private final COOKIE_VIDEO_LOWER_FPS:I

.field private final COOKIE_VIOLENT:I

.field private final COOKIE_VRR:I

.field private final COOKIE_WHITELIST:I

.field private final CUSTOM_MODE_SWITCH:Ljava/lang/String;

.field private final DBG_DISPLAY:Z

.field private final DEFAULT_FPS_VALUE:I

.field private final DELAY_TIME:I

.field private final DITHER_STATE:I

.field private final EXTRA_CAMERA_STATE:Ljava/lang/String;

.field private final EXTRA_GAME_LIST:Ljava/lang/String;

.field private final EXTRA_IS_APPEND:Ljava/lang/String;

.field private final EXTRA_PKG:Ljava/lang/String;

.field private final EXTRA_UID:Ljava/lang/String;

.field private final FOSS_STATE:I

.field private final FPS_SWITCH_DEFAULT:Z

.field private final FPS_SWITCH_THERMAL:Z

.field private final FSTAR_PKG:Ljava/lang/String;

.field private final GALLERY_PKG:Ljava/lang/String;

.field private final IS_ENABLE_CONTENT_DETECTION:Z

.field private final IS_ENABLE_DISPLAY_DITHER:Z

.field private final IS_ENABLE_DISPLAY_FOSS:Z

.field private final IS_ENABLE_DISPLAY_IDLE:Z

.field private final IS_ENABLE_SMART_DFPS:Z

.field private final IS_ENABLE_VIDEO_DECODE_ONLY:Z

.field private final IS_SUPPORTED_IRIS:Z

.field private final KEY_PRIV_GAMES:Ljava/lang/String;

.field private final KEY_TOP_GAMES:Ljava/lang/String;

.field private final LAUNCHER_PKG:Ljava/lang/String;

.field private final MAX_SUPPORT_FPS:I

.field private MIFO_SCENARIO:Ljava/lang/String;

.field private final MIUI_REFRESH_RATE:Ljava/lang/String;

.field private final MSG_APPEND_DEFAULT_LIST:I

.field private final MSG_AUTOMODE_VRR:I

.field private final MSG_CAMERA_RESTORE_FPS:I

.field private final MSG_CAMERA_STATE_CHANGED:I

.field private final MSG_CUSTOM_SWITCH:I

.field private final MSG_DISPLAY_FPS_LIST:I

.field private final MSG_EBOOK_IDLE_LIST:I

.field private final MSG_EXTREME_SCENE_CHANGED:I

.field private final MSG_FOLD_STATUS_CHANGED:I

.field private final MSG_FOREGROUND_CHANGE:I

.field private final MSG_FOREGROUND_CHANGE_ACTIVITY:I

.field private final MSG_FOSS_SWITCH:I

.field private final MSG_FPS_FUN_STATE:I

.field private final MSG_FULL_SCREEN_SWITCH:I

.field private final MSG_HIGHEST_FPS_SWITCH:I

.field private final MSG_HIGH_FPS_NOTIFY:I

.field private final MSG_INIT:I

.field private final MSG_INPUT_INFO_CHANGE:I

.field private final MSG_INPUT_IN_LIST:I

.field private final MSG_IRIS_CONFIG:I

.field private final MSG_LOW_FPS_LIST:I

.field private final MSG_MAP_SWITCH:I

.field private final MSG_NOTE_SWITCH:I

.field public final MSG_NOTIFY_AM_STOP:I

.field private final MSG_NOTIFY_VEDIO_IDLE_STATUS:I

.field private final MSG_OVERRIDE_GAME_FRESHRATE:I

.field private final MSG_PKG_EXISTENT_CHANGED:I

.field private final MSG_PROMOTION_LIST:I

.field private final MSG_RECENT_TASK:I

.field private final MSG_RESET_DEFAULT_LIST:I

.field private final MSG_RESET_EXCLUDE_LIST:I

.field private final MSG_RESET_EYE_MODE_LIST:I

.field private final MSG_RESET_HIGH_PRIORITY_LIST:I

.field private final MSG_RESET_SHORT_VIDEO_TOP_LIST:I

.field private final MSG_RESET_TOP_DEFINE_LIST:I

.field private final MSG_RESET_TOP_SMART_LIST:I

.field private final MSG_RESET_VIDEO_IDLE_LIST:I

.field private final MSG_RESET_VIDEO_TOP_LIST:I

.field private final MSG_SMART_BACKLIGHT_MODE_LIST:I

.field private final MSG_SPLIT_SCREEN_CHANGED:I

.field private final MSG_SWTICH_TO_IRIS_PQ:I

.field private final MSG_TP_IDLE_LIST:I

.field private final MSG_UPDATE_FPS:I

.field private final MSG_UPDATE_MEMC_STATE:I

.field private final MSG_UPDATE_SDR2HDR_STATE:I

.field private final MSG_VIDEO_GAME_SCENE_CHANGED:I

.field private final MSG_VIOLENT_MODE_SWITCH:I

.field private final NOTE_PKG:Ljava/lang/String;

.field private final POLICT_BLACKLIST:I

.field private final POLICT_WHITELIST:I

.field private final SCREEN_DPI_MODE:I

.field private final SF_AFFINITY_GOLD:I

.field private final SF_AFFINITY_SILIVER:I

.field private final SF_ENBALE_AFFINITY:Z

.field private final SMART_DFPS_STATE:I

.field private final SMART_FPS_DISABLE:I

.field private final SMART_FPS_ENABLE:I

.field private final SPEED_MODE_KEY:Ljava/lang/String;

.field public final STATUS_ENTER_GAME:I

.field public final STATUS_ENTER_VIDEO:I

.field public final STATUS_EXIT_GAME:I

.field public final STATUS_EXIT_VIDEO:I

.field private final SURFACE_FLINGER_TRANSACTION_DISPLAY_FEATURE_CPU_CLUSTER:I

.field private final SURFACE_FLINGER_TRANSACTION_DISPLAY_FEATURE_IDLE:I

.field private final SURFACE_FLINGER_TRANSACTION_DISPLAY_FEATURE_NOTE:I

.field private final SURFACE_FLINGER_TRANSACTION_DISPLAY_FEATURE_SMART_DFPS:I

.field private final SYSTEMUI_PKG:Ljava/lang/String;

.field private final USER_CONFIGURE_PERFORMANCE:I

.field private final VIDEO_FPS_VALUE:I

.field private final YOUKU_PKG:Ljava/lang/String;

.field private isEnterCarSettingState:Z

.field private isSwitchPhoneStateSucceed:Z

.field private mActListener:Lmiui/process/IActivityChangeListener$Stub;

.field private volatile mAppletsEnabled:Z

.field private mAppletsSwitch:Z

.field private mAudioApps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioRecordStatus:Z

.field private mAudioRecordSwitch:Z

.field private mAudioRecordingCallback:Landroid/media/AudioManager$AudioRecordingCallback;

.field private mAutoModeApps:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBackScreenEnhance:Z

.field private mBacklightModeSwitch:Z

.field private mBlackListActivityApplets:[Ljava/lang/String;

.field private mBlacklistActivity_Camera:[Ljava/lang/String;

.field private mBlacklistActivity_LowFps:[Ljava/lang/String;

.field private mBlacklistActivity_Vr:[Ljava/lang/String;

.field private mCameraPowerSaveSwitch:Z

.field private mCameraPowerSaveValue:I

.field private mCameraThirdWhitelist:[Ljava/lang/String;

.field private mCarInfoTrigFpsSwitch:Z

.field private mCarScreenInfo:Lcom/miui/powerkeeper/utils/ScreenStateObserver$CarScreenInfo;

.field private mChargingSwitch:Z

.field private mCheckPowerSaveCamera:Z

.field private mCloudObserver:Lb/a;

.field private mConfigVersion:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCookieNotifyReserveList:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCurActivityName:Ljava/lang/String;

.field private mCurExtremeVideoActivity:Ljava/lang/String;

.field private mCurExtremeVideoPackage:Ljava/lang/String;

.field private mCurNotifiedPkg:Ljava/lang/String;

.field private mCurScreenEnabledId:I

.field private mCurrentBackDisplayInfo:Lmiui/process/ForegroundInfo;

.field private mCurrentCookie:I

.field private mCurrentDefaultDisplayInfo:Lmiui/process/ForegroundInfo;

.field private mCurrentFgInfo:Lmiui/process/ForegroundInfo;

.field private volatile mCurrentFgPkg:Ljava/lang/String;

.field private mCurrentFps:I

.field private volatile mCurrentUid:I

.field private mCustomApps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mCustomFpsDeviceArray:[Ljava/lang/String;

.field private mCustomHighestFpsApps:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultFps:I

.field private mDefaultGameApp:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDefineHighestFpsApps:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplay:Landroid/view/Display;

.field private mDisplayFpsApps:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mDisplayManager:Landroid/os/IBinder;

.field private mDsListener:Lcom/miui/whetstone/IDisplayScrollListener;

.field private mDuelMemcPackage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEbookidleApps:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEnterHighFpsValue:I

.field private mExcludeApps:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEyeModeSwitch:Z

.field private mFoldTopApps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mFoldTopSmartApps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mFullScreenFpsApps:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGameTopSmartApps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mGameVideoScenePkg:Ljava/lang/String;

.field private mHasIrisCommandSet:Z

.field private mHighFpsListActivity:[Ljava/lang/String;

.field private mHighestFpsSwitch:Z

.field private mIdleExcludedApps:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIdleSceneSwitch:Z

.field private final mImeStatusCallBack:Lcom/miui/whetstone/IImeCallBack;

.field private mInputApps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mInputModeSwitch:Z

.field private mInputStatus:I

.field private mInvalidValue:I

.field private mIsAutoModeSwitch:Z

.field private mIsBackScreenOn:Z

.field private mIsBlackList:Z

.field private mIsCameraIdleSwitch:Z

.field private volatile mIsCameraSetting:Z

.field private mIsChargingFullSwitch:Z

.field private mIsCustom:Z

.field private mIsDisplayFpsSwitch:Z

.field private mIsDitherCloudSwitch:Z

.field private mIsDuringGesture:Z

.field private mIsEbookIdleSwitch:Z

.field private mIsEnterGameScene:Z

.field private mIsEnterRecentTask:Z

.field private mIsEnterVideoScene:Z

.field private mIsExcludeSwitch:Z

.field private mIsExtremeVideoModeOn:I

.field private mIsFgChange:Z

.field private mIsFold:Z

.field private mIsFossCloudSwitch:Z

.field private mIsFullScreenSwitch:Z

.field private mIsIndependentRearDevice:Z

.field private mIsIrisPQOn:Z

.field private mIsLockScreen:Z

.field private mIsLowFps:Z

.field private mIsMainScreenOn:Z

.field private mIsMapFpsSwitch:Z

.field private mIsNoteCloudSwitch:Z

.field private mIsOnFullScreen:Z

.field private mIsOnScroll:Z

.field private mIsPromotionSwitch:Z

.field private mIsReciverRegistered:Z

.field private mIsShortVideoSwitch:Z

.field private mIsSplitScreen:Z

.field private mIsSupportLowFps:Z

.field private mIsTpIdleSwitch:Z

.field private mIsUltimate:I

.field private mIsVideoIdleSwitch:Z

.field private mIsVrrSwitch:Z

.field private mIsWhiteFpsList:Z

.field private mIsWhitelistPolicy:Z

.field private mLastFossCookie:I

.field private mLastFps:I

.field private mLevelFullSwitch:Z

.field private mLocalLog:Landroid/util/LocalLog;

.field private mLowFpsSwitch:Z

.field private mMapFpsApps:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxAppFps:I

.field private mMemcParam:[Ljava/lang/String;

.field private mParseInited:Z

.field private mPowerMode:I

.field private mPrevFgPkg:Ljava/lang/String;

.field private mPrevScreenState:I

.field private mPrivGames:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPromotionApps:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRealRefreshRate:F

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSdr2HdrParam:[Ljava/lang/String;

.field private mShortVideoSwitch:Z

.field private mSingleMemcPackage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSmartFpsApps:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemUiDefineChange:Z

.field private mTopApps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTopDefineApps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTopSmartApps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTpidleApps:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUserFps:I

.field private mVideoActListener:Lmiui/process/IActivityChangeListener$Stub;

.field private mVideoApps:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mVideoFpsCallBack:Lcom/miui/whetstone/IVideoFpsCallBack;

.field private mVideoGameSwitch:Z

.field private mVideoIdleApps:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoLowerFpsApps:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoLowerFpsSwitch:Z

.field private mViolentModeSwitch:Z

.field private mVrrApps:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWhitelistActivity:[Ljava/lang/String;

.field private mWs:Lcom/miui/whetstone/server/IWhetstoneActivityManager;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "smartfps/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->FPS_LOCAL_CONFIG_FILE_PATH:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_intl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->FPS_INTL_LOCAL_CONFIG_FILE_PATH:Ljava/lang/String;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudControlStatus:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCameraActivityList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mLowFpsPkgList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mShortVideoApps:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mExtremeVideoActivityList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mExtremeVideoPackageList:Ljava/util/List;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsHandleTopGgameList:Z

    sput-boolean v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsSmart:Z

    const-string v0, "ro.display.move_frame_rate_strategy_up"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mMoveFrameRateStrategyUp:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 47

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-string v1, "power.display"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    const/4 v1, 0x1

    iput v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->MSG_RESET_DEFAULT_LIST:I

    const/4 v3, 0x2

    iput v3, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->MSG_APPEND_DEFAULT_LIST:I

    iput v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->MSG_RESET_HIGH_PRIORITY_LIST:I

    const/4 v4, 0x4

    iput v4, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->MSG_RESET_TOP_DEFINE_LIST:I

    const/4 v4, 0x5

    iput v4, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->MSG_RESET_VIDEO_TOP_LIST:I

    const/4 v5, 0x6

    iput v5, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->MSG_CAMERA_STATE_CHANGED:I

    const/4 v5, 0x7

    iput v5, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->MSG_SPLIT_SCREEN_CHANGED:I

    const/16 v5, 0x8

    iput v5, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->MSG_CAMERA_RESTORE_FPS:I

    const/16 v5, 0x9

    iput v5, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->MSG_RESET_EXCLUDE_LIST:I

    const/16 v5, 0xa

    iput v5, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->MSG_PKG_EXISTENT_CHANGED:I

    const/16 v6, 0xb

    iput v6, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->MSG_RECENT_TASK:I

    const/16 v6, 0xc

    iput v6, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->MSG_OVERRIDE_GAME_FRESHRATE:I

    const/16 v6, 0xf

    iput v6, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->MSG_UPDATE_FPS:I

    const/16 v6, 0x11

    iput v6, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->MSG_NOTIFY_AM_STOP:I

    const/16 v6, 0x12

    iput v6, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->MSG_VIDEO_GAME_SCENE_CHANGED:I

    const/16 v6, 0x453

    iput v6, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->SURFACE_FLINGER_TRANSACTION_DISPLAY_FEATURE_SMART_DFPS:I

    const/16 v6, 0x7983

    iput v6, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->SURFACE_FLINGER_TRANSACTION_DISPLAY_FEATURE_IDLE:I

    const/16 v6, 0x793e

    iput v6, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->SURFACE_FLINGER_TRANSACTION_DISPLAY_FEATURE_CPU_CLUSTER:I

    const/16 v6, 0x798e

    iput v6, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->SURFACE_FLINGER_TRANSACTION_DISPLAY_FEATURE_NOTE:I

    const/16 v6, 0x14

    iput v6, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->MSG_RESET_EYE_MODE_LIST:I

    const/16 v6, 0x15

    iput v6, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->MSG_SMART_BACKLIGHT_MODE_LIST:I

    const/16 v6, 0x17

    iput v6, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->MSG_EBOOK_IDLE_LIST:I

    const/16 v6, 0x18

    iput v6, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->MSG_TP_IDLE_LIST:I

    const/16 v7, 0x19

    iput v7, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->MSG_RESET_TOP_SMART_LIST:I

    const/16 v7, 0x1a

    iput v7, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->MSG_FOREGROUND_CHANGE:I

    const/16 v7, 0x1b

    iput v7, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->MSG_INPUT_IN_LIST:I

    const/16 v7, 0x1c

    iput v7, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->MSG_LOW_FPS_LIST:I

    const/16 v7, 0x1d

    iput v7, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->MSG_NOTIFY_VEDIO_IDLE_STATUS:I

    const/16 v8, 0x1e

    iput v8, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->MSG_RESET_SHORT_VIDEO_TOP_LIST:I

    const/16 v8, 0x20

    iput v8, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->MSG_RESET_VIDEO_IDLE_LIST:I

    const/16 v8, 0x21

    iput v8, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->MSG_FOREGROUND_CHANGE_ACTIVITY:I

    const/16 v8, 0x22

    iput v8, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->MSG_PROMOTION_LIST:I

    const/16 v8, 0x23

    iput v8, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->MSG_DISPLAY_FPS_LIST:I

    const/16 v8, 0x24

    iput v8, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->MSG_FULL_SCREEN_SWITCH:I

    const/16 v8, 0x25

    iput v8, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->MSG_CUSTOM_SWITCH:I

    const/16 v8, 0x26

    iput v8, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->MSG_MAP_SWITCH:I

    const/16 v8, 0x27

    iput v8, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->MSG_AUTOMODE_VRR:I

    const/16 v8, 0x28

    iput v8, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->MSG_VIOLENT_MODE_SWITCH:I

    const/16 v9, 0x29

    iput v9, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->MSG_FOSS_SWITCH:I

    const/16 v10, 0x2a

    iput v10, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->MSG_NOTE_SWITCH:I

    const/16 v10, 0x2b

    iput v10, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->MSG_IRIS_CONFIG:I

    const/16 v10, 0x2c

    iput v10, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->MSG_UPDATE_MEMC_STATE:I

    const/16 v10, 0x2d

    iput v10, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->MSG_SWTICH_TO_IRIS_PQ:I

    const/16 v10, 0x2e

    iput v10, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->MSG_UPDATE_SDR2HDR_STATE:I

    const/16 v10, 0x2f

    iput v10, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->MSG_EXTREME_SCENE_CHANGED:I

    const/16 v10, 0x30

    iput v10, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->MSG_HIGH_FPS_NOTIFY:I

    const/16 v10, 0x31

    iput v10, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->MSG_INIT:I

    const/16 v11, 0x32

    iput v11, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->MSG_HIGHEST_FPS_SWITCH:I

    const/16 v11, 0x33

    iput v11, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->MSG_FPS_FUN_STATE:I

    const/16 v11, 0x34

    iput v11, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->MSG_FOLD_STATUS_CHANGED:I

    const/16 v11, 0x35

    iput v11, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->MSG_INPUT_INFO_CHANGE:I

    const-string v11, ""

    iput-object v11, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mConfigVersion:Ljava/lang/String;

    const/4 v12, -0x1

    iput v12, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentUid:I

    const-string v13, "key_top_names"

    iput-object v13, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->KEY_TOP_GAMES:Ljava/lang/String;

    const-string v13, "key_priv_names"

    iput-object v13, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->KEY_PRIV_GAMES:Ljava/lang/String;

    const-string v13, "com.android.camera"

    iput-object v13, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->CAMERA_PKG:Ljava/lang/String;

    const-string v13, "power.systemui"

    iput-object v13, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->SYSTEMUI_PKG:Ljava/lang/String;

    const-string v13, "com.miui.gallery"

    iput-object v13, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->GALLERY_PKG:Ljava/lang/String;

    const-string v13, "com.fstar.Pattern"

    iput-object v13, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->FSTAR_PKG:Ljava/lang/String;

    const-string v13, "com.youku.phone"

    iput-object v13, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->YOUKU_PKG:Ljava/lang/String;

    const-string v13, "power.car.fps"

    iput-object v13, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->CAR_PKG:Ljava/lang/String;

    const-string v13, "miui_refresh_rate"

    iput-object v13, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->MIUI_REFRESH_RATE:Ljava/lang/String;

    const-string v13, "custom_mode_switch"

    iput-object v13, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->CUSTOM_MODE_SWITCH:Ljava/lang/String;

    const-string v13, "com.miui.notes"

    iput-object v13, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->NOTE_PKG:Ljava/lang/String;

    const-string v13, "speed_mode"

    iput-object v13, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->SPEED_MODE_KEY:Ljava/lang/String;

    iput v6, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->SCREEN_DPI_MODE:I

    const/16 v6, 0x3c

    iput v6, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DEFAULT_FPS_VALUE:I

    iput v6, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->CAMERA_FPS_VALUE:I

    iput v6, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->VIDEO_FPS_VALUE:I

    iput v7, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->SMART_DFPS_STATE:I

    const/4 v7, 0x0

    iput v7, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->SMART_FPS_DISABLE:I

    iput v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->SMART_FPS_ENABLE:I

    iput v8, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->FOSS_STATE:I

    iput v9, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DITHER_STATE:I

    const/16 v8, 0xc8

    iput v8, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->COOKIE_MIN_VAL:I

    const/16 v8, 0xd1

    iput v8, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->COOKIE_DEFAULT_CAR:I

    const/16 v8, 0xf2

    iput v8, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->COOKIE_LAUNCHER:I

    const/16 v8, 0xf3

    iput v8, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->COOKIE_GALLERY:I

    const/16 v8, 0xf4

    iput v8, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->COOKIE_DEFAULT:I

    const/16 v8, 0xf5

    iput v8, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->COOKIE_WHITELIST:I

    const/16 v8, 0xf7

    iput v8, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->COOKIE_EXCLUDE:I

    const/16 v8, 0xf8

    iput v8, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->COOKIE_VIDEO:I

    const/16 v8, 0xf9

    iput v8, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->COOKIE_TOP_APP:I

    const/16 v8, 0xfb

    iput v8, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->COOKIE_MULTITASK:I

    const/16 v9, 0xfc

    iput v9, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->COOKIE_CAMERA:I

    const/16 v9, 0xfd

    iput v9, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->COOKIE_THERMAL:I

    const/16 v9, 0xfe

    iput v9, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->COOKIE_GAME:I

    const/16 v9, 0x100

    iput v9, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->COOKIE_POLICY:I

    const/16 v13, 0x101

    iput v13, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->COOKIE_EBOOK_IDLE_APP:I

    const/16 v13, 0x102

    iput v13, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->COOKIE_TP_IDLE_APP:I

    const/16 v13, 0x103

    iput v13, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->COOKIE_SHORT_VIDEO:I

    const/16 v13, 0x104

    iput v13, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->COOKIE_PROMOTION:I

    const/16 v13, 0x105

    iput v13, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->COOKIE_DISPLAY_FPS:I

    const/16 v13, 0x106

    iput v13, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->COOKIE_NOTE_APP:I

    const/16 v13, 0x107

    iput v13, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->COOKIE_CHARGING_FULL:I

    const/16 v13, 0x108

    iput v13, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->COOKIE_VIOLENT:I

    const/16 v13, 0x10a

    iput v13, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->COOKIE_FULL_SCREEN:I

    const/16 v13, 0x109

    iput v13, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->COOKIE_MAP:I

    const/16 v13, 0x10b

    iput v13, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->COOKIE_AUTO_MODE:I

    const/16 v13, 0x10d

    iput v13, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->COOKIE_VRR:I

    const/16 v13, 0x10e

    iput v13, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->COOKIE_INPUT:I

    const/16 v13, 0x10f

    iput v13, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->COOKIE_VIDEO_LOWER_FPS:I

    const/16 v13, 0x110

    iput v13, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->COOKIE_HIGHEST_FPS:I

    iput v8, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->COOKIE_SMART_FPS:I

    iput v3, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->POLICT_WHITELIST:I

    iput v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->POLICT_BLACKLIST:I

    const-string v8, "com.xiaomi.joyose.HIGH_FPS_LIST"

    iput-object v8, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->ACTION_HIGH_FPS_LIST:Ljava/lang/String;

    const-string v8, "intent.action.TOP_GAME_LIST"

    iput-object v8, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->ACTION_JOYOSE_TOP_GAME_LIST:Ljava/lang/String;

    const-string v8, "com.miui.securitycenter.intent.action.TOP_GAME_LIST"

    iput-object v8, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->ACTION_TOP_GAME_LIST:Ljava/lang/String;

    const-string v8, "com.miui.powerkeeper.CAMERA_STATE"

    iput-object v8, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->ACTION_CAMERA_STATE:Ljava/lang/String;

    const-string v8, "com.miui.powerkeeper.set_fps"

    iput-object v8, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->ACTION_SET_FPS:Ljava/lang/String;

    const-string v8, "com.miui.powerkeeper.RECENT_TASK"

    iput-object v8, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->ACTION_RECENT_TASK:Ljava/lang/String;

    const-string v8, "com.xiaomi.joyose.OVERRIDE_GAME_FRESHRATE"

    iput-object v8, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->ACTION_OVERRIDE_GAME_FRESHRATE:Ljava/lang/String;

    const-string v8, "com.miui.powerkeeper.SET_ACTIVITY_FPS"

    iput-object v8, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->ACTION_SET_ACTIVITY_FPS:Ljava/lang/String;

    const-string v8, "isAppend"

    iput-object v8, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->EXTRA_IS_APPEND:Ljava/lang/String;

    const-string v8, "gameList"

    iput-object v8, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->EXTRA_GAME_LIST:Ljava/lang/String;

    const-string v8, "application_uid"

    iput-object v8, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->EXTRA_UID:Ljava/lang/String;

    const-string v8, "camera_state"

    iput-object v8, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->EXTRA_CAMERA_STATE:Ljava/lang/String;

    const-string v8, "package_name"

    iput-object v8, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->EXTRA_PKG:Ljava/lang/String;

    iput v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->CAMERA_STATE_INIT:I

    iput v3, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->CAMERA_STATE_RELEASE:I

    iput-boolean v7, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mEyeModeSwitch:Z

    iput-boolean v7, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mBacklightModeSwitch:Z

    iput-boolean v7, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsSupportLowFps:Z

    iput-boolean v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mInputModeSwitch:Z

    iput v7, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->STATUS_ENTER_GAME:I

    iput v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->STATUS_EXIT_GAME:I

    iput v3, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->STATUS_ENTER_VIDEO:I

    iput v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->STATUS_EXIT_VIDEO:I

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mPrivGames:Landroid/util/ArrayMap;

    new-instance v2, Landroid/util/ArraySet;

    const/16 v8, 0x40

    invoke-direct {v2, v8}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mDefaultGameApp:Landroid/util/ArraySet;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mTopApps:Landroid/util/ArrayMap;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mFoldTopApps:Landroid/util/ArrayMap;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mTopDefineApps:Landroid/util/ArrayMap;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mTopSmartApps:Landroid/util/ArrayMap;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mFoldTopSmartApps:Landroid/util/ArrayMap;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCustomApps:Landroid/util/ArrayMap;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mGameTopSmartApps:Landroid/util/ArrayMap;

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2, v5}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mVideoApps:Landroid/util/ArraySet;

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2, v5}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mVideoIdleApps:Landroid/util/ArraySet;

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2, v5}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mExcludeApps:Landroid/util/ArraySet;

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2, v5}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mSmartFpsApps:Landroid/util/ArraySet;

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2, v5}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mEbookidleApps:Landroid/util/ArraySet;

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2, v5}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mTpidleApps:Landroid/util/ArraySet;

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2, v5}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mPromotionApps:Landroid/util/ArraySet;

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2, v5}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mDisplayFpsApps:Landroid/util/ArraySet;

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2, v5}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mFullScreenFpsApps:Landroid/util/ArraySet;

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2, v5}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mVideoLowerFpsApps:Landroid/util/ArraySet;

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2, v5}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mMapFpsApps:Landroid/util/ArraySet;

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2, v5}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mAutoModeApps:Landroid/util/ArraySet;

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2, v5}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIdleExcludedApps:Landroid/util/ArraySet;

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2, v5}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mVrrApps:Landroid/util/ArraySet;

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2, v5}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mDefineHighestFpsApps:Landroid/util/ArraySet;

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2, v5}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCustomHighestFpsApps:Landroid/util/ArraySet;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mInputApps:Landroid/util/ArrayMap;

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2, v4}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCookieNotifyReserveList:Landroid/util/ArraySet;

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mAudioApps:Landroid/util/ArrayMap;

    const-string v42, "sheng_intl"

    const-string v43, "corot"

    const-string v13, "thor"

    const-string v14, "unicorn"

    const-string v15, "mayfly"

    const-string v16, "zizhan"

    const-string v17, "duchamp"

    const-string v18, "manet"

    const-string v19, "vermeer"

    const-string v20, "diting"

    const-string v21, "socrates"

    const-string v22, "mondrian"

    const-string v23, "rembrandt"

    const-string v24, "yudi"

    const-string v25, "liuqin"

    const-string v26, "zeus"

    const-string v27, "cupid"

    const-string v28, "ingres"

    const-string v29, "psyche"

    const-string v30, "redwood"

    const-string v31, "daumier"

    const-string v32, "matisse"

    const-string v33, "rubens"

    const-string v34, "plato"

    const-string v35, "xaga"

    const-string v36, "ruby"

    const-string v37, "rubyplus"

    const-string v38, "aurora_intl"

    const-string v39, "chenfeng_intl"

    const-string v40, "breeze_intl"

    const-string v41, "ruyi_intl"

    filled-new-array/range {v13 .. v43}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCustomFpsDeviceArray:[Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mSingleMemcPackage:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mDuelMemcPackage:Ljava/util/List;

    const-string v2, "ro.vendor.display.iris_x7.support"

    invoke-static {v2, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->IS_SUPPORTED_IRIS:Z

    iput v12, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mPrevScreenState:I

    iput-boolean v7, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mParseInited:Z

    iput-boolean v7, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsReciverRegistered:Z

    iput v7, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentCookie:I

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgInfo:Lmiui/process/ForegroundInfo;

    new-instance v5, Landroid/util/LocalLog;

    invoke-direct {v5, v9}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v5, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mLocalLog:Landroid/util/LocalLog;

    iput-boolean v7, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsSplitScreen:Z

    const-string v5, "ro.vendor.fps.switch.default"

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->FPS_SWITCH_DEFAULT:Z

    const-string v5, "ro.vendor.smart_dfps.enable"

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->IS_ENABLE_SMART_DFPS:Z

    const-string v5, "ro.vendor.video.decode.only"

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->IS_ENABLE_VIDEO_DECODE_ONLY:Z

    const-string v5, "ro.vendor.display.foss"

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->IS_ENABLE_DISPLAY_FOSS:Z

    const-string v5, "ro.vendor.display.dither"

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->IS_ENABLE_DISPLAY_DITHER:Z

    const-string v5, "ro.surface_flinger.use_content_detection_for_refresh_rate"

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->IS_ENABLE_CONTENT_DETECTION:Z

    const-string v5, "ro.vendor.display.touch.idle.enable"

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->IS_ENABLE_DISPLAY_IDLE:Z

    const-string v5, "ro.vendor.fps.switch.thermal"

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->FPS_SWITCH_THERMAL:Z

    const-string v5, "ro.miui.surfaceflinger_affinity"

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->SF_ENBALE_AFFINITY:Z

    const-string v5, "support_max_fps"

    const/16 v8, 0x78

    invoke-static {v5, v8}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->MAX_SUPPORT_FPS:I

    const-string v5, "ro.miui.product.home"

    const-string v8, "com.miui.home"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->LAUNCHER_PKG:Ljava/lang/String;

    const-string v5, "persist.sys.smartpower.display.enable"

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v7

    goto :goto_0

    :cond_0
    const/16 v5, 0x4b0

    :goto_0
    iput v5, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DELAY_TIME:I

    iput-boolean v7, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsWhiteFpsList:Z

    iput v7, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->SF_AFFINITY_SILIVER:I

    iput v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->SF_AFFINITY_GOLD:I

    iput v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->USER_CONFIGURE_PERFORMANCE:I

    iput-boolean v7, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsWhitelistPolicy:Z

    iput v7, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mMaxAppFps:I

    iput v12, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFps:I

    iput v7, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mUserFps:I

    iput v7, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mInputStatus:I

    iput-object v11, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mPrevFgPkg:Ljava/lang/String;

    iput-object v11, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgPkg:Ljava/lang/String;

    iput-boolean v7, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsFgChange:Z

    iput v6, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mLastFps:I

    iput v6, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mEnterHighFpsValue:I

    iput-boolean v7, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsDuringGesture:Z

    iput-boolean v7, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsEnterRecentTask:Z

    iput-boolean v7, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsEnterVideoScene:Z

    iput-boolean v7, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsEnterGameScene:Z

    iput-object v11, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mGameVideoScenePkg:Ljava/lang/String;

    iput-boolean v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsFossCloudSwitch:Z

    iput-boolean v7, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCarInfoTrigFpsSwitch:Z

    iput-boolean v7, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mBackScreenEnhance:Z

    iput-boolean v7, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsNoteCloudSwitch:Z

    iput v7, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mLastFossCookie:I

    iput v7, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mInvalidValue:I

    iput-boolean v7, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mVideoGameSwitch:Z

    iput-boolean v7, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mAudioRecordStatus:Z

    iput-boolean v7, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsDitherCloudSwitch:Z

    iput-boolean v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mAudioRecordSwitch:Z

    iput-boolean v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mLowFpsSwitch:Z

    iput-boolean v7, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCameraPowerSaveSwitch:Z

    iput-boolean v7, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mChargingSwitch:Z

    iput-boolean v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mShortVideoSwitch:Z

    iput-boolean v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsEbookIdleSwitch:Z

    iput-boolean v7, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsTpIdleSwitch:Z

    iput-boolean v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsVideoIdleSwitch:Z

    iput-boolean v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsCameraIdleSwitch:Z

    iput-boolean v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsShortVideoSwitch:Z

    iput-boolean v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsExcludeSwitch:Z

    iput-boolean v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsPromotionSwitch:Z

    iput-boolean v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsDisplayFpsSwitch:Z

    iput-boolean v7, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsChargingFullSwitch:Z

    iput-boolean v7, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsOnScroll:Z

    iput-object v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurActivityName:Ljava/lang/String;

    iput-boolean v7, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsLowFps:Z

    iput-boolean v7, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsBlackList:Z

    iput-boolean v7, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCheckPowerSaveCamera:Z

    iput v7, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsUltimate:I

    iput v4, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCameraPowerSaveValue:I

    iput-boolean v7, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mLevelFullSwitch:Z

    iput-boolean v7, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsCustom:Z

    iput-boolean v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsFullScreenSwitch:Z

    iput-boolean v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsMapFpsSwitch:Z

    iput-boolean v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsAutoModeSwitch:Z

    iput-boolean v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsVrrSwitch:Z

    iput-boolean v7, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIdleSceneSwitch:Z

    iput v3, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mPowerMode:I

    iput-boolean v7, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mViolentModeSwitch:Z

    iput-boolean v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mVideoLowerFpsSwitch:Z

    iput-boolean v7, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsLockScreen:Z

    iput-boolean v7, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mSystemUiDefineChange:Z

    iput-boolean v7, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsOnFullScreen:Z

    iput-boolean v7, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsCameraSetting:Z

    iput-boolean v7, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mAppletsEnabled:Z

    iput-boolean v7, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mAppletsSwitch:Z

    iput-boolean v7, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mHighestFpsSwitch:Z

    iput-boolean v7, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->isEnterCarSettingState:Z

    iput-boolean v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->isSwitchPhoneStateSucceed:Z

    iput-boolean v7, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsFold:Z

    iput-boolean v7, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsIndependentRearDevice:Z

    iput-boolean v7, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsBackScreenOn:Z

    iput-boolean v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsMainScreenOn:Z

    iput v7, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurScreenEnabledId:I

    iput-object v11, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurNotifiedPkg:Ljava/lang/String;

    const-string v1, "MIFO_SCENARIO"

    iput-object v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->MIFO_SCENARIO:Ljava/lang/String;

    new-instance v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting$1;

    invoke-direct {v1, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting$1;-><init>(Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;)V

    iput-object v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting$8;

    invoke-direct {v1, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting$8;-><init>(Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;)V

    iput-object v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mVideoActListener:Lmiui/process/IActivityChangeListener$Stub;

    new-instance v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting$9;

    invoke-direct {v1, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting$9;-><init>(Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;)V

    iput-object v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mActListener:Lmiui/process/IActivityChangeListener$Stub;

    new-instance v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting$10;

    invoke-direct {v1, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting$10;-><init>(Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;)V

    iput-object v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mDsListener:Lcom/miui/whetstone/IDisplayScrollListener;

    new-instance v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting$11;

    invoke-direct {v1, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting$11;-><init>(Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;)V

    iput-object v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mVideoFpsCallBack:Lcom/miui/whetstone/IVideoFpsCallBack;

    new-instance v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting$12;

    invoke-direct {v1, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting$12;-><init>(Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;)V

    iput-object v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mImeStatusCallBack:Lcom/miui/whetstone/IImeCallBack;

    new-instance v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting$13;

    invoke-direct {v1, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting$13;-><init>(Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;)V

    iput-object v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mAudioRecordingCallback:Landroid/media/AudioManager$AudioRecordingCallback;

    new-instance v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting$14;

    invoke-direct {v1, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting$14;-><init>(Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;)V

    iput-object v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    invoke-static {}, Lb/a;->q()Lb/a;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudObserver:Lb/a;

    invoke-direct {v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->registerCloudObserver()V

    invoke-virtual {v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->getUserFps()I

    move-result v1

    iput v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mUserFps:I

    invoke-static {}, Lcom/miui/powerkeeper/utils/Device;->isIndependentRearDevice()Z

    move-result v1

    iput-boolean v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsIndependentRearDevice:Z

    invoke-virtual {v0, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method static bridge synthetic A(Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mTopSmartApps:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic B(Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;)I
    .registers 1

    iget p0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mUserFps:I

    return p0
.end method

.method static bridge synthetic C(Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;)Lcom/miui/whetstone/IVideoFpsCallBack;
    .registers 1

    iget-object p0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mVideoFpsCallBack:Lcom/miui/whetstone/IVideoFpsCallBack;

    return-object p0
.end method

.method static bridge synthetic D(Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mVideoGameSwitch:Z

    return p0
.end method

.method static bridge synthetic E(Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mAudioRecordStatus:Z

    return-void
.end method

.method static bridge synthetic F(Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurActivityName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic G(Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurExtremeVideoActivity:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic H(Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurExtremeVideoPackage:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic I(Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;I)V
    .registers 2

    iput p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFps:I

    return-void
.end method

.method static bridge synthetic J(Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;I)V
    .registers 2

    iput p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mEnterHighFpsValue:I

    return-void
.end method

.method static bridge synthetic K(Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;Landroid/util/ArrayMap;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mFoldTopApps:Landroid/util/ArrayMap;

    return-void
.end method

.method static bridge synthetic L(Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsBlackList:Z

    return-void
.end method

.method static bridge synthetic M(Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsCustom:Z

    return-void
.end method

.method static bridge synthetic N(Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;I)V
    .registers 2

    iput p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsExtremeVideoModeOn:I

    return-void
.end method

.method static bridge synthetic O(Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsOnScroll:Z

    return-void
.end method

.method static bridge synthetic P(Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;I)V
    .registers 2

    iput p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsUltimate:I

    return-void
.end method

.method static bridge synthetic Q(Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;Landroid/util/ArrayMap;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mTopApps:Landroid/util/ArrayMap;

    return-void
.end method

.method static bridge synthetic R(Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;I)V
    .registers 2

    iput p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mUserFps:I

    return-void
.end method

.method static bridge synthetic S(Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;[II)I
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->getSuitableFps([II)I

    move-result p0

    return p0
.end method

.method static bridge synthetic T(Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;)[I
    .registers 1

    invoke-direct {p0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->getSupportFps()[I

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic U(Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;)V
    .registers 1

    invoke-direct {p0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->handleIrisDisplayState()V

    return-void
.end method

.method static bridge synthetic V(Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;Landroid/content/Intent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->handleTopGameList(Landroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic W(Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;)V
    .registers 1

    invoke-direct {p0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->notifySFIChange()V

    return-void
.end method

.method static bridge synthetic X(Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;)V
    .registers 1

    invoke-direct {p0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->onExtremeSceneRecovery()V

    return-void
.end method

.method static bridge synthetic Y(Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;)V
    .registers 1

    invoke-direct {p0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->registerDisplayScrollListener()V

    return-void
.end method

.method static bridge synthetic Z(Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;)V
    .registers 1

    invoke-direct {p0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->setFpsList()V

    return-void
.end method

.method static bridge synthetic a(Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    return p0
.end method

.method static bridge synthetic a0(Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->updateCustomDataBase(Ljava/lang/String;)V

    return-void
.end method

.method private appOrHomeToRecentTask()V
    .registers 6

    new-instance v0, Lmiui/process/ForegroundInfo;

    invoke-direct {v0}, Lmiui/process/ForegroundInfo;-><init>()V

    iget-object v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->LAUNCHER_PKG:Ljava/lang/String;

    iput-object v1, v0, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, v0, Lmiui/process/ForegroundInfo;->mForegroundDisplayId:I

    iput-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgInfo:Lmiui/process/ForegroundInfo;

    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mTopApps:Landroid/util/ArrayMap;

    const-string v1, "power.systemui"

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/16 v1, 0xf9

    const-string v2, "DisplayFrameSetting"

    if-eqz v0, :cond_1

    iget-boolean v3, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "appOrHomeToRecentTask systemUiFps != null set systemUiFps Fps:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->LAUNCHER_PKG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v2, v3, v1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->setScreenEffect(Ljava/lang/String;II)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "appOrHomeToRecentTask systemUiFps:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "appOrHomeToRecentTask systemUiFps == null set user Fps:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mUserFps:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->LAUNCHER_PKG:Ljava/lang/String;

    iget v2, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mUserFps:I

    invoke-direct {p0, v0, v2, v1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->setScreenEffect(Ljava/lang/String;II)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "appOrHomeToRecentTask mUserFps:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mUserFps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    return-void
.end method

.method private appToAppGestrue()V
    .registers 3

    iget-boolean v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsDuringGesture:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgPkg:Ljava/lang/String;

    iget v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mLastFps:I

    invoke-static {v0, v1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->setFpsAync(Ljava/lang/String;I)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsDuringGesture:Z

    iget-boolean v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->IS_SUPPORTED_IRIS:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsExtremeVideoModeOn:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mHasIrisCommandSet:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mExtremeVideoPackageList:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgPkg:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    sget-object v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mExtremeVideoActivityList:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurExtremeVideoActivity:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "appToAppGestrue. fg no change mCurrentFgPkg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", restore last fps:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mLastFps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCurrentFps"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "appToAppGestrue. fg is change mCurrentFgPkg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    return-void
.end method

.method private appToHomeEnd(Lmiui/process/ForegroundInfo;)V
    .registers 4

    iget-boolean v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v0, :cond_0

    const-string v0, "DisplayFrameSetting"

    const-string v1, "appToHomeEnd new fg is home"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->onForegroundChanged(Lmiui/process/ForegroundInfo;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsDuringGesture:Z

    return-void
.end method

.method private appToHomeGestrueStart()V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "appToHomeGestrueStart is back to home, during gesture setFps: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mUserFps:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    const/16 v0, 0x1a

    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->IS_SUPPORTED_IRIS:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsExtremeVideoModeOn:I

    if-ne v0, v1, :cond_3

    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-boolean v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mHasIrisCommandSet:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mExtremeVideoActivityList:Ljava/util/List;

    iget-object v2, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurExtremeVideoActivity:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/powerkeeper/utils/IrisServiceUtils;->getInstance(Landroid/content/Context;)Lcom/miui/powerkeeper/utils/IrisServiceUtils;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/miui/powerkeeper/utils/IrisServiceUtils;->irisConfigureSet(I)I

    :cond_2
    sget-object v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mExtremeVideoPackageList:Ljava/util/List;

    iget-object v2, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgPkg:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/powerkeeper/utils/IrisServiceUtils;->getInstance(Landroid/content/Context;)Lcom/miui/powerkeeper/utils/IrisServiceUtils;

    move-result-object v0

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/miui/powerkeeper/utils/IrisServiceUtils;->irisConfigureSet(I)I

    :cond_3
    iget v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFps:I

    iput v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mLastFps:I

    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgPkg:Ljava/lang/String;

    iget v2, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mUserFps:I

    invoke-static {v0, v2}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->setFpsAync(Ljava/lang/String;I)Z

    iput-boolean v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsDuringGesture:Z

    return-void
.end method

.method static bridge synthetic b(Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->IS_SUPPORTED_IRIS:Z

    return p0
.end method

.method static bridge synthetic b0(Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic c(Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mAudioApps:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic c0()Landroid/util/ArrayMap;
    .registers 1

    sget-object v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudControlStatus:Landroid/util/ArrayMap;

    return-object v0
.end method

.method private carInfoTrigStateUpdate()V
    .registers 3

    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentDefaultDisplayInfo:Lmiui/process/ForegroundInfo;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgPkg:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentDefaultDisplayInfo:Lmiui/process/ForegroundInfo;

    iget-object v1, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lmiui/process/ForegroundInfo;

    iget-object v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentDefaultDisplayInfo:Lmiui/process/ForegroundInfo;

    invoke-direct {v0, v1}, Lmiui/process/ForegroundInfo;-><init>(Lmiui/process/ForegroundInfo;)V

    const-string v1, "power.car.fps"

    iput-object v1, v0, Lmiui/process/ForegroundInfo;->mLastForegroundPackageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgPkg:Ljava/lang/String;

    iput-object v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mPrevFgPkg:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->onForegroundChanged(Lmiui/process/ForegroundInfo;)V

    invoke-direct {p0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->notifySFIChange()V

    :cond_1
    :goto_0
    return-void
.end method

.method static bridge synthetic d(Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mAudioRecordStatus:Z

    return p0
.end method

.method static bridge synthetic d0()Ljava/util/List;
    .registers 1

    sget-object v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mExtremeVideoActivityList:Ljava/util/List;

    return-object v0
.end method

.method static bridge synthetic e(Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mAudioRecordSwitch:Z

    return p0
.end method

.method static bridge synthetic e0()Ljava/util/List;
    .registers 1

    sget-object v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mExtremeVideoPackageList:Ljava/util/List;

    return-object v0
.end method

.method private enableContinuous(Ljava/lang/String;I)Z
    .registers 12

    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "flip_continuity_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v1, "DisplayFrameSetting"

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "flip continue switch not enable="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v2

    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    iget-boolean p0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "currentuid is null "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v2

    :cond_3
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/miui/powerkeeper/PowerKeeperManager;->getInstance()Lcom/miui/powerkeeper/PowerKeeperManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/powerkeeper/PowerKeeperManager;->getUserCheckManager()Lcom/miui/powerkeeper/UserCheckManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/powerkeeper/UserCheckManager;->z()I

    move-result v0

    invoke-static {}, Lcom/miui/powerkeeper/PowerKeeperManager;->getInstance()Lcom/miui/powerkeeper/PowerKeeperManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/powerkeeper/PowerKeeperManager;->getUserCheckManager()Lcom/miui/powerkeeper/UserCheckManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/powerkeeper/UserCheckManager;->x()I

    move-result v3

    invoke-static {}, Lcom/miui/powerkeeper/PowerKeeperManager;->getInstance()Lcom/miui/powerkeeper/PowerKeeperManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/powerkeeper/PowerKeeperManager;->getUserCheckManager()Lcom/miui/powerkeeper/UserCheckManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/powerkeeper/UserCheckManager;->v()I

    move-result v4

    iget-boolean v5, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "curenStrUid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " appSpaceUid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " secondUid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " mainUid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v5, 0x3

    invoke-virtual {p2, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_5
    const/4 v0, 0x4

    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "10"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_6
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    :goto_0
    iget-boolean v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "userId="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " curentPkg="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    filled-new-array {p2, p1}, [Ljava/lang/String;

    move-result-object v7

    iget-object p0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/miui/powerkeeper/provider/FlipPackageConfigure;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    :cond_8
    if-eqz p0, :cond_9

    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "pkgName"

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    const-string p2, "enable"

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    const-string v0, "userId"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " enable="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " uid="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    if-ne p2, p1, :cond_8

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return p1

    :cond_9
    if-eqz p0, :cond_a

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_a
    return v2
.end method

.method static bridge synthetic f(Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;)[Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mBlackListActivityApplets:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic f0()Z
    .registers 1

    sget-boolean v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsHandleTopGgameList:Z

    return v0
.end method

.method private fillDefaultGameApp(Ljava/lang/String;Landroid/util/ArrayMap;Landroid/util/ArraySet;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    if-nez p3, :cond_1

    invoke-static {}, Lcom/miui/powerkeeper/utils/PowerKeeperPackageManager;->getInstalledThirdPartApps()Landroid/util/ArraySet;

    move-result-object p3

    :cond_1
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_6

    aget-object v2, v0, v1

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    aget-object v2, v0, v1

    invoke-virtual {p0, v2, p3}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->isInstalledPackage(Ljava/lang/String;Landroid/util/ArraySet;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    aget-object v2, v0, v1

    invoke-virtual {p2, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mDefaultGameApp:Landroid/util/ArraySet;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    iget-boolean p2, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz p2, :cond_7

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "fillDefaultGameApp mDefaultGameApp="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mDefaultGameApp:Landroid/util/ArraySet;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " namesStr="

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DisplayFrameSetting"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_2
    return-void
.end method

.method static bridge synthetic g(Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;)[Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mBlacklistActivity_LowFps:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic g0()Z
    .registers 1

    sget-boolean v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsSmart:Z

    return v0
.end method

.method public static getDFSInstance()Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;
    .registers 1

    sget-object v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->sInstance:Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;

    return-object v0
.end method

.method private getDefaultLocalConfig(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 7

    const-string v0, "getDefaultLocalConfig"

    const-string v1, "DisplayFrameSetting"

    const/4 v2, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    const-string v3, "smartfps/opt_dafault_config/fps_local.config"

    invoke-static {p0, v3}, Lcom/miui/powerkeeper/utils/AssetUtils;->getStrFromAssetFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p0, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_0
    return-object v2

    :goto_1
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2

    :goto_2
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2
.end method

.method private getPkgCookie(Ljava/lang/String;)I
    .registers 4

    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mExcludeApps:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0xf7

    return p0

    :cond_0
    iget-boolean v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsWhitelistPolicy:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsWhiteFpsList:Z

    if-eqz v0, :cond_1

    goto :goto_3

    :cond_1
    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mPrivGames:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mDefaultGameApp:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mDefineHighestFpsApps:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 p0, 0x110

    return p0

    :cond_3
    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mTopApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0xf9

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mFoldTopApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mVideoApps:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 p0, 0xf8

    return p0

    :cond_5
    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mSmartFpsApps:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/16 p0, 0xfb

    return p0

    :cond_6
    iget-boolean p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsBlackList:Z

    if-nez p1, :cond_8

    iget p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mInputStatus:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_7

    goto :goto_0

    :cond_7
    const/16 p0, 0xf4

    return p0

    :cond_8
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getPkgCookie mIsBlackList mInputStatus="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mInputStatus:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "mIsBlackList="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsBlackList:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    :cond_9
    :goto_1
    return v1

    :cond_a
    :goto_2
    const/16 p0, 0xfe

    return p0

    :cond_b
    :goto_3
    const/16 p0, 0xf5

    return p0
.end method

.method public static getPkgFpsConfig(Z)Landroid/util/ArrayMap;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->sInstance:Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;

    if-eqz v0, :cond_8

    iget-boolean v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mParseInited:Z

    if-nez v1, :cond_0

    goto :goto_5

    :cond_0
    new-instance v1, Landroid/util/ArrayMap;

    const/16 v2, 0x400

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    sget-boolean v2, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsSmart:Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    invoke-direct {v0, v4, v2, p0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->getTopAppsFps(Ljava/lang/String;ZZ)Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    goto :goto_0

    :cond_1
    invoke-direct {v0, v4, v3, p0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->getTopAppsFps(Ljava/lang/String;ZZ)Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    :goto_0
    iget-object p0, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    const-string v2, "key_top_names"

    const-string v5, ""

    invoke-static {p0, v2, v5}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v5, p0

    move v6, v3

    :goto_1
    const/16 v7, 0x3c

    if-ge v6, v5, :cond_4

    aget-object v8, p0, v6

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v8, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    invoke-direct {v0, v4}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->getPrivGamesFps(Ljava/lang/String;)Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    invoke-direct {v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->getTopVideoPkg()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    :goto_3
    if-ge v3, v0, :cond_7

    aget-object v2, p0, v3

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_4

    :cond_5
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    return-object v1

    :cond_8
    :goto_5
    new-instance p0, Landroid/util/ArrayMap;

    invoke-direct {p0}, Landroid/util/ArrayMap;-><init>()V

    return-object p0
.end method

.method private getPrivGamesFps(Ljava/lang/String;)Landroid/util/ArrayMap;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    const-string v0, "key_priv_names"

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    new-instance v0, Landroid/util/ArrayMap;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_5

    aget-object v4, p1, v3

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    aget-object v5, v4, v2

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v5, 0x1

    aget-object v5, v4, v5

    const/4 v6, -0x1

    invoke-static {v5, v6}, Lcom/miui/powerkeeper/utils/Utils;->toInt(Ljava/lang/String;I)I

    move-result v5

    if-gtz v5, :cond_3

    goto :goto_1

    :cond_3
    aget-object v4, v4, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    iget-boolean p0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz p0, :cond_6

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getPrivGamesFps ret="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DisplayFrameSetting"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-object v0
.end method

.method private getQsyncStatus(ILjava/lang/String;)I
    .registers 6

    iget v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mUserFps:I

    iget-object v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mTopApps:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mTopApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_0
    iget-boolean v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsCustom:Z

    const-string v2, "DisplayFrameSetting"

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsFold:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mFoldTopApps:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mFoldTopApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-boolean p2, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "qsyncFps="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget p2, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mUserFps:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget-boolean p0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getQsyncStatus = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shl-int/lit8 v0, p2, 0x10

    or-int/2addr v0, p1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "fps ="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    shl-int/lit8 p0, p2, 0x10

    or-int/2addr p0, p1

    return p0
.end method

.method private getSuitableFps([II)I
    .registers 9

    iget v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mDefaultFps:I

    if-eqz p1, :cond_7

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_0
    array-length v5, p1

    if-ge v2, v5, :cond_4

    aget v5, p1, v2

    if-ne v5, p2, :cond_0

    move v1, p2

    goto :goto_2

    :cond_0
    if-le v5, p2, :cond_2

    if-eqz v3, :cond_1

    if-le v3, v5, :cond_3

    :cond_1
    move v3, v5

    goto :goto_1

    :cond_2
    if-ge v4, v5, :cond_3

    move v4, v5

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    if-eqz v1, :cond_5

    move v0, v1

    goto :goto_3

    :cond_5
    if-eqz v3, :cond_6

    move v0, v3

    goto :goto_3

    :cond_6
    if-eqz v4, :cond_7

    move v0, v4

    :cond_7
    :goto_3
    iget-boolean p0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz p0, :cond_8

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getSuitableFps fps="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ret="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DisplayFrameSetting"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return v0
.end method

.method private getSupportFps()[I
    .registers 5

    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v2, v0

    new-array v2, v2, [I

    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    aget-object v3, v0, v1

    invoke-virtual {v3}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    iget-boolean p0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getSupportFps ret="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DisplayFrameSetting"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v2
.end method

.method private getTopAppsFps(Ljava/lang/String;ZZ)Landroid/util/ArrayMap;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, ""

    if-nez p1, :cond_4

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudControlStatus:Landroid/util/ArrayMap;

    sget-object v2, Lb/b;->W:Ljava/util/ArrayList;

    sget v3, Lb/b;->l:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v1, "fps_group"

    const-string v2, "fps_smart_group"

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudObserver:Lb/a;

    invoke-virtual {p1, v3}, Lb/a;->t(I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudObserver:Lb/a;

    invoke-virtual {p1, v3}, Lb/a;->m(I)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "new cloudFpsJson is null"

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    new-instance p0, Landroid/util/ArrayMap;

    invoke-direct {p0}, Landroid/util/ArrayMap;-><init>()V

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    iget-object p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    invoke-static {p1, v2, v0}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    invoke-static {p1, v1, v0}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_4
    :goto_0
    new-instance p2, Landroid/util/ArrayMap;

    const/16 v1, 0x100

    invoke-direct {p2, v1}, Landroid/util/ArrayMap;-><init>(I)V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 p1, 0x3c

    const/4 v2, 0x0

    const-string v3, ","

    if-eqz p3, :cond_5

    :try_start_1
    const-string v4, "list60_fold"

    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {v4, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move v5, v2

    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_7

    aget-object v6, v4, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_8

    :cond_5
    const-string v4, "list60"

    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v4, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move v5, v2

    :goto_2
    array-length v6, v4

    if-ge v5, v6, :cond_6

    aget-object v6, v4, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    const-string v4, "list60_game"

    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {v4, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move v5, v2

    :goto_3
    array-length v6, v4

    if-ge v5, v6, :cond_7

    aget-object v6, v4, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_7
    const/16 p1, 0x5a

    if-eqz p3, :cond_8

    const-string v4, "list90_fold"

    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {v4, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move v5, v2

    :goto_4
    array-length v6, v4

    if-ge v5, v6, :cond_9

    aget-object v6, v4, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_8
    const-string v4, "list90"

    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {v4, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move v5, v2

    :goto_5
    array-length v6, v4

    if-ge v5, v6, :cond_9

    aget-object v6, v4, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_9
    const/16 p1, 0x78

    if-eqz p3, :cond_a

    const-string p3, "list120_fold"

    invoke-virtual {v1, p3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p3, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    :goto_6
    array-length v0, p3

    if-ge v2, v0, :cond_b

    aget-object v0, p3, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_a
    const-string p3, "list120"

    invoke-virtual {v1, p3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p3, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    :goto_7
    array-length v0, p3

    if-ge v2, v0, :cond_b

    aget-object v0, p3, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :goto_8
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getTopAppsFps e="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    :cond_b
    iget-boolean p0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz p0, :cond_c

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getTopAppsFps ret="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DisplayFrameSetting"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    return-object p2
.end method

.method private getTopVideoPkg()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudObserver:Lb/a;

    sget v1, Lb/b;->l:I

    invoke-virtual {v0, v1}, Lb/a;->m(I)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudObserver:Lb/a;

    invoke-virtual {v2, v1}, Lb/a;->t(I)Z

    move-result v1

    const-string v2, ""

    const-string v3, "fps_top_video_pkg"

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseTopVideoAppFromDb new cloud = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    invoke-static {v0, v3, v2}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseTopVideoAppFromDb old cloud = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getValidConfigFromData(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;I)Ljava/lang/String;
    .registers 11

    const-string v0, ""

    if-nez p1, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0

    :cond_1
    const-string v1, ", configType = "

    const-string v2, "DisplayFrameSetting"

    const-string v3, "NULL"

    if-eqz p0, :cond_2

    invoke-virtual {p0, p2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "load local config "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-object v4, v0

    :goto_0
    if-eqz p0, :cond_4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    return-object v4

    :cond_4
    :goto_1
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "load default local config "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public static getValidLocalConfigPath(Landroid/content/Context;)Ljava/lang/String;
    .registers 9

    sget-object v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->FPS_LOCAL_CONFIG_FILE_PATH:Ljava/lang/String;

    const-string v1, "fps_local.config"

    invoke-static {p0, v0, v1}, Lcom/miui/powerkeeper/utils/AssetUtils;->doesAssetExist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v3

    :goto_0
    sget-object v2, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->FPS_INTL_LOCAL_CONFIG_FILE_PATH:Ljava/lang/String;

    const-string v4, "_intl"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "IN"

    const-string v5, "ro.miui.build.region"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "ID"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "smartfps/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_id"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->FPS_INTL_LOCAL_CONFIG_FILE_PATH:Ljava/lang/String;

    invoke-static {p0, v2, v1}, Lcom/miui/powerkeeper/utils/AssetUtils;->doesAssetExist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    const-string v7, "DisplayFrameSetting"

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switch intl local config to id local config "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->FPS_INTL_LOCAL_CONFIG_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->FPS_INTL_LOCAL_CONFIG_FILE_PATH:Ljava/lang/String;

    const-string v2, "without id local config, no need to switch intl local config"

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    sget-boolean v2, Lmiui/os/Build;->IS_MIUI:Z

    if-eqz v2, :cond_7

    sget-object v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->FPS_INTL_LOCAL_CONFIG_FILE_PATH:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/miui/powerkeeper/utils/AssetUtils;->doesAssetExist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->FPS_INTL_LOCAL_CONFIG_FILE_PATH:Ljava/lang/String;

    return-object p0

    :cond_4
    return-object v3

    :cond_5
    sget-boolean v2, Lmiui/os/Build;->IS_MIUI:Z

    if-eqz v2, :cond_7

    sget-object v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->FPS_INTL_LOCAL_CONFIG_FILE_PATH:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/miui/powerkeeper/utils/AssetUtils;->doesAssetExist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    sget-object p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->FPS_INTL_LOCAL_CONFIG_FILE_PATH:Ljava/lang/String;

    return-object p0

    :cond_6
    const-string p0, "smartfps/opt_dafault_config"

    return-object p0

    :cond_7
    return-object v0
.end method

.method static bridge synthetic h(Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;)[Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mBlacklistActivity_Vr:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic h0()Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;
    .registers 1

    sget-object v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->sInstance:Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;

    return-object v0
.end method

.method private handleIrisDisplayState()V
    .registers 6

    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mDisplay:Landroid/view/Display;

    if-eqz v0, :cond_4

    iget-boolean v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->IS_SUPPORTED_IRIS:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsExtremeVideoModeOn:I

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    move-result v0

    iget v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFps:I

    iget v2, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mRealRefreshRate:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    const-string v3, "DisplayFrameSetting"

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mRealRefreshRate:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleIrisDisplayState mCurrentFps="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFps:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " actual refreshRate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " mRealRefreshRate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mRealRefreshRate:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mRealRefreshRate:F

    sget-object v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mExtremeVideoPackageList:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgInfo:Lmiui/process/ForegroundInfo;

    iget-object v1, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v0

    iget-boolean v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    if-eq v0, v2, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleIrisDisplayState newState="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mPrevScreenState:I

    if-eq v0, v1, :cond_4

    iput v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mPrevScreenState:I

    if-ne v0, v2, :cond_4

    iget v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsExtremeVideoModeOn:I

    if-ne v0, v2, :cond_4

    iget-boolean v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mHasIrisCommandSet:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mExtremeVideoPackageList:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgInfo:Lmiui/process/ForegroundInfo;

    iget-object v1, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->onExtremeSceneRecovery()V

    :cond_4
    :goto_0
    return-void
.end method

.method private handleScreenStateUpdate()V
    .registers 4

    iget-boolean v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsIndependentRearDevice:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mBackScreenEnhance:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsMainScreenOn:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsBackScreenOn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentBackDisplayInfo:Lmiui/process/ForegroundInfo;

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentDefaultDisplayInfo:Lmiui/process/ForegroundInfo;

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v2, v0, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurScreenEnabledId:I

    if-eq v1, v2, :cond_1

    iput v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurScreenEnabledId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "curEnabledDid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurScreenEnabledId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", infoPkg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->notifyFGChange(Lmiui/process/ForegroundInfo;)V

    invoke-direct {p0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->notifySFIChange()V

    :cond_1
    return-void
.end method

.method private handleTopGameList(Landroid/content/Intent;)V
    .registers 5

    const-string v0, "isAppend"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "gameList"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive isAppend="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " gameList:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DisplayFrameSetting"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mLocalLog:Landroid/util/LocalLog;

    const-string v2, "onReceive TOP_GAME_LIST"

    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private homeToAppEnd(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "homeToAppEnd pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    new-instance v0, Lmiui/process/ForegroundInfo;

    invoke-direct {v0}, Lmiui/process/ForegroundInfo;-><init>()V

    iput-object p1, v0, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    iget-object p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgInfo:Lmiui/process/ForegroundInfo;

    if-eqz p1, :cond_0

    iget p1, p1, Lmiui/process/ForegroundInfo;->mForegroundDisplayId:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    iput p1, v0, Lmiui/process/ForegroundInfo;->mForegroundDisplayId:I

    invoke-virtual {p0, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->onForegroundChanged(Lmiui/process/ForegroundInfo;)V

    return-void
.end method

.method static bridge synthetic i(Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;)[Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCameraThirdWhitelist:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic i0(Z)V
    .registers 1

    sput-boolean p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsHandleTopGgameList:Z

    return-void
.end method

.method static declared-synchronized init(Landroid/content/Context;Landroid/os/Looper;)Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;
    .registers 4

    const-class v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->isFeatureOn()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->sInstance:Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;

    invoke-direct {v1, p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    sput-object v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->sInstance:Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->sInstance:Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_1
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static isFeatureOn()Z
    .registers 3

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const-string v0, "debug.power.fps.enable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "fpsList"

    invoke-static {v0}, Lmiui/util/FeatureParser;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v0, v0

    if-lez v0, :cond_1

    return v2

    :cond_1
    return v1
.end method

.method static bridge synthetic j(Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic j0(Z)V
    .registers 1

    sput-boolean p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsSmart:Z

    return-void
.end method

.method static bridge synthetic k(Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurActivityName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic l(Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurExtremeVideoActivity:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic m(Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurExtremeVideoPackage:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic n(Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;)Lmiui/process/ForegroundInfo;
    .registers 1

    iget-object p0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgInfo:Lmiui/process/ForegroundInfo;

    return-object p0
.end method

.method private notifyCarScreenInfoChange(Lcom/miui/powerkeeper/utils/ScreenStateObserver$CarScreenInfo;)V
    .registers 9

    iget-boolean v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCarInfoTrigFpsSwitch:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCarScreenInfo:Lcom/miui/powerkeeper/utils/ScreenStateObserver$CarScreenInfo;

    if-nez v0, :cond_0

    goto :goto_5

    :cond_0
    iget-boolean v2, p1, Lcom/miui/powerkeeper/utils/ScreenStateObserver$CarScreenInfo;->connectState:Z

    if-eqz v2, :cond_1

    iget-boolean v3, p1, Lcom/miui/powerkeeper/utils/ScreenStateObserver$CarScreenInfo;->mainScreenState:Z

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    if-eqz v2, :cond_2

    iget-boolean v4, p1, Lcom/miui/powerkeeper/utils/ScreenStateObserver$CarScreenInfo;->subScreenState:Z

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_1
    if-eqz v2, :cond_3

    iget-boolean p1, p1, Lcom/miui/powerkeeper/utils/ScreenStateObserver$CarScreenInfo;->pinScreenState:Z

    goto :goto_2

    :cond_3
    move p1, v1

    :goto_2
    const/4 v5, 0x1

    if-nez v3, :cond_5

    if-nez v4, :cond_5

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    move v6, v1

    goto :goto_4

    :cond_5
    :goto_3
    move v6, v5

    :goto_4
    invoke-virtual {v0, v2, v3, v4, p1}, Lcom/miui/powerkeeper/utils/ScreenStateObserver$CarScreenInfo;->needUpdateState(ZZZZ)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCarScreenInfo:Lcom/miui/powerkeeper/utils/ScreenStateObserver$CarScreenInfo;

    invoke-virtual {v0, v2, v3, v4, p1}, Lcom/miui/powerkeeper/utils/ScreenStateObserver$CarScreenInfo;->setCarScreenInfo(ZZZZ)V

    :cond_6
    if-eqz v2, :cond_7

    if-eqz v6, :cond_7

    iget-boolean p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->isEnterCarSettingState:Z

    if-nez p1, :cond_8

    const-string p1, "car screen trig fps setting"

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    iput-boolean v5, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->isEnterCarSettingState:Z

    iput-boolean v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->isSwitchPhoneStateSucceed:Z

    invoke-direct {p0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->carInfoTrigStateUpdate()V

    return-void

    :cond_7
    iget-boolean p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->isEnterCarSettingState:Z

    if-eqz p1, :cond_8

    const-string p1, "car screen trig fps recover"

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->isEnterCarSettingState:Z

    invoke-direct {p0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->carInfoTrigStateUpdate()V

    :cond_8
    return-void

    :cond_9
    :goto_5
    iput-boolean v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->isEnterCarSettingState:Z

    return-void
.end method

.method private notifyFgInfoChange(Lmiui/process/ForegroundInfo;)V
    .registers 5

    const-string v0, "DisplayFrameSetting"

    if-nez p1, :cond_0

    :try_start_0
    const-string p0, "notifyFgInfoChange error for appinfo is not valid"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->updateForegroundInfo(Lmiui/process/ForegroundInfo;)V

    iget-boolean v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCarInfoTrigFpsSwitch:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->isEnterCarSettingState:Z

    if-eqz v1, :cond_1

    iget v1, p1, Lmiui/process/ForegroundInfo;->mForegroundDisplayId:I

    if-nez v1, :cond_7

    invoke-virtual {p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->notifyFGChange(Lmiui/process/ForegroundInfo;)V

    invoke-direct {p0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->notifySFIChange()V

    return-void

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->isSwitchPhoneStateSucceed:Z

    iget-boolean v2, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsIndependentRearDevice:Z

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mBackScreenEnhance:Z

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsMainScreenOn:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsBackScreenOn:Z

    if-eqz v2, :cond_2

    iget p1, p1, Lmiui/process/ForegroundInfo;->mForegroundDisplayId:I

    if-ne p1, v1, :cond_3

    iget-object p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentBackDisplayInfo:Lmiui/process/ForegroundInfo;

    goto :goto_0

    :cond_2
    iget p1, p1, Lmiui/process/ForegroundInfo;->mForegroundDisplayId:I

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentDefaultDisplayInfo:Lmiui/process/ForegroundInfo;

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_7

    iget-object v1, p1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurNotifiedPkg:Ljava/lang/String;

    iget-object v2, p1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurNotifiedPkg:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgPkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgInfo:Lmiui/process/ForegroundInfo;

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurNotifiedPkg:Ljava/lang/String;

    iget-object v1, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean p0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz p0, :cond_7

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ignore notifyFgInfoChange for repeat app, appinfo = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    iget-boolean v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyFgInfoChange appinfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->notifyFGChange(Lmiui/process/ForegroundInfo;)V

    invoke-direct {p0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->notifySFIChange()V

    return-void

    :cond_6
    invoke-virtual {p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->notifyFGChange(Lmiui/process/ForegroundInfo;)V

    invoke-direct {p0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->notifySFIChange()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "notifyFgInfoChange error"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method

.method public static notifyGesture(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->sInstance:Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mParseInited:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x13

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    sget-object v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->sInstance:Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private notifyINChange(I)V
    .registers 6

    iget v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mInputStatus:I

    const/4 v1, 0x1

    const/16 v2, 0x1a

    if-nez v0, :cond_2

    if-ne p1, v1, :cond_2

    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mInputApps:Landroid/util/ArrayMap;

    iget-object v3, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgPkg:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mInputStatus:I

    iget-boolean p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsSupportLowFps:Z

    if-eqz p1, :cond_0

    const-string p1, "registerDisplayScroll input"

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->registerDisplayScrollListener()V

    :cond_0
    invoke-virtual {p0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_2
    iget v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mInputStatus:I

    if-ne v0, v1, :cond_4

    if-nez p1, :cond_4

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsOnScroll:Z

    iput p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mInputStatus:I

    invoke-virtual {p0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    iget-object p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgInfo:Lmiui/process/ForegroundInfo;

    invoke-virtual {p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->onForegroundChanged(Lmiui/process/ForegroundInfo;)V

    return-void

    :cond_4
    iget-boolean v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyINChange mInputStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mInputStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",inputStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mInputApps="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mInputApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", mCurrentFgPkg="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgPkg:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DisplayFrameSetting"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method

.method private notifyRecentTask(Z)V
    .registers 5

    iget-boolean v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    const-string v1, "DisplayFrameSetting"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyRecentTask, isEnter:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgInfo:Lmiui/process/ForegroundInfo;

    if-nez p1, :cond_1

    const-string p1, ""

    goto :goto_0

    :cond_1
    iget-object p1, p1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    :goto_0
    iget-boolean v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyRecentTask fgPkg:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-direct {p0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->appOrHomeToRecentTask()V

    return-void

    :cond_3
    invoke-direct {p0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->recentTaskToHome()V

    return-void
.end method

.method private notifySFCPUCluster(I)V
    .registers 5

    const-string p0, "SurfaceFlinger"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const-string v1, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x793e

    :try_start_0
    invoke-interface {p0, v2, v0, p1, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_1
    const-string p1, "DisplayFrameSetting"

    const-string v1, "Failed to notify cpu cluster to SurfaceFlinger"

    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_1

    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0

    :cond_0
    :goto_1
    return-void
.end method

.method private notifySFDfpsMode(IILjava/lang/String;)V
    .registers 6

    const-string p0, "SurfaceFlinger"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const-string v1, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 p2, 0x0

    const/16 p3, 0x453

    :try_start_0
    invoke-interface {p0, p3, v0, p1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_1
    const-string p1, "DisplayFrameSetting"

    const-string p2, "Failed to notify dfps to SurfaceFlinger"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_1

    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0

    :cond_0
    :goto_1
    return-void
.end method

.method private notifySFIChange()V
    .registers 7

    iget-boolean v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->IS_ENABLE_DISPLAY_IDLE:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgInfo:Lmiui/process/ForegroundInfo;

    if-eqz v0, :cond_14

    iget-object v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mEbookidleApps:Landroid/util/ArraySet;

    iget-object v0, v0, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsEbookIdleSwitch:Z

    const-string v2, "DisplayFrameSetting"

    if-eq v0, v1, :cond_0

    iput-boolean v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsEbookIdleSwitch:Z

    const/16 v1, 0x101

    iget-object v3, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgPkg:Ljava/lang/String;

    invoke-direct {p0, v1, v0, v3}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->notifySFIfpsMode(IILjava/lang/String;)V

    iget-boolean v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onForegroundChanged for ebook idle value="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mTpidleApps:Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgInfo:Lmiui/process/ForegroundInfo;

    iget-object v1, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsTpIdleSwitch:Z

    if-eq v0, v1, :cond_1

    iput-boolean v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsTpIdleSwitch:Z

    const/16 v1, 0x102

    iget-object v3, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgPkg:Ljava/lang/String;

    invoke-direct {p0, v1, v0, v3}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->notifySFIfpsMode(IILjava/lang/String;)V

    iget-object v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->MIFO_SCENARIO:Ljava/lang/String;

    invoke-static {v1, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-boolean v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onForegroundChanged for tp idle value="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mVideoIdleApps:Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgInfo:Lmiui/process/ForegroundInfo;

    iget-object v1, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsVideoIdleSwitch:Z

    if-eq v0, v1, :cond_2

    iput-boolean v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsVideoIdleSwitch:Z

    const/16 v1, 0xf8

    iget-object v3, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgPkg:Ljava/lang/String;

    invoke-direct {p0, v1, v0, v3}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->notifySFIfpsMode(IILjava/lang/String;)V

    iget-boolean v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onForegroundChanged for video idle value="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-boolean v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCheckPowerSaveCamera:Z

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mBlacklistActivity_Camera:[Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurActivityName:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mLowFpsPkgList:Ljava/util/List;

    iget-object v4, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgPkg:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    :goto_0
    move v0, v3

    :goto_1
    iget-boolean v4, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsCameraIdleSwitch:Z

    if-eq v0, v4, :cond_5

    iput-boolean v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsCameraIdleSwitch:Z

    const/16 v4, 0xfc

    iget-object v5, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgPkg:Ljava/lang/String;

    invoke-direct {p0, v4, v0, v5}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->notifySFIfpsMode(IILjava/lang/String;)V

    iget-boolean v4, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onForegroundChanged for camera idle value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-boolean v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mShortVideoSwitch:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mShortVideoApps:Ljava/util/List;

    iget-object v4, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgInfo:Lmiui/process/ForegroundInfo;

    iget-object v4, v4, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mWhitelistActivity:[Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurActivityName:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v3

    goto :goto_2

    :cond_6
    move v0, v1

    :goto_2
    iget-boolean v4, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsShortVideoSwitch:Z

    if-eq v0, v4, :cond_7

    iput-boolean v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsShortVideoSwitch:Z

    const/16 v4, 0x103

    iget-object v5, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgPkg:Ljava/lang/String;

    invoke-direct {p0, v4, v0, v5}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->notifySFIfpsMode(IILjava/lang/String;)V

    iget-boolean v4, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v4, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onForegroundChanged for short video value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mExcludeApps:Landroid/util/ArraySet;

    iget-object v4, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgInfo:Lmiui/process/ForegroundInfo;

    iget-object v4, v4, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIdleExcludedApps:Landroid/util/ArraySet;

    iget-object v4, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgInfo:Lmiui/process/ForegroundInfo;

    iget-object v4, v4, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_3

    :cond_8
    move v0, v1

    goto :goto_4

    :cond_9
    :goto_3
    move v0, v3

    :goto_4
    iget-boolean v4, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsExcludeSwitch:Z

    if-eq v0, v4, :cond_a

    iput-boolean v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsExcludeSwitch:Z

    const/16 v4, 0xf7

    iget-object v5, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgPkg:Ljava/lang/String;

    invoke-direct {p0, v4, v0, v5}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->notifySFIfpsMode(IILjava/lang/String;)V

    iget-boolean v4, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v4, :cond_a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onForegroundChanged for exclude value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mPromotionApps:Landroid/util/ArraySet;

    iget-object v4, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgInfo:Lmiui/process/ForegroundInfo;

    iget-object v4, v4, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    iget-boolean v4, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsPromotionSwitch:Z

    if-eq v0, v4, :cond_b

    iput-boolean v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsPromotionSwitch:Z

    const/16 v4, 0x104

    iget-object v5, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgPkg:Ljava/lang/String;

    invoke-direct {p0, v4, v0, v5}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->notifySFIfpsMode(IILjava/lang/String;)V

    iget-boolean v4, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v4, :cond_b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onForegroundChanged for promotion value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mDisplayFpsApps:Landroid/util/ArraySet;

    iget-object v4, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgInfo:Lmiui/process/ForegroundInfo;

    iget-object v4, v4, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    iget-boolean v4, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsDisplayFpsSwitch:Z

    if-eq v0, v4, :cond_c

    iput-boolean v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsDisplayFpsSwitch:Z

    const/16 v4, 0x105

    iget-object v5, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgPkg:Ljava/lang/String;

    invoke-direct {p0, v4, v0, v5}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->notifySFIfpsMode(IILjava/lang/String;)V

    iget-boolean v4, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v4, :cond_c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onForegroundChanged for Display fps value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    iget-boolean v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mChargingSwitch:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mLevelFullSwitch:Z

    if-eqz v0, :cond_d

    move v1, v3

    :cond_d
    iget-boolean v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsChargingFullSwitch:Z

    if-eq v1, v0, :cond_e

    iput-boolean v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsChargingFullSwitch:Z

    const/16 v0, 0x107

    iget-object v4, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgPkg:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v4}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->notifySFIfpsMode(IILjava/lang/String;)V

    iget-boolean v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onForegroundChanged for Charging full value="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mFullScreenFpsApps:Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgInfo:Lmiui/process/ForegroundInfo;

    iget-object v1, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsFullScreenSwitch:Z

    if-eq v0, v1, :cond_f

    iput-boolean v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsFullScreenSwitch:Z

    const/16 v1, 0x10a

    iget-object v4, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgPkg:Ljava/lang/String;

    invoke-direct {p0, v1, v0, v4}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->notifySFIfpsMode(IILjava/lang/String;)V

    iget-boolean v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v1, :cond_f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onForegroundChanged for full screen fps value="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mVideoLowerFpsApps:Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgInfo:Lmiui/process/ForegroundInfo;

    iget-object v1, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mVideoLowerFpsSwitch:Z

    if-eq v0, v1, :cond_10

    iput-boolean v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mVideoLowerFpsSwitch:Z

    const/16 v1, 0x10f

    iget-object v4, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgPkg:Ljava/lang/String;

    invoke-direct {p0, v1, v0, v4}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->notifySFIfpsMode(IILjava/lang/String;)V

    iget-boolean v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v1, :cond_10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onForegroundChanged for full screen lower fps value="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mMapFpsApps:Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgInfo:Lmiui/process/ForegroundInfo;

    iget-object v1, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsMapFpsSwitch:Z

    if-ne v0, v1, :cond_11

    iget-object v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mMapFpsApps:Landroid/util/ArraySet;

    iget-object v4, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgInfo:Lmiui/process/ForegroundInfo;

    iget-object v4, v4, Lmiui/process/ForegroundInfo;->mLastForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    :cond_11
    iput-boolean v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsMapFpsSwitch:Z

    iget-object v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgPkg:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->getQsyncStatus(ILjava/lang/String;)I

    move-result v1

    iget-object v4, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgPkg:Ljava/lang/String;

    const/16 v5, 0x109

    invoke-direct {p0, v5, v1, v4}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->notifySFIfpsMode(IILjava/lang/String;)V

    iget-boolean v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v1, :cond_12

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onForegroundChanged for Map fps value="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mAutoModeApps:Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgInfo:Lmiui/process/ForegroundInfo;

    iget-object v1, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsAutoModeSwitch:Z

    if-eq v0, v1, :cond_13

    iput-boolean v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsAutoModeSwitch:Z

    xor-int/2addr v0, v3

    const/16 v1, 0x10b

    iget-object v3, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgPkg:Ljava/lang/String;

    invoke-direct {p0, v1, v0, v3}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->notifySFIfpsMode(IILjava/lang/String;)V

    iget-boolean v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v1, :cond_13

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onForegroundChanged for auto mode value="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mVrrApps:Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgInfo:Lmiui/process/ForegroundInfo;

    iget-object v1, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsVrrSwitch:Z

    if-eq v0, v1, :cond_14

    iput-boolean v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsVrrSwitch:Z

    const/16 v1, 0x10d

    iget-object v3, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgPkg:Ljava/lang/String;

    invoke-direct {p0, v1, v0, v3}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->notifySFIfpsMode(IILjava/lang/String;)V

    iget-boolean p0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz p0, :cond_14

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onForegroundChanged for vrr value="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    return-void
.end method

.method private notifySFIfpsMode(IILjava/lang/String;)V
    .registers 11

    sget-boolean v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mMoveFrameRateStrategyUp:Z

    const-string v1, "DisplayFrameSetting"

    if-nez v0, :cond_0

    const-string p0, "SurfaceFlinger"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const-string v2, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 p2, 0x0

    const/16 p3, 0x7983

    :try_start_0
    invoke-interface {p0, p3, v0, p1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    const-string p1, "Failed to notify idle to SurfaceFlinger"

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0

    :cond_0
    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCookieNotifyReserveList:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, " pkg "

    const-string v3, " status "

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mDisplayManager:Landroid/os/IBinder;

    if-nez v0, :cond_1

    const-string v0, "display"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mDisplayManager:Landroid/os/IBinder;

    :cond_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    const-string v5, "android.view.android.hardware.display.IDisplayManager"

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const-string v5, "powerkeeper"

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :try_start_2
    iget-object p0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mDisplayManager:Landroid/os/IBinder;

    const v5, 0xfffff8

    const/4 v6, 0x1

    invoke-interface {p0, v5, v0, v4, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "powerkeeper notify scene to display cookie "

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    goto :goto_4

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    :try_start_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setMotionRefreshRate fps "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " failed "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :goto_3
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    throw p0

    :cond_2
    iget-boolean p0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-nez p0, :cond_4

    sget-boolean p0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz p0, :cond_3

    goto :goto_5

    :cond_3
    :goto_4
    return-void

    :cond_4
    :goto_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ignore notifySFIfpsMode for new_version, cookie "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private notifySFNoteMode(II)V
    .registers 5

    const-string p0, "SurfaceFlinger"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const-string v1, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x0

    const/4 p2, 0x0

    const/16 v1, 0x798e

    :try_start_0
    invoke-interface {p0, v1, v0, p1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_1
    const-string p1, "DisplayFrameSetting"

    const-string p2, "Failed to notify notes to SurfaceFlinger"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_1

    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0

    :cond_0
    :goto_1
    return-void
.end method

.method static bridge synthetic o(Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgPkg:Ljava/lang/String;

    return-object p0
.end method

.method public static onCloudFunctionUpdated(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;I)V
    .registers 14

    invoke-static {}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->isFeatureOn()Z

    move-result v0

    const-string v1, "DisplayFrameSetting"

    if-nez v0, :cond_0

    const-string p0, "onCloudFunctionUpdated shoud return"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->sInstance:Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;

    const/4 v2, 0x0

    if-nez p3, :cond_1

    invoke-static {p0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->getValidLocalConfigPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ignore onCloudFunctionUpdated fps related for configType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    if-nez p3, :cond_2

    sput p3, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mConfigType:I

    :cond_2
    move v3, v2

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCloudFunctionUpdated run configType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", haveLoadNewConfig = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, ""

    if-nez v3, :cond_2b

    const-string v3, "custom_switch"

    invoke-static {p1, p2, v3, p3}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->getValidConfigFromData(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v3, v4}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    if-eqz p3, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-static {p0, v3, v5}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    :cond_3
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v7, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudControlStatus:Landroid/util/ArrayMap;

    sget-object v8, Lb/b;->W:Ljava/util/ArrayList;

    sget v9, Lb/b;->g:I

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-static {p0, v3, v5}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_4
    if-eqz v0, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "newCustomModeSwitch = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x25

    invoke-virtual {v0, v3, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_5
    :goto_1
    const-string v3, "foss_group"

    invoke-static {p1, p2, v3, p3}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->getValidConfigFromData(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v3, v4}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    if-eqz p3, :cond_6

    invoke-static {p0, v3, v5}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    :cond_6
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v7, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudControlStatus:Landroid/util/ArrayMap;

    sget-object v8, Lb/b;->W:Ljava/util/ArrayList;

    sget v9, Lb/b;->h:I

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    :try_start_0
    invoke-static {p0, v3, v5}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_7

    const-string v5, "fucSwitch"

    invoke-virtual {v3, v5, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsFossCloudSwitch:Z

    const-string v5, "ditherSwitch"

    invoke-virtual {v3, v5, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsDitherCloudSwitch:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fossFucSwitch="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsFossCloudSwitch:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "ditherSwitch="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsDitherCloudSwitch:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    if-eqz v0, :cond_7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parsemIsFossCloudSwitch e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    :cond_7
    :goto_2
    const-string v3, "note_pkg"

    invoke-static {p1, p2, v3, p3}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->getValidConfigFromData(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v3, v4}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    if-eqz p3, :cond_8

    invoke-static {p0, v3, v5}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_3

    :cond_8
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v7, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudControlStatus:Landroid/util/ArrayMap;

    sget-object v8, Lb/b;->W:Ljava/util/ArrayList;

    sget v9, Lb/b;->i:I

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    :try_start_1
    invoke-static {p0, v3, v5}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_9

    const-string v5, "noteSwitch"

    invoke-virtual {v3, v5, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsNoteCloudSwitch:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "noteSwitch="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsNoteCloudSwitch:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v2

    if-eqz v0, :cond_9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parsemIsNoteCloudSwitch e="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    :cond_9
    :goto_3
    const-string v2, "fps_group"

    invoke-static {p1, p2, v2, p3}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->getValidConfigFromData(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v4}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    if-eqz p3, :cond_a

    invoke-static {p0, v2, v3}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_4

    :cond_a
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v6, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudControlStatus:Landroid/util/ArrayMap;

    sget-object v7, Lb/b;->W:Ljava/util/ArrayList;

    sget v8, Lb/b;->l:I

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-static {p0, v2, v3}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    if-eqz v0, :cond_b

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_b
    :goto_4
    const-string v2, "fps_smart_group"

    invoke-static {p1, p2, v2, p3}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->getValidConfigFromData(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v4}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    if-eqz p3, :cond_c

    invoke-static {p0, v2, v3}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_5

    :cond_c
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v6, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudControlStatus:Landroid/util/ArrayMap;

    sget-object v7, Lb/b;->W:Ljava/util/ArrayList;

    sget v8, Lb/b;->l:I

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-static {p0, v2, v3}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    if-eqz v0, :cond_d

    const/16 v2, 0x19

    invoke-virtual {v0, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_d
    :goto_5
    const-string v2, "fps_top_video_pkg"

    invoke-static {p1, p2, v2, p3}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->getValidConfigFromData(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v4}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    if-eqz p3, :cond_e

    invoke-static {p0, v2, v3}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_6

    :cond_e
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v6, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudControlStatus:Landroid/util/ArrayMap;

    sget-object v7, Lb/b;->W:Ljava/util/ArrayList;

    sget v8, Lb/b;->l:I

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-static {p0, v2, v3}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    if-eqz v0, :cond_f

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_f
    :goto_6
    const-string v2, "fps_top_video_idle_pkg"

    invoke-static {p1, p2, v2, p3}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->getValidConfigFromData(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v4}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    if-eqz p3, :cond_10

    invoke-static {p0, v2, v3}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_7

    :cond_10
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v6, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudControlStatus:Landroid/util/ArrayMap;

    sget-object v7, Lb/b;->W:Ljava/util/ArrayList;

    sget v8, Lb/b;->k:I

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-static {p0, v2, v3}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    if-eqz v0, :cond_11

    const/16 v2, 0x20

    invoke-virtual {v0, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_11
    :goto_7
    const-string v2, "fps_exclude_pkg"

    invoke-static {p1, p2, v2, p3}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->getValidConfigFromData(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v4}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13

    if-eqz p3, :cond_12

    invoke-static {p0, v2, v3}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_8

    :cond_12
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v6, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudControlStatus:Landroid/util/ArrayMap;

    sget-object v7, Lb/b;->W:Ljava/util/ArrayList;

    sget v8, Lb/b;->h:I

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-static {p0, v2, v3}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    if-eqz v0, :cond_13

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_13
    :goto_8
    const-string v2, "ebook_idle_pkg"

    invoke-static {p1, p2, v2, p3}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->getValidConfigFromData(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v4}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_15

    if-eqz p3, :cond_14

    invoke-static {p0, v2, v3}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_9

    :cond_14
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v6, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudControlStatus:Landroid/util/ArrayMap;

    sget-object v7, Lb/b;->W:Ljava/util/ArrayList;

    sget v8, Lb/b;->k:I

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-static {p0, v2, v3}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    if-eqz v0, :cond_15

    const/16 v2, 0x17

    invoke-virtual {v0, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_15
    :goto_9
    const-string v2, "fps_fun_state_group"

    invoke-static {p1, p2, v2, p3}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->getValidConfigFromData(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v4}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_17

    if-eqz p3, :cond_16

    invoke-static {p0, v2, v3}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_a

    :cond_16
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v6, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudControlStatus:Landroid/util/ArrayMap;

    sget-object v7, Lb/b;->W:Ljava/util/ArrayList;

    sget v8, Lb/b;->k:I

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-static {p0, v2, v3}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    if-eqz v0, :cond_17

    const/16 v2, 0x33

    invoke-virtual {v0, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_17
    :goto_a
    const-string v2, "tp_idle_pkg"

    invoke-static {p1, p2, v2, p3}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->getValidConfigFromData(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v4}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_19

    if-eqz p3, :cond_18

    invoke-static {p0, v2, v3}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_b

    :cond_18
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v6, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudControlStatus:Landroid/util/ArrayMap;

    sget-object v7, Lb/b;->W:Ljava/util/ArrayList;

    sget v8, Lb/b;->h:I

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-static {p0, v2, v3}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    if-eqz v0, :cond_19

    const/16 v2, 0x18

    invoke-virtual {v0, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_19
    :goto_b
    const-string v2, "input_audio_group"

    invoke-static {p1, p2, v2, p3}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->getValidConfigFromData(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v4}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1b

    if-eqz p3, :cond_1a

    invoke-static {p0, v2, v3}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_c

    :cond_1a
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v6, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudControlStatus:Landroid/util/ArrayMap;

    sget-object v7, Lb/b;->W:Ljava/util/ArrayList;

    sget v8, Lb/b;->l:I

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-static {p0, v2, v3}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    if-eqz v0, :cond_1b

    const/16 v2, 0x1b

    invoke-virtual {v0, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1b
    :goto_c
    const-string v2, "low_fps_group"

    invoke-static {p1, p2, v2, p3}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->getValidConfigFromData(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v4}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1d

    if-eqz p3, :cond_1c

    invoke-static {p0, v2, v3}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_d

    :cond_1c
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v6, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudControlStatus:Landroid/util/ArrayMap;

    sget-object v7, Lb/b;->W:Ljava/util/ArrayList;

    sget v8, Lb/b;->l:I

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-static {p0, v2, v3}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    if-eqz v0, :cond_1d

    const/16 v2, 0x1c

    invoke-virtual {v0, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1d
    :goto_d
    const-string v2, "fps_top_short_video_pkg"

    invoke-static {p1, p2, v2, p3}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->getValidConfigFromData(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v4}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1f

    if-eqz p3, :cond_1e

    invoke-static {p0, v2, v3}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_e

    :cond_1e
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v6, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudControlStatus:Landroid/util/ArrayMap;

    sget-object v7, Lb/b;->W:Ljava/util/ArrayList;

    sget v8, Lb/b;->k:I

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    invoke-static {p0, v2, v3}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    if-eqz v0, :cond_1f

    const/16 v2, 0x1e

    invoke-virtual {v0, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1f
    :goto_e
    const-string v2, "promotion_group"

    invoke-static {p1, p2, v2, p3}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->getValidConfigFromData(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v4}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_21

    if-eqz p3, :cond_20

    invoke-static {p0, v2, v3}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_f

    :cond_20
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v6, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudControlStatus:Landroid/util/ArrayMap;

    sget-object v7, Lb/b;->W:Ljava/util/ArrayList;

    sget v8, Lb/b;->k:I

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    invoke-static {p0, v2, v3}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    if-eqz v0, :cond_21

    const/16 v2, 0x22

    invoke-virtual {v0, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_21
    :goto_f
    const-string v2, "display_fps_group"

    invoke-static {p1, p2, v2, p3}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->getValidConfigFromData(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v4}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_23

    if-eqz p3, :cond_22

    invoke-static {p0, v2, v3}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_10

    :cond_22
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v6, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudControlStatus:Landroid/util/ArrayMap;

    sget-object v7, Lb/b;->W:Ljava/util/ArrayList;

    sget v8, Lb/b;->j:I

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    invoke-static {p0, v2, v3}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    if-eqz v0, :cond_23

    const/16 v2, 0x23

    invoke-virtual {v0, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_23
    :goto_10
    const-string v2, "full_screen_fps_group"

    invoke-static {p1, p2, v2, p3}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->getValidConfigFromData(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v4}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_25

    if-eqz p3, :cond_24

    invoke-static {p0, v2, v3}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_11

    :cond_24
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v6, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudControlStatus:Landroid/util/ArrayMap;

    sget-object v7, Lb/b;->W:Ljava/util/ArrayList;

    sget v8, Lb/b;->k:I

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    invoke-static {p0, v2, v3}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    if-eqz v0, :cond_25

    const/16 v2, 0x24

    invoke-virtual {v0, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_25
    :goto_11
    const-string v2, "map_fps_group"

    invoke-static {p1, p2, v2, p3}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->getValidConfigFromData(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v4}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_27

    if-eqz p3, :cond_26

    invoke-static {p0, v2, v3}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_12

    :cond_26
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v6, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudControlStatus:Landroid/util/ArrayMap;

    sget-object v7, Lb/b;->W:Ljava/util/ArrayList;

    sget v8, Lb/b;->k:I

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27

    invoke-static {p0, v2, v3}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    if-eqz v0, :cond_27

    const/16 v2, 0x26

    invoke-virtual {v0, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_27
    :goto_12
    const-string v2, "automode_vrr_group"

    invoke-static {p1, p2, v2, p3}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->getValidConfigFromData(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v4}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_29

    if-eqz p3, :cond_28

    invoke-static {p0, v2, v3}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_13

    :cond_28
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v6, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudControlStatus:Landroid/util/ArrayMap;

    sget-object v7, Lb/b;->W:Ljava/util/ArrayList;

    sget v8, Lb/b;->k:I

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    invoke-static {p0, v2, v3}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    if-eqz v0, :cond_29

    const/16 v2, 0x27

    invoke-virtual {v0, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_29
    :goto_13
    const-string v2, "highest_fps_group"

    invoke-static {p1, p2, v2, p3}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->getValidConfigFromData(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    const-string v2, "highest_fps_group"

    invoke-static {p0, v2, v4}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCloudFunctionUpdated newHighestFpsCloud="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " oldHighestFpsCloud="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    if-eqz p3, :cond_2a

    const-string p3, "highest_fps_group"

    invoke-static {p0, p3, p2}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_14

    :cond_2a
    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudControlStatus:Landroid/util/ArrayMap;

    sget-object v2, Lb/b;->W:Ljava/util/ArrayList;

    sget v3, Lb/b;->l:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2b

    const-string p3, "highest_fps_group"

    invoke-static {p0, p3, p2}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    if-eqz v0, :cond_2b

    const/16 p3, 0x32

    invoke-virtual {v0, p3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2b
    :goto_14
    if-eqz p1, :cond_2e

    const-string p2, "eye_protection_mode"

    invoke-virtual {p1, p2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "eye_protection_mode"

    invoke-static {p0, p3, v4}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2c

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudControlStatus:Landroid/util/ArrayMap;

    sget-object v2, Lb/b;->W:Ljava/util/ArrayList;

    sget v3, Lb/b;->o:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2c

    const-string p3, "eye_protection_mode"

    invoke-static {p0, p3, p2}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    if-eqz v0, :cond_2c

    const/16 p3, 0x14

    invoke-virtual {v0, p3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2c
    const-string p2, "smart_backlight_mode"

    invoke-virtual {p1, p2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "smart_backlight_mode"

    invoke-static {p0, p3, v4}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2d

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudControlStatus:Landroid/util/ArrayMap;

    sget-object v2, Lb/b;->W:Ljava/util/ArrayList;

    sget v3, Lb/b;->n:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2d

    const-string p3, "smart_backlight_mode"

    invoke-static {p0, p3, p2}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    if-eqz v0, :cond_2d

    const/16 p3, 0x15

    invoke-virtual {v0, p3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2d
    const-string p2, "violent_mode_switch"

    invoke-virtual {p1, p2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "violent_mode_switch"

    invoke-static {p0, p2, v4}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2e

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object p3, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudControlStatus:Landroid/util/ArrayMap;

    sget-object v1, Lb/b;->W:Ljava/util/ArrayList;

    sget v2, Lb/b;->p:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p3, v1, p2}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2e

    const-string p2, "violent_mode_switch"

    invoke-static {p0, p2, p1}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    if-eqz v0, :cond_2e

    const/16 p0, 0x28

    invoke-virtual {v0, p0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2e
    return-void
.end method

.method private onExtremeSceneChanged()V
    .registers 4

    const-string v0, "onExtremeSceneChanged"

    invoke-direct {p0, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgPkg:Ljava/lang/String;

    const/16 v2, 0x108

    invoke-direct {p0, v2, v0, v1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->notifySFIfpsMode(IILjava/lang/String;)V

    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/powerkeeper/utils/IrisServiceUtils;->getInstance(Landroid/content/Context;)Lcom/miui/powerkeeper/utils/IrisServiceUtils;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/miui/powerkeeper/utils/IrisServiceUtils;->irisConfigureSet(I)I

    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mDuelMemcPackage:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgPkg:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private onExtremeSceneRecovery()V
    .registers 4

    const-string v0, "onExtremeSceneRecovery"

    invoke-direct {p0, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mHasIrisCommandSet:Z

    iget-object v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/powerkeeper/utils/IrisServiceUtils;->getInstance(Landroid/content/Context;)Lcom/miui/powerkeeper/utils/IrisServiceUtils;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/miui/powerkeeper/utils/IrisServiceUtils;->irisConfigureSet(I)I

    iget-object v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/powerkeeper/utils/IrisServiceUtils;->getInstance(Landroid/content/Context;)Lcom/miui/powerkeeper/utils/IrisServiceUtils;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/miui/powerkeeper/utils/IrisServiceUtils;->irisConfigureSet(I)I

    iget-boolean v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsIrisPQOn:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v1, :cond_0

    const-string v1, "DisplayFrameSetting"

    const-string v2, "Notify Iris PQ Off"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsIrisPQOn:Z

    iget-object v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/powerkeeper/utils/IrisServiceUtils;->getInstance(Landroid/content/Context;)Lcom/miui/powerkeeper/utils/IrisServiceUtils;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/miui/powerkeeper/utils/IrisServiceUtils;->irisConfigureSet(I)I

    :cond_1
    iget-object v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/powerkeeper/utils/IrisServiceUtils;->getInstance(Landroid/content/Context;)Lcom/miui/powerkeeper/utils/IrisServiceUtils;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/miui/powerkeeper/utils/IrisServiceUtils;->irisConfigureSet(I)I

    const/16 v1, 0x108

    iget-object v2, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurExtremeVideoPackage:Ljava/lang/String;

    invoke-direct {p0, v1, v0, v2}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->notifySFIfpsMode(IILjava/lang/String;)V

    iget-object p0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "video_iris_status"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private onHighFpsSendNotify()V
    .registers 6

    iget v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mEnterHighFpsValue:I

    const/16 v1, 0x78

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgPkg:Ljava/lang/String;

    const-string v2, "com.youku.phone"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mHighFpsListActivity:[Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurActivityName:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mUserFps:I

    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mPowerMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsCustom:Z

    const/16 v1, 0x3c

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCustomApps:Landroid/util/ArrayMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "thermal_limit_refresh_rate"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.miui.powerkeeper.action.HIGH_FPS_NOTIFY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.miui.securitycenter"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "com.miui.powerkeeper.permission.POWER_NOTIFY"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    const-string v0, "onForegroundChanged EnterHighFps sendNotify"

    invoke-direct {p0, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private onPkgExistentChanged(Lcom/miui/powerkeeper/event/EventsAggregator$EventResult;)V
    .registers 28

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-boolean v2, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    const-string v3, "DisplayFrameSetting"

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPkgExistentChanged eventResult="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v2, v0, Lcom/miui/powerkeeper/event/EventsAggregator$EventResult;->mFlag:I

    const-string v4, "onPkgExistentChanged mFoldTopSmartApps="

    const-string v5, "onPkgExistentChanged mTopSmartApps="

    const-string v6, "onPkgExistentChanged mGameTopSmartApps="

    const-string v7, "onPkgExistentChanged mTopDefineApps="

    const-string v8, "onPkgExistentChanged mDefaultGameApp="

    const-string v9, ""

    const-string v10, "key_top_names"

    const-string v11, "onPkgExistentChanged mPrivGames="

    const-string v12, "onPkgExistentChanged mVideoApps="

    const-string v13, "true"

    const/4 v15, 0x1

    const/4 v14, 0x0

    if-ne v2, v15, :cond_f

    invoke-static {}, Lcom/miui/powerkeeper/utils/PowerKeeperPackageManager;->getInstalledThirdPartApps()Landroid/util/ArraySet;

    iget-object v0, v0, Lcom/miui/powerkeeper/event/EventsAggregator$EventResult;->mObj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    sget-object v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->sInstance:Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v15, 0x9

    invoke-virtual {v0, v15, v14}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    invoke-virtual {v0, v15}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    sget-object v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->sInstance:Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v15, 0x20

    invoke-virtual {v0, v15, v14}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    invoke-virtual {v0, v15}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    sget-object v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->sInstance:Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v15, 0x17

    invoke-virtual {v0, v15, v14}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    invoke-virtual {v0, v15}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    sget-object v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->sInstance:Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v15, 0x18

    invoke-virtual {v0, v15, v14}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    invoke-virtual {v0, v15}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    sget-object v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->sInstance:Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v15, 0x22

    invoke-virtual {v0, v15, v14}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    invoke-virtual {v0, v15}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    sget-object v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->sInstance:Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v15, 0x23

    invoke-virtual {v0, v15, v14}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    invoke-virtual {v0, v15}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    sget-object v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->sInstance:Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v15, 0x26

    invoke-virtual {v0, v15, v14}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    invoke-virtual {v0, v15}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    sget-object v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->sInstance:Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v15, 0x24

    invoke-virtual {v0, v15, v14}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    invoke-virtual {v0, v15}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    sget-object v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->sInstance:Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v15, 0x27

    invoke-virtual {v0, v15, v14}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    invoke-virtual {v0, v15}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    sget-object v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->sInstance:Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v15, 0x1b

    invoke-virtual {v0, v15, v14}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    invoke-virtual {v0, v15}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    sget-object v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->sInstance:Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v15, 0x1c

    invoke-virtual {v0, v15, v14}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    invoke-virtual {v0, v15}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    sget-object v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->sInstance:Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v15, 0x1e

    invoke-virtual {v0, v15, v14}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    invoke-virtual {v0, v15}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    sget-object v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->sInstance:Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v15, 0x32

    invoke-virtual {v0, v15, v14}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v15

    invoke-virtual {v0, v15}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-direct {v1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->getTopVideoPkg()Ljava/lang/String;

    move-result-object v0

    const/16 v15, 0x2c

    invoke-static {v0, v2, v15}, Lcom/miui/powerkeeper/utils/Utils;->isContainedWithSeparator(Ljava/lang/String;Ljava/lang/String;C)Z

    move-result v0

    const/16 v18, 0x3c

    const-string v15, "package_name"

    if-eqz v0, :cond_5

    sget-object v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsCustomFpsSwitch:Ljava/lang/String;

    invoke-virtual {v13, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_0
    const-string v22, "package_name = ?"

    sget-object v20, Lcom/miui/powerkeeper/provider/HighRefreshRateConfigure;->CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iget-object v14, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v25, v4

    :try_start_1
    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v14, v4}, Landroid/content/Context;->getContentResolverForUser(Landroid/os/UserHandle;)Landroid/content/ContentResolver;

    move-result-object v19

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v24}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v19, v14

    move-object/from16 v14, v20

    :try_start_2
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    move-result v20

    if-nez v20, :cond_1

    invoke-virtual {v0, v15, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v20, v5

    :try_start_3
    iget-object v5, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->getContentResolverForUser(Landroid/os/UserHandle;)Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v14, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    iget-object v0, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCustomApps:Landroid/util/ArrayMap;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object/from16 v14, v19

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v20, v5

    goto :goto_2

    :cond_1
    move-object/from16 v20, v5

    :goto_0
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_1
    move-exception v0

    const/4 v14, 0x0

    goto :goto_3

    :catch_2
    move-exception v0

    :goto_1
    move-object/from16 v20, v5

    const/16 v19, 0x0

    goto :goto_2

    :catch_3
    move-exception v0

    move-object/from16 v25, v4

    goto :goto_1

    :goto_2
    :try_start_4
    const-string v4, "onPkgExistentChanged video"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v19, :cond_4

    goto :goto_0

    :goto_3
    if-eqz v14, :cond_2

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    :cond_3
    move-object/from16 v25, v4

    move-object/from16 v20, v5

    :cond_4
    :goto_4
    iget-object v0, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mVideoApps:Landroid/util/ArraySet;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-boolean v0, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mVideoApps:Landroid/util/ArraySet;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_5
    move-object/from16 v25, v4

    move-object/from16 v20, v5

    :cond_6
    :goto_5
    invoke-direct {v1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->getSupportFps()[I

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v1, v5}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->getPrivGamesFps(Ljava/lang/String;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, v4, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->getSuitableFps([II)I

    move-result v0

    iget-object v5, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mPrivGames:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mPrivGames:Landroid/util/ArrayMap;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_6
    const/4 v5, 0x0

    const/4 v8, 0x0

    goto :goto_7

    :cond_8
    iget-object v0, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    invoke-static {v0, v10, v9}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x2c

    invoke-static {v0, v2, v5}, Lcom/miui/powerkeeper/utils/Utils;->isContainedWithSeparator(Ljava/lang/String;Ljava/lang/String;C)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mDefaultGameApp:Landroid/util/ArraySet;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-boolean v0, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mDefaultGameApp:Landroid/util/ArraySet;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :goto_7
    invoke-direct {v1, v8, v5, v5}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->getTopAppsFps(Ljava/lang/String;ZZ)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, v4, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->getSuitableFps([II)I

    move-result v5

    iget v0, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mDefaultFps:I

    if-eq v5, v0, :cond_c

    sget-object v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsCustomFpsSwitch:Ljava/lang/String;

    invoke-virtual {v13, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    :try_start_5
    const-string v11, "package_name = ?"

    sget-object v9, Lcom/miui/powerkeeper/provider/HighRefreshRateConfigure;->CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iget-object v8, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    sget-object v14, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v8, v14}, Landroid/content/Context;->getContentResolverForUser(Landroid/os/UserHandle;)Landroid/content/ContentResolver;

    move-result-object v8

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-nez v10, :cond_9

    const-string v10, "com.android.camera"

    invoke-virtual {v2, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    invoke-virtual {v0, v15, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v14}, Landroid/content/Context;->getContentResolverForUser(Landroid/os/UserHandle;)Landroid/content/ContentResolver;

    move-result-object v10

    invoke-virtual {v10, v9, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    iget-object v0, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCustomApps:Landroid/util/ArrayMap;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v2, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object v14, v8

    goto :goto_a

    :catch_4
    move-exception v0

    goto :goto_9

    :cond_9
    :goto_8
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_b

    :catchall_3
    move-exception v0

    const/4 v14, 0x0

    goto :goto_a

    :catch_5
    move-exception v0

    const/4 v8, 0x0

    :goto_9
    :try_start_7
    const-string v9, "onPkgExistentChanged TopDefineApps"

    invoke-static {v3, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v8, :cond_b

    goto :goto_8

    :goto_a
    if-eqz v14, :cond_a

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v0

    :cond_b
    :goto_b
    iget-object v0, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mTopDefineApps:Landroid/util/ArrayMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mTopDefineApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct {v1, v8, v7, v5}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->getTopAppsFps(Ljava/lang/String;ZZ)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, v4, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->getSuitableFps([II)I

    move-result v0

    iget v5, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mDefaultFps:I

    if-eq v0, v5, :cond_d

    iget-object v5, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mPrivGames:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    iget-object v5, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mGameTopSmartApps:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mGameTopSmartApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    :goto_c
    const/4 v7, 0x1

    const/4 v8, 0x0

    goto :goto_d

    :cond_e
    iget-object v5, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mTopSmartApps:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v14, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mTopSmartApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :goto_d
    invoke-direct {v1, v8, v7, v7}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->getTopAppsFps(Ljava/lang/String;ZZ)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, v4, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->getSuitableFps([II)I

    move-result v0

    iget v4, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mDefaultFps:I

    if-eq v0, v4, :cond_2d

    iget-object v4, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mFoldTopSmartApps:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v0, :cond_2d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v4, v25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mFoldTopSmartApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    :cond_f
    move-object v14, v5

    const/4 v5, 0x0

    if-nez v2, :cond_2a

    iget-object v0, v0, Lcom/miui/powerkeeper/event/EventsAggregator$EventResult;->mObj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    sget-object v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsCustomFpsSwitch:Ljava/lang/String;

    invoke-virtual {v13, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    :try_start_8
    const-string v18, "package_name = ?"

    sget-object v16, Lcom/miui/powerkeeper/provider/HighRefreshRateConfigure;->CONTENT_URI:Landroid/net/Uri;

    iget-object v0, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getContentResolverForUser(Landroid/os/UserHandle;)Landroid/content/ContentResolver;

    move-result-object v15

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v20}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    move-object/from16 v0, v16

    :try_start_9
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "remove app = "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v10}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_10

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "delete = "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v10}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    iget-object v10, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v5}, Landroid/content/Context;->getContentResolverForUser(Landroid/os/UserHandle;)Landroid/content/ContentResolver;

    move-result-object v5

    const-string v10, "package_name=?"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v0, v10, v13}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_e

    :catchall_4
    move-exception v0

    move-object v14, v9

    goto :goto_10

    :catch_6
    move-exception v0

    goto :goto_f

    :cond_10
    :goto_e
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_11

    :catchall_5
    move-exception v0

    const/4 v14, 0x0

    goto :goto_10

    :catch_7
    move-exception v0

    const/4 v9, 0x0

    :goto_f
    :try_start_a
    const-string v5, "remove app"

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    if-eqz v9, :cond_12

    goto :goto_e

    :goto_10
    if-eqz v14, :cond_11

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_11
    throw v0

    :cond_12
    :goto_11
    iget-object v0, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mPrivGames:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v0, :cond_13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mPrivGames:Landroid/util/ArrayMap;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    iget-object v0, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mDefaultGameApp:Landroid/util/ArraySet;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    iget-boolean v0, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v0, :cond_14

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mDefaultGameApp:Landroid/util/ArraySet;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    iget-object v0, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mVideoApps:Landroid/util/ArraySet;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    iget-boolean v0, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v0, :cond_15

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mVideoApps:Landroid/util/ArraySet;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    iget-object v0, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mVideoIdleApps:Landroid/util/ArraySet;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    iget-boolean v0, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPkgExistentChanged mVideoIdleApps="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mVideoIdleApps:Landroid/util/ArraySet;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    iget-object v0, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mExcludeApps:Landroid/util/ArraySet;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    iget-boolean v0, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v0, :cond_17

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPkgExistentChanged mExcludeApps="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mExcludeApps:Landroid/util/ArraySet;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    iget-object v0, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mTopDefineApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v0, :cond_18

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mTopDefineApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    iget-object v0, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mTopSmartApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v0, :cond_19

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mTopSmartApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    iget-object v0, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mFoldTopSmartApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mFoldTopSmartApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    iget-object v0, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mGameTopSmartApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v0, :cond_1b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mGameTopSmartApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    iget-object v0, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mInputApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPkgExistentChanged mInputApps="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mInputApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    sget-object v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mLowFpsPkgList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-boolean v0, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v0, :cond_1d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPkgExistentChanged mCameraPkgList="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mLowFpsPkgList:Ljava/util/List;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    iget-object v0, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mTpidleApps:Landroid/util/ArraySet;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    iget-boolean v0, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v0, :cond_1e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPkgExistentChanged mTpidleApps="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mTpidleApps:Landroid/util/ArraySet;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    iget-object v0, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mEbookidleApps:Landroid/util/ArraySet;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    iget-boolean v0, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v0, :cond_1f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPkgExistentChanged mEbookidleApps="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mEbookidleApps:Landroid/util/ArraySet;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    iget-object v0, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mPromotionApps:Landroid/util/ArraySet;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    iget-boolean v0, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPkgExistentChanged mPromotionApps="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mPromotionApps:Landroid/util/ArraySet;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    iget-object v0, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mDisplayFpsApps:Landroid/util/ArraySet;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    iget-boolean v0, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v0, :cond_21

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPkgExistentChanged mDisplayFpsApps="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mDisplayFpsApps:Landroid/util/ArraySet;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    sget-object v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mShortVideoApps:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-boolean v0, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v0, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPkgExistentChanged mShortVideoApps="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mShortVideoApps:Ljava/util/List;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    iget-object v0, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mFullScreenFpsApps:Landroid/util/ArraySet;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    iget-boolean v0, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v0, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPkgExistentChanged mFullScreenFpsApps="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mFullScreenFpsApps:Landroid/util/ArraySet;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    iget-object v0, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mVideoLowerFpsApps:Landroid/util/ArraySet;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    iget-boolean v0, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v0, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPkgExistentChanged mVideoLowerFpsApps="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mVideoLowerFpsApps:Landroid/util/ArraySet;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    iget-object v0, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mMapFpsApps:Landroid/util/ArraySet;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    iget-boolean v0, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v0, :cond_25

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPkgExistentChanged mMapFpsApps="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mMapFpsApps:Landroid/util/ArraySet;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    iget-object v0, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mAutoModeApps:Landroid/util/ArraySet;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    iget-boolean v0, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v0, :cond_26

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPkgExistentChanged mAutoModeApps="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mAutoModeApps:Landroid/util/ArraySet;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    iget-object v0, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIdleExcludedApps:Landroid/util/ArraySet;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    iget-boolean v0, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v0, :cond_27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPkgExistentChanged mIdleExcludedApps="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIdleExcludedApps:Landroid/util/ArraySet;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    iget-object v0, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mVrrApps:Landroid/util/ArraySet;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    iget-boolean v0, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v0, :cond_28

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPkgExistentChanged mVrrApps="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mVrrApps:Landroid/util/ArraySet;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    iget-object v0, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mDefineHighestFpsApps:Landroid/util/ArraySet;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    iget-boolean v0, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v0, :cond_29

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPkgExistentChanged mDefineHighestFpsApps="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mDefineHighestFpsApps:Landroid/util/ArraySet;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    iget-object v0, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCustomHighestFpsApps:Landroid/util/ArraySet;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    iget-boolean v0, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v0, :cond_2d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPkgExistentChanged mCustomHighestFpsApps="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCustomHighestFpsApps:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    :cond_2a
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2d

    iget-object v0, v0, Lcom/miui/powerkeeper/event/EventsAggregator$EventResult;->mObj:Ljava/lang/Object;

    check-cast v0, Landroid/util/ArraySet;

    const/4 v8, 0x0

    invoke-direct {v1, v8}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->getPrivGamesFps(Ljava/lang/String;)Landroid/util/ArrayMap;

    move-result-object v2

    iget-object v3, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    invoke-static {v3, v10, v9}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v2, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->fillDefaultGameApp(Ljava/lang/String;Landroid/util/ArrayMap;Landroid/util/ArraySet;)V

    invoke-direct {v1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->getSupportFps()[I

    move-result-object v3

    move v14, v5

    :goto_12
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v14, v4, :cond_2c

    invoke-virtual {v2, v14}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->isInstalledPackage(Ljava/lang/String;Landroid/util/ArraySet;)Z

    move-result v4

    if-nez v4, :cond_2b

    goto :goto_13

    :cond_2b
    invoke-virtual {v2, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v1, v3, v4}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->getSuitableFps([II)I

    move-result v4

    iget-object v5, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mPrivGames:Landroid/util/ArrayMap;

    invoke-virtual {v2, v14}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_13
    add-int/lit8 v14, v14, 0x1

    goto :goto_12

    :cond_2c
    const/4 v8, 0x0

    invoke-direct {v1, v8, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->parseTopDefineAppFromDb(Ljava/lang/String;Landroid/util/ArraySet;)V

    invoke-direct {v1, v8, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->parseTopSmartAppFromDb(Ljava/lang/String;Landroid/util/ArraySet;)V

    invoke-direct {v1, v8, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->parseTopVideoAppFromDb(Ljava/lang/String;Landroid/util/ArraySet;)V

    invoke-direct {v1, v8, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->parseTopVideoIdleAppFromDb(Ljava/lang/String;Landroid/util/ArraySet;)V

    invoke-direct {v1, v8, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->parseExcludeAppFromDb(Ljava/lang/String;Landroid/util/ArraySet;)V

    invoke-direct {v1, v8, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->parseEbookIdleAppFromDb(Ljava/lang/String;Landroid/util/ArraySet;)V

    invoke-direct {v1, v8, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->parseTpIdleAppFromDb(Ljava/lang/String;Landroid/util/ArraySet;)V

    invoke-direct {v1, v8, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->parseInputAppFromDb(Ljava/lang/String;Landroid/util/ArraySet;)V

    invoke-direct {v1, v8, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->parseLowFpsAppFromDb(Ljava/lang/String;Landroid/util/ArraySet;)V

    invoke-direct {v1, v8, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->parseTopShortVideoAppFromDb(Ljava/lang/String;Landroid/util/ArraySet;)V

    invoke-direct {v1, v8, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->parsePromotionAppFromDb(Ljava/lang/String;Landroid/util/ArraySet;)V

    invoke-direct {v1, v8, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->parseDisplayFpsAppFromDb(Ljava/lang/String;Landroid/util/ArraySet;)V

    invoke-direct {v1, v8, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->parseFullScreenFpsAppFromDb(Ljava/lang/String;Landroid/util/ArraySet;)V

    invoke-direct {v1, v8, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->parseMapFpsAppFromDb(Ljava/lang/String;Landroid/util/ArraySet;)V

    invoke-direct {v1, v8, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->parseAutoModeVrrAppFromDb(Ljava/lang/String;Landroid/util/ArraySet;)V

    invoke-direct {v1, v8, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->parseHighestFpsAppFromDb(Ljava/lang/String;Landroid/util/ArraySet;)V

    :cond_2d
    :goto_14
    return-void
.end method

.method static bridge synthetic p(Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;)I
    .registers 1

    iget p0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFps:I

    return p0
.end method

.method private parseAutoModeVrrAppFromDb(Ljava/lang/String;Landroid/util/ArraySet;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, ""

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudObserver:Lb/a;

    sget v1, Lb/b;->k:I

    invoke-virtual {p1, v1}, Lb/a;->m(I)Lorg/json/JSONObject;

    move-result-object p1

    iget-object v2, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudObserver:Lb/a;

    invoke-virtual {v2, v1}, Lb/a;->t(I)Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "automode_vrr_group"

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    sget-object v2, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudControlStatus:Landroid/util/ArrayMap;

    sget-object v5, Lb/b;->W:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v1, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseAutoModeVrrAppFromDb new cloud = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudControlStatus:Landroid/util/ArrayMap;

    sget-object v2, Lb/b;->W:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    invoke-static {p1, v4, v3}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseAutoModeVrrAppFromDb old cloud or local config = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    :cond_1
    :goto_0
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_8

    :cond_2
    if-nez p2, :cond_3

    invoke-static {}, Lcom/miui/powerkeeper/utils/PowerKeeperPackageManager;->getInstalledThirdPartApps()Landroid/util/ArraySet;

    move-result-object p2

    :cond_3
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "auto_mode"

    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    const-string v4, ","

    if-nez v2, :cond_5

    :try_start_1
    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    move v2, v3

    :goto_1
    array-length v5, p1

    if-ge v2, v5, :cond_5

    aget-object v5, p1, v2

    invoke-virtual {p0, v5, p2}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->isInstalledPackage(Ljava/lang/String;Landroid/util/ArraySet;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_2

    :cond_4
    iget-object v5, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mAutoModeApps:Landroid/util/ArraySet;

    aget-object v6, p1, v2

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_7

    :cond_5
    const-string p1, "vrr_group"

    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    move v2, v3

    :goto_3
    array-length v5, p1

    if-ge v2, v5, :cond_7

    aget-object v5, p1, v2

    invoke-virtual {p0, v5, p2}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->isInstalledPackage(Ljava/lang/String;Landroid/util/ArraySet;)Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_4

    :cond_6
    iget-object v5, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mVrrApps:Landroid/util/ArraySet;

    aget-object v6, p1, v2

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    const-string p1, "idle_excluded_group"

    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    :goto_5
    array-length v0, p1

    if-ge v3, v0, :cond_9

    aget-object v0, p1, v3

    invoke-virtual {p0, v0, p2}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->isInstalledPackage(Ljava/lang/String;Landroid/util/ArraySet;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_6

    :cond_8
    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIdleExcludedApps:Landroid/util/ArraySet;

    aget-object v1, p1, v3

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "parseAutoModeVrrAppFromDb mAutoModeApps="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mAutoModeApps:Landroid/util/ArraySet;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", mVrrApps="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mVrrApps:Landroid/util/ArraySet;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", mIdleExcludedApps="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIdleExcludedApps:Landroid/util/ArraySet;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :goto_7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "parseAutoModeVrrAppFromDb e="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    return-void

    :cond_a
    :goto_8
    const-string p1, "parseAutoModeVrrAppFromDb empty"

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    return-void
.end method

.method private parseBacklightAppFromDb(Ljava/lang/String;)V
    .registers 6

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudObserver:Lb/a;

    sget v0, Lb/b;->n:I

    invoke-virtual {p1, v0}, Lb/a;->m(I)Lorg/json/JSONObject;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudObserver:Lb/a;

    invoke-virtual {v1, v0}, Lb/a;->t(I)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    sget-object v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudControlStatus:Landroid/util/ArrayMap;

    sget-object v2, Lb/b;->W:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseBacklightAppFromDb new cloud = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudControlStatus:Landroid/util/ArrayMap;

    sget-object v1, Lb/b;->W:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    const-string v0, "smart_backlight_mode"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseBacklightAppFromDb old cloud = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    :cond_1
    :goto_0
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_3

    :cond_2
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "fucSwitch"

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mBacklightModeSwitch:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mBacklightModeSwitch = "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mBacklightModeSwitch:Z

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mBacklightModeSwitch:Z

    if-eqz p1, :cond_4

    const-string p1, "pkg"

    const-string v3, ""

    invoke-virtual {v1, p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    :goto_1
    array-length v1, p1

    if-ge v2, v1, :cond_3

    aget-object v1, p1, v2

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->updateBacklightModeApps([Ljava/lang/String;)V

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseBacklightAppFromDb mBacklightModeApps="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseBacklightAppFromDb e="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    return-void

    :cond_5
    :goto_3
    const-string p1, "parseBacklightAppFromDb empty"

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    return-void
.end method

.method private parseCustomModeSwitchFromDb(Ljava/lang/String;)V
    .registers 5

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudObserver:Lb/a;

    sget v0, Lb/b;->g:I

    invoke-virtual {p1, v0}, Lb/a;->m(I)Lorg/json/JSONObject;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudObserver:Lb/a;

    invoke-virtual {v1, v0}, Lb/a;->t(I)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    sget-object v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudControlStatus:Landroid/util/ArrayMap;

    sget-object v2, Lb/b;->W:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseCustomModeSwitchFromDb new cloud = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudControlStatus:Landroid/util/ArrayMap;

    sget-object v1, Lb/b;->W:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    const-string v0, "custom_switch"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseCustomModeSwitchFromDb old cloud or local config= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->isSupportDevice()Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "parseCustomModeSwitchFromDb empty, isSupportDevice= true"

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    const-string p1, "{\"fucSwitch\":\"true\"}"

    :cond_3
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "fucSwitch"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsCustomFpsSwitch:Ljava/lang/String;

    iget p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mPowerMode:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    iget-boolean p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mViolentModeSwitch:Z

    if-nez p1, :cond_5

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "custom_mode_switch"

    sget-object v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsCustomFpsSwitch:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "parseCustomModeSwitchFromDb mIsCustomFpsSwitch= "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsCustomFpsSwitch:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseCustomModeSwitchFromDb e="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    return-void

    :cond_6
    const-string p1, "parseCustomModeSwitchFromDb empty"

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    return-void
.end method

.method private parseDisplayFpsAppFromDb(Ljava/lang/String;Landroid/util/ArraySet;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudObserver:Lb/a;

    sget v0, Lb/b;->j:I

    invoke-virtual {p1, v0}, Lb/a;->m(I)Lorg/json/JSONObject;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudObserver:Lb/a;

    invoke-virtual {v1, v0}, Lb/a;->t(I)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "display_fps_group"

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    sget-object v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudControlStatus:Landroid/util/ArrayMap;

    sget-object v4, Lb/b;->W:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseDisplayFpsAppFromDb new cloud = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudControlStatus:Landroid/util/ArrayMap;

    sget-object v1, Lb/b;->W:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    invoke-static {p1, v3, v2}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseDisplayFpsAppFromDb old cloud or local config = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    :cond_1
    :goto_0
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_3

    :cond_2
    if-nez p2, :cond_3

    invoke-static {}, Lcom/miui/powerkeeper/utils/PowerKeeperPackageManager;->getInstalledThirdPartApps()Landroid/util/ArraySet;

    move-result-object p2

    :cond_3
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_5

    aget-object v1, p1, v0

    invoke-virtual {p0, v1, p2}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->isInstalledPackage(Ljava/lang/String;Landroid/util/ArraySet;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mDisplayFpsApps:Landroid/util/ArraySet;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "parseDisplayFspAppFromDb mDisplayFpsApps = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mDisplayFpsApps:Landroid/util/ArraySet;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    return-void

    :cond_6
    :goto_3
    const-string p1, "parseDisplayFspAppFromDb empty"

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    return-void
.end method

.method private parseEbookIdleAppFromDb(Ljava/lang/String;Landroid/util/ArraySet;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudObserver:Lb/a;

    sget v0, Lb/b;->k:I

    invoke-virtual {p1, v0}, Lb/a;->m(I)Lorg/json/JSONObject;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudObserver:Lb/a;

    invoke-virtual {v1, v0}, Lb/a;->t(I)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "ebook_idle_pkg"

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    sget-object v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudControlStatus:Landroid/util/ArrayMap;

    sget-object v4, Lb/b;->W:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseEbookIdleAppFromDb new cloud = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudControlStatus:Landroid/util/ArrayMap;

    sget-object v1, Lb/b;->W:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    invoke-static {p1, v3, v2}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseEbookIdleAppFromDb old cloud or local config = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    :cond_1
    :goto_0
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_3

    :cond_2
    if-nez p2, :cond_3

    invoke-static {}, Lcom/miui/powerkeeper/utils/PowerKeeperPackageManager;->getInstalledThirdPartApps()Landroid/util/ArraySet;

    move-result-object p2

    :cond_3
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_5

    aget-object v1, p1, v0

    invoke-virtual {p0, v1, p2}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->isInstalledPackage(Ljava/lang/String;Landroid/util/ArraySet;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mEbookidleApps:Landroid/util/ArraySet;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "parseEbookIdleAppFromDb mEbookidleApps="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mEbookidleApps:Landroid/util/ArraySet;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    return-void

    :cond_6
    :goto_3
    const-string p1, "parseEbookIdleAppFromDb empty"

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    return-void
.end method

.method private parseExcludeAppFromDb(Ljava/lang/String;Landroid/util/ArraySet;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudObserver:Lb/a;

    sget v0, Lb/b;->h:I

    invoke-virtual {p1, v0}, Lb/a;->m(I)Lorg/json/JSONObject;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudObserver:Lb/a;

    invoke-virtual {v1, v0}, Lb/a;->t(I)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "fps_exclude_pkg"

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    sget-object v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudControlStatus:Landroid/util/ArrayMap;

    sget-object v4, Lb/b;->W:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseExcludeAppFromDb new cloud = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudControlStatus:Landroid/util/ArrayMap;

    sget-object v1, Lb/b;->W:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    invoke-static {p1, v3, v2}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseExcludeAppFromDb old cloud or local config = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    :cond_1
    :goto_0
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_3

    :cond_2
    if-nez p2, :cond_3

    invoke-static {}, Lcom/miui/powerkeeper/utils/PowerKeeperPackageManager;->getInstalledThirdPartApps()Landroid/util/ArraySet;

    move-result-object p2

    :cond_3
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_5

    aget-object v2, v0, v1

    invoke-virtual {p0, v2, p2}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->isInstalledPackage(Ljava/lang/String;Landroid/util/ArraySet;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mExcludeApps:Landroid/util/ArraySet;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    iget-boolean p2, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz p2, :cond_6

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "parseExcludeAppFromDb mExcludeApps="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mExcludeApps:Landroid/util/ArraySet;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " appJsonStr="

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DisplayFrameSetting"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void

    :cond_7
    :goto_3
    const-string p1, "parseExcludeAppFromDb empty"

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    return-void
.end method

.method private parseEyeAppFromDb(Ljava/lang/String;Landroid/util/ArraySet;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudObserver:Lb/a;

    sget v0, Lb/b;->o:I

    invoke-virtual {p1, v0}, Lb/a;->m(I)Lorg/json/JSONObject;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudObserver:Lb/a;

    invoke-virtual {v1, v0}, Lb/a;->t(I)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    sget-object v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudControlStatus:Landroid/util/ArrayMap;

    sget-object v2, Lb/b;->W:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseEyeAppFromDb new cloud = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudControlStatus:Landroid/util/ArrayMap;

    sget-object v1, Lb/b;->W:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    const-string v0, "eye_protection_mode"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseEyeAppFromDb old cloud = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    :cond_1
    :goto_0
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_4

    :cond_2
    if-nez p2, :cond_3

    invoke-static {}, Lcom/miui/powerkeeper/utils/PowerKeeperPackageManager;->getInstalledThirdPartApps()Landroid/util/ArraySet;

    move-result-object p2

    :cond_3
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "fucSwitch"

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mEyeModeSwitch:Z

    const-string p1, "DisplayFrameSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseEyeAppFromDb eyemode fucSwitch="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mEyeModeSwitch:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mEyeModeSwitch:Z

    if-eqz p1, :cond_6

    const-string p1, "pkg"

    const-string v2, ""

    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_5

    aget-object v2, p1, v1

    invoke-virtual {p0, v2, p2}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->isInstalledPackage(Ljava/lang/String;Landroid/util/ArraySet;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->updateEyeModeApps([Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "parseEyeAppFromDb mEyeModeApps="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "parseEyeAppFromDb e="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    :cond_6
    return-void

    :cond_7
    :goto_4
    const-string p1, "parseEyeAppFromDb empty"

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    return-void
.end method

.method private parseFossSwitchFromDb(Ljava/lang/String;)V
    .registers 7

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudObserver:Lb/a;

    sget v0, Lb/b;->h:I

    invoke-virtual {p1, v0}, Lb/a;->m(I)Lorg/json/JSONObject;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudObserver:Lb/a;

    invoke-virtual {v1, v0}, Lb/a;->t(I)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "foss_group"

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    sget-object v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudControlStatus:Landroid/util/ArrayMap;

    sget-object v4, Lb/b;->W:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseFossSwitchFromDb new cloud = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudControlStatus:Landroid/util/ArrayMap;

    sget-object v1, Lb/b;->W:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    invoke-static {p1, v3, v2}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseFossSwitchFromDb old cloud or local config = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    :cond_1
    :goto_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "fucSwitch"

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsFossCloudSwitch:Z

    const-string p1, "ditherSwitch"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsDitherCloudSwitch:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fossFucSwitch="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsFossCloudSwitch:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "ditherSwitch="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsDitherCloudSwitch:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseFossSwitchFromDb e="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    return-void

    :cond_3
    :goto_1
    const-string p1, "parseFossSwitchFromDb empty"

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    return-void
.end method

.method private parseFpsFunStateFromDb(Ljava/lang/String;)V
    .registers 8

    const-string v0, "DisplayFrameSetting"

    const/4 v1, 0x0

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudObserver:Lb/a;

    sget v2, Lb/b;->k:I

    invoke-virtual {p1, v2}, Lb/a;->m(I)Lorg/json/JSONObject;

    move-result-object p1

    iget-object v3, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudObserver:Lb/a;

    invoke-virtual {v3, v2}, Lb/a;->t(I)Z

    move-result v3

    const-string v4, "fps_fun_state_group"

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    sget-object v3, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudControlStatus:Landroid/util/ArrayMap;

    sget-object v5, Lb/b;->W:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v2, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseFpsFunStateFromDb new cloud = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudControlStatus:Landroid/util/ArrayMap;

    sget-object v3, Lb/b;->W:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    invoke-static {p1, v4, v1}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseFpsFunStateFromDb old cloud or local config = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    :cond_1
    :goto_0
    const/4 v2, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_5

    :cond_2
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "carInfoTrig"

    invoke-virtual {v3, p1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCarInfoTrigFpsSwitch:Z

    const-string p1, "backScreenEnhance"

    iget-boolean v2, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsIndependentRearDevice:Z

    invoke-virtual {v3, p1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mBackScreenEnhance:Z

    iget-boolean p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCarInfoTrigFpsSwitch:Z

    if-nez p1, :cond_3

    invoke-direct {p0, v1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->notifyCarScreenInfoChange(Lcom/miui/powerkeeper/utils/ScreenStateObserver$CarScreenInfo;)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_3

    :cond_3
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "carInfoTrig = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCarInfoTrigFpsSwitch:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mBackScreenEnhance = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mBackScreenEnhance:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseFpsFunStateFromDb e = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseFpsFunStateFromDb json format e = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    return-void

    :cond_4
    :goto_5
    iget-boolean p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsIndependentRearDevice:Z

    iput-boolean p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mBackScreenEnhance:Z

    iput-boolean v2, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCarInfoTrigFpsSwitch:Z

    const-string p1, "parseFpsFunStateFromDb empty"

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->notifyCarScreenInfoChange(Lcom/miui/powerkeeper/utils/ScreenStateObserver$CarScreenInfo;)V

    return-void
.end method

.method private parseFullScreenFpsAppFromDb(Ljava/lang/String;Landroid/util/ArraySet;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, ""

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudObserver:Lb/a;

    sget v1, Lb/b;->k:I

    invoke-virtual {p1, v1}, Lb/a;->m(I)Lorg/json/JSONObject;

    move-result-object p1

    iget-object v2, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudObserver:Lb/a;

    invoke-virtual {v2, v1}, Lb/a;->t(I)Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "full_screen_fps_group"

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    sget-object v2, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudControlStatus:Landroid/util/ArrayMap;

    sget-object v5, Lb/b;->W:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v1, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseFullScreenFpsAppFromDb new cloud = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudControlStatus:Landroid/util/ArrayMap;

    sget-object v2, Lb/b;->W:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    invoke-static {p1, v4, v3}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseFullScreenFpsAppFromDb old cloud or local config = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    :cond_1
    :goto_0
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_6

    :cond_2
    if-nez p2, :cond_3

    invoke-static {}, Lcom/miui/powerkeeper/utils/PowerKeeperPackageManager;->getInstalledThirdPartApps()Landroid/util/ArraySet;

    move-result-object p2

    :cond_3
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "full_screen"

    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    const-string v4, ","

    if-nez v2, :cond_5

    :try_start_1
    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    move v2, v3

    :goto_1
    array-length v5, p1

    if-ge v2, v5, :cond_5

    aget-object v5, p1, v2

    invoke-virtual {p0, v5, p2}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->isInstalledPackage(Ljava/lang/String;Landroid/util/ArraySet;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_2

    :cond_4
    iget-object v5, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mFullScreenFpsApps:Landroid/util/ArraySet;

    aget-object v6, p1, v2

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_5

    :cond_5
    const-string p1, "video_lower_fps"

    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    :goto_3
    array-length v0, p1

    if-ge v3, v0, :cond_7

    aget-object v0, p1, v3

    invoke-virtual {p0, v0, p2}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->isInstalledPackage(Ljava/lang/String;Landroid/util/ArraySet;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mVideoLowerFpsApps:Landroid/util/ArraySet;

    aget-object v1, p1, v3

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "parseFullScreenFpsAppFromDb mFullScreenFpsApps="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mFullScreenFpsApps:Landroid/util/ArraySet;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "mVideoLowerFpsApps="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mVideoLowerFpsApps:Landroid/util/ArraySet;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :goto_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "parseFullScreenFpsAppFromDb e="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    return-void

    :cond_8
    :goto_6
    const-string p1, "parseFullScreenFpsAppFromDb empty"

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    return-void
.end method

.method private parseHighestFpsAppFromDb(Ljava/lang/String;Landroid/util/ArraySet;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, ""

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudObserver:Lb/a;

    sget v1, Lb/b;->l:I

    invoke-virtual {p1, v1}, Lb/a;->m(I)Lorg/json/JSONObject;

    move-result-object p1

    iget-object v2, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudObserver:Lb/a;

    invoke-virtual {v2, v1}, Lb/a;->t(I)Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "highest_fps_group"

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    sget-object v2, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudControlStatus:Landroid/util/ArrayMap;

    sget-object v5, Lb/b;->W:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v1, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseHighestFpsAppFromDb new cloud = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudControlStatus:Landroid/util/ArrayMap;

    sget-object v2, Lb/b;->W:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    invoke-static {p1, v4, v3}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseHighestFpsAppFromDb old cloud or local config = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    :cond_1
    :goto_0
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_6

    :cond_2
    if-nez p2, :cond_3

    invoke-static {}, Lcom/miui/powerkeeper/utils/PowerKeeperPackageManager;->getInstalledThirdPartApps()Landroid/util/ArraySet;

    move-result-object p2

    :cond_3
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "highestSwitch"

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mHighestFpsSwitch:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseHighestFpsAppFromDb mHighestFpsSwitch="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mHighestFpsSwitch:Z

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mHighestFpsSwitch:Z

    if-eqz p1, :cond_9

    const-string p1, "defineList"

    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, ","

    if-nez v3, :cond_5

    :try_start_1
    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    move v3, v2

    :goto_1
    array-length v5, p1

    if-ge v3, v5, :cond_5

    aget-object v5, p1, v3

    invoke-virtual {p0, v5, p2}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->isInstalledPackage(Ljava/lang/String;Landroid/util/ArraySet;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_2

    :cond_4
    iget-object v5, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mDefineHighestFpsApps:Landroid/util/ArraySet;

    aget-object v6, p1, v3

    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_5

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseHighestFpsAppFromDb mDefineHighestFpsApps="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mDefineHighestFpsApps:Landroid/util/ArraySet;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    const-string p1, "customList"

    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    move v0, v2

    :goto_3
    array-length v3, p1

    if-ge v0, v3, :cond_7

    aget-object v3, p1, v0

    invoke-virtual {p0, v3, p2}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->isInstalledPackage(Ljava/lang/String;Landroid/util/ArraySet;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_4

    :cond_6
    iget-object v3, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCustomHighestFpsApps:Landroid/util/ArraySet;

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "parseHighestFpsAppFromDb mCustomHighestFpsApps="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCustomHighestFpsApps:Landroid/util/ArraySet;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    const-string p1, "maxfps"

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_8

    iput p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mMaxAppFps:I

    :cond_8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "parseHighestFpsAppFromDb maxfps="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :goto_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "parseHighestFpsAppFromDb e="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    :cond_9
    return-void

    :cond_a
    :goto_6
    const-string p1, "parseHighestFpsAppFromDb empty"

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    return-void
.end method

.method private parseInit()V
    .registers 11

    invoke-direct {p0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->parseLocalConfig()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->parseFossSwitchFromDb(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->parseNoteSwitchFromDb(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getContentResolverForUser(Landroid/os/UserHandle;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "whetstone.activity"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mWs:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    invoke-direct {p0, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->parseCustomModeSwitchFromDb(Ljava/lang/String;)V

    const-string v2, "user_refresh_rate"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting$2;

    invoke-direct {v3, p0, p0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting$2;-><init>(Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;Landroid/os/Handler;)V

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v2, "is_smart_fps"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    new-instance v5, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting$3;

    invoke-direct {v5, p0, p0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting$3;-><init>(Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;Landroid/os/Handler;)V

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v3, "support_smart_fps"

    invoke-static {v3, v4}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_0

    iget-object v2, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mTopSmartApps:Landroid/util/ArrayMap;

    iput-object v2, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mTopApps:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mFoldTopSmartApps:Landroid/util/ArrayMap;

    iput-object v2, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mFoldTopApps:Landroid/util/ArrayMap;

    sput-boolean v5, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsSmart:Z

    iput-boolean v4, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsCustom:Z

    goto :goto_0

    :cond_0
    sput-boolean v4, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsSmart:Z

    invoke-direct {p0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->setFpsList()V

    :goto_0
    const-string v2, "speed_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    new-instance v6, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting$4;

    invoke-direct {v6, p0, p0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting$4;-><init>(Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;Landroid/os/Handler;)V

    invoke-virtual {v1, v3, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v3, "custom_mode"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    new-instance v6, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting$5;

    invoke-direct {v6, p0, p0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting$5;-><init>(Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;Landroid/os/Handler;)V

    invoke-virtual {v1, v3, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v3, "POWER_SAVE_MODE_OPEN"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    new-instance v6, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting$6;

    invoke-direct {v6, p0, p0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting$6;-><init>(Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;Landroid/os/Handler;)V

    invoke-virtual {v1, v3, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-boolean v3, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->IS_SUPPORTED_IRIS:Z

    if-eqz v3, :cond_1

    const-string v3, "extreme_video_mode_switch"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    new-instance v7, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting$7;

    invoke-direct {v7, p0, p0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting$7;-><init>(Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;Landroid/os/Handler;)V

    invoke-virtual {v1, v6, v4, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsExtremeVideoModeOn:I

    iget-object v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRefreshRate()F

    move-result v1

    iput v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mRealRefreshRate:F

    iget-object v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    const-string v3, "display"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    iget-object v3, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v1, v3, p0}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    :cond_1
    iget-object v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsUltimate:I

    iget-object v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    const-string v2, "batterymanager"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryManager;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_2

    move v1, v5

    goto :goto_1

    :cond_2
    move v1, v4

    :goto_1
    iput-boolean v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mLevelFullSwitch:Z

    invoke-static {}, Lcom/miui/powerkeeper/PowerKeeperManager;->getInstance()Lcom/miui/powerkeeper/PowerKeeperManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/powerkeeper/PowerKeeperManager;->isCharging()Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mChargingSwitch:Z

    invoke-direct {p0, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->getPrivGamesFps(Ljava/lang/String;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-static {}, Lcom/miui/powerkeeper/utils/PowerKeeperPackageManager;->getInstalledThirdPartApps()Landroid/util/ArraySet;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    const-string v6, "key_top_names"

    const-string v7, ""

    invoke-static {v3, v6, v7}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v1, v2}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->fillDefaultGameApp(Ljava/lang/String;Landroid/util/ArrayMap;Landroid/util/ArraySet;)V

    invoke-direct {p0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->getSupportFps()[I

    move-result-object v3

    move v6, v4

    :goto_2
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v6, v7, :cond_4

    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p0, v7, v2}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->isInstalledPackage(Ljava/lang/String;Landroid/util/ArraySet;)Z

    move-result v8

    if-nez v8, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {p0, v3, v8}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->getSuitableFps([II)I

    move-result v8

    iget-object v9, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mPrivGames:Landroid/util/ArrayMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v9, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    :goto_4
    array-length v1, v3

    if-ge v4, v1, :cond_6

    aget v1, v3, v4

    const/16 v6, 0x1e

    if-ne v1, v6, :cond_5

    iput-boolean v5, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsSupportLowFps:Z

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_6
    iget-boolean v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPrivGames="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mPrivGames:Landroid/util/ArrayMap;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "DisplayFrameSetting"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-direct {p0, v0, v2}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->parseTopDefineAppFromDb(Ljava/lang/String;Landroid/util/ArraySet;)V

    invoke-direct {p0, v0, v2}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->parseTopSmartAppFromDb(Ljava/lang/String;Landroid/util/ArraySet;)V

    invoke-direct {p0, v0, v2}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->parseTopVideoAppFromDb(Ljava/lang/String;Landroid/util/ArraySet;)V

    invoke-direct {p0, v0, v2}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->parseTopVideoIdleAppFromDb(Ljava/lang/String;Landroid/util/ArraySet;)V

    invoke-direct {p0, v0, v2}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->parseExcludeAppFromDb(Ljava/lang/String;Landroid/util/ArraySet;)V

    invoke-direct {p0, v0, v2}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->parseEyeAppFromDb(Ljava/lang/String;Landroid/util/ArraySet;)V

    invoke-direct {p0, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->parseBacklightAppFromDb(Ljava/lang/String;)V

    invoke-direct {p0, v0, v2}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->parseEbookIdleAppFromDb(Ljava/lang/String;Landroid/util/ArraySet;)V

    invoke-direct {p0, v0, v2}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->parseTpIdleAppFromDb(Ljava/lang/String;Landroid/util/ArraySet;)V

    invoke-direct {p0, v0, v2}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->parseInputAppFromDb(Ljava/lang/String;Landroid/util/ArraySet;)V

    invoke-direct {p0, v0, v2}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->parseLowFpsAppFromDb(Ljava/lang/String;Landroid/util/ArraySet;)V

    invoke-direct {p0, v0, v2}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->parseTopShortVideoAppFromDb(Ljava/lang/String;Landroid/util/ArraySet;)V

    invoke-direct {p0, v0, v2}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->parsePromotionAppFromDb(Ljava/lang/String;Landroid/util/ArraySet;)V

    invoke-direct {p0, v0, v2}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->parseDisplayFpsAppFromDb(Ljava/lang/String;Landroid/util/ArraySet;)V

    invoke-direct {p0, v0, v2}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->parseFullScreenFpsAppFromDb(Ljava/lang/String;Landroid/util/ArraySet;)V

    invoke-direct {p0, v0, v2}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->parseMapFpsAppFromDb(Ljava/lang/String;Landroid/util/ArraySet;)V

    invoke-direct {p0, v0, v2}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->parseAutoModeVrrAppFromDb(Ljava/lang/String;Landroid/util/ArraySet;)V

    invoke-direct {p0, v0, v2}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->parseHighestFpsAppFromDb(Ljava/lang/String;Landroid/util/ArraySet;)V

    invoke-direct {p0, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->parseViolentModeSwitchFromDb(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->parseIrisConfigFromDb(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->parseFpsFunStateFromDb(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mTopApps:Landroid/util/ArrayMap;

    const-string v2, "power.systemui"

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->registerReceiver(Z)V

    invoke-direct {p0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->registerActivityChangeListener()V

    iget-object v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mAudioRecordingCallback:Landroid/media/AudioManager$AudioRecordingCallback;

    invoke-virtual {v1, v2, p0}, Landroid/media/AudioManager;->registerAudioRecordingCallback(Landroid/media/AudioManager$AudioRecordingCallback;Landroid/os/Handler;)V

    invoke-direct {p0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->registerInputStatusCallBack()V

    invoke-static {}, Lcom/miui/powerkeeper/PowerKeeperManager;->getInstance()Lcom/miui/powerkeeper/PowerKeeperManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/powerkeeper/PowerKeeperManager;->getEventsAggregator()Lcom/miui/powerkeeper/event/EventsAggregator;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v1, p0}, Lcom/miui/powerkeeper/event/EventsAggregator;->registerForForegroundInfo(Landroid/os/Handler;)V

    const/4 v2, 0x7

    invoke-virtual {v1, p0, v2}, Lcom/miui/powerkeeper/event/EventsAggregator;->registerForDockedStack(Landroid/os/Handler;I)V

    const/16 v2, 0xa

    invoke-virtual {v1, p0, v2}, Lcom/miui/powerkeeper/event/EventsAggregator;->registerForPkgExistentState(Landroid/os/Handler;I)V

    invoke-virtual {v1, p0, v0}, Lcom/miui/powerkeeper/event/EventsAggregator;->registerForScreenOn(Landroid/os/Handler;Ljava/lang/Object;)V

    invoke-virtual {v1, p0, v0}, Lcom/miui/powerkeeper/event/EventsAggregator;->registerForScreenOff(Landroid/os/Handler;Ljava/lang/Object;)V

    invoke-virtual {v1, p0, v0}, Lcom/miui/powerkeeper/event/EventsAggregator;->registerForUserPresent(Landroid/os/Handler;Ljava/lang/Object;)V

    invoke-virtual {v1, p0}, Lcom/miui/powerkeeper/event/EventsAggregator;->registerBatteryLevelListener(Landroid/os/Handler;)V

    invoke-virtual {v1, p0}, Lcom/miui/powerkeeper/event/EventsAggregator;->registerForCharging(Landroid/os/Handler;)V

    invoke-virtual {v1, p0}, Lcom/miui/powerkeeper/event/EventsAggregator;->registerPowerModeListener(Landroid/os/Handler;)V

    invoke-virtual {v1, p0}, Lcom/miui/powerkeeper/event/EventsAggregator;->registerForCarScreenInfo(Landroid/os/Handler;)V

    iget-boolean v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsIndependentRearDevice:Z

    if-eqz v0, :cond_8

    invoke-virtual {v1, p0}, Lcom/miui/powerkeeper/event/EventsAggregator;->registerForSubScreenOn(Landroid/os/Handler;)V

    invoke-virtual {v1, p0}, Lcom/miui/powerkeeper/event/EventsAggregator;->registerForSubScreenOff(Landroid/os/Handler;)V

    :cond_8
    invoke-static {}, Lcom/miui/powerkeeper/PowerKeeperManager;->getInstance()Lcom/miui/powerkeeper/PowerKeeperManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/powerkeeper/PowerKeeperManager;->isScreenOn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsMainScreenOn:Z

    new-instance v0, Lcom/miui/powerkeeper/utils/ScreenStateObserver$CarScreenInfo;

    invoke-direct {v0}, Lcom/miui/powerkeeper/utils/ScreenStateObserver$CarScreenInfo;-><init>()V

    iput-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCarScreenInfo:Lcom/miui/powerkeeper/utils/ScreenStateObserver$CarScreenInfo;

    const/16 v0, 0x34

    invoke-virtual {v1, p0, v0}, Lcom/miui/powerkeeper/event/EventsAggregator;->registerForDisplayFold(Landroid/os/Handler;I)V

    invoke-virtual {v1}, Lcom/miui/powerkeeper/event/EventsAggregator;->getForegroundInfo()Lmiui/process/ForegroundInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgInfo:Lmiui/process/ForegroundInfo;

    invoke-virtual {v1}, Lcom/miui/powerkeeper/event/EventsAggregator;->getForegroundInfo()Lmiui/process/ForegroundInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentDefaultDisplayInfo:Lmiui/process/ForegroundInfo;

    invoke-virtual {v1}, Lcom/miui/powerkeeper/event/EventsAggregator;->getPowerMode()I

    move-result v0

    iput v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mPowerMode:I

    invoke-virtual {p0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->onPowerModeChanged()V

    const/16 v0, 0xf9

    iput v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentCookie:I

    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgInfo:Lmiui/process/ForegroundInfo;

    if-eqz v0, :cond_9

    invoke-virtual {p0, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->onForegroundChanged(Lmiui/process/ForegroundInfo;)V

    goto :goto_5

    :cond_9
    const-string v0, "init mCurrentFgInfo is null"

    invoke-direct {p0, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    :goto_5
    invoke-direct {p0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->notifySFIChange()V

    :cond_a
    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mSmartFpsApps:Landroid/util/ArraySet;

    const-string v1, "com.tencent.mm"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iput-boolean v5, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mParseInited:Z

    return-void
.end method

.method private parseInputAppFromDb(Ljava/lang/String;Landroid/util/ArraySet;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudObserver:Lb/a;

    sget v0, Lb/b;->l:I

    invoke-virtual {p1, v0}, Lb/a;->m(I)Lorg/json/JSONObject;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudObserver:Lb/a;

    invoke-virtual {v1, v0}, Lb/a;->t(I)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "input_audio_group"

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    sget-object v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudControlStatus:Landroid/util/ArrayMap;

    sget-object v4, Lb/b;->W:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseInputAppFromDb new cloud = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudControlStatus:Landroid/util/ArrayMap;

    sget-object v1, Lb/b;->W:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    invoke-static {p1, v3, v2}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseInputAppFromDb old cloud or local config = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    :cond_1
    :goto_0
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_a

    :cond_2
    if-nez p2, :cond_3

    invoke-static {}, Lcom/miui/powerkeeper/utils/PowerKeeperPackageManager;->getInstalledThirdPartApps()Landroid/util/ArraySet;

    move-result-object p2

    :cond_3
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "inputSwitch"

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mInputModeSwitch:Z

    const-string p1, "audioSwitch"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mAudioRecordSwitch:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseInputAppFromDb mAudioRecordSwitch="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mAudioRecordSwitch:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    const-string p1, "DisplayFrameSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseInputAppFromDb inputSwitch="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mInputModeSwitch:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mInputModeSwitch:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x3c

    const/16 v2, 0x1e

    const/4 v3, 0x0

    const-string v4, ","

    const-string v5, ""

    if-eqz p1, :cond_7

    :try_start_1
    const-string p1, "input_list30"

    invoke-virtual {v0, p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    move v6, v3

    :goto_1
    array-length v7, p1

    if-ge v6, v7, :cond_5

    aget-object v7, p1, v6

    invoke-virtual {p0, v7, p2}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->isInstalledPackage(Ljava/lang/String;Landroid/util/ArraySet;)Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_2

    :cond_4
    iget-object v7, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mInputApps:Landroid/util/ArrayMap;

    aget-object v8, p1, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_9

    :cond_5
    const-string p1, "input_list60"

    invoke-virtual {v0, p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    move v6, v3

    :goto_3
    array-length v7, p1

    if-ge v6, v7, :cond_7

    aget-object v7, p1, v6

    invoke-virtual {p0, v7, p2}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->isInstalledPackage(Ljava/lang/String;Landroid/util/ArraySet;)Z

    move-result v7

    if-nez v7, :cond_6

    goto :goto_4

    :cond_6
    iget-object v7, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mInputApps:Landroid/util/ArrayMap;

    aget-object v8, p1, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_7
    iget-boolean p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mAudioRecordSwitch:Z

    if-eqz p1, :cond_b

    const-string p1, "audio_list30"

    invoke-virtual {v0, p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_9

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    move v6, v3

    :goto_5
    array-length v7, p1

    if-ge v6, v7, :cond_9

    aget-object v7, p1, v6

    invoke-virtual {p0, v7, p2}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->isInstalledPackage(Ljava/lang/String;Landroid/util/ArraySet;)Z

    move-result v7

    if-nez v7, :cond_8

    goto :goto_6

    :cond_8
    iget-object v7, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mAudioApps:Landroid/util/ArrayMap;

    aget-object v8, p1, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_9
    const-string p1, "audio_list60"

    invoke-virtual {v0, p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    :goto_7
    array-length v0, p1

    if-ge v3, v0, :cond_b

    aget-object v0, p1, v3

    invoke-virtual {p0, v0, p2}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->isInstalledPackage(Ljava/lang/String;Landroid/util/ArraySet;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_8

    :cond_a
    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mAudioApps:Landroid/util/ArrayMap;

    aget-object v2, p1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :goto_9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "parseInputAppFromDb e="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    :cond_b
    return-void

    :cond_c
    :goto_a
    const-string p1, "parseInputAppFromDb empty"

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    return-void
.end method

.method private parseIrisConfigFromDb(Ljava/lang/String;)V
    .registers 12

    const-string v0, "DisplayFrameSetting"

    iget-boolean v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->IS_SUPPORTED_IRIS:Z

    if-nez v1, :cond_0

    const-string p1, "parseIrisConfigFromDb failed due to Iris feature not supported"

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudObserver:Lb/a;

    sget v2, Lb/b;->J:I

    invoke-virtual {v1, v2}, Lb/a;->m(I)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseIrisConfigFromDb new cloud = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    :cond_1
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_4

    :cond_2
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "app_param"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseIrisConfigFromDb param="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mMemcParam:[Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_5

    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v6, v5, v3

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mExtremeVideoPackageList:Ljava/util/List;

    aget-object v8, v6, v3

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    if-nez v7, :cond_4

    const-string v7, "D"

    aget-object v9, v5, v8

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mDuelMemcPackage:Ljava/util/List;

    aget-object v9, v6, v3

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_3
    iget-object v7, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mSingleMemcPackage:Ljava/util/List;

    aget-object v9, v6, v3

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    sget-object v7, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mExtremeVideoPackageList:Ljava/util/List;

    aget-object v9, v6, v3

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x2

    aget-object v7, v5, v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    sget-object v7, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mExtremeVideoActivityList:Ljava/util/List;

    aget-object v6, v6, v8

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mMemcParam:[Ljava/lang/String;

    const/4 v7, 0x3

    aget-object v5, v5, v7

    aput-object v5, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    new-array p1, v3, [Ljava/lang/String;

    invoke-interface {v2, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mSdr2HdrParam:[Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update config failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_1
    const-string p1, "parse json config failed"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    invoke-direct {p0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->registerActivityChangeListener()V

    return-void

    :cond_6
    :goto_4
    const-string p1, "parseIrisConfigFromDb empty"

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    return-void
.end method

.method private parseLocalConfig()V
    .registers 11

    const-string v0, "parseLocalConfig"

    const-string v1, "DisplayFrameSetting"

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->getValidLocalConfigPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v3, "parseLocalConfig ignore for new  local config is not exist"

    invoke-direct {p0, v3}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p0

    goto :goto_6

    :catch_1
    move-exception p0

    goto :goto_7

    :cond_0
    iget-object v4, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "fps_local.config"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/powerkeeper/utils/AssetUtils;->getStrFromAssetFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b

    sget-object v5, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->FPS_LOCAL_CONFIG_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "intl_default"

    const/4 v8, 0x3

    const/4 v9, 0x0

    if-nez v6, :cond_3

    :try_start_1
    sget-object v6, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->FPS_INTL_LOCAL_CONFIG_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    const-string v5, "smartfps/opt_dafault_config"

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sput v8, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mConfigType:I

    :cond_2
    move-object v3, v9

    goto :goto_3

    :cond_3
    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "cn_default"

    goto :goto_1

    :cond_4
    move-object v6, v7

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x2

    goto :goto_2

    :cond_5
    const/4 v3, 0x1

    :goto_2
    sput v3, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mConfigType:I

    invoke-direct {p0, v6}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->getDefaultLocalConfig(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    :goto_3
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7

    sget v5, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mConfigType:I

    if-ne v5, v8, :cond_6

    invoke-direct {p0, v7}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->getDefaultLocalConfig(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    goto :goto_4

    :cond_6
    new-instance v5, Ljava/lang/String;

    invoke-static {v4, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([B)V

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    :cond_7
    :goto_4
    if-eqz v9, :cond_8

    invoke-virtual {v9}, Lorg/json/JSONObject;->length()I

    move-result v4

    if-nez v4, :cond_9

    :cond_8
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v4

    if-nez v4, :cond_9

    goto :goto_5

    :cond_9
    const-string v4, "version"

    const/4 v5, -0x1

    invoke-static {v9, v3, v4, v5}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->getValidConfigFromData(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mConfigVersion:Ljava/lang/String;

    iget-object p0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    sget v4, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mConfigType:I

    invoke-static {p0, v9, v3, v4}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->onCloudFunctionUpdated(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;I)V

    return-void

    :cond_a
    :goto_5
    const-string p0, "parseLocalConfig error for local config is empty"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sput v2, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mConfigType:I

    return-void

    :cond_b
    const-string p0, "parseLocalConfig error for strFpsConfig is null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :goto_6
    sput v2, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mConfigType:I

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    :goto_7
    sput v2, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mConfigType:I

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_8
    return-void
.end method

.method private parseLowFpsAppFromDb(Ljava/lang/String;Landroid/util/ArraySet;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, ","

    const-string v1, ""

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudObserver:Lb/a;

    sget v2, Lb/b;->l:I

    invoke-virtual {p1, v2}, Lb/a;->m(I)Lorg/json/JSONObject;

    move-result-object p1

    iget-object v3, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudObserver:Lb/a;

    invoke-virtual {v3, v2}, Lb/a;->t(I)Z

    move-result v3

    const/4 v4, 0x0

    const-string v5, "low_fps_group"

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    sget-object v3, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudControlStatus:Landroid/util/ArrayMap;

    sget-object v6, Lb/b;->W:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v2, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v5, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseLowFpsAppFromDb new cloud = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudControlStatus:Landroid/util/ArrayMap;

    sget-object v3, Lb/b;->W:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    invoke-static {p1, v5, v4}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseLowFpsAppFromDb old cloud or local config = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCookieNotifyReserveList:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_6

    :cond_2
    if-nez p2, :cond_3

    invoke-static {}, Lcom/miui/powerkeeper/utils/PowerKeeperPackageManager;->getInstalledThirdPartApps()Landroid/util/ArraySet;

    move-result-object p2

    :cond_3
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "lowFpsSwitch"

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mLowFpsSwitch:Z

    const-string p1, "cameraPowerSaveSwitch"

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCameraPowerSaveSwitch:Z

    const-string p1, "cameraPowerSaveValue"

    const/4 v5, 0x5

    invoke-virtual {v2, p1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCameraPowerSaveValue:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parseLowFpsAppFromDb mLowFpsSwitch="

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mLowFpsSwitch:Z

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mLowFpsSwitch:Z

    if-eqz p1, :cond_d

    const-string p1, "pkgName"

    invoke-virtual {v2, p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const-string v5, "blacklistAtyName_camera"

    invoke-virtual {v2, v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mBlacklistActivity_Camera:[Ljava/lang/String;

    const-string v5, "blacklistAtyName_lowfps"

    invoke-virtual {v2, v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mBlacklistActivity_LowFps:[Ljava/lang/String;

    const-string v5, "blacklistAtyName_vr"

    invoke-virtual {v2, v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mBlacklistActivity_Vr:[Ljava/lang/String;

    const-string v5, "highfpsAtyName"

    invoke-virtual {v2, v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mHighFpsListActivity:[Ljava/lang/String;

    const-string v5, "appletsAtyName"

    invoke-virtual {v2, v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mBlackListActivityApplets:[Ljava/lang/String;

    const-string v5, "cameraWhitelist"

    invoke-virtual {v2, v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCameraThirdWhitelist:[Ljava/lang/String;

    const-string v0, "cookieReserveList"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_5

    move v2, v4

    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_5

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    const/16 v6, 0xc8

    if-le v5, v6, :cond_4

    iget-object v6, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCookieNotifyReserveList:Landroid/util/ArraySet;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_5

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseLowFpsAppFromDb pkgs="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mBlacklistActivity_LowFps="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mBlacklistActivity_LowFps:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " blacklistAtyName_vr="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mBlacklistActivity_Vr:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mHighFpsListActivity= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mHighFpsListActivity:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mBlackListActivityApplets"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mBlackListActivityApplets:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mCameraThirdWhitelist"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCameraThirdWhitelist:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mCookieNotifyReserveList="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCookieNotifyReserveList:Landroid/util/ArraySet;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    if-eqz p1, :cond_8

    move v0, v4

    :goto_3
    array-length v2, p1

    if-ge v0, v2, :cond_7

    aget-object v2, p1, v0

    invoke-virtual {p0, v2, p2}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->isInstalledPackage(Ljava/lang/String;Landroid/util/ArraySet;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_4

    :cond_6
    sget-object v2, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mLowFpsPkgList:Ljava/util/List;

    aget-object v5, p1, v0

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "parseLowFpsAppFromDb mLowFpsPkgList="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mLowFpsPkgList:Ljava/util/List;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    :cond_8
    iget-object p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mBlacklistActivity_Camera:[Ljava/lang/String;

    if-eqz p1, :cond_9

    sget-object p2, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCameraActivityList:Ljava/util/List;

    invoke-static {p2, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "parseLowFpsAppFromDb mCameraActivityList="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCameraActivityList:Ljava/util/List;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    :cond_9
    iget-object p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mBlacklistActivity_LowFps:[Ljava/lang/String;

    if-eqz p1, :cond_a

    sget-object p2, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCameraActivityList:Ljava/util/List;

    invoke-static {p2, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_a
    iget-object p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mBlacklistActivity_Vr:[Ljava/lang/String;

    if-eqz p1, :cond_b

    sget-object p2, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCameraActivityList:Ljava/util/List;

    invoke-static {p2, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_b
    iget-object p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mHighFpsListActivity:[Ljava/lang/String;

    if-eqz p1, :cond_c

    array-length p2, p1

    if-lt p2, v3, :cond_c

    aget-object p1, p1, v4

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    sget-object p1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCameraActivityList:Ljava/util/List;

    iget-object p2, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mHighFpsListActivity:[Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->registerVideoFpsCallBack()V

    :cond_c
    iget-object p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mBlackListActivityApplets:[Ljava/lang/String;

    if-eqz p1, :cond_d

    array-length p2, p1

    if-lt p2, v3, :cond_d

    aget-object p1, p1, v4

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    sget-object p1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCameraActivityList:Ljava/util/List;

    iget-object p2, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mBlackListActivityApplets:[Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    iput-boolean v3, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mAppletsSwitch:Z

    :cond_d
    invoke-direct {p0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->registerActivityChangeListener()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "parseInputAppFromDb e="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    return-void

    :cond_e
    :goto_6
    const-string p1, "parseLowFpsAppFromDb empty"

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    return-void
.end method

.method private parseMapFpsAppFromDb(Ljava/lang/String;Landroid/util/ArraySet;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudObserver:Lb/a;

    sget v0, Lb/b;->k:I

    invoke-virtual {p1, v0}, Lb/a;->m(I)Lorg/json/JSONObject;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudObserver:Lb/a;

    invoke-virtual {v1, v0}, Lb/a;->t(I)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "map_fps_group"

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    sget-object v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudControlStatus:Landroid/util/ArrayMap;

    sget-object v4, Lb/b;->W:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseMapFpsAppFromDb new cloud = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudControlStatus:Landroid/util/ArrayMap;

    sget-object v1, Lb/b;->W:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    invoke-static {p1, v3, v2}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseMapFpsAppFromDb old cloud or local config = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    :cond_1
    :goto_0
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_3

    :cond_2
    if-nez p2, :cond_3

    invoke-static {}, Lcom/miui/powerkeeper/utils/PowerKeeperPackageManager;->getInstalledThirdPartApps()Landroid/util/ArraySet;

    move-result-object p2

    :cond_3
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_5

    aget-object v1, p1, v0

    invoke-virtual {p0, v1, p2}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->isInstalledPackage(Ljava/lang/String;Landroid/util/ArraySet;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mMapFpsApps:Landroid/util/ArraySet;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "parseMapFpsAppFromDb mMapFpsApps="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mMapFpsApps:Landroid/util/ArraySet;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    return-void

    :cond_6
    :goto_3
    const-string p1, "parseMapFpsAppFromDb empty"

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    return-void
.end method

.method private parseNoteSwitchFromDb(Ljava/lang/String;)V
    .registers 6

    const-string v0, "noteSwitch"

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudObserver:Lb/a;

    sget v1, Lb/b;->i:I

    invoke-virtual {p1, v1}, Lb/a;->m(I)Lorg/json/JSONObject;

    move-result-object p1

    iget-object v2, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudObserver:Lb/a;

    invoke-virtual {v2, v1}, Lb/a;->t(I)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    sget-object v2, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudControlStatus:Landroid/util/ArrayMap;

    sget-object v3, Lb/b;->W:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseNoteSwitchFromDb new cloud = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudControlStatus:Landroid/util/ArrayMap;

    sget-object v2, Lb/b;->W:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    const-string v1, "note_pkg"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseNoteSwitchFromDb old cloud or local config = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    :cond_1
    :goto_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsNoteCloudSwitch:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsNoteCloudSwitch:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseNoteSwitchFromDb e="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    return-void

    :cond_3
    :goto_1
    const-string p1, "parseNoteSwitchFromDb empty"

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    return-void
.end method

.method private parsePromotionAppFromDb(Ljava/lang/String;Landroid/util/ArraySet;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudObserver:Lb/a;

    sget v0, Lb/b;->k:I

    invoke-virtual {p1, v0}, Lb/a;->m(I)Lorg/json/JSONObject;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudObserver:Lb/a;

    invoke-virtual {v1, v0}, Lb/a;->t(I)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "promotion_group"

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    sget-object v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudControlStatus:Landroid/util/ArrayMap;

    sget-object v4, Lb/b;->W:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parsePromotionAppFromDb new cloud = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudControlStatus:Landroid/util/ArrayMap;

    sget-object v1, Lb/b;->W:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    invoke-static {p1, v3, v2}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parsePromotionAppFromDb old cloud or local config = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    :cond_1
    :goto_0
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_3

    :cond_2
    if-nez p2, :cond_3

    invoke-static {}, Lcom/miui/powerkeeper/utils/PowerKeeperPackageManager;->getInstalledThirdPartApps()Landroid/util/ArraySet;

    move-result-object p2

    :cond_3
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_5

    aget-object v1, p1, v0

    invoke-virtual {p0, v1, p2}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->isInstalledPackage(Ljava/lang/String;Landroid/util/ArraySet;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mPromotionApps:Landroid/util/ArraySet;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "parsePromotionAppFromDb mPromotionApps="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mPromotionApps:Landroid/util/ArraySet;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    return-void

    :cond_6
    :goto_3
    const-string p1, "parsePromotionAppFromDb empty"

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    return-void
.end method

.method private parseTopDefineAppFromDb(Ljava/lang/String;Landroid/util/ArraySet;)V
    .registers 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v2, 0x0

    if-nez p1, :cond_1

    iget-object v0, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudObserver:Lb/a;

    sget v3, Lb/b;->l:I

    invoke-virtual {v0, v3}, Lb/a;->m(I)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v4, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudObserver:Lb/a;

    invoke-virtual {v4, v3}, Lb/a;->t(I)Z

    move-result v4

    const-string v5, "fps_group"

    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    sget-object v4, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudControlStatus:Landroid/util/ArrayMap;

    sget-object v6, Lb/b;->W:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4, v3, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v5, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseTopDefineAppFromDb new cloud = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudControlStatus:Landroid/util/ArrayMap;

    sget-object v4, Lb/b;->W:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    invoke-static {v0, v5, v2}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseTopDefineAppFromDb old cloud or local config = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object/from16 v3, p1

    :goto_1
    iget-object v0, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mTopDefineApps:Landroid/util/ArrayMap;

    const-string v4, "power.systemui"

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    iget-object v0, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mTopDefineApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    sget-object v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsCustomFpsSwitch:Ljava/lang/String;

    const-string v6, "true"

    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v7, "package_name"

    const-string v8, "DisplayFrameSetting"

    const-string v9, "is_update_database_top"

    const/4 v10, 0x1

    const/16 v11, 0x3c

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_4

    :try_start_0
    sget-object v13, Lcom/miui/powerkeeper/provider/HighRefreshRateConfigure;->CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iget-object v0, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    sget-object v12, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v0, v12}, Landroid/content/Context;->getContentResolverForUser(Landroid/os/UserHandle;)Landroid/content/ContentResolver;

    move-result-object v12

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v12 .. v17}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v12, :cond_2

    :goto_2
    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v12, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v13, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCustomApps:Landroid/util/ArrayMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v0, v14}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v12

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_2
    if-eqz v12, :cond_4

    :goto_3
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v12, v2

    :goto_4
    :try_start_2
    const-string v13, "parseTopDefineAppFromDb first"

    invoke-static {v8, v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v12, :cond_4

    goto :goto_3

    :goto_5
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    :cond_4
    :goto_6
    invoke-direct {v1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->getSupportFps()[I

    move-result-object v12

    const-string v13, "setScreenEffect enable blacklist"

    const-string v14, "defaultFps"

    const-string v15, "mIsWhiteFpsList = true "

    const-string v10, "setScreenEffect enable whitelist"

    if-eqz v3, :cond_1c

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_5

    goto :goto_1a

    :cond_5
    if-nez p2, :cond_6

    invoke-static {}, Lcom/miui/powerkeeper/utils/PowerKeeperPackageManager;->getInstalledThirdPartApps()Landroid/util/ArraySet;

    move-result-object v19

    move-object/from16 v20, v19

    goto :goto_7

    :cond_6
    move-object/from16 v20, p2

    :goto_7
    :try_start_3
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "policy"

    const-string v11, "blacklist"

    invoke-virtual {v2, v0, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v11, "whitelist"

    invoke-virtual {v0, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsWhitelistPolicy:Z

    const-string v0, "isWhiteList"

    const/4 v11, 0x0

    invoke-virtual {v2, v0, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsWhiteFpsList:Z

    iget-boolean v11, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsWhitelistPolicy:Z

    if-eqz v11, :cond_7

    const/16 v11, 0x3c

    iput v11, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mDefaultFps:I

    invoke-direct {v1, v10}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    invoke-static {}, Lmiui/hardware/display/DisplayFeatureManager;->getInstance()Lmiui/hardware/display/DisplayFeatureManager;

    move-result-object v0

    const/4 v10, 0x2

    const/16 v11, 0x100

    const/16 v13, 0x18

    invoke-virtual {v0, v13, v10, v11}, Lmiui/hardware/display/DisplayFeatureManager;->setScreenEffect(III)V

    goto :goto_8

    :catch_2
    move-exception v0

    move/from16 v18, v5

    goto :goto_18

    :cond_7
    if-eqz v0, :cond_8

    invoke-direct {v1, v15}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    const/16 v11, 0x3c

    iput v11, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mDefaultFps:I

    goto :goto_8

    :cond_8
    const/16 v11, 0x3c

    invoke-static {v14, v11}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mDefaultFps:I

    if-ne v0, v11, :cond_9

    invoke-static {v12, v0}, Lcom/miui/powerkeeper/utils/Utils;->getArrayMaxMember([II)I

    move-result v0

    iput v0, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mDefaultFps:I

    :cond_9
    invoke-direct {v1, v13}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    invoke-static {}, Lmiui/hardware/display/DisplayFeatureManager;->getInstance()Lmiui/hardware/display/DisplayFeatureManager;

    move-result-object v0

    const/4 v10, 0x3

    const/16 v11, 0x100

    const/16 v13, 0x18

    invoke-virtual {v0, v13, v10, v11}, Lmiui/hardware/display/DisplayFeatureManager;->setScreenEffect(III)V

    :goto_8
    iget v0, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mDefaultFps:I
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    const-string v10, ","

    const-string v11, ""

    const/16 v13, 0x3c

    if-eq v13, v0, :cond_12

    :try_start_4
    const-string v0, "list60"

    invoke-virtual {v2, v0, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_12

    invoke-virtual {v0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    const/4 v0, 0x0

    :goto_9
    array-length v14, v13

    if-ge v0, v14, :cond_b

    aget-object v14, v13, v0

    move-object/from16 v15, v20

    invoke-virtual {v1, v14, v15}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->isInstalledPackage(Ljava/lang/String;Landroid/util/ArraySet;)Z

    move-result v14

    if-nez v14, :cond_a

    move/from16 v17, v0

    move/from16 v18, v5

    goto :goto_a

    :cond_a
    iget-object v14, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mTopDefineApps:Landroid/util/ArrayMap;

    move/from16 v17, v0

    aget-object v0, v13, v17
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    move/from16 v18, v5

    const/16 v21, 0x3c

    :try_start_5
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v14, v0, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_a
    add-int/lit8 v0, v17, 0x1

    move-object/from16 v20, v15

    move/from16 v5, v18

    goto :goto_9

    :catch_3
    move-exception v0

    goto :goto_18

    :cond_b
    move/from16 v18, v5

    move-object/from16 v15, v20

    sget-object v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsCustomFpsSwitch:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v5, 0x1

    invoke-static {v0, v9, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v5, v0, :cond_13

    const/4 v5, 0x0

    :goto_b
    array-length v0, v13

    if-ge v5, v0, :cond_11

    aget-object v0, v13, v5

    invoke-virtual {v1, v0, v15}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->isInstalledPackage(Ljava/lang/String;Landroid/util/ArraySet;)Z

    move-result v0
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_3

    if-nez v0, :cond_c

    move/from16 v17, v5

    move-object/from16 v20, v13

    goto :goto_10

    :cond_c
    :try_start_6
    const-string v25, "package_name = ?"

    sget-object v23, Lcom/miui/powerkeeper/provider/HighRefreshRateConfigure;->CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iget-object v6, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    sget-object v14, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v6, v14}, Landroid/content/Context;->getContentResolverForUser(Landroid/os/UserHandle;)Landroid/content/ContentResolver;

    move-result-object v22

    aget-object v6, v13, v5

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v27}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    move/from16 v17, v5

    move-object/from16 v5, v23

    :try_start_7
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v19
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-nez v19, :cond_d

    move-object/from16 v19, v6

    :try_start_8
    aget-object v6, v13, v17
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-object/from16 v20, v13

    :try_start_9
    const-string v13, "com.android.camera"

    invoke-virtual {v6, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    aget-object v6, v20, v17

    invoke-virtual {v0, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v14}, Landroid/content/Context;->getContentResolverForUser(Landroid/os/UserHandle;)Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v5, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    iget-object v0, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCustomApps:Landroid/util/ArrayMap;

    aget-object v5, v20, v17

    const/16 v21, 0x3c

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_e

    :catchall_2
    move-exception v0

    :goto_c
    move-object/from16 v2, v19

    goto :goto_11

    :catch_4
    move-exception v0

    :goto_d
    move-object/from16 v6, v19

    goto :goto_f

    :catch_5
    move-exception v0

    move-object/from16 v20, v13

    goto :goto_d

    :cond_d
    move-object/from16 v19, v6

    move-object/from16 v20, v13

    :cond_e
    :goto_e
    :try_start_a
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_10

    :catchall_3
    move-exception v0

    move-object/from16 v19, v6

    goto :goto_c

    :catch_6
    move-exception v0

    move-object/from16 v19, v6

    move-object/from16 v20, v13

    goto :goto_f

    :catchall_4
    move-exception v0

    const/4 v2, 0x0

    goto :goto_11

    :catch_7
    move-exception v0

    move/from16 v17, v5

    move-object/from16 v20, v13

    const/4 v6, 0x0

    :goto_f
    :try_start_b
    const-string v5, "parseTopDefineAppFromDb"

    invoke-static {v8, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    if-eqz v6, :cond_f

    :try_start_c
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_f
    :goto_10
    add-int/lit8 v5, v17, 0x1

    move-object/from16 v13, v20

    goto :goto_b

    :catchall_5
    move-exception v0

    move-object v2, v6

    :goto_11
    if-eqz v2, :cond_10

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_10
    throw v0

    :cond_11
    iget-object v0, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v5, 0x0

    invoke-static {v0, v9, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_12

    :cond_12
    move/from16 v18, v5

    move-object/from16 v15, v20

    :cond_13
    :goto_12
    const/16 v0, 0x5a

    invoke-direct {v1, v12, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->getSuitableFps([II)I

    move-result v0

    iget v5, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mDefaultFps:I

    if-eq v0, v5, :cond_15

    const-string v5, "list90"

    invoke-virtual {v2, v5, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_15

    invoke-virtual {v5, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    :goto_13
    array-length v7, v5

    if-ge v6, v7, :cond_15

    aget-object v7, v5, v6

    invoke-virtual {v1, v7, v15}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->isInstalledPackage(Ljava/lang/String;Landroid/util/ArraySet;)Z

    move-result v7

    if-nez v7, :cond_14

    goto :goto_14

    :cond_14
    iget-object v7, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mTopDefineApps:Landroid/util/ArrayMap;

    aget-object v9, v5, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v7, v9, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_14
    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    :cond_15
    const/16 v0, 0x78

    invoke-direct {v1, v12, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->getSuitableFps([II)I

    move-result v0

    iget v5, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mDefaultFps:I

    if-eq v0, v5, :cond_17

    const-string v5, "list120"

    invoke-virtual {v2, v5, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_17

    invoke-virtual {v5, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    :goto_15
    array-length v7, v5

    if-ge v6, v7, :cond_17

    aget-object v7, v5, v6

    invoke-virtual {v1, v7, v15}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->isInstalledPackage(Ljava/lang/String;Landroid/util/ArraySet;)Z

    move-result v7

    if-nez v7, :cond_16

    goto :goto_16

    :cond_16
    iget-object v7, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mTopDefineApps:Landroid/util/ArrayMap;

    aget-object v9, v5, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_16
    add-int/lit8 v6, v6, 0x1

    goto :goto_15

    :cond_17
    const-string v0, "videoGameSwitch"

    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mVideoGameSwitch:Z

    iget-boolean v0, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->IS_ENABLE_SMART_DFPS:Z

    if-eqz v0, :cond_19

    const-string v0, "isSmart"

    const/4 v5, 0x1

    invoke-virtual {v2, v0, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/16 v2, 0x1d

    if-eqz v0, :cond_18

    const-string v0, "setScreenEffect smart enable"

    invoke-direct {v1, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    invoke-static {}, Lmiui/hardware/display/DisplayFeatureManager;->getInstance()Lmiui/hardware/display/DisplayFeatureManager;

    move-result-object v0

    invoke-virtual {v0, v2, v5}, Lmiui/hardware/display/DisplayFeatureManager;->setScreenEffect(II)V

    goto :goto_17

    :cond_18
    const-string v0, "setScreenEffect smart disable"

    invoke-direct {v1, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    invoke-static {}, Lmiui/hardware/display/DisplayFeatureManager;->getInstance()Lmiui/hardware/display/DisplayFeatureManager;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5}, Lmiui/hardware/display/DisplayFeatureManager;->setScreenEffect(II)V

    :cond_19
    :goto_17
    iget-boolean v0, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseTopDefineAppFromDb mTopDefineApps="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mTopDefineApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " appJsonStr="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_3

    goto :goto_19

    :goto_18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseTopDefineAppFromDb e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    :cond_1a
    :goto_19
    iget-object v0, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mTopDefineApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    move/from16 v2, v18

    if-eq v2, v0, :cond_20

    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mSystemUiDefineChange:Z

    iget-boolean v2, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mParseInited:Z

    if-eqz v2, :cond_1b

    invoke-direct {v1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->unregisterReceiver()V

    :cond_1b
    invoke-direct {v1, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->registerReceiver(Z)V

    goto :goto_1b

    :cond_1c
    :goto_1a
    const-string v0, "parseTopDefineAppFromDb empty"

    invoke-direct {v1, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    iget-boolean v0, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsWhitelistPolicy:Z

    if-eqz v0, :cond_1d

    const/16 v11, 0x3c

    iput v11, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mDefaultFps:I

    invoke-direct {v1, v10}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    invoke-static {}, Lmiui/hardware/display/DisplayFeatureManager;->getInstance()Lmiui/hardware/display/DisplayFeatureManager;

    move-result-object v0

    const/4 v10, 0x2

    const/16 v11, 0x100

    const/16 v13, 0x18

    invoke-virtual {v0, v13, v10, v11}, Lmiui/hardware/display/DisplayFeatureManager;->setScreenEffect(III)V

    goto :goto_1b

    :cond_1d
    const/16 v11, 0x3c

    iget-boolean v0, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsWhiteFpsList:Z

    if-eqz v0, :cond_1e

    iput v11, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mDefaultFps:I

    invoke-direct {v1, v15}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    goto :goto_1b

    :cond_1e
    invoke-static {v14, v11}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mDefaultFps:I

    if-ne v0, v11, :cond_1f

    invoke-static {v12, v0}, Lcom/miui/powerkeeper/utils/Utils;->getArrayMaxMember([II)I

    move-result v0

    iput v0, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mDefaultFps:I

    :cond_1f
    invoke-direct {v1, v13}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    invoke-static {}, Lmiui/hardware/display/DisplayFeatureManager;->getInstance()Lmiui/hardware/display/DisplayFeatureManager;

    move-result-object v0

    const/4 v10, 0x3

    const/16 v11, 0x100

    const/16 v13, 0x18

    invoke-virtual {v0, v13, v10, v11}, Lmiui/hardware/display/DisplayFeatureManager;->setScreenEffect(III)V

    :cond_20
    :goto_1b
    return-void
.end method

.method private parseTopShortVideoAppFromDb(Ljava/lang/String;Landroid/util/ArraySet;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, ","

    const-string v1, ""

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudObserver:Lb/a;

    sget v2, Lb/b;->k:I

    invoke-virtual {p1, v2}, Lb/a;->m(I)Lorg/json/JSONObject;

    move-result-object p1

    iget-object v3, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudObserver:Lb/a;

    invoke-virtual {v3, v2}, Lb/a;->t(I)Z

    move-result v3

    const/4 v4, 0x0

    const-string v5, "fps_top_short_video_pkg"

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    sget-object v3, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudControlStatus:Landroid/util/ArrayMap;

    sget-object v6, Lb/b;->W:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v2, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v5, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseTopShortVideoAppFromDb new cloud = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudControlStatus:Landroid/util/ArrayMap;

    sget-object v3, Lb/b;->W:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    invoke-static {p1, v5, v4}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseTopShortVideoAppFromDb old cloud or local config = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    :cond_1
    :goto_0
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_4

    :cond_2
    if-nez p2, :cond_3

    invoke-static {}, Lcom/miui/powerkeeper/utils/PowerKeeperPackageManager;->getInstalledThirdPartApps()Landroid/util/ArraySet;

    move-result-object p2

    :cond_3
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "shortVideoSwitch"

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mShortVideoSwitch:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseTopShortVideoAppFromDb mShortVideoSwitch="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mShortVideoSwitch:Z

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mShortVideoSwitch:Z

    if-eqz p1, :cond_7

    const-string p1, "pkgName"

    invoke-virtual {v2, p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const-string v3, "whitelistAtyName"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mWhitelistActivity:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseTopShortVideoAppFromDb pkgs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mWhitelistActivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mWhitelistActivity:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    if-eqz p1, :cond_6

    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_5

    aget-object v1, p1, v0

    invoke-virtual {p0, v1, p2}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->isInstalledPackage(Ljava/lang/String;Landroid/util/ArraySet;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    sget-object v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mShortVideoApps:Ljava/util/List;

    aget-object v2, p1, v0

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "parseTopShortVideoAppFromDb mShortVideoApps="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mShortVideoApps:Ljava/util/List;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    :cond_6
    sget-object p1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mShortVideoApps:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_7

    iget-object p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mWhitelistActivity:[Ljava/lang/String;

    if-eqz p1, :cond_7

    sget-object p2, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCameraActivityList:Ljava/util/List;

    invoke-static {p2, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "parseCameraIdleAppFromDb mCameraActivityList="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCameraActivityList:Ljava/util/List;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    :cond_7
    invoke-direct {p0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->registerActivityChangeListener()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "parseInputAppFromDb e="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    return-void

    :cond_8
    :goto_4
    const-string p1, "parseTopShortVideoAppFromDb empty"

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    return-void
.end method

.method private parseTopSmartAppFromDb(Ljava/lang/String;Landroid/util/ArraySet;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudObserver:Lb/a;

    sget v0, Lb/b;->l:I

    invoke-virtual {p1, v0}, Lb/a;->m(I)Lorg/json/JSONObject;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudObserver:Lb/a;

    invoke-virtual {v1, v0}, Lb/a;->t(I)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "fps_smart_group"

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    sget-object v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudControlStatus:Landroid/util/ArrayMap;

    sget-object v4, Lb/b;->W:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseTopSmartAppFromDb new cloud = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudControlStatus:Landroid/util/ArrayMap;

    sget-object v1, Lb/b;->W:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    invoke-static {p1, v3, v2}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseTopSmartAppFromDb old cloud or local config = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mTopSmartApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mFoldTopSmartApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mGameTopSmartApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    invoke-direct {p0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->getSupportFps()[I

    move-result-object v0

    const/16 v1, 0x100

    const/4 v2, 0x3

    const/16 v3, 0x18

    const-string v4, "setScreenEffect enable blacklist"

    const-string v5, "defaultFps"

    const-string v6, "mIsWhiteFpsList = true "

    const/16 v7, 0x3c

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_11

    :cond_2
    if-nez p2, :cond_3

    invoke-static {}, Lcom/miui/powerkeeper/utils/PowerKeeperPackageManager;->getInstalledThirdPartApps()Landroid/util/ArraySet;

    move-result-object p2

    :cond_3
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-boolean v9, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsWhiteFpsList:Z

    if-eqz v9, :cond_4

    invoke-direct {p0, v6}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    iput v7, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mDefaultFps:I

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_10

    :cond_4
    invoke-static {v5, v7}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mDefaultFps:I

    if-ne v5, v7, :cond_5

    invoke-static {v0, v5}, Lcom/miui/powerkeeper/utils/Utils;->getArrayMaxMember([II)I

    move-result v5

    iput v5, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mDefaultFps:I

    :cond_5
    :goto_1
    invoke-direct {p0, v4}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    invoke-static {}, Lmiui/hardware/display/DisplayFeatureManager;->getInstance()Lmiui/hardware/display/DisplayFeatureManager;

    move-result-object v4

    invoke-virtual {v4, v3, v2, v1}, Lmiui/hardware/display/DisplayFeatureManager;->setScreenEffect(III)V

    iget v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mDefaultFps:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, ","

    const-string v3, ""

    const/4 v4, 0x0

    if-eq v7, v1, :cond_b

    :try_start_1
    const-string v1, "list60"

    invoke-virtual {v8, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "list60_fold"

    invoke-virtual {v8, v5, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "list60_game"

    invoke-virtual {v8, v6, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_7

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    move v9, v4

    :goto_2
    array-length v10, v1

    if-ge v9, v10, :cond_7

    aget-object v10, v1, v9

    invoke-virtual {p0, v10, p2}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->isInstalledPackage(Ljava/lang/String;Landroid/util/ArraySet;)Z

    move-result v10

    if-nez v10, :cond_6

    goto :goto_3

    :cond_6
    iget-object v10, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mTopSmartApps:Landroid/util/ArrayMap;

    aget-object v11, v1, v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_7
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {v5, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    move v5, v4

    :goto_4
    array-length v9, v1

    if-ge v5, v9, :cond_9

    aget-object v9, v1, v5

    invoke-virtual {p0, v9, p2}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->isInstalledPackage(Ljava/lang/String;Landroid/util/ArraySet;)Z

    move-result v9

    if-nez v9, :cond_8

    goto :goto_5

    :cond_8
    iget-object v9, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mFoldTopSmartApps:Landroid/util/ArrayMap;

    aget-object v10, v1, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_9
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {v6, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    move v5, v4

    :goto_6
    array-length v6, v1

    if-ge v5, v6, :cond_b

    aget-object v6, v1, v5

    invoke-virtual {p0, v6, p2}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->isInstalledPackage(Ljava/lang/String;Landroid/util/ArraySet;)Z

    move-result v6

    if-nez v6, :cond_a

    goto :goto_7

    :cond_a
    iget-object v6, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mGameTopSmartApps:Landroid/util/ArrayMap;

    aget-object v9, v1, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_b
    const/16 v1, 0x5a

    invoke-direct {p0, v0, v1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->getSuitableFps([II)I

    move-result v1

    iget v5, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mDefaultFps:I

    if-eq v1, v5, :cond_f

    const-string v5, "list90"

    invoke-virtual {v8, v5, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "list90_fold"

    invoke-virtual {v8, v6, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_d

    invoke-virtual {v5, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move v7, v4

    :goto_8
    array-length v9, v5

    if-ge v7, v9, :cond_d

    aget-object v9, v5, v7

    invoke-virtual {p0, v9, p2}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->isInstalledPackage(Ljava/lang/String;Landroid/util/ArraySet;)Z

    move-result v9

    if-nez v9, :cond_c

    goto :goto_9

    :cond_c
    iget-object v9, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mTopSmartApps:Landroid/util/ArrayMap;

    aget-object v10, v5, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_d
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_f

    invoke-virtual {v6, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move v6, v4

    :goto_a
    array-length v7, v5

    if-ge v6, v7, :cond_f

    aget-object v7, v5, v6

    invoke-virtual {p0, v7, p2}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->isInstalledPackage(Ljava/lang/String;Landroid/util/ArraySet;)Z

    move-result v7

    if-nez v7, :cond_e

    goto :goto_b

    :cond_e
    iget-object v7, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mFoldTopSmartApps:Landroid/util/ArrayMap;

    aget-object v9, v5, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    :cond_f
    const/16 v1, 0x78

    invoke-direct {p0, v0, v1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->getSuitableFps([II)I

    move-result v0

    iget v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mDefaultFps:I

    if-eq v0, v1, :cond_13

    const-string v1, "list120"

    invoke-virtual {v8, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "list120_fold"

    invoke-virtual {v8, v5, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_11

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    move v5, v4

    :goto_c
    array-length v6, v1

    if-ge v5, v6, :cond_11

    aget-object v6, v1, v5

    invoke-virtual {p0, v6, p2}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->isInstalledPackage(Ljava/lang/String;Landroid/util/ArraySet;)Z

    move-result v6

    if-nez v6, :cond_10

    goto :goto_d

    :cond_10
    iget-object v6, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mTopSmartApps:Landroid/util/ArrayMap;

    aget-object v7, v1, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    :cond_11
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_13

    invoke-virtual {v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    move v2, v4

    :goto_e
    array-length v3, v1

    if-ge v2, v3, :cond_13

    aget-object v3, v1, v2

    invoke-virtual {p0, v3, p2}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->isInstalledPackage(Ljava/lang/String;Landroid/util/ArraySet;)Z

    move-result v3

    if-nez v3, :cond_12

    goto :goto_f

    :cond_12
    iget-object v3, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mFoldTopSmartApps:Landroid/util/ArrayMap;

    aget-object v5, v1, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_13
    const-string p2, "videoGameSwitch"

    invoke-virtual {v8, p2, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mVideoGameSwitch:Z

    iget-boolean p2, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz p2, :cond_14

    const-string p2, "DisplayFrameSetting"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseTopSmartAppFromDb mTopSmartApps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mTopSmartApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mFoldTopSmartApps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mFoldTopSmartApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mGameTopSmartApps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mGameTopSmartApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " appJsonStr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :goto_10
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "parseTopDefaultAppFromDb e="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    :cond_14
    return-void

    :cond_15
    :goto_11
    const-string p1, "parseTopSmartAppFromDb empty"

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsWhiteFpsList:Z

    if-eqz p1, :cond_16

    invoke-direct {p0, v6}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    iput v7, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mDefaultFps:I

    return-void

    :cond_16
    invoke-static {v5, v7}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mDefaultFps:I

    if-ne p1, v7, :cond_17

    invoke-static {v0, p1}, Lcom/miui/powerkeeper/utils/Utils;->getArrayMaxMember([II)I

    move-result p1

    iput p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mDefaultFps:I

    :cond_17
    invoke-direct {p0, v4}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    invoke-static {}, Lmiui/hardware/display/DisplayFeatureManager;->getInstance()Lmiui/hardware/display/DisplayFeatureManager;

    move-result-object p0

    invoke-virtual {p0, v3, v2, v1}, Lmiui/hardware/display/DisplayFeatureManager;->setScreenEffect(III)V

    return-void
.end method

.method private parseTopVideoAppFromDb(Ljava/lang/String;Landroid/util/ArraySet;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v2, 0x0

    if-nez p1, :cond_1

    iget-object v0, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudObserver:Lb/a;

    sget v3, Lb/b;->l:I

    invoke-virtual {v0, v3}, Lb/a;->m(I)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v4, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudObserver:Lb/a;

    invoke-virtual {v4, v3}, Lb/a;->t(I)Z

    move-result v4

    const-string v5, "fps_top_video_pkg"

    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    sget-object v4, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudControlStatus:Landroid/util/ArrayMap;

    sget-object v6, Lb/b;->W:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4, v3, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v5, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseTopVideoAppFromDb new cloud = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudControlStatus:Landroid/util/ArrayMap;

    sget-object v4, Lb/b;->W:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    invoke-static {v0, v5, v2}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseTopVideoAppFromDb old cloud or local config = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object/from16 v3, p1

    :goto_1
    if-eqz v3, :cond_d

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_a

    :cond_2
    if-nez p2, :cond_3

    invoke-static {}, Lcom/miui/powerkeeper/utils/PowerKeeperPackageManager;->getInstalledThirdPartApps()Landroid/util/ArraySet;

    move-result-object v0

    move-object v4, v0

    goto :goto_2

    :cond_3
    move-object/from16 v4, p2

    :goto_2
    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move v0, v6

    :goto_3
    array-length v7, v5

    if-ge v0, v7, :cond_5

    aget-object v7, v5, v0

    invoke-virtual {v1, v7, v4}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->isInstalledPackage(Ljava/lang/String;Landroid/util/ArraySet;)Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_4

    :cond_4
    iget-object v7, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mVideoApps:Landroid/util/ArraySet;

    aget-object v8, v5, v0

    invoke-virtual {v7, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    const-string v0, "true"

    sget-object v7, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsCustomFpsSwitch:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v7, "DisplayFrameSetting"

    if-eqz v0, :cond_b

    iget-object v0, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v8, "is_update_database_video"

    const/4 v9, 0x1

    invoke-static {v0, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v9, v0, :cond_b

    move v9, v6

    :goto_5
    array-length v0, v5

    if-ge v9, v0, :cond_a

    aget-object v0, v5, v9

    invoke-virtual {v1, v0, v4}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->isInstalledPackage(Ljava/lang/String;Landroid/util/ArraySet;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_8

    :cond_6
    :try_start_0
    const-string v13, "package_name = ?"

    sget-object v11, Lcom/miui/powerkeeper/provider/HighRefreshRateConfigure;->CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iget-object v10, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    sget-object v12, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v10, v12}, Landroid/content/Context;->getContentResolverForUser(Landroid/os/UserHandle;)Landroid/content/ContentResolver;

    move-result-object v10

    aget-object v14, v5, v9

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v16, v12

    const/4 v12, 0x0

    move-object/from16 v2, v16

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-nez v12, :cond_7

    const-string v12, "package_name"

    aget-object v13, v5, v9

    invoke-virtual {v0, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v12, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v2}, Landroid/content/Context;->getContentResolverForUser(Landroid/os/UserHandle;)Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v11, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    iget-object v0, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCustomApps:Landroid/util/ArrayMap;

    aget-object v2, v5, v9

    const/16 v11, 0x3c

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v2, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object v2, v10

    goto :goto_9

    :catch_0
    move-exception v0

    goto :goto_7

    :cond_7
    :goto_6
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_8

    :catchall_1
    move-exception v0

    const/4 v2, 0x0

    goto :goto_9

    :catch_1
    move-exception v0

    const/4 v10, 0x0

    :goto_7
    :try_start_2
    const-string v2, "parseTopVideoAppFromDb"

    invoke-static {v7, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v10, :cond_8

    goto :goto_6

    :cond_8
    :goto_8
    add-int/lit8 v9, v9, 0x1

    const/4 v2, 0x0

    goto :goto_5

    :goto_9
    if-eqz v2, :cond_9

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v0

    :cond_a
    iget-object v0, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_b
    iget-boolean v0, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseTopVideoAppFromDb mVideoApps="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mVideoApps:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " appJsonStr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    return-void

    :cond_d
    :goto_a
    const-string v0, "parseTopVideoAppFromDb empty"

    invoke-direct {v1, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    return-void
.end method

.method private parseTopVideoIdleAppFromDb(Ljava/lang/String;Landroid/util/ArraySet;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudObserver:Lb/a;

    sget v0, Lb/b;->k:I

    invoke-virtual {p1, v0}, Lb/a;->m(I)Lorg/json/JSONObject;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudObserver:Lb/a;

    invoke-virtual {v1, v0}, Lb/a;->t(I)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "fps_top_video_idle_pkg"

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    sget-object v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudControlStatus:Landroid/util/ArrayMap;

    sget-object v4, Lb/b;->W:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseTopVideoIdleAppFromDb new cloud = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudControlStatus:Landroid/util/ArrayMap;

    sget-object v1, Lb/b;->W:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    invoke-static {p1, v3, v2}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseTopVideoIdleAppFromDb old cloud or local config = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    :cond_1
    :goto_0
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_3

    :cond_2
    if-nez p2, :cond_3

    invoke-static {}, Lcom/miui/powerkeeper/utils/PowerKeeperPackageManager;->getInstalledThirdPartApps()Landroid/util/ArraySet;

    move-result-object p2

    :cond_3
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_5

    aget-object v2, v0, v1

    invoke-virtual {p0, v2, p2}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->isInstalledPackage(Ljava/lang/String;Landroid/util/ArraySet;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mVideoIdleApps:Landroid/util/ArraySet;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    iget-boolean p2, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz p2, :cond_6

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "parseTopVideoIdleAppFromDb mVideoIdleApps="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mVideoIdleApps:Landroid/util/ArraySet;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " appJsonStr="

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DisplayFrameSetting"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void

    :cond_7
    :goto_3
    const-string p1, "parseTopVideoIdleAppFromDb empty"

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    return-void
.end method

.method private parseTpIdleAppFromDb(Ljava/lang/String;Landroid/util/ArraySet;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudObserver:Lb/a;

    sget v0, Lb/b;->h:I

    invoke-virtual {p1, v0}, Lb/a;->m(I)Lorg/json/JSONObject;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudObserver:Lb/a;

    invoke-virtual {v1, v0}, Lb/a;->t(I)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "tp_idle_pkg"

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    sget-object v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudControlStatus:Landroid/util/ArrayMap;

    sget-object v4, Lb/b;->W:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseTpIdleAppFromDb new cloud = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudControlStatus:Landroid/util/ArrayMap;

    sget-object v1, Lb/b;->W:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    invoke-static {p1, v3, v2}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseTpIdleAppFromDb old cloud or local config = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    :cond_1
    :goto_0
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_3

    :cond_2
    if-nez p2, :cond_3

    invoke-static {}, Lcom/miui/powerkeeper/utils/PowerKeeperPackageManager;->getInstalledThirdPartApps()Landroid/util/ArraySet;

    move-result-object p2

    :cond_3
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_5

    aget-object v1, p1, v0

    invoke-virtual {p0, v1, p2}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->isInstalledPackage(Ljava/lang/String;Landroid/util/ArraySet;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mTpidleApps:Landroid/util/ArraySet;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "parseTpIdleAppFromDb mTpidleApps="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mTpidleApps:Landroid/util/ArraySet;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    return-void

    :cond_6
    :goto_3
    const-string p1, "parseTpIdleAppFromDb empty"

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    return-void
.end method

.method private parseViolentModeSwitchFromDb(Ljava/lang/String;)V
    .registers 5

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudObserver:Lb/a;

    sget v0, Lb/b;->p:I

    invoke-virtual {p1, v0}, Lb/a;->m(I)Lorg/json/JSONObject;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudObserver:Lb/a;

    invoke-virtual {v1, v0}, Lb/a;->t(I)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    sget-object v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudControlStatus:Landroid/util/ArrayMap;

    sget-object v2, Lb/b;->W:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseViolentModeSwitchFromDb new cloud = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudControlStatus:Landroid/util/ArrayMap;

    sget-object v1, Lb/b;->W:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    const-string v0, "violent_mode_switch"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseViolentModeSwitchFromDb old cloud = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    :cond_1
    :goto_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "fucSwitch"

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mViolentModeSwitch:Z

    const-string p1, "idleSwitch"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIdleSceneSwitch:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "parseViolentModeSwitchFromDb mViolentModeSwitch= "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mViolentModeSwitch:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mIdleSceneSwitch= "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIdleSceneSwitch:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseViolentModeSwitchFromDb e="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    return-void

    :cond_3
    :goto_1
    const-string p1, "parseViolentModeSwitchFromDb empty"

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    return-void
.end method

.method private processParam(I[Ljava/lang/String;)V
    .registers 10

    aget-object p1, p2, p1

    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aget-object v0, p1, p2

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/miui/powerkeeper/utils/Utils;->toInt(Ljava/lang/String;I)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x80

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "config="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " values="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    new-array v4, v3, [I

    :goto_0
    if-ge p2, v3, :cond_0

    add-int/lit8 v5, p2, 0x1

    aget-object v6, p1, v5

    invoke-static {v6, v1}, Lcom/miui/powerkeeper/utils/Utils;->toInt(Ljava/lang/String;I)I

    move-result v6

    aput v6, v4, p2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move p2, v5

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/powerkeeper/utils/IrisServiceUtils;->getInstance(Landroid/content/Context;)Lcom/miui/powerkeeper/utils/IrisServiceUtils;

    move-result-object p1

    invoke-virtual {p1, v0, v4}, Lcom/miui/powerkeeper/utils/IrisServiceUtils;->irisConfigureSet(I[I)I

    move-result p1

    const-string p2, " ret="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic q(Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;)I
    .registers 1

    iget p0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mEnterHighFpsValue:I

    return p0
.end method

.method static bridge synthetic r(Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mFoldTopSmartApps:Landroid/util/ArrayMap;

    return-object p0
.end method

.method private recentTaskToHome()V
    .registers 3

    iget-boolean v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v0, :cond_0

    const-string v0, "DisplayFrameSetting"

    const-string v1, "recentTaskToHome"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsDuringGesture:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "recentTaskToHome mIsDuringGesture= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsDuringGesture:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgInfo:Lmiui/process/ForegroundInfo;

    invoke-virtual {p0, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->onForegroundChanged(Lmiui/process/ForegroundInfo;)V

    return-void
.end method

.method private registerActivityChangeListener()V
    .registers 4

    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mActListener:Lmiui/process/IActivityChangeListener$Stub;

    if-eqz v0, :cond_0

    const-string v0, "mActListener != null"

    invoke-direct {p0, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mActListener:Lmiui/process/IActivityChangeListener$Stub;

    invoke-static {v0}, Lmiui/process/ProcessManager;->unregisterActivityChanageListener(Lmiui/process/IActivityChangeListener;)V

    sget-object v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mLowFpsPkgList:Ljava/util/List;

    sget-object v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCameraActivityList:Ljava/util/List;

    iget-object v2, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mActListener:Lmiui/process/IActivityChangeListener$Stub;

    invoke-static {v0, v1, v2}, Lmiui/process/ProcessManager;->registerActivityChangeListener(Ljava/util/List;Ljava/util/List;Lmiui/process/IActivityChangeListener;)V

    :cond_0
    iget-boolean v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->IS_SUPPORTED_IRIS:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mVideoActListener:Lmiui/process/IActivityChangeListener$Stub;

    if-eqz v0, :cond_1

    const-string v0, "mVideoActListener != null"

    invoke-direct {p0, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mVideoActListener:Lmiui/process/IActivityChangeListener$Stub;

    invoke-static {v0}, Lmiui/process/ProcessManager;->unregisterActivityChanageListener(Lmiui/process/IActivityChangeListener;)V

    sget-object v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mExtremeVideoActivityList:Ljava/util/List;

    iget-object p0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mVideoActListener:Lmiui/process/IActivityChangeListener$Stub;

    const/4 v1, 0x0

    invoke-static {v1, v0, p0}, Lmiui/process/ProcessManager;->registerActivityChangeListener(Ljava/util/List;Ljava/util/List;Lmiui/process/IActivityChangeListener;)V

    :cond_1
    return-void
.end method

.method private registerCloudObserver()V
    .registers 4

    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudObserver:Lb/a;

    sget v1, Lb/b;->g:I

    new-instance v2, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting$15;

    invoke-direct {v2, p0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting$15;-><init>(Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;)V

    invoke-virtual {v0, v1, v2}, Lb/a;->u(ILb/a$d;)V

    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudObserver:Lb/a;

    sget v1, Lb/b;->h:I

    new-instance v2, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting$16;

    invoke-direct {v2, p0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting$16;-><init>(Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;)V

    invoke-virtual {v0, v1, v2}, Lb/a;->u(ILb/a$d;)V

    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudObserver:Lb/a;

    sget v1, Lb/b;->i:I

    new-instance v2, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting$17;

    invoke-direct {v2, p0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting$17;-><init>(Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;)V

    invoke-virtual {v0, v1, v2}, Lb/a;->u(ILb/a$d;)V

    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudObserver:Lb/a;

    sget v1, Lb/b;->j:I

    new-instance v2, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting$18;

    invoke-direct {v2, p0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting$18;-><init>(Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;)V

    invoke-virtual {v0, v1, v2}, Lb/a;->u(ILb/a$d;)V

    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudObserver:Lb/a;

    sget v1, Lb/b;->k:I

    new-instance v2, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting$19;

    invoke-direct {v2, p0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting$19;-><init>(Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;)V

    invoke-virtual {v0, v1, v2}, Lb/a;->u(ILb/a$d;)V

    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudObserver:Lb/a;

    sget v1, Lb/b;->l:I

    new-instance v2, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting$20;

    invoke-direct {v2, p0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting$20;-><init>(Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;)V

    invoke-virtual {v0, v1, v2}, Lb/a;->u(ILb/a$d;)V

    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudObserver:Lb/a;

    sget v1, Lb/b;->n:I

    new-instance v2, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting$21;

    invoke-direct {v2, p0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting$21;-><init>(Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;)V

    invoke-virtual {v0, v1, v2}, Lb/a;->u(ILb/a$d;)V

    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudObserver:Lb/a;

    sget v1, Lb/b;->o:I

    new-instance v2, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting$22;

    invoke-direct {v2, p0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting$22;-><init>(Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;)V

    invoke-virtual {v0, v1, v2}, Lb/a;->u(ILb/a$d;)V

    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudObserver:Lb/a;

    sget v1, Lb/b;->p:I

    new-instance v2, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting$23;

    invoke-direct {v2, p0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting$23;-><init>(Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;)V

    invoke-virtual {v0, v1, v2}, Lb/a;->u(ILb/a$d;)V

    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudObserver:Lb/a;

    sget v1, Lb/b;->J:I

    new-instance v2, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting$24;

    invoke-direct {v2, p0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting$24;-><init>(Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;)V

    invoke-virtual {v0, v1, v2}, Lb/a;->u(ILb/a$d;)V

    return-void
.end method

.method private registerDisplayScrollListener()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mWs:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mLowFpsSwitch:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mDsListener:Lcom/miui/whetstone/IDisplayScrollListener;

    invoke-interface {v0, p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->registerDisplayScroll(Lcom/miui/whetstone/IDisplayScrollListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "DisplayFrameSetting"

    const-string v0, "IWhetstoneActivityManager work abnormal"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private registerInputStatusCallBack()V
    .registers 3

    const-string v0, "DisplayFrameSetting"

    :try_start_0
    const-string v1, "registerInputStatusCallBack"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mWs:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-nez v1, :cond_0

    const-string p0, "mWs is null"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mImeStatusCallBack:Lcom/miui/whetstone/IImeCallBack;

    invoke-interface {v1, p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->registImeStatusCallBack(Lcom/miui/whetstone/IImeCallBack;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "IWhetstoneActivityManager work abnormal"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private registerReceiver(Z)V
    .registers 5

    iget-boolean v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsReciverRegistered:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerReceiver "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.miui.securitycenter.intent.action.TOP_GAME_LIST"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "intent.action.TOP_GAME_LIST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.xiaomi.joyose.HIGH_FPS_LIST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.miui.powerkeeper.CAMERA_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.miui.powerkeeper.set_fps"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    const-string p1, "com.miui.powerkeeper.RECENT_TASK"

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_1
    const-string p1, "com.xiaomi.joyose.OVERRIDE_GAME_FRESHRATE"

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "com.miui.powerkeeper.SET_ACTIVITY_FPS"

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsReciverRegistered:Z

    return-void
.end method

.method private registerVideoFpsCallBack()V
    .registers 3

    const-string v0, "DisplayFrameSetting"

    :try_start_0
    const-string v1, "register"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mWs:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-nez v1, :cond_0

    const-string p0, "mWs = null"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mVideoFpsCallBack:Lcom/miui/whetstone/IVideoFpsCallBack;

    invoke-interface {v1, p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->registVideoFpsCallBack(Lcom/miui/whetstone/IVideoFpsCallBack;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "IWhetstoneActivityManager work abnormal"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static bridge synthetic s(Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;)[Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mHighFpsListActivity:[Ljava/lang/String;

    return-object p0
.end method

.method public static setFpsAync(Ljava/lang/String;I)Z
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->setFpsAync(Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public static setFpsAync(Ljava/lang/String;II)Z
    .registers 5

    sget-object v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->sInstance:Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mParseInited:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {v0, p0, p1, p2}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->setFpsAyncInternal(Ljava/lang/String;II)V

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private setFpsAyncInternal(Ljava/lang/String;II)V
    .registers 6

    const/16 v0, 0xf

    const/4 v1, -0x1

    invoke-virtual {p0, v0, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    int-to-long p2, p3

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private setFpsList()V
    .registers 3

    sget-boolean v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsSmart:Z

    if-nez v0, :cond_2

    const-string v0, "true"

    sget-object v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsCustomFpsSwitch:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mUserFps:I

    const/16 v1, 0x78

    if-eq v0, v1, :cond_0

    const/16 v1, 0x90

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCustomApps:Landroid/util/ArrayMap;

    iput-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mTopApps:Landroid/util/ArrayMap;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsCustom:Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mTopDefineApps:Landroid/util/ArrayMap;

    iput-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mTopApps:Landroid/util/ArrayMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsCustom:Z

    :cond_2
    return-void
.end method

.method private setRefreshRateBetweenOpenAndFold(Z)V
    .registers 7

    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mFoldTopSmartApps:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const-string v1, "DisplayFrameSetting"

    if-eqz v0, :cond_4

    iget-boolean v2, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsCustom:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgPkg:Ljava/lang/String;

    iget v2, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentUid:I

    invoke-direct {p0, v0, v2}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->enableContinuous(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz p0, :cond_5

    const-string p0, "current app is not enable continuous"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->getSupportFps()[I

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->getTopAppsFps(Ljava/lang/String;ZZ)Landroid/util/ArrayMap;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgPkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-boolean v3, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIsFold="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " mCurrentFgPkg="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgPkg:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " mCurrentFps="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFps:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " mCurrentCookie="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentCookie:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " foldFps="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " mUserFps="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mUserFps:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " mCurrentUid="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentUid:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->getSuitableFps([II)I

    move-result p1

    iget v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mDefaultFps:I

    if-eq p1, v0, :cond_5

    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgPkg:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgPkg:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->getPkgCookie(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v0, p1, v1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->setScreenEffect(Ljava/lang/String;II)V

    return-void

    :cond_3
    iget-object p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgPkg:Ljava/lang/String;

    iget v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mUserFps:I

    iget-object v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgPkg:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->getPkgCookie(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->setScreenEffect(Ljava/lang/String;II)V

    return-void

    :cond_4
    :goto_0
    iget-boolean p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz p1, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currentApp is not foldTopApp list pkg="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgPkg:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mIsCustom="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsCustom:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " foldTopFps="

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method

.method private setScreenEffect(Ljava/lang/String;II)V
    .registers 20

    const-string v0, "lock_max_fps_mezo"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/preference/SettingsMezoHelper;->getIntofSettings(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    iget v4, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsUltimate:I

    const-string v5, "miui_refresh_rate"

    const/16 v6, 0xfe

    const/16 v7, 0xf7

    const/4 v8, 0x1

    if-ne v4, v8, :cond_2

    if-eq v3, v6, :cond_2

    if-eq v3, v7, :cond_2

    const-string v4, "com.android.camera"

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFps:I

    iget v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mUserFps:I

    if-eq v1, v2, :cond_1

    iget-object v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mUserFps:I

    invoke-static {v1, v5, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mUserFps:I

    iput v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFps:I

    :cond_1
    return-void

    :cond_2
    iget-boolean v4, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsWhitelistPolicy:Z

    const-string v9, " cookie="

    const-string v10, " fps="

    const-string v11, "setScreenEffect pkg="

    const/16 v12, 0x80

    const/16 v13, 0x3c

    const-string v14, "DisplayFrameSetting"

    const/4 v15, 0x0

    if-eqz v4, :cond_d

    if-ne v3, v7, :cond_3

    move v4, v7

    goto :goto_0

    :cond_3
    const/16 v4, 0xf5

    :goto_0
    iget-boolean v5, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->IS_ENABLE_SMART_DFPS:Z

    if-eqz v5, :cond_6

    iget v5, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentCookie:I

    if-ne v5, v7, :cond_4

    move v5, v8

    goto :goto_1

    :cond_4
    move v5, v15

    :goto_1
    if-ne v3, v7, :cond_5

    move v6, v8

    goto :goto_2

    :cond_5
    move v6, v15

    :goto_2
    if-eq v5, v6, :cond_6

    goto :goto_3

    :cond_6
    move v8, v15

    :goto_3
    iget v5, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mUserFps:I

    if-gt v5, v13, :cond_9

    iget v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFps:I

    if-ne v2, v5, :cond_8

    if-eqz v8, :cond_7

    goto :goto_4

    :cond_7
    const-string v0, "setScreenEffect ignore for user selected lower fps"

    invoke-static {v14, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8
    :goto_4
    invoke-direct {v0, v5, v4, v1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->setScreenEffectInternal(IILjava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScreenEffect for user selected lower fps cookie="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    return-void

    :cond_9
    if-le v2, v5, :cond_a

    move v2, v5

    :cond_a
    iget v5, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFps:I

    if-ne v2, v5, :cond_c

    iget v5, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentCookie:I

    if-eq v3, v5, :cond_b

    goto :goto_5

    :cond_b
    const-string v0, "setScreenEffect ignore for no change"

    invoke-static {v14, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    :goto_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    invoke-direct {v0, v2, v4, v1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->setScreenEffectInternal(IILjava/lang/String;)V

    return-void

    :cond_d
    iget v4, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentCookie:I

    const/16 v12, 0xf8

    if-ne v4, v12, :cond_e

    move v13, v8

    goto :goto_6

    :cond_e
    move v13, v15

    :goto_6
    if-ne v3, v12, :cond_f

    move v12, v8

    goto :goto_7

    :cond_f
    move v12, v15

    :goto_7
    if-eq v13, v12, :cond_10

    move v12, v8

    goto :goto_8

    :cond_10
    move v12, v15

    :goto_8
    if-ne v4, v6, :cond_11

    move v13, v8

    goto :goto_9

    :cond_11
    move v13, v15

    :goto_9
    if-ne v3, v6, :cond_12

    goto :goto_a

    :cond_12
    move v8, v15

    :goto_a
    if-eq v13, v8, :cond_13

    const/4 v8, 0x1

    goto :goto_b

    :cond_13
    move v8, v15

    :goto_b
    if-ne v4, v7, :cond_14

    const/4 v13, 0x1

    goto :goto_c

    :cond_14
    move v13, v15

    :goto_c
    if-ne v3, v7, :cond_15

    const/4 v7, 0x1

    goto :goto_d

    :cond_15
    move v7, v15

    :goto_d
    if-eq v13, v7, :cond_16

    const/4 v7, 0x1

    goto :goto_e

    :cond_16
    move v7, v15

    :goto_e
    const/16 v13, 0xfc

    if-ne v4, v13, :cond_17

    const/4 v4, 0x1

    goto :goto_f

    :cond_17
    move v4, v15

    :goto_f
    if-ne v3, v13, :cond_18

    const/4 v13, 0x1

    goto :goto_10

    :cond_18
    move v13, v15

    :goto_10
    if-eq v4, v13, :cond_19

    const/4 v4, 0x1

    goto :goto_11

    :cond_19
    move v4, v15

    :goto_11
    iget-boolean v13, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->IS_ENABLE_SMART_DFPS:Z

    if-eqz v13, :cond_1b

    if-nez v12, :cond_1a

    if-nez v8, :cond_1a

    if-nez v7, :cond_1a

    if-eqz v4, :cond_1b

    :cond_1a
    const/4 v4, 0x1

    goto :goto_12

    :cond_1b
    move v4, v15

    :goto_12
    iget-boolean v12, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->SF_ENBALE_AFFINITY:Z

    if-eqz v12, :cond_1d

    if-eqz v8, :cond_1d

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "notifySFCookie cookie ="

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v14, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v3, v6, :cond_1c

    invoke-direct {v0, v15}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->notifySFCPUCluster(I)V

    goto :goto_13

    :cond_1c
    const/4 v8, 0x1

    invoke-direct {v0, v8}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->notifySFCPUCluster(I)V

    :cond_1d
    :goto_13
    iget v8, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mUserFps:I

    const/16 v12, 0x3c

    if-gt v8, v12, :cond_1f

    if-nez v4, :cond_1f

    const/16 v4, 0xf7

    if-eq v3, v4, :cond_1f

    iget v4, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFps:I

    if-ne v4, v8, :cond_1f

    iget-boolean v4, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsLowFps:Z

    if-nez v4, :cond_1f

    if-eq v3, v6, :cond_1f

    const-string v1, "setScreenEffect ignore for user selected lower FPS"

    invoke-direct {v0, v1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    sget-boolean v1, Lcom/miui/powerkeeper/utils/PowerLog;->V:Z

    if-eqz v1, :cond_1e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScreenEffect user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mUserFps:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", c:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFps:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", cookie:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Lcom/miui/powerkeeper/utils/PowerLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1e
    iput v3, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentCookie:I

    return-void

    :cond_1f
    if-le v2, v8, :cond_21

    const/16 v4, 0xf7

    if-eq v3, v4, :cond_21

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fps > mUserFps fps = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " MAX_SUPPORT_FPS = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->MAX_SUPPORT_FPS:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " mUserFps = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mUserFps:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x90

    if-lt v2, v4, :cond_20

    iget v6, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->MAX_SUPPORT_FPS:I

    if-lt v6, v4, :cond_20

    iget v4, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mUserFps:I

    const/16 v6, 0x78

    if-eq v4, v6, :cond_21

    :cond_20
    const-string v2, "setScreenEffect force fps down to user selected"

    invoke-direct {v0, v2}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    iget v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mUserFps:I

    :cond_21
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v6, 0x80

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    iget-boolean v4, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->FPS_SWITCH_DEFAULT:Z

    const/16 v6, 0x18

    if-eqz v4, :cond_23

    iget-object v4, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-boolean v4, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->IS_ENABLE_SMART_DFPS:Z

    if-eqz v4, :cond_22

    if-eqz v7, :cond_22

    invoke-static {}, Lmiui/hardware/display/DisplayFeatureManager;->getInstance()Lmiui/hardware/display/DisplayFeatureManager;

    move-result-object v4

    invoke-virtual {v4, v6, v2, v3}, Lmiui/hardware/display/DisplayFeatureManager;->setScreenEffect(III)V

    :cond_22
    iget-boolean v4, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->IS_ENABLE_SMART_DFPS:Z

    if-eqz v4, :cond_24

    iget-boolean v4, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->IS_ENABLE_CONTENT_DETECTION:Z

    if-eqz v4, :cond_24

    invoke-direct {v0, v3, v2, v1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->notifySFIfpsMode(IILjava/lang/String;)V

    iget-boolean v4, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v4, :cond_24

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifySFIfpsMode run cookie="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "fps="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    :cond_23
    invoke-static {}, Lmiui/hardware/display/DisplayFeatureManager;->getInstance()Lmiui/hardware/display/DisplayFeatureManager;

    move-result-object v1

    invoke-virtual {v1, v6, v2, v3}, Lmiui/hardware/display/DisplayFeatureManager;->setScreenEffect(III)V

    :cond_24
    :goto_14
    iput v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFps:I

    iput v3, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentCookie:I

    return-void
.end method

.method private setScreenEffectInternal(IILjava/lang/String;)V
    .registers 7

    iget-boolean v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->FPS_SWITCH_DEFAULT:Z

    const/16 v1, 0x18

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFps:I

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "miui_refresh_rate"

    invoke-static {v0, v2, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    iget v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentCookie:I

    if-eq v0, p2, :cond_2

    invoke-static {}, Lmiui/hardware/display/DisplayFeatureManager;->getInstance()Lmiui/hardware/display/DisplayFeatureManager;

    move-result-object v0

    invoke-virtual {v0, v1, p1, p2}, Lmiui/hardware/display/DisplayFeatureManager;->setScreenEffect(III)V

    iget-boolean v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->IS_ENABLE_SMART_DFPS:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->IS_ENABLE_CONTENT_DETECTION:Z

    if-eqz v0, :cond_2

    invoke-direct {p0, p2, p1, p3}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->notifySFDfpsMode(IILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WhitelistPolicy notifySFDfpsMode run cookie="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "fps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lmiui/hardware/display/DisplayFeatureManager;->getInstance()Lmiui/hardware/display/DisplayFeatureManager;

    move-result-object p3

    invoke-virtual {p3, v1, p1, p2}, Lmiui/hardware/display/DisplayFeatureManager;->setScreenEffect(III)V

    :cond_2
    :goto_0
    iput p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFps:I

    iput p2, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentCookie:I

    return-void
.end method

.method static bridge synthetic t(Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;)Lcom/miui/whetstone/IImeCallBack;
    .registers 1

    iget-object p0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mImeStatusCallBack:Lcom/miui/whetstone/IImeCallBack;

    return-object p0
.end method

.method static bridge synthetic u(Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;)I
    .registers 1

    iget p0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsExtremeVideoModeOn:I

    return p0
.end method

.method private unRegisterInputStatusCallBack()V
    .registers 3

    const-string v0, "DisplayFrameSetting"

    :try_start_0
    const-string v1, "unRegisterInputStatusCallBack"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mWs:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-nez v1, :cond_0

    const-string p0, "mWs is null"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mImeStatusCallBack:Lcom/miui/whetstone/IImeCallBack;

    invoke-interface {v1, p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->unRegistImeStatusCallBack(Lcom/miui/whetstone/IImeCallBack;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "IWhetstoneActivityManager work abnormal"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private unRegisterVideoFpsCallBack()V
    .registers 3

    const-string v0, "DisplayFrameSetting"

    :try_start_0
    const-string v1, "unregister"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mWs:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-nez v1, :cond_0

    const-string p0, "mWs = null"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mVideoFpsCallBack:Lcom/miui/whetstone/IVideoFpsCallBack;

    invoke-interface {v1, p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->unRegistVideoFpsCallBack(Lcom/miui/whetstone/IVideoFpsCallBack;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "IWhetstoneActivityManager work abnormal"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private unregisterDisplayScrollListener()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mWs:Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mDsListener:Lcom/miui/whetstone/IDisplayScrollListener;

    invoke-interface {v0, p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->unregisterDisplayScroll(Lcom/miui/whetstone/IDisplayScrollListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "DisplayFrameSetting"

    const-string v0, "IWhetstoneActivityManager work abnormal"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private unregisterReceiver()V
    .registers 4

    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsReciverRegistered:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsReciverRegistered:Z

    iget-object v2, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-boolean v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mSystemUiDefineChange:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSystemUiDefineChange "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mSystemUiDefineChange:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mSystemUiDefineChange:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private updateCustomDataBase(Ljava/lang/String;)V
    .registers 5

    const-string v0, "true"

    sget-object v1, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsCustomFpsSwitch:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    aget-object v0, p1, v0

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add pkg = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCustomApps:Landroid/util/ArrayMap;

    aget-object p1, p1, v1

    const/16 v1, 0x3c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove pkg = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCustomApps:Landroid/util/ArrayMap;

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCustomApps:Landroid/util/ArrayMap;

    iput-object p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mTopApps:Landroid/util/ArrayMap;

    :cond_1
    return-void
.end method

.method private updateForegroundInfo(Lmiui/process/ForegroundInfo;)V
    .registers 5

    const-string v0, "DisplayFrameSetting"

    if-eqz p1, :cond_4

    iget-object v1, p1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateForegroundInfo curInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentDefaultDisplayInfo:Lmiui/process/ForegroundInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", newInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget v0, p1, Lmiui/process/ForegroundInfo;->mForegroundDisplayId:I

    if-nez v0, :cond_2

    iput-object p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentDefaultDisplayInfo:Lmiui/process/ForegroundInfo;

    return-void

    :cond_2
    iget-boolean v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsIndependentRearDevice:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iput-object p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentBackDisplayInfo:Lmiui/process/ForegroundInfo;

    :cond_3
    return-void

    :cond_4
    :goto_0
    const-string p0, "ignore updateForegroundInfo for invalid update"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateIrisState(Ljava/lang/String;Z)V
    .registers 3

    if-eqz p2, :cond_1

    sget-object p2, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mExtremeVideoPackageList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mSdr2HdrParam:[Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->processParam(I[Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object p2, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mExtremeVideoActivityList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_2

    :goto_0
    return-void

    :cond_2
    iget-object p2, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mMemcParam:[Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->processParam(I[Ljava/lang/String;)V

    iget-object p0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "video_iris_status"

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static updateRefreshRate(Landroid/content/Context;)V
    .registers 5

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "user_refresh_rate"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x3c

    if-ne v0, v3, :cond_1

    const-string v0, "support_smart_fps"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "smart_fps_value"

    const/16 v2, 0x78

    invoke-static {v0, v2}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_0
    const-string v0, "defaultFps"

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v0

    :cond_1
    :goto_0
    const-string v2, "DisplayFrameSetting"

    if-le v0, v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reset miui refresh with "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "miui_refresh_rate"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_2
    const-string p0, "ignore reset miui refresh for other limit"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static bridge synthetic v(Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsOnScroll:Z

    return p0
.end method

.method static bridge synthetic w(Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsSupportLowFps:Z

    return p0
.end method

.method private writeLocalLog(Ljava/lang/String;)V
    .registers 3

    iget-boolean v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v0, :cond_0

    const-string v0, "DisplayFrameSetting"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {p0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic x(Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;)I
    .registers 1

    iget p0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsUltimate:I

    return p0
.end method

.method static bridge synthetic y(Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;)Landroid/util/LocalLog;
    .registers 1

    iget-object p0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mLocalLog:Landroid/util/LocalLog;

    return-object p0
.end method

.method static bridge synthetic z(Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mParseInited:Z

    return p0
.end method


# virtual methods
.method public GameSceneChange(Ljava/lang/String;I)V
    .registers 5

    const-string v0, "DisplayFrameSetting"

    if-nez p2, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsEnterGameScene:Z

    iput-object p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mGameVideoScenePkg:Ljava/lang/String;

    iget-object p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgInfo:Lmiui/process/ForegroundInfo;

    invoke-virtual {p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->onForegroundChanged(Lmiui/process/ForegroundInfo;)V

    iget-boolean p0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Game Scene Change enter model="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsEnterGameScene:Z

    iget-object p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgInfo:Lmiui/process/ForegroundInfo;

    invoke-virtual {p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->onForegroundChanged(Lmiui/process/ForegroundInfo;)V

    iget-boolean p0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Game Scene Change exit model="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public VideoSceneChange(Ljava/lang/String;I)V
    .registers 5

    const/4 v0, 0x2

    const-string v1, "DisplayFrameSetting"

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsEnterVideoScene:Z

    iput-object p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mGameVideoScenePkg:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Video Scene Change enter model="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsEnterVideoScene:Z

    iget-boolean p0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Video Scene Change exit model="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method destroy()V
    .registers 3

    const-string v0, "DisplayFrameSetting"

    const-string v1, "destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mSystemUiDefineChange:Z

    invoke-direct {p0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->unregisterReceiver()V

    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mAudioRecordingCallback:Landroid/media/AudioManager$AudioRecordingCallback;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterAudioRecordingCallback(Landroid/media/AudioManager$AudioRecordingCallback;)V

    invoke-static {}, Lcom/miui/powerkeeper/PowerKeeperManager;->getInstance()Lcom/miui/powerkeeper/PowerKeeperManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/powerkeeper/PowerKeeperManager;->getEventsAggregator()Lcom/miui/powerkeeper/event/EventsAggregator;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/miui/powerkeeper/event/EventsAggregator;->unregisterForDockedStack(Landroid/os/Handler;)V

    invoke-virtual {v0, p0}, Lcom/miui/powerkeeper/event/EventsAggregator;->unregisterForPkgExistentState(Landroid/os/Handler;)V

    invoke-virtual {v0, p0}, Lcom/miui/powerkeeper/event/EventsAggregator;->unregisterForScreenOn(Landroid/os/Handler;)V

    invoke-virtual {v0, p0}, Lcom/miui/powerkeeper/event/EventsAggregator;->unregisterForScreenOff(Landroid/os/Handler;)V

    invoke-virtual {v0, p0}, Lcom/miui/powerkeeper/event/EventsAggregator;->unregisterForUserPresent(Landroid/os/Handler;)V

    invoke-virtual {v0, p0}, Lcom/miui/powerkeeper/event/EventsAggregator;->unregisterForForegroundInfo(Landroid/os/Handler;)V

    invoke-virtual {v0, p0}, Lcom/miui/powerkeeper/event/EventsAggregator;->unregisterBatteryLevelListener(Landroid/os/Handler;)V

    invoke-virtual {v0, p0}, Lcom/miui/powerkeeper/event/EventsAggregator;->unregisterForCharging(Landroid/os/Handler;)V

    invoke-virtual {v0, p0}, Lcom/miui/powerkeeper/event/EventsAggregator;->unregisterPowerModeListener(Landroid/os/Handler;)V

    invoke-virtual {v0, p0}, Lcom/miui/powerkeeper/event/EventsAggregator;->unregisterForCarScreenInfo(Landroid/os/Handler;)V

    iget-boolean v1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsIndependentRearDevice:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Lcom/miui/powerkeeper/event/EventsAggregator;->unregisterForSubScreenOn(Landroid/os/Handler;)V

    invoke-virtual {v0, p0}, Lcom/miui/powerkeeper/event/EventsAggregator;->unregisterForSubScreenOff(Landroid/os/Handler;)V

    :cond_0
    invoke-direct {p0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->unRegisterInputStatusCallBack()V

    invoke-direct {p0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->unRegisterVideoFpsCallBack()V

    iget-boolean v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->IS_SUPPORTED_IRIS:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iget-object p0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    :cond_1
    return-void
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1, p2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "fpsconfig mConfigType="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p3, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mConfigType:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "fpsconfig mConfigVersion="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mConfigVersion:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "fpsconfig mPrivGames="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mPrivGames:Landroid/util/ArrayMap;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "fpsconfig mDefaultGameApp(60):"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mDefaultGameApp:Landroid/util/ArraySet;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "fpsconfig mTopApps="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mTopApps:Landroid/util/ArrayMap;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "fpsconfig mFoldTopApps="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mFoldTopApps:Landroid/util/ArrayMap;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "fpsconfig mVideoApps(60):"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mVideoApps:Landroid/util/ArraySet;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "fpsconfig mExcludeApps="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mExcludeApps:Landroid/util/ArraySet;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "fpsconfig mEbookidleApps="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mEbookidleApps:Landroid/util/ArraySet;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "fpsconfig mTpidleApps="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mTpidleApps:Landroid/util/ArraySet;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "fpsconfig mIsTpIdleSwitch="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsTpIdleSwitch:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "fpsconfig mInputApps="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mInputApps:Landroid/util/ArrayMap;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "fpsconfig mLowFpsPkgList="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mLowFpsPkgList:Ljava/util/List;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "fpsconfig mCameraActivityList="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCameraActivityList:Ljava/util/List;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "fpsconfig mShortVideoApps="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mShortVideoApps:Ljava/util/List;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "fpsconfig mVideoIdleApps="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mVideoIdleApps:Landroid/util/ArraySet;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "fpsconfig mPromotionApps="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mPromotionApps:Landroid/util/ArraySet;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "fpsconfig mDisplayFpsApps="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mDisplayFpsApps:Landroid/util/ArraySet;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "fpsconfig mCustomApps="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCustomApps:Landroid/util/ArrayMap;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "fpsconfig mFullScreenFpsApps="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mFullScreenFpsApps:Landroid/util/ArraySet;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "fpsconfig mVideoLowerFpsApps(24)="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mVideoLowerFpsApps:Landroid/util/ArraySet;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "fpsconfig mMapFpsApps="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mMapFpsApps:Landroid/util/ArraySet;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "fpsconfig mAutoModeApps="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mAutoModeApps:Landroid/util/ArraySet;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "fpsconfig mIdleExcludedApps="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIdleExcludedApps:Landroid/util/ArraySet;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "fpsconfig mVrrApps="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mVrrApps:Landroid/util/ArraySet;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "fpsconfig mCloudControlStatus="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCloudControlStatus:Landroid/util/ArrayMap;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "fpsconfig mExtremeVideoActivityList="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mExtremeVideoActivityList:Ljava/util/List;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "fpsconfig mExtremeVideoPackageList="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mExtremeVideoPackageList:Ljava/util/List;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "fpsconfig mIsWhiteFpsList="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsWhiteFpsList:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "fpsconfig mIsCustomFpsSwitch="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsCustomFpsSwitch:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "fpsconfig mIsCustom="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsCustom:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "fpsconfig mHighestFpsSwitch="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mHighestFpsSwitch:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "fpsconfig mDefineHighestFpsApps="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mDefineHighestFpsApps:Landroid/util/ArraySet;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "fpsconfig mCustomHighestFpsApps="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCustomHighestFpsApps:Landroid/util/ArraySet;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "fpsconfig mCarInfoTrigFpsSwitch="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCarInfoTrigFpsSwitch:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "fpsconfig isEnterCarSettingState="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->isEnterCarSettingState:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "fpsconfig mCameraThirdWhitelist="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCameraThirdWhitelist:[Ljava/lang/String;

    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "fpsconfig mCookieNotifyReserveList="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCookieNotifyReserveList:Landroid/util/ArraySet;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "fpsconfig mIsIndependentRearDevice="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsIndependentRearDevice:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ", mBackScreenEnhance="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mBackScreenEnhance:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "fpsconfig enabledDid="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurScreenEnabledId:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", mainScreen="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsMainScreenOn:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ", backScreen="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsBackScreenOn:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mBackScreenEnhance:Z

    if-nez p1, :cond_0

    sget-boolean p1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz p1, :cond_2

    :cond_0
    iget-object p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentDefaultDisplayInfo:Lmiui/process/ForegroundInfo;

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "fpsconfig mCurrentDefaultDisplayInfoPkg = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentDefaultDisplayInfo:Lmiui/process/ForegroundInfo;

    iget-object p3, p3, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentBackDisplayInfo:Lmiui/process/ForegroundInfo;

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "fpsconfig mCurrentBackDisplayInfoPkg = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentBackDisplayInfo:Lmiui/process/ForegroundInfo;

    iget-object p3, p3, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    sget-boolean p1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCarScreenInfo:Lcom/miui/powerkeeper/utils/ScreenStateObserver$CarScreenInfo;

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "fpsconfig mCarScreenInfo = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCarScreenInfo:Lcom/miui/powerkeeper/utils/ScreenStateObserver$CarScreenInfo;

    invoke-virtual {p0}, Lcom/miui/powerkeeper/utils/ScreenStateObserver$CarScreenInfo;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public getCurrentFps()I
    .registers 1

    iget p0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFps:I

    return p0
.end method

.method public getMaxFPS()I
    .registers 2

    invoke-direct {p0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->getSupportFps()[I

    move-result-object v0

    iget p0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mDefaultFps:I

    invoke-static {v0, p0}, Lcom/miui/powerkeeper/utils/Utils;->getArrayMaxMember([II)I

    move-result p0

    return p0
.end method

.method public getUserFps()I
    .registers 4

    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "user_refresh_rate"

    const/4 v2, -0x1

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v2, :cond_1

    const-string p0, "support_smart_fps"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "smart_fps_value"

    const/16 v0, 0x78

    invoke-static {p0, v0}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_0
    const-string p0, "defaultFps"

    const/16 v0, 0x3c

    invoke-static {p0, v0}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result p0

    :cond_1
    return p0
.end method

.method public getmUserFps()I
    .registers 1

    iget p0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mUserFps:I

    return p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    const-string v3, "DisplayFrameSetting"

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "msg="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v2, v1, Landroid/os/Message;->what:I

    const/16 v4, -0x16

    if-eq v2, v4, :cond_69

    const/16 v4, -0x14

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v2, v4, :cond_63

    const/16 v4, 0xf

    const-string v7, " fps="

    const/16 v8, 0x11

    if-eq v2, v4, :cond_5e

    const/16 v4, -0x9

    if-eq v2, v4, :cond_5d

    const/4 v4, -0x8

    if-eq v2, v4, :cond_5b

    const/4 v4, -0x7

    const-string v9, "com.android.camera"

    if-eq v2, v4, :cond_54

    const/4 v4, -0x5

    if-eq v2, v4, :cond_50

    const/4 v4, -0x4

    const/16 v10, 0xf4

    const/16 v11, 0xf5

    if-eq v2, v4, :cond_49

    packed-switch v2, :pswitch_data_0

    const/16 v12, 0xfc

    const-string v13, ""

    const/4 v14, 0x2

    const-string v15, "key_top_names"

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_1

    const/4 v7, 0x3

    packed-switch v2, :pswitch_data_2

    packed-switch v2, :pswitch_data_3

    packed-switch v2, :pswitch_data_4

    goto :goto_f

    :pswitch_0  #0x35
    iget v1, v1, Landroid/os/Message;->arg1:I

    invoke-direct {v0, v1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->notifyINChange(I)V

    return-void

    :pswitch_1  #0x34
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    iget-object v1, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsFold:Z

    invoke-direct {v0, v1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->setRefreshRateBetweenOpenAndFold(Z)V

    return-void

    :pswitch_2  #0x33
    iget-boolean v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v2, :cond_1

    const-string v2, "MSG_FPS_FUN_STATE"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->parseFpsFunStateFromDb(Ljava/lang/String;)V

    return-void

    :pswitch_3  #0x32
    iget-boolean v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v2, :cond_2

    const-string v2, "MSG_HIGHEST_FPS_SWITCH"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mDefineHighestFpsApps:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    iget-object v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCustomHighestFpsApps:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1, v4}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->parseHighestFpsAppFromDb(Ljava/lang/String;Landroid/util/ArraySet;)V

    return-void

    :pswitch_4  #0x31
    iget-boolean v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v1, :cond_3

    const-string v1, "MSG_INIT"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-direct {v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->parseInit()V

    return-void

    :pswitch_5  #0x30
    iget-boolean v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v1, :cond_4

    const-string v1, "MSG_HIGH_FPS_NOTIFY"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-direct {v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->onHighFpsSendNotify()V

    return-void

    :pswitch_6  #0x2f
    iget-boolean v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v1, :cond_5

    const-string v1, "MSG_EXTREME_SCENE_CHANGED"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mRealRefreshRate:F

    const/high16 v2, 0x42700000

    cmpl-float v1, v1, v2

    if-lez v1, :cond_6

    goto :goto_f

    :cond_6
    iput-boolean v6, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mHasIrisCommandSet:Z

    invoke-direct {v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->onExtremeSceneChanged()V

    return-void

    :pswitch_7  #0x2e
    iget-boolean v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v1, :cond_7

    const-string v1, "MSG_UPDATE_SDR2HDR_STATE"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgPkg:Ljava/lang/String;

    invoke-direct {v0, v1, v6}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->updateIrisState(Ljava/lang/String;Z)V

    return-void

    :pswitch_8  #0x2d
    iget-boolean v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v1, :cond_8

    const-string v1, "MSG_SWTICH_TO_IRIS_PQ"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-boolean v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsIrisPQOn:Z

    if-nez v1, :cond_68

    iget-boolean v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v1, :cond_9

    const-string v1, "Set iris pq on"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iput-boolean v6, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsIrisPQOn:Z

    iget-object v0, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/powerkeeper/utils/IrisServiceUtils;->getInstance(Landroid/content/Context;)Lcom/miui/powerkeeper/utils/IrisServiceUtils;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/miui/powerkeeper/utils/IrisServiceUtils;->irisConfigureSet(I)I

    return-void

    :pswitch_9  #0x2c
    iget-boolean v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v1, :cond_a

    const-string v1, "MSG_UPDATE_MEMC_STATE"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iget-object v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurExtremeVideoActivity:Ljava/lang/String;

    invoke-direct {v0, v1, v5}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->updateIrisState(Ljava/lang/String;Z)V

    return-void

    :pswitch_a  #0x2b
    sget-object v2, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mExtremeVideoPackageList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mDuelMemcPackage:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mSingleMemcPackage:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    sget-object v2, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mExtremeVideoActivityList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->parseIrisConfigFromDb(Ljava/lang/String;)V

    return-void

    :pswitch_b  #0x2a
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->parseNoteSwitchFromDb(Ljava/lang/String;)V

    return-void

    :pswitch_c  #0x29
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->parseFossSwitchFromDb(Ljava/lang/String;)V

    return-void

    :pswitch_d  #0x28
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->parseViolentModeSwitchFromDb(Ljava/lang/String;)V

    return-void

    :pswitch_e  #0x27
    iget-boolean v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v2, :cond_b

    const-string v2, "MSG_AUTOMODE_VRR"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mAutoModeApps:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    iget-object v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIdleExcludedApps:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    iget-object v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mVrrApps:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1, v4}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->parseAutoModeVrrAppFromDb(Ljava/lang/String;Landroid/util/ArraySet;)V

    return-void

    :pswitch_f  #0x26
    iget-boolean v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v2, :cond_c

    const-string v2, "MSG_MAP_SWITCH"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    iget-object v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mMapFpsApps:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1, v4}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->parseMapFpsAppFromDb(Ljava/lang/String;Landroid/util/ArraySet;)V

    return-void

    :pswitch_10  #0x25
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->parseCustomModeSwitchFromDb(Ljava/lang/String;)V

    return-void

    :pswitch_11  #0x24
    iget-boolean v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v2, :cond_d

    const-string v2, "MSG_FULL_SCREEN_SWITCH"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iget-object v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mFullScreenFpsApps:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    iget-object v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mVideoLowerFpsApps:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1, v4}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->parseFullScreenFpsAppFromDb(Ljava/lang/String;Landroid/util/ArraySet;)V

    return-void

    :pswitch_12  #0x23
    iget-boolean v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v2, :cond_e

    const-string v2, "MSG_DISPLAY_FPS_LIST"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    iget-object v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mDisplayFpsApps:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1, v4}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->parseDisplayFpsAppFromDb(Ljava/lang/String;Landroid/util/ArraySet;)V

    return-void

    :pswitch_13  #0x22
    iget-boolean v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v2, :cond_f

    const-string v2, "MSG_PROMOTION_LIST"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    iget-object v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mPromotionApps:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1, v4}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->parsePromotionAppFromDb(Ljava/lang/String;Landroid/util/ArraySet;)V

    return-void

    :pswitch_14  #0x21
    iget-boolean v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v1, :cond_10

    const-string v1, "MSG_FOREGROUND_CHANGE_ACTIVITY"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    iput-boolean v6, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsBlackList:Z

    iget-object v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgInfo:Lmiui/process/ForegroundInfo;

    invoke-virtual {v0, v1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->onForegroundChanged(Lmiui/process/ForegroundInfo;)V

    return-void

    :pswitch_15  #0x20
    iget-boolean v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v2, :cond_11

    const-string v2, "MSG_RESET_VIDEO_IDLE_LIST"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    iget-object v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mVideoIdleApps:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1, v4}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->parseTopVideoIdleAppFromDb(Ljava/lang/String;Landroid/util/ArraySet;)V

    return-void

    :pswitch_16  #0x1e
    iget-boolean v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v2, :cond_12

    const-string v2, "MSG_RESET_SHORT_VIDEO_TOP_LIST"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    sget-object v2, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mShortVideoApps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1, v4}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->parseTopShortVideoAppFromDb(Ljava/lang/String;Landroid/util/ArraySet;)V

    return-void

    :pswitch_17  #0x1d
    iget-boolean v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v1, :cond_13

    const-string v1, "MSG_NOTIFY_VEDIO_IDLE_STATUS"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    invoke-direct {v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->notifySFIChange()V

    return-void

    :pswitch_18  #0x1c
    iget-boolean v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v2, :cond_14

    const-string v2, "MSG_LOW_FPS_LIST"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    sget-object v2, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCameraActivityList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    sget-object v2, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mLowFpsPkgList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1, v4}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->parseLowFpsAppFromDb(Ljava/lang/String;Landroid/util/ArraySet;)V

    return-void

    :pswitch_19  #0x1b
    iget-boolean v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v2, :cond_15

    const-string v2, "MSG_INPUT_IN_LIST"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    iget-object v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mInputApps:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    iget-object v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mAudioApps:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1, v4}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->parseInputAppFromDb(Ljava/lang/String;Landroid/util/ArraySet;)V

    return-void

    :pswitch_1a  #0x1a
    iget-boolean v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v1, :cond_16

    const-string v1, "MSG_INPUT_IN_CHANGE"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    iget-object v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgInfo:Lmiui/process/ForegroundInfo;

    invoke-virtual {v0, v1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->onForegroundChanged(Lmiui/process/ForegroundInfo;)V

    return-void

    :pswitch_1b  #0x19
    iget-boolean v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v2, :cond_17

    const-string v2, "MSG_RESET_TOP_SMART_LIST"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1, v4}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->parseTopSmartAppFromDb(Ljava/lang/String;Landroid/util/ArraySet;)V

    return-void

    :pswitch_1c  #0x18
    iget-boolean v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v2, :cond_18

    const-string v2, "MSG_TP_IDLE_LIST"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    iget-object v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mTpidleApps:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1, v4}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->parseTpIdleAppFromDb(Ljava/lang/String;Landroid/util/ArraySet;)V

    return-void

    :pswitch_1d  #0x17
    iget-boolean v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v2, :cond_19

    const-string v2, "MSG_EBOOK_IDLE_LIST"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    iget-object v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mEbookidleApps:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1, v4}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->parseEbookIdleAppFromDb(Ljava/lang/String;Landroid/util/ArraySet;)V

    return-void

    :pswitch_1e  #0x15
    iget-boolean v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v2, :cond_1a

    const-string v2, "MSG_SMART_BACKLIGHT_MODE_LIST"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->parseBacklightAppFromDb(Ljava/lang/String;)V

    return-void

    :pswitch_1f  #0x14
    iget-boolean v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v2, :cond_1b

    const-string v2, "MSG_RESET_EYE_MODE_LIST"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1, v4}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->parseEyeAppFromDb(Ljava/lang/String;Landroid/util/ArraySet;)V

    return-void

    :pswitch_20  #0x13
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_68

    iget-boolean v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v2, :cond_1c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSG_NOTIFY_GESTURE, gesture:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    const/16 v2, 0x30

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    const-string v2, "gesture_start"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    iget-boolean v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->FPS_SWITCH_DEFAULT:Z

    if-nez v1, :cond_1d

    iget-boolean v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsLockScreen:Z

    if-eqz v1, :cond_1d

    iget-object v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgPkg:Ljava/lang/String;

    iget-object v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->LAUNCHER_PKG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSG_NOTIFY_GESTURE, is in lock, no listen gesture_start mCurrentFgPkg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgPkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    return-void

    :cond_1d
    iget-object v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgPkg:Ljava/lang/String;

    iget-object v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->LAUNCHER_PKG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    invoke-direct {v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->appToHomeGestrueStart()V

    return-void

    :cond_1e
    iget-boolean v0, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v0, :cond_68

    const-string v0, "MSG_NOTIFY_GESTURE, fg is home, no gesture_start"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1f
    const-string v2, "to_app"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    const-string v2, "to_one_hand"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    const-string v2, "gesture_end"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_68

    :cond_20
    iget-object v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgPkg:Ljava/lang/String;

    iget-object v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->LAUNCHER_PKG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    invoke-direct {v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->appToAppGestrue()V

    return-void

    :cond_21
    iget-boolean v0, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v0, :cond_68

    const-string v0, "MSG_NOTIFY_GESTURE, fg is home, no to_app"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_21  #0x12
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget v1, v1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_24

    if-ne v1, v6, :cond_22

    goto :goto_0

    :cond_22
    if-eq v1, v14, :cond_23

    if-ne v1, v7, :cond_68

    :cond_23
    invoke-virtual {v0, v2, v1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->VideoSceneChange(Ljava/lang/String;I)V

    return-void

    :cond_24
    :goto_0
    invoke-virtual {v0, v2, v1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->GameSceneChange(Ljava/lang/String;I)V

    return-void

    :pswitch_22  #0x11
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_68

    const-string v2, "delayed_am_stop"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, ", msgObj:"

    const-string v5, ", mIsDuringGesture:"

    const-string v6, ",mCurrentFgPkg:"

    if-eqz v2, :cond_26

    iget-boolean v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v2, :cond_25

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleDelayedMessage MSG_NOTIFY_AM_STOP mPrevFgPkg:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mPrevFgPkg:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgPkg:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsDuringGesture:Z

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    invoke-virtual {v0, v8}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsDuringGesture:Z

    if-nez v1, :cond_68

    iget-object v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->notifyAMStop(Ljava/lang/String;)V

    return-void

    :cond_26
    iget-boolean v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v2, :cond_27

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleMessage MSG_NOTIFY_AM_STOP mPrevFgPkg:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mPrevFgPkg:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgPkg:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsDuringGesture:Z

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    iget-boolean v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsDuringGesture:Z

    if-nez v2, :cond_68

    iget-object v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mPrevFgPkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_68

    iget-object v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->notifyAMStop(Ljava/lang/String;)V

    return-void

    :pswitch_23  #0xc
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-direct {v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->getSupportFps()[I

    move-result-object v4

    iget v1, v1, Landroid/os/Message;->arg1:I

    invoke-direct {v0, v4, v1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->getSuitableFps([II)I

    move-result v1

    iget-boolean v4, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v4, :cond_28

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSG_OVERRIDE_GAME_FRESHRATE app="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    iget-object v3, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mPrivGames:Landroid/util/ArrayMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgInfo:Lmiui/process/ForegroundInfo;

    if-eqz v1, :cond_2a

    iget-object v1, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    if-eqz v1, :cond_2a

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    goto :goto_1

    :cond_29
    iget-object v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgInfo:Lmiui/process/ForegroundInfo;

    invoke-virtual {v0, v1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->onForegroundChanged(Lmiui/process/ForegroundInfo;)V

    return-void

    :cond_2a
    :goto_1
    const-string v1, "MSG_OVERRIDE_GAME_FRESHRATE break"

    invoke-direct {v0, v1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    return-void

    :pswitch_24  #0xb
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsEnterRecentTask:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSG_RECENT_TASK isEnter="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " mCurrentFgInfo="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgInfo:Lmiui/process/ForegroundInfo;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    iget-boolean v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v2, :cond_2b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgInfo:Lmiui/process/ForegroundInfo;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    invoke-direct {v0, v1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->notifyRecentTask(Z)V

    return-void

    :pswitch_25  #0xa
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/miui/powerkeeper/event/EventsAggregator$EventResult;

    invoke-direct {v0, v1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->onPkgExistentChanged(Lcom/miui/powerkeeper/event/EventsAggregator$EventResult;)V

    return-void

    :pswitch_26  #0x9
    iget-boolean v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v2, :cond_2c

    const-string v2, "MSG_RESET_EVALUATION_LIST"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    iget-object v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mExcludeApps:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1, v4}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->parseExcludeAppFromDb(Ljava/lang/String;Landroid/util/ArraySet;)V

    return-void

    :pswitch_27  #0x8
    iget-object v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgInfo:Lmiui/process/ForegroundInfo;

    if-eqz v2, :cond_33

    iget-object v2, v2, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    if-eqz v2, :cond_33

    invoke-virtual {v9, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    goto :goto_2

    :cond_2d
    iget-object v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mTopApps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-boolean v4, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsCustom:Z

    if-nez v4, :cond_2e

    iget-boolean v4, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsFold:Z

    if-eqz v4, :cond_2e

    iget-object v4, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mFoldTopApps:Landroid/util/ArrayMap;

    invoke-virtual {v4, v9}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    iget-object v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mFoldTopApps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-boolean v4, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v4, :cond_2e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cameraFps="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    if-nez v2, :cond_2f

    const-string v1, "MSG_CAMERA_RESET_FPS break for not optimized"

    invoke-direct {v0, v1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    return-void

    :cond_2f
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSG_CAMERA_RESET_FPS isRestore="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    iget-boolean v3, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsWhitelistPolicy:Z

    if-eqz v3, :cond_31

    if-eqz v1, :cond_30

    iget v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mUserFps:I

    invoke-direct {v0, v9, v1, v11}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->setScreenEffect(Ljava/lang/String;II)V

    return-void

    :cond_30
    iget v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mDefaultFps:I

    invoke-direct {v0, v9, v1, v11}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->setScreenEffect(Ljava/lang/String;II)V

    return-void

    :cond_31
    iput-boolean v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsCameraSetting:Z

    if-eqz v1, :cond_32

    iget v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mUserFps:I

    invoke-direct {v0, v9, v1, v10}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->setScreenEffect(Ljava/lang/String;II)V

    return-void

    :cond_32
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, v9, v1, v12}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->setScreenEffect(Ljava/lang/String;II)V

    return-void

    :cond_33
    :goto_2
    const-string v1, "MSG_CAMERA_RESET_FPS break for not camera"

    invoke-direct {v0, v1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    return-void

    :pswitch_28  #0x7
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    iget-object v1, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsSplitScreen:Z

    invoke-static {}, Lmiui/process/ProcessManager;->getForegroundInfo()Lmiui/process/ForegroundInfo;

    move-result-object v1

    iget-boolean v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCarInfoTrigFpsSwitch:Z

    if-eqz v2, :cond_34

    iget-boolean v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->isSwitchPhoneStateSucceed:Z

    if-nez v2, :cond_34

    const-string v1, "MSG_SPLIT_SCREEN_CHANGED: using default info"

    invoke-direct {v0, v1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentDefaultDisplayInfo:Lmiui/process/ForegroundInfo;

    :cond_34
    if-nez v1, :cond_35

    goto :goto_f

    :cond_35
    iget-boolean v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v2, :cond_36

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSG_SPLIT_SCREEN_CHANGED mIsSplitScreen="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsSplitScreen:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " fgInfo="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    invoke-virtual {v0, v1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->onForegroundChanged(Lmiui/process/ForegroundInfo;)V

    return-void

    :pswitch_29  #0x6
    iget-object v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgInfo:Lmiui/process/ForegroundInfo;

    if-eqz v2, :cond_3a

    iget-object v2, v2, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    if-nez v2, :cond_37

    goto :goto_3

    :cond_37
    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_38

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignore for fg pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgInfo:Lmiui/process/ForegroundInfo;

    iget-object v2, v2, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " src="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    return-void

    :cond_38
    iget v1, v1, Landroid/os/Message;->arg2:I

    if-ne v1, v6, :cond_39

    const/16 v1, 0x3c

    invoke-direct {v0, v3, v1, v12}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->setScreenEffect(Ljava/lang/String;II)V

    return-void

    :cond_39
    if-ne v1, v14, :cond_68

    iget-object v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgInfo:Lmiui/process/ForegroundInfo;

    invoke-virtual {v0, v1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->onForegroundChanged(Lmiui/process/ForegroundInfo;)V

    return-void

    :cond_3a
    :goto_3
    const-string v1, "ignore null fg info"

    invoke-direct {v0, v1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    return-void

    :pswitch_2a  #0x5
    iget-boolean v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v2, :cond_3b

    const-string v2, "MSG_RESET_VIDEO_TOP_LIST"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3b
    iget-object v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mVideoApps:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1, v4}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->parseTopVideoAppFromDb(Ljava/lang/String;Landroid/util/ArraySet;)V

    return-void

    :pswitch_2b  #0x4
    iget-boolean v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v2, :cond_3c

    const-string v2, "MSG_RESET_TOP_DEFINE_LIST"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3c
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1, v4}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->parseTopDefineAppFromDb(Ljava/lang/String;Landroid/util/ArraySet;)V

    return-void

    :pswitch_2c  #0x3
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-static {}, Lcom/miui/powerkeeper/utils/PowerKeeperPackageManager;->getInstalledThirdPartApps()Landroid/util/ArraySet;

    move-result-object v2

    iget-boolean v7, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v7, :cond_3d

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MSG_RESET_HIGH_PRIORITY_LIST new="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    iget-object v3, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mPrivGames:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    invoke-direct {v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->getSupportFps()[I

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v8, v5

    :cond_3e
    :goto_4
    if-ge v8, v7, :cond_45

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    check-cast v9, Ljava/lang/String;

    if-eqz v9, :cond_3e

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_3f

    goto :goto_4

    :cond_3f
    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_44

    array-length v11, v10

    if-ne v11, v14, :cond_44

    aget-object v11, v10, v5

    if-eqz v11, :cond_44

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_40

    goto :goto_6

    :cond_40
    aget-object v11, v10, v6

    const/4 v12, -0x1

    invoke-static {v11, v12}, Lcom/miui/powerkeeper/utils/Utils;->toInt(Ljava/lang/String;I)I

    move-result v11

    if-gtz v11, :cond_41

    const-string v9, "MSG_RESET_HIGH_PRIORITY_LIST invlid value"

    invoke-direct {v0, v9}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    goto :goto_4

    :cond_41
    if-nez v4, :cond_42

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v12

    mul-int/lit8 v12, v12, 0x20

    add-int/lit8 v12, v12, 0x20

    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_42
    const/16 v12, 0x2c

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    aget-object v9, v10, v5

    invoke-virtual {v0, v9, v2}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->isInstalledPackage(Ljava/lang/String;Landroid/util/ArraySet;)Z

    move-result v9

    if-nez v9, :cond_43

    goto :goto_4

    :cond_43
    invoke-direct {v0, v3, v11}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->getSuitableFps([II)I

    move-result v9

    iget-object v11, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mPrivGames:Landroid/util/ArrayMap;

    aget-object v10, v10, v5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v11, v10, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_44
    :goto_6
    const-string v9, "MSG_RESET_HIGH_PRIORITY_LIST invlid item"

    invoke-direct {v0, v9}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    goto :goto_4

    :cond_45
    if-nez v4, :cond_46

    move-object v1, v13

    goto :goto_7

    :cond_46
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_7
    iget-object v3, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    const-string v4, "key_priv_names"

    invoke-static {v3, v4, v1}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v3, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mDefaultGameApp:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->clear()V

    iget-object v3, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    invoke-static {v3, v15, v13}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->getPrivGamesFps(Ljava/lang/String;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-direct {v0, v3, v1, v2}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->fillDefaultGameApp(Ljava/lang/String;Landroid/util/ArrayMap;Landroid/util/ArraySet;)V

    return-void

    :pswitch_2d  #0x2
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v5, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    invoke-static {v5, v15, v13}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v12, 0x2c

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v5, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    invoke-static {v5, v15, v1}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    iget-boolean v5, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v5, :cond_47

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSG_APPEND_DEFAULT_LIST: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    iget-object v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mDefaultGameApp:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    invoke-direct {v0, v4}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->getPrivGamesFps(Ljava/lang/String;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-direct {v0, v1, v2, v4}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->fillDefaultGameApp(Ljava/lang/String;Landroid/util/ArrayMap;Landroid/util/ArraySet;)V

    return-void

    :pswitch_2e  #0x1
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    invoke-static {v2, v15, v1}, Lcom/miui/powerkeeper/provider/SimpleSettings$Misc;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    iget-boolean v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v2, :cond_48

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSG_RESET_DEFAULT_LIST: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_48
    iget-object v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mDefaultGameApp:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    invoke-direct {v0, v4}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->getPrivGamesFps(Ljava/lang/String;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-direct {v0, v1, v2, v4}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->fillDefaultGameApp(Ljava/lang/String;Landroid/util/ArrayMap;Landroid/util/ArraySet;)V

    return-void

    :pswitch_2f  #0xffffffd7
    :try_start_0
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_68

    instance-of v2, v1, Lcom/miui/powerkeeper/utils/ScreenStateObserver$CarScreenInfo;

    if-eqz v2, :cond_68

    check-cast v1, Lcom/miui/powerkeeper/utils/ScreenStateObserver$CarScreenInfo;

    invoke-direct {v0, v1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->notifyCarScreenInfoChange(Lcom/miui/powerkeeper/utils/ScreenStateObserver$CarScreenInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    :pswitch_30  #0xffffffd6
    iput-boolean v6, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsBackScreenOn:Z

    invoke-direct {v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->handleScreenStateUpdate()V

    return-void

    :pswitch_31  #0xffffffd5
    iput-boolean v5, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsBackScreenOn:Z

    invoke-direct {v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->handleScreenStateUpdate()V

    return-void

    :cond_49
    iput-boolean v6, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsMainScreenOn:Z

    invoke-direct {v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->handleScreenStateUpdate()V

    iget-object v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    const-string v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isDeviceLocked()Z

    move-result v1

    if-nez v1, :cond_4a

    iget-boolean v0, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v0, :cond_68

    const-string v0, "MSG_MSG_SCREEN_ON ignore for unlocked"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4a
    iget-object v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "kid_user_id"

    const/16 v4, -0x2710

    invoke-static {v1, v2, v4, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    invoke-static {}, Lmiui/securityspace/CrossUserUtils;->getCurrentUserId()I

    move-result v2

    if-ne v2, v1, :cond_4b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG_MSG_SCREEN_ON ignore for kid space id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    return-void

    :cond_4b
    invoke-static {}, Lcom/miui/powerkeeper/PowerKeeperManager;->getInstance()Lcom/miui/powerkeeper/PowerKeeperManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/powerkeeper/PowerKeeperManager;->getEventsAggregator()Lcom/miui/powerkeeper/event/EventsAggregator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/powerkeeper/event/EventsAggregator;->isInCall()Z

    move-result v1

    if-eqz v1, :cond_4c

    iget-boolean v0, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v0, :cond_68

    const-string v0, "MSG_MSG_SCREEN_ON ignore for in call"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4c
    iget-boolean v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v1, :cond_4d

    const-string v1, "MSG_MSG_SCREEN_ON"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4d
    iget-boolean v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsWhitelistPolicy:Z

    const-string v2, "SCREEN_ON"

    if-nez v1, :cond_4f

    iget-boolean v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsWhiteFpsList:Z

    if-eqz v1, :cond_4e

    goto :goto_8

    :cond_4e
    iget v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentCookie:I

    if-eq v1, v10, :cond_68

    iget v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mUserFps:I

    invoke-direct {v0, v2, v1, v10}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->setScreenEffect(Ljava/lang/String;II)V

    return-void

    :cond_4f
    :goto_8
    iget v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mUserFps:I

    invoke-direct {v0, v2, v1, v11}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->setScreenEffect(Ljava/lang/String;II)V

    return-void

    :cond_50
    iput-boolean v5, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsMainScreenOn:Z

    invoke-direct {v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->handleScreenStateUpdate()V

    iget-object v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgInfo:Lmiui/process/ForegroundInfo;

    if-eqz v1, :cond_53

    iget-object v1, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    if-nez v1, :cond_51

    goto :goto_9

    :cond_51
    iput-boolean v6, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsLockScreen:Z

    iget-boolean v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v1, :cond_52

    const-string v1, "COMMON_MSG_SCREEN_OFF"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_52
    iget-boolean v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsMapFpsSwitch:Z

    if-eqz v1, :cond_68

    iget-object v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mMapFpsApps:Landroid/util/ArraySet;

    iget-object v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgInfo:Lmiui/process/ForegroundInfo;

    iget-object v2, v2, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_68

    iget-object v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgPkg:Ljava/lang/String;

    invoke-direct {v0, v5, v1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->getQsyncStatus(ILjava/lang/String;)I

    move-result v1

    iget-object v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgPkg:Ljava/lang/String;

    const/16 v4, 0x109

    invoke-direct {v0, v4, v1, v2}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->notifySFIfpsMode(IILjava/lang/String;)V

    iput-boolean v5, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsMapFpsSwitch:Z

    iget-boolean v0, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v0, :cond_68

    const-string v0, "SCREEN_OFF for Map fps value=0"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_53
    :goto_9
    const-string v1, "COMMON_MSG_SCREEN_OFF break for mCurrentFgInfo is null !"

    invoke-direct {v0, v1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    return-void

    :cond_54
    invoke-static {}, Lcom/miui/powerkeeper/PowerKeeperManager;->getInstance()Lcom/miui/powerkeeper/PowerKeeperManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/powerkeeper/PowerKeeperManager;->getEventsAggregator()Lcom/miui/powerkeeper/event/EventsAggregator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/powerkeeper/event/EventsAggregator;->getForegroundInfo()Lmiui/process/ForegroundInfo;

    move-result-object v1

    iget-boolean v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCarInfoTrigFpsSwitch:Z

    if-eqz v2, :cond_55

    iget-boolean v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->isSwitchPhoneStateSucceed:Z

    if-nez v2, :cond_55

    const-string v1, "MSG_USER_PRESENT: using default info"

    invoke-direct {v0, v1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentDefaultDisplayInfo:Lmiui/process/ForegroundInfo;

    :cond_55
    if-eqz v1, :cond_5a

    iget-object v2, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    if-nez v2, :cond_56

    goto :goto_a

    :cond_56
    iput-boolean v5, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsLockScreen:Z

    iget-boolean v4, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsMapFpsSwitch:Z

    if-nez v4, :cond_57

    iget-object v4, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mMapFpsApps:Landroid/util/ArraySet;

    invoke-virtual {v4, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_57

    iget-object v2, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-direct {v0, v6, v2}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->getQsyncStatus(ILjava/lang/String;)I

    move-result v2

    iget-object v4, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    const/16 v5, 0x109

    invoke-direct {v0, v5, v2, v4}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->notifySFIfpsMode(IILjava/lang/String;)V

    iput-boolean v6, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsMapFpsSwitch:Z

    iget-boolean v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v2, :cond_57

    const-string v2, "MSG_MSG_USER_PRESENT for Map fps value=1"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_57
    iget-object v2, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    iget-boolean v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsCameraSetting:Z

    if-eqz v2, :cond_58

    const-string v1, "MSG_USER_PRESENT break for camera setting"

    invoke-direct {v0, v1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    return-void

    :cond_58
    iget-boolean v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v2, :cond_59

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSG_MSG_USER_PRESENT fg="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_59
    invoke-virtual {v0, v1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->onForegroundChanged(Lmiui/process/ForegroundInfo;)V

    return-void

    :cond_5a
    :goto_a
    const-string v1, "COMMON_MSG_USER_PRESENT break for fg is null !"

    invoke-direct {v0, v1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    return-void

    :cond_5b
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    iget-object v1, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, v6, :cond_5c

    move v5, v6

    :cond_5c
    iget-boolean v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mChargingSwitch:Z

    if-eq v1, v5, :cond_68

    iput-boolean v5, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mChargingSwitch:Z

    invoke-direct {v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->notifySFIChange()V

    return-void

    :cond_5d
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lmiui/process/ForegroundInfo;

    invoke-direct {v0, v1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->notifyFgInfoChange(Lmiui/process/ForegroundInfo;)V

    return-void

    :cond_5e
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v4, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgInfo:Lmiui/process/ForegroundInfo;

    if-eqz v4, :cond_62

    iget-object v4, v4, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    if-eqz v4, :cond_62

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5f

    iget v4, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentCookie:I

    const/16 v5, 0xf7

    if-eq v4, v5, :cond_5f

    goto :goto_c

    :cond_5f
    iget-boolean v4, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v4, :cond_60

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSG_UPDATE_FPS app="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_60
    invoke-direct {v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->getSupportFps()[I

    move-result-object v3

    iget v1, v1, Landroid/os/Message;->arg1:I

    invoke-direct {v0, v3, v1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->getSuitableFps([II)I

    move-result v1

    invoke-virtual {v0, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_61

    iget v3, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentCookie:I

    goto :goto_b

    :cond_61
    invoke-direct {v0, v2}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->getPkgCookie(Ljava/lang/String;)I

    move-result v3

    :goto_b
    invoke-direct {v0, v2, v1, v3}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->setScreenEffect(Ljava/lang/String;II)V

    return-void

    :cond_62
    :goto_c
    iget-boolean v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v1, :cond_68

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSG_UPDATE_FPS break for not in "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mCurrentCookie:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentCookie:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_63
    iget v1, v1, Landroid/os/Message;->arg1:I

    iget v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCameraPowerSaveValue:I

    if-gt v1, v2, :cond_64

    move v2, v6

    goto :goto_d

    :cond_64
    move v2, v5

    :goto_d
    iget-boolean v3, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCameraPowerSaveSwitch:Z

    if-eqz v3, :cond_65

    iget-boolean v3, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCheckPowerSaveCamera:Z

    if-eq v2, v3, :cond_66

    iput-boolean v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCheckPowerSaveCamera:Z

    invoke-direct {v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->notifySFIChange()V

    goto :goto_e

    :cond_65
    iput-boolean v5, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCheckPowerSaveCamera:Z

    :cond_66
    :goto_e
    const/16 v2, 0x64

    if-ne v1, v2, :cond_67

    move v5, v6

    :cond_67
    iget-boolean v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mLevelFullSwitch:Z

    if-eq v1, v5, :cond_68

    iput-boolean v5, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mLevelFullSwitch:Z

    invoke-direct {v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->notifySFIChange()V

    :cond_68
    :goto_f
    return-void

    :cond_69
    iget v1, v1, Landroid/os/Message;->arg1:I

    iput v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mPowerMode:I

    invoke-virtual {v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->onPowerModeChanged()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x2b
        :pswitch_31  #ffffffd5
        :pswitch_30  #ffffffd6
        :pswitch_2f  #ffffffd7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2e  #00000001
        :pswitch_2d  #00000002
        :pswitch_2c  #00000003
        :pswitch_2b  #00000004
        :pswitch_2a  #00000005
        :pswitch_29  #00000006
        :pswitch_28  #00000007
        :pswitch_27  #00000008
        :pswitch_26  #00000009
        :pswitch_25  #0000000a
        :pswitch_24  #0000000b
        :pswitch_23  #0000000c
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x11
        :pswitch_22  #00000011
        :pswitch_21  #00000012
        :pswitch_20  #00000013
        :pswitch_1f  #00000014
        :pswitch_1e  #00000015
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x17
        :pswitch_1d  #00000017
        :pswitch_1c  #00000018
        :pswitch_1b  #00000019
        :pswitch_1a  #0000001a
        :pswitch_19  #0000001b
        :pswitch_18  #0000001c
        :pswitch_17  #0000001d
        :pswitch_16  #0000001e
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x20
        :pswitch_15  #00000020
        :pswitch_14  #00000021
        :pswitch_13  #00000022
        :pswitch_12  #00000023
        :pswitch_11  #00000024
        :pswitch_10  #00000025
        :pswitch_f  #00000026
        :pswitch_e  #00000027
        :pswitch_d  #00000028
        :pswitch_c  #00000029
        :pswitch_b  #0000002a
        :pswitch_a  #0000002b
        :pswitch_9  #0000002c
        :pswitch_8  #0000002d
        :pswitch_7  #0000002e
        :pswitch_6  #0000002f
        :pswitch_5  #00000030
        :pswitch_4  #00000031
        :pswitch_3  #00000032
        :pswitch_2  #00000033
        :pswitch_1  #00000034
        :pswitch_0  #00000035
    .end packed-switch
.end method

.method public isInstalledPackage(Ljava/lang/String;Landroid/util/ArraySet;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    invoke-static {}, Lcom/miui/powerkeeper/utils/PowerKeeperPackageManager;->getInstalledThirdPartApps()Landroid/util/ArraySet;

    move-result-object p2

    :cond_0
    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-static {p1}, Lcom/miui/powerkeeper/utils/PowerKeeperPackageManager;->isUnremovableApp(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSupportDevice()Z
    .registers 6

    iget-object p0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCustomFpsDeviceArray:[Ljava/lang/String;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    invoke-static {v3}, Lcom/miui/powerkeeper/utils/Utils;->isBelongToDeviceSeries(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string v4, "_intl"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-boolean v4, Lmiui/os/Build;->IS_MIUI:Z

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x5

    invoke-virtual {v3, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/powerkeeper/utils/Utils;->isBelongToDeviceSeries(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public isSupportVideoEnhancePkg(Ljava/lang/String;)Z
    .registers 2

    sget-object p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mExtremeVideoPackageList:Ljava/util/List;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mExtremeVideoPackageList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public notifyAMStop(Ljava/lang/String;)V
    .registers 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "DisplayFrameSetting"

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz p0, :cond_4

    const-string p0, "notifyAMStop pkg == null return"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyAMStop pkg:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-boolean p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsFgChange:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "notifyAMStop fg change, mCurrentFgPkg="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgPkg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mCurrentFps:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFps:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsFgChange:Z

    iget-object p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgPkg:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->LAUNCHER_PKG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgPkg:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->homeToAppEnd(Ljava/lang/String;)V

    return-void

    :cond_3
    iget-boolean p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "notifyAMStop fg no change mCurrentFgPkg:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgPkg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mIsDuringGesture == false, mCurrentFps"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFps:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method public notifyFGChange(Lmiui/process/ForegroundInfo;)V
    .registers 8

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsFgChange:Z

    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgPkg:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mPrevFgPkg:Ljava/lang/String;

    iget-object v0, p1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgPkg:Ljava/lang/String;

    iget v0, p1, Lmiui/process/ForegroundInfo;->mForegroundUid:I

    iput v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentUid:I

    iput-object p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgInfo:Lmiui/process/ForegroundInfo;

    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgPkg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgPkg:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurNotifiedPkg:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurNotifiedPkg:Ljava/lang/String;

    :goto_0
    iget-boolean v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    const-string v1, "DisplayFrameSetting"

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyFGChange mPrevFgPkg:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mPrevFgPkg:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mCurrentFgPkg:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgPkg:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Recent:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsEnterRecentTask:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgPkg:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->LAUNCHER_PKG:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsEnterRecentTask:Z

    if-eqz v0, :cond_3

    iget-boolean p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "notifyFGChange mCurrentFgPkg:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgPkg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mIsEnterRecentTask:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsEnterRecentTask:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->appToHomeEnd(Lmiui/process/ForegroundInfo;)V

    return-void

    :cond_4
    iget-boolean v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsEnterRecentTask:Z

    const/4 v2, -0x1

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgPkg:Ljava/lang/String;

    const-string v3, "com.android.settings"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz p1, :cond_5

    const-string p1, "notifyFGChange, from recent to setting"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    new-instance p1, Lmiui/process/ForegroundInfo;

    invoke-direct {p1}, Lmiui/process/ForegroundInfo;-><init>()V

    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgPkg:Ljava/lang/String;

    iput-object v0, p1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgInfo:Lmiui/process/ForegroundInfo;

    if-eqz v0, :cond_6

    iget v2, v0, Lmiui/process/ForegroundInfo;->mForegroundDisplayId:I

    :cond_6
    iput v2, p1, Lmiui/process/ForegroundInfo;->mForegroundDisplayId:I

    invoke-virtual {p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->onForegroundChanged(Lmiui/process/ForegroundInfo;)V

    return-void

    :cond_7
    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgPkg:Ljava/lang/String;

    const-string v3, "com.android.camera"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz p1, :cond_8

    const-string p1, "notifyFGChange camera"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    new-instance p1, Lmiui/process/ForegroundInfo;

    invoke-direct {p1}, Lmiui/process/ForegroundInfo;-><init>()V

    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgPkg:Ljava/lang/String;

    iput-object v0, p1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgInfo:Lmiui/process/ForegroundInfo;

    if-eqz v0, :cond_9

    iget v2, v0, Lmiui/process/ForegroundInfo;->mForegroundDisplayId:I

    :cond_9
    iput v2, p1, Lmiui/process/ForegroundInfo;->mForegroundDisplayId:I

    invoke-virtual {p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->onForegroundChanged(Lmiui/process/ForegroundInfo;)V

    return-void

    :cond_a
    iget v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DELAY_TIME:I

    const-string v2, "delayed_am_stop"

    const/16 v4, 0x11

    if-nez v0, :cond_d

    const-string v0, "com.miui.gallery"

    iget-object v5, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgPkg:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object p1, p1, Lmiui/process/ForegroundInfo;->mLastForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mPrevFgPkg:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    :cond_b
    invoke-virtual {p0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz p1, :cond_c

    const-string p1, "notifyFGChange camera to gallery, wait am_stop and sendDelayedMessage DELAY_TIME = 1200ms"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    invoke-virtual {p0, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x4b0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_d
    iget-boolean p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsWhiteFpsList:Z

    if-eqz p1, :cond_f

    iget-boolean p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz p1, :cond_e

    const-string p1, "notifyFGChange low phone DELAY_TIME = 0"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    invoke-virtual {p0, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_f
    invoke-virtual {p0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz p1, :cond_10

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "notifyFGChange new fg is not home, wait am_stop and sendDelayedMessage DELAY_TIME = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DELAY_TIME:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    invoke-virtual {p0, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DELAY_TIME:I

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public onForegroundChanged(Lmiui/process/ForegroundInfo;)V
    .registers 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez v1, :cond_0

    const-string v1, "appInfo is null"

    invoke-direct {v0, v1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mGameVideoScenePkg:Ljava/lang/String;

    iget-object v3, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    iput-boolean v3, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsEnterVideoScene:Z

    iput-boolean v3, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsEnterGameScene:Z

    :cond_1
    iget-boolean v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->IS_ENABLE_DISPLAY_DITHER:Z

    const/16 v4, 0xf8

    const/16 v5, 0xf4

    const-string v6, "DisplayFrameSetting"

    if-eqz v2, :cond_3

    iget-boolean v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsDitherCloudSwitch:Z

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mVideoApps:Landroid/util/ArraySet;

    iget-object v7, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v2, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/16 v7, 0x29

    if-eqz v2, :cond_2

    invoke-static {}, Lmiui/hardware/display/DisplayFeatureManager;->getInstance()Lmiui/hardware/display/DisplayFeatureManager;

    move-result-object v2

    iget v8, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mInvalidValue:I

    invoke-virtual {v2, v7, v8, v4}, Lmiui/hardware/display/DisplayFeatureManager;->setScreenEffect(III)V

    iget-boolean v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v2, :cond_3

    const-string v2, "onForegroundChanged for dither Cookie=248"

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-static {}, Lmiui/hardware/display/DisplayFeatureManager;->getInstance()Lmiui/hardware/display/DisplayFeatureManager;

    move-result-object v2

    iget v8, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mInvalidValue:I

    invoke-virtual {v2, v7, v8, v5}, Lmiui/hardware/display/DisplayFeatureManager;->setScreenEffect(III)V

    iget-boolean v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v2, :cond_3

    const-string v2, "onForegroundChanged for dither Cookie=244"

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    iget-boolean v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsNoteCloudSwitch:Z

    const/4 v7, 0x1

    if-eqz v2, :cond_5

    const-string v2, "com.miui.notes"

    iget-object v8, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v8, 0x18

    const/16 v9, 0x106

    if-eqz v2, :cond_4

    invoke-static {}, Lmiui/hardware/display/DisplayFeatureManager;->getInstance()Lmiui/hardware/display/DisplayFeatureManager;

    move-result-object v2

    invoke-virtual {v2, v8, v7, v9}, Lmiui/hardware/display/DisplayFeatureManager;->setScreenEffect(III)V

    invoke-direct {v0, v9, v7}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->notifySFNoteMode(II)V

    iget-boolean v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v2, :cond_5

    const-string v2, "onForegroundChanged for note enter"

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    invoke-static {}, Lmiui/hardware/display/DisplayFeatureManager;->getInstance()Lmiui/hardware/display/DisplayFeatureManager;

    move-result-object v2

    invoke-virtual {v2, v8, v3, v9}, Lmiui/hardware/display/DisplayFeatureManager;->setScreenEffect(III)V

    invoke-direct {v0, v9, v3}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->notifySFNoteMode(II)V

    iget-boolean v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v2, :cond_5

    const-string v2, "onForegroundChanged for note exit"

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    iget-boolean v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->IS_ENABLE_DISPLAY_FOSS:Z

    const-string v9, "com.android.camera"

    if-eqz v2, :cond_d

    iget-boolean v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsFossCloudSwitch:Z

    if-eqz v2, :cond_d

    iget-object v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mVideoApps:Landroid/util/ArraySet;

    iget-object v11, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v2, v11}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v4

    goto :goto_4

    :cond_6
    iget-object v2, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/16 v2, 0xfc

    goto :goto_4

    :cond_7
    iget-object v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mDefaultGameApp:Landroid/util/ArraySet;

    iget-object v11, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v2, v11}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    iget-object v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mPrivGames:Landroid/util/ArrayMap;

    iget-object v11, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v2, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_8

    goto :goto_3

    :cond_8
    const-string v2, "com.miui.gallery"

    iget-object v11, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "com.fstar.Pattern"

    iget-object v11, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_2

    :cond_9
    iget-object v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->LAUNCHER_PKG:Ljava/lang/String;

    iget-object v11, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/16 v2, 0xf2

    goto :goto_4

    :cond_a
    move v2, v5

    goto :goto_4

    :cond_b
    :goto_2
    const/16 v2, 0xf3

    goto :goto_4

    :cond_c
    :goto_3
    const/16 v2, 0xfe

    :goto_4
    iget v11, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mLastFossCookie:I

    if-eq v2, v11, :cond_d

    invoke-static {}, Lmiui/hardware/display/DisplayFeatureManager;->getInstance()Lmiui/hardware/display/DisplayFeatureManager;

    move-result-object v11

    const/16 v12, 0x28

    iget v13, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mInvalidValue:I

    invoke-virtual {v11, v12, v13, v2}, Lmiui/hardware/display/DisplayFeatureManager;->setScreenEffect(III)V

    iput v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mLastFossCookie:I

    :cond_d
    iget-object v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mTopApps:Landroid/util/ArrayMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v12, "com.youku.phone"

    invoke-virtual {v2, v12, v11}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v11, 0x3c

    if-ne v2, v11, :cond_e

    move v2, v7

    goto :goto_5

    :cond_e
    move v2, v3

    :goto_5
    iget-boolean v13, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsCustom:Z

    if-nez v13, :cond_10

    iget-boolean v13, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsFold:Z

    if-eqz v13, :cond_10

    iget-object v13, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mFoldTopApps:Landroid/util/ArrayMap;

    invoke-virtual {v13, v12}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10

    iget-object v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mFoldTopApps:Landroid/util/ArrayMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v2, v12, v13}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v11, :cond_f

    move v2, v7

    goto :goto_6

    :cond_f
    move v2, v3

    :goto_6
    iget-boolean v13, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v13, :cond_10

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "isYouku60Hz="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v6, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    iget v13, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mInputStatus:I

    const-string v14, "  mIsOnScroll="

    const/16 v15, 0x1e

    const/16 v8, 0xf9

    if-ne v13, v7, :cond_12

    iget-object v13, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mInputApps:Landroid/util/ArrayMap;

    iget-object v10, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v13, v10}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onForegroundChanged mInputApps="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsOnScroll:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mIsSupportLowFps"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsSupportLowFps:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mInputApps:Landroid/util/ArrayMap;

    iget-object v4, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v15, :cond_11

    iget-boolean v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsOnScroll:Z

    if-nez v2, :cond_11

    iget-boolean v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsSupportLowFps:Z

    if-eqz v2, :cond_11

    iput-boolean v7, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsLowFps:Z

    iget-object v1, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-direct {v0, v1, v15, v8}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->setScreenEffect(Ljava/lang/String;II)V

    return-void

    :cond_11
    iput-boolean v3, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsLowFps:Z

    iget-object v1, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-direct {v0, v1, v11, v8}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->setScreenEffect(Ljava/lang/String;II)V

    return-void

    :cond_12
    iget-boolean v10, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mAudioRecordStatus:Z

    const-string v13, "  mIsSupportLowFps="

    if-eqz v10, :cond_14

    iget-object v10, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mAudioApps:Landroid/util/ArrayMap;

    iget-object v4, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v10, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onForegroundChanged mAudioApps="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsOnScroll:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsSupportLowFps:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mAudioApps:Landroid/util/ArrayMap;

    iget-object v4, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v15, :cond_13

    iget-boolean v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsOnScroll:Z

    if-nez v2, :cond_13

    iget-boolean v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsSupportLowFps:Z

    if-eqz v2, :cond_13

    iput-boolean v7, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsLowFps:Z

    iget-object v1, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-direct {v0, v1, v15, v8}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->setScreenEffect(Ljava/lang/String;II)V

    return-void

    :cond_13
    iput-boolean v3, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsLowFps:Z

    iput-boolean v3, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsOnScroll:Z

    iget-object v1, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-direct {v0, v1, v11, v8}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->setScreenEffect(Ljava/lang/String;II)V

    return-void

    :cond_14
    iget-boolean v4, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsBlackList:Z

    if-eqz v4, :cond_16

    iget-object v4, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mBlacklistActivity_LowFps:[Ljava/lang/String;

    iget-object v10, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurActivityName:Ljava/lang/String;

    invoke-static {v4, v10}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onForegroundChanged mBlacklistActivity_LowFps="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurActivityName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsOnScroll:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsSupportLowFps:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    iget-boolean v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsOnScroll:Z

    if-nez v2, :cond_15

    iget-boolean v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsSupportLowFps:Z

    if-eqz v2, :cond_15

    iput-boolean v7, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsLowFps:Z

    iget-object v1, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-direct {v0, v1, v15, v8}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->setScreenEffect(Ljava/lang/String;II)V

    return-void

    :cond_15
    iput-boolean v3, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsOnScroll:Z

    iput-boolean v3, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsLowFps:Z

    iget-object v1, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-direct {v0, v1, v11, v8}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->setScreenEffect(Ljava/lang/String;II)V

    return-void

    :cond_16
    iget-boolean v4, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsBlackList:Z

    if-eqz v4, :cond_17

    iget-object v4, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mBlacklistActivity_Vr:[Ljava/lang/String;

    iget-object v10, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurActivityName:Ljava/lang/String;

    invoke-static {v4, v10}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onForegroundChanged mBlacklistActivity_Vr"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurActivityName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    iget-object v1, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-direct {v0, v1, v11, v8}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->setScreenEffect(Ljava/lang/String;II)V

    return-void

    :cond_17
    iget-boolean v4, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsBlackList:Z

    const/16 v10, 0x78

    if-eqz v4, :cond_1a

    iget-object v4, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mHighFpsListActivity:[Ljava/lang/String;

    iget-object v13, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurActivityName:Ljava/lang/String;

    invoke-static {v4, v13}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    iget v4, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mEnterHighFpsValue:I

    if-lt v4, v10, :cond_1a

    iget v4, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mUserFps:I

    if-lt v4, v10, :cond_1a

    iget v4, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mPowerMode:I

    const/4 v13, 0x3

    if-eq v4, v13, :cond_1a

    if-nez v2, :cond_18

    iget-object v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mVideoApps:Landroid/util/ArraySet;

    invoke-virtual {v2, v12}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    :cond_18
    const-string v2, "true"

    sget-object v4, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsCustomFpsSwitch:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    sget-boolean v2, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsSmart:Z

    if-eqz v2, :cond_1a

    :cond_19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onForegroundChanged EnterHighFps enjoy= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mCurActivityName= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurActivityName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mEnterHighFpsValue"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mEnterHighFpsValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    iget-object v1, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-direct {v0, v1, v10, v8}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->setScreenEffect(Ljava/lang/String;II)V

    return-void

    :cond_1a
    iget-boolean v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->IS_SUPPORTED_IRIS:Z

    if-eqz v2, :cond_1e

    iget v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsExtremeVideoModeOn:I

    if-ne v2, v7, :cond_1e

    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1b
    sget-object v4, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mExtremeVideoPackageList:Ljava/util/List;

    iget-object v13, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-static {v4, v13}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    iget-boolean v3, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsBlackList:Z

    if-eqz v3, :cond_1c

    iget-object v3, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mHighFpsListActivity:[Ljava/lang/String;

    iget-object v4, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurActivityName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    iget-object v3, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    iget v3, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mEnterHighFpsValue:I

    if-lt v3, v10, :cond_1c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onForegroundChanged youku fps enjoy= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ignore x7 state"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    iget-object v1, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-direct {v0, v1, v10, v8}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->setScreenEffect(Ljava/lang/String;II)V

    return-void

    :cond_1c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onForegroundChanged mExtremeVideoPackageList:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    iget-object v1, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-direct {v0, v1, v11, v8}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->setScreenEffect(Ljava/lang/String;II)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_1d
    sget-object v2, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mExtremeVideoPackageList:Ljava/util/List;

    iget-object v4, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mPrevFgPkg:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    iget-boolean v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mHasIrisCommandSet:Z

    if-eqz v2, :cond_1f

    invoke-direct {v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->onExtremeSceneRecovery()V

    goto :goto_7

    :cond_1e
    iget-boolean v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsBlackList:Z

    if-eqz v2, :cond_1f

    iget-object v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mBlackListActivityApplets:[Ljava/lang/String;

    iget-object v4, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurActivityName:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    iget-boolean v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsOnFullScreen:Z

    if-eqz v2, :cond_1f

    iget-boolean v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mAppletsSwitch:Z

    if-eqz v2, :cond_1f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onForegroundChanged mBlacklistActivity_Applets"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurActivityName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    iput-boolean v7, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mAppletsEnabled:Z

    iget-object v1, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-direct {v0, v1, v11, v8}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->setScreenEffect(Ljava/lang/String;II)V

    return-void

    :cond_1f
    :goto_7
    iput-boolean v3, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mAppletsEnabled:Z

    iget v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mInputStatus:I

    if-nez v2, :cond_20

    iget-boolean v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mAudioRecordStatus:Z

    if-nez v2, :cond_20

    iget-boolean v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsBlackList:Z

    if-nez v2, :cond_20

    invoke-direct {v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->unregisterDisplayScrollListener()V

    :cond_20
    iget-boolean v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsSplitScreen:Z

    const/16 v4, 0xd1

    const/16 v10, 0xf5

    if-eqz v2, :cond_24

    iget-boolean v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v2, :cond_21

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onForegroundChanged for splitScreen CurrentCookie="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentCookie:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " appInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    iget-boolean v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsWhitelistPolicy:Z

    if-eqz v2, :cond_22

    iget-object v1, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    iget v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mDefaultFps:I

    invoke-direct {v0, v1, v2, v10}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->setScreenEffect(Ljava/lang/String;II)V

    return-void

    :cond_22
    iget-object v2, v1, Lmiui/process/ForegroundInfo;->mLastForegroundPackageName:Ljava/lang/String;

    if-eqz v2, :cond_23

    const-string v3, "power.car.fps"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    iget v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentCookie:I

    if-eq v2, v5, :cond_42

    if-eq v2, v4, :cond_42

    iget-object v1, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    iget v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mUserFps:I

    invoke-direct {v0, v1, v2, v4}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->setScreenEffect(Ljava/lang/String;II)V

    return-void

    :cond_23
    iget v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentCookie:I

    if-eq v2, v5, :cond_42

    iget-object v1, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    iget v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mUserFps:I

    invoke-direct {v0, v1, v2, v5}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->setScreenEffect(Ljava/lang/String;II)V

    return-void

    :cond_24
    iget-object v2, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    if-eqz v2, :cond_41

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_25

    goto :goto_8

    :cond_25
    iput-object v1, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgInfo:Lmiui/process/ForegroundInfo;

    iget-object v2, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    iput-object v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgPkg:Ljava/lang/String;

    iget-boolean v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    const-string v12, ", mCurrentFps:"

    if-eqz v2, :cond_26

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onForegroundChanged appInfo="

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ", CurrentCookie="

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentCookie:I

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFps:I

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "debug.power.fps"

    const-string v13, ""

    invoke-static {v2, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v13, ":"

    invoke-virtual {v2, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    array-length v14, v13

    const/4 v15, 0x2

    if-ne v14, v15, :cond_26

    iget-object v14, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    aget-object v3, v13, v3

    invoke-virtual {v14, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    aget-object v3, v13, v7

    const/4 v7, -0x1

    invoke-static {v3, v7}, Lcom/miui/powerkeeper/utils/Utils;->toInt(Ljava/lang/String;I)I

    move-result v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setForDebugFps debug.power.fps="

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " debugFps="

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v3, :cond_26

    iget-object v1, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-direct {v0, v1, v3, v8}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->setScreenEffect(Ljava/lang/String;II)V

    return-void

    :cond_26
    iget-object v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mExcludeApps:Landroid/util/ArraySet;

    iget-object v3, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-direct {v0}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->getSupportFps()[I

    move-result-object v2

    iget v3, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mDefaultFps:I

    invoke-static {v2, v3}, Lcom/miui/powerkeeper/utils/Utils;->getArrayMaxMember([II)I

    move-result v3

    const/4 v4, 0x4

    invoke-static {v4}, Le/e;->o(I)Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-static {}, Lcom/miui/powerkeeper/perfengine/PerfEngineManager;->d()Lcom/miui/powerkeeper/perfengine/PerfEngineManager;

    move-result-object v4

    if-eqz v4, :cond_27

    invoke-static {}, Lcom/miui/powerkeeper/perfengine/PerfEngineManager;->d()Lcom/miui/powerkeeper/perfengine/PerfEngineManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/powerkeeper/perfengine/PerfEngineManager;->g()Lcom/miui/powerkeeper/perfengine/PeSchedManager;

    move-result-object v4

    iget-object v5, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/miui/powerkeeper/perfengine/PeSchedManager;->c(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_27

    invoke-direct {v0, v2, v4}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->getSuitableFps([II)I

    move-result v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onForegroundChanged mExcludeApps fps:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", perfEngineFps:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    :cond_27
    iget-object v1, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    const/16 v2, 0xf7

    invoke-direct {v0, v1, v3, v2}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->setScreenEffect(Ljava/lang/String;II)V

    return-void

    :cond_28
    iget-object v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mMapFpsApps:Landroid/util/ArraySet;

    iget-object v3, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    const-string v1, "onForegroundChanged mMapFpsApps In qsync mode not set fps"

    invoke-direct {v0, v1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    return-void

    :cond_29
    iget-boolean v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsWhitelistPolicy:Z

    if-eqz v2, :cond_2c

    iget-object v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mTopApps:Landroid/util/ArrayMap;

    iget-object v3, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-boolean v3, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsCustom:Z

    if-nez v3, :cond_2a

    iget-boolean v3, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsFold:Z

    if-eqz v3, :cond_2a

    iget-object v3, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mFoldTopApps:Landroid/util/ArrayMap;

    iget-object v4, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    iget-object v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mFoldTopApps:Landroid/util/ArrayMap;

    iget-object v3, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-boolean v3, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v3, :cond_2a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fps_policy="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    if-nez v2, :cond_2b

    iget-object v1, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    iget v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mDefaultFps:I

    invoke-direct {v0, v1, v2, v10}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->setScreenEffect(Ljava/lang/String;II)V

    return-void

    :cond_2b
    iget-object v1, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, v1, v2, v10}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->setScreenEffect(Ljava/lang/String;II)V

    return-void

    :cond_2c
    iget-boolean v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsCustom:Z

    if-nez v2, :cond_2d

    iget-boolean v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->IS_ENABLE_VIDEO_DECODE_ONLY:Z

    if-nez v2, :cond_2d

    iget-object v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mVideoApps:Landroid/util/ArraySet;

    iget-object v3, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    iget-boolean v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsWhiteFpsList:Z

    if-nez v2, :cond_2d

    iget-object v1, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    const/16 v2, 0xf8

    invoke-direct {v0, v1, v11, v2}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->setScreenEffect(Ljava/lang/String;II)V

    return-void

    :cond_2d
    sget-boolean v2, Lcom/miui/powerkeeper/perfengine/PeGameController;->g0:Z

    if-eqz v2, :cond_2e

    iget-object v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mSmartFpsApps:Landroid/util/ArraySet;

    iget-object v3, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    iget v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFps:I

    sget v3, Lcom/miui/powerkeeper/perfengine/PeGameController;->e0:I

    if-ne v2, v3, :cond_2e

    sget-boolean v1, Lcom/miui/powerkeeper/utils/PowerLog;->V:Z

    if-eqz v1, :cond_42

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onForegroundChanged PeGameController.sIsSmartFPSWeChat:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/miui/powerkeeper/perfengine/PeGameController;->g0:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFps:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", PeGameController.sFPS:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/miui/powerkeeper/perfengine/PeGameController;->e0:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", in mSmartFpsApps, no change FPS, return"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/miui/powerkeeper/utils/PowerLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2e
    sget-boolean v2, Lcom/miui/powerkeeper/utils/PowerLog;->V:Z

    if-eqz v2, :cond_2f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onForegroundChanged PeGameController.sIsSmartFPSWeChat:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/miui/powerkeeper/perfengine/PeGameController;->g0:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFps:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", PeGameController.sFPS:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/miui/powerkeeper/perfengine/PeGameController;->e0:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/miui/powerkeeper/utils/PowerLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2f
    iget-object v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mPrivGames:Landroid/util/ArrayMap;

    iget-object v3, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_31

    iget-object v3, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mGameTopSmartApps:Landroid/util/ArrayMap;

    if-eqz v3, :cond_30

    sget-boolean v4, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsSmart:Z

    if-eqz v4, :cond_30

    iget-object v4, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in smartfps white game list "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    iget-object v1, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    iget-object v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mGameTopSmartApps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0xfe

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->setScreenEffect(Ljava/lang/String;II)V

    return-void

    :cond_30
    const/16 v3, 0xfe

    iget-object v1, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->setScreenEffect(Ljava/lang/String;II)V

    return-void

    :cond_31
    const/16 v3, 0xfe

    iget-object v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mDefaultGameApp:Landroid/util/ArraySet;

    iget-object v7, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v2, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    iget-object v1, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-direct {v0, v1, v11, v3}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->setScreenEffect(Ljava/lang/String;II)V

    return-void

    :cond_32
    iget-boolean v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsWhiteFpsList:Z

    if-eqz v2, :cond_35

    iget-object v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mTopApps:Landroid/util/ArrayMap;

    iget-object v3, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-boolean v3, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsCustom:Z

    if-nez v3, :cond_33

    iget-boolean v3, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsFold:Z

    if-eqz v3, :cond_33

    iget-object v3, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mFoldTopApps:Landroid/util/ArrayMap;

    iget-object v4, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    iget-object v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mFoldTopApps:Landroid/util/ArrayMap;

    iget-object v3, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-boolean v3, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v3, :cond_33

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fps="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    if-nez v2, :cond_34

    iget-object v1, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    iget v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mDefaultFps:I

    invoke-direct {v0, v1, v2, v10}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->setScreenEffect(Ljava/lang/String;II)V

    return-void

    :cond_34
    iget-object v1, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, v1, v2, v10}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->setScreenEffect(Ljava/lang/String;II)V

    return-void

    :cond_35
    iget-boolean v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mHighestFpsSwitch:Z

    if-eqz v2, :cond_38

    iget v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->MAX_SUPPORT_FPS:I

    const/16 v3, 0x90

    if-lt v2, v3, :cond_38

    iget v3, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mMaxAppFps:I

    if-eqz v3, :cond_36

    move v2, v3

    :cond_36
    sget-boolean v3, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsSmart:Z

    if-eqz v3, :cond_37

    iget-object v3, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mDefineHighestFpsApps:Landroid/util/ArraySet;

    iget-object v7, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v3, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onForegroundChanged: mDefineHighestFpsApps: setScreenEffect fps = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    const/16 v3, 0x110

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->setScreenEffect(Ljava/lang/String;II)V

    return-void

    :cond_37
    iget-boolean v3, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsCustom:Z

    if-eqz v3, :cond_38

    iget-object v3, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCustomHighestFpsApps:Landroid/util/ArraySet;

    iget-object v7, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v3, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    iget-object v3, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCustomApps:Landroid/util/ArrayMap;

    iget-object v7, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v3, v7}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_38

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onForegroundChanged: mCustomHighestFpsApps: setScreenEffect fps = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    const/16 v3, 0x110

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->setScreenEffect(Ljava/lang/String;II)V

    return-void

    :cond_38
    iget-object v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mTopApps:Landroid/util/ArrayMap;

    iget-object v3, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-boolean v3, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsCustom:Z

    if-nez v3, :cond_39

    iget-boolean v3, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsFold:Z

    if-eqz v3, :cond_39

    iget-object v3, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mFoldTopApps:Landroid/util/ArrayMap;

    iget-object v7, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v3, v7}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    iget-object v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mFoldTopApps:Landroid/util/ArrayMap;

    iget-object v3, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-boolean v3, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v3, :cond_39

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "currentAppValue="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    if-eqz v2, :cond_3d

    iget v3, v1, Lmiui/process/ForegroundInfo;->mForegroundUid:I

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_3a

    const-string v3, "power.systemui"

    iget-object v4, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    iget-object v1, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0xfb

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->setScreenEffect(Ljava/lang/String;II)V

    return-void

    :cond_3a
    iget-object v3, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    iget-object v1, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0xfc

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->setScreenEffect(Ljava/lang/String;II)V

    return-void

    :cond_3b
    iget-boolean v3, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsEnterVideoScene:Z

    if-eqz v3, :cond_3c

    iget-object v1, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0xf8

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->setScreenEffect(Ljava/lang/String;II)V

    return-void

    :cond_3c
    iget-object v1, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, v1, v2, v8}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->setScreenEffect(Ljava/lang/String;II)V

    return-void

    :cond_3d
    const/16 v3, 0xf8

    iget-boolean v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsEnterVideoScene:Z

    if-eqz v2, :cond_3e

    iget-object v1, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    iget v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mUserFps:I

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->setScreenEffect(Ljava/lang/String;II)V

    return-void

    :cond_3e
    iget-boolean v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsEnterGameScene:Z

    if-eqz v2, :cond_3f

    iget-object v1, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    const/16 v3, 0xfe

    invoke-direct {v0, v1, v11, v3}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->setScreenEffect(Ljava/lang/String;II)V

    return-void

    :cond_3f
    iget-object v2, v1, Lmiui/process/ForegroundInfo;->mLastForegroundPackageName:Ljava/lang/String;

    if-eqz v2, :cond_40

    const-string v3, "power.car.fps"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    iget v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentCookie:I

    if-eq v2, v5, :cond_42

    if-eq v2, v4, :cond_42

    iget-object v1, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    iget v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mUserFps:I

    invoke-direct {v0, v1, v2, v4}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->setScreenEffect(Ljava/lang/String;II)V

    return-void

    :cond_40
    iget v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentCookie:I

    if-eq v2, v5, :cond_42

    iget-object v1, v1, Lmiui/process/ForegroundInfo;->mForegroundPackageName:Ljava/lang/String;

    iget v2, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mUserFps:I

    invoke-direct {v0, v1, v2, v5}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->setScreenEffect(Ljava/lang/String;II)V

    return-void

    :cond_41
    :goto_8
    iget-boolean v0, v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->DBG_DISPLAY:Z

    if-eqz v0, :cond_42

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onForegroundChanged null appInfo="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_42
    return-void
.end method

.method public onFullScreenChange(Z)V
    .registers 4

    iput-boolean p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsOnFullScreen:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFullScreenChange isFullScreen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DisplayFrameSetting"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mAppletsSwitch:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsOnFullScreen:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mAppletsEnabled:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsCameraSetting:Z

    if-eqz p1, :cond_0

    const-string p0, "ignore onFullScreenChange exit trig"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p1, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mCurrentFgInfo:Lmiui/process/ForegroundInfo;

    invoke-virtual {p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->onForegroundChanged(Lmiui/process/ForegroundInfo;)V

    :cond_1
    return-void
.end method

.method public onPowerModeChanged()V
    .registers 7

    iget-boolean v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mViolentModeSwitch:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "custom_mode_switch"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mPowerMode:I

    const-string v3, "DisplayFrameSetting"

    const-string v4, "speed_mode"

    const/4 v5, 0x1

    if-ne v2, v5, :cond_1

    iget-object v2, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v2, "true"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "false"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string p0, "onPowerModeChanged, enter performance-mode,switch CUSTOM_MODE_SWITCH to false"

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v2, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz v0, :cond_2

    sget-object v2, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsCustomFpsSwitch:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsCustomFpsSwitch:Ljava/lang/String;

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPowerModeChanged, exit performance-mode,recovery CUSTOM_MODE_SWITCH "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mIsCustomFpsSwitch:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public powerSaveModeChanged(I)V
    .registers 2

    return-void
.end method

.method public setAppFps(Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mTopApps:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge p1, v1, :cond_1

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mTopApps:Landroid/util/ArrayMap;

    const-string v3, "name"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "fps"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "DisplayFrameSetting"

    const-string v0, "error jsondata in DisplayFrameSetting.setAppFps"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-void
.end method

.method public setScreenEffect(II)V
    .registers 4

    iget-boolean v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->FPS_SWITCH_DEFAULT:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->FPS_SWITCH_THERMAL:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xfd

    if-ne p2, v0, :cond_0

    iget-object p0, p0, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "thermal_limit_refresh_rate"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    invoke-static {}, Lmiui/hardware/display/DisplayFeatureManager;->getInstance()Lmiui/hardware/display/DisplayFeatureManager;

    move-result-object p0

    const/16 v0, 0x18

    invoke-virtual {p0, v0, p1, p2}, Lmiui/hardware/display/DisplayFeatureManager;->setScreenEffect(III)V

    return-void
.end method

.method public updateBacklightModeApps([Ljava/lang/String;)V
    .registers 7

    :try_start_0
    const-class v0, Lcom/miui/whetstone/IPowerKeeperPolicy;

    const-string v1, "setBacklightParam"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const-string v1, "whetstone.activity"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p1, "updateBacklightModeApps return for mWSProxy"

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->getPowerKeeperPolicy()Lcom/miui/whetstone/IPowerKeeperPolicy;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p1, "updateBacklightModeApps return for null instance"

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    return-void

    :cond_1
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateBacklightModeApps call setBacklightParam BacklightModeApps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateBacklightModeApps excecption e="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    return-void
.end method

.method public updateEyeModeApps([Ljava/lang/String;)V
    .registers 7

    :try_start_0
    const-class v0, Lcom/miui/whetstone/IPowerKeeperPolicy;

    const-string v1, "setEyeParam"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const-string v1, "whetstone.activity"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p1, "updateEyeModeApps return for mWSProxy"

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {v1}, Lcom/miui/whetstone/server/IWhetstoneActivityManager;->getPowerKeeperPolicy()Lcom/miui/whetstone/IPowerKeeperPolicy;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p1, "updateEyeModeApps return for null instance"

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    return-void

    :cond_1
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateEyeModeApps call setEyeParam eyeModeApps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p1, "updateEyeModeApps excecption"

    invoke-direct {p0, p1}, Lcom/miui/powerkeeper/statemachine/DisplayFrameSetting;->writeLocalLog(Ljava/lang/String;)V

    return-void
.end method

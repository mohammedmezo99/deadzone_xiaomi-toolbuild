.class public Lcom/android/server/wm/WindowManagerServiceImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/server/wm/WindowManagerServiceStub;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowManagerServiceImpl$H;,
        Lcom/android/server/wm/WindowManagerServiceImpl$StubBinder;,
        Lcom/android/server/wm/WindowManagerServiceImpl$WindowOpChangedListener;,
        Lcom/android/server/wm/WindowManagerServiceImpl$WallpaperDeathMonitor;,
        Lcom/android/server/wm/WindowManagerServiceImpl$SecureChangedListener;,
        Lcom/android/server/wm/WindowManagerServiceImpl$ScreenStateListenerRecord;
    }
.end annotation


# static fields
.field private static final ANIMATION_SCALE_COUNT:I = 0x3

.field private static final ANIMATION_SCALE_LIMIT:F = 0.75f

.field public static final ANIMATION_SCALE_PROP_NAME:Ljava/lang/String; = "persist.sys.animation_scale"

.field private static final BACKGROUND_BLUR_ENABLED:Ljava/lang/String; = "background_blur_enable"

.field private static final BACKGROUND_BLUR_STATUS_DEFAULT:Z

.field private static final BACKGROUND_BLUR_SUPPORTED:Z

.field private static final BLACK_LIST_NOT_COLLECT_IN_TRANSITION:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final BOOT_SENSOR_ROTATION_INVALID:I = -0x1

.field private static final BUILD_DENSITY_PROP:Ljava/lang/String; = "ro.sf.lcd_density"

.field private static final CAN_CAPTURE_GAME_LAYER:Z

.field private static final CARWITH_PACKAGE_NAME:Ljava/lang/String; = "com.miui.carlink"

.field private static final CARWITH_TRUSTED_DAILY_SIG:Ljava/lang/String; = "c8a2e9bccf597c2fb6dc66bee293fc13f2fc47ec77bc6b2b0d52c11f51192ab8"

.field private static final CARWITH_TRUSTED_NON_DAILY_SIG:Ljava/lang/String; = "c9009d01ebf9f5d0302bc71b2fe9aa9a47a432bba17308a3111b75d7b2149025"

.field private static final CIRCULATE:Ljava/lang/String; = "home_worldCirculate_and_smallWindow_crop"

.field private static final CIRCULATEACTIVITY:Ljava/lang/String; = "com.miui.circulate.world.AppCirculateActivity"

.field private static final CLIENT_DIMMER_NAME:Ljava/lang/String; = "ClientDimmerForAppPair"

.field private static CUR_DEVICE:Ljava/lang/String; = null

.field public static FIND_DEVICE:Ljava/lang/String; = null

.field private static FORCE_ORI_LIST:[Ljava/lang/String; = null

.field public static GOOGLE:Ljava/lang/String; = null

.field public static GOOGLE_FLOATING:Ljava/lang/String; = null

.field private static final HOME_PACKAGE_NAME:Ljava/util/Set;

.field private static final INVALID_APPEARANCE:I = -0x1

.field private static final LAUNCHER:Ljava/lang/String; = "com.miui.home/.launcher.Launcher"

.field private static final MIRRORCARDACTIVITY:Ljava/lang/String; = "com.miui.carlink/com.carwith.launcher.card.CardActivity"

.field private static final MIUI_RESOLUTION:Ljava/lang/String; = "persist.sys.miui_resolution"

.field public static MM:Ljava/lang/String; = null

.field public static MM_FLOATING:Ljava/lang/String; = null

.field private static final MODE_ALL:I = 0x0

.field private static final MODE_EXCLUDE:I = 0x1

.field private static final MODE_INCLUDE:I = 0x2

.field public static final MSG_SERVICE_INIT_AFTER_BOOT:I = 0x6b

.field public static final MSG_UPDATE_BLUR_WALLPAPER:I = 0x6a

.field public static QQ:Ljava/lang/String; = null

.field public static QQ_FLOATING:Ljava/lang/String; = null

.field private static final RESET_ANIMATION_SCALE_TIMEOUT_DURATION:I = 0x493e0

.field public static final SCREEN_SHARE_PROTECTION_OPEN:I = 0x1

.field public static final SCREEN_SHARE_PROTECTION_WITH_BLUR:I = 0x1

.field public static SECURITY:Ljava/lang/String; = null

.field public static SECURITY_FLOATING:Ljava/lang/String; = null

.field private static final SHA_256:Ljava/lang/String; = "SHA-256"

.field private static final SUB_BUILTIN_DISPLAY_PACKAGE_NAME_WHITE_LIST:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SUPPORT_UNION_POWER_CORE:Z

.field private static final SUPPPORT_CLOUD_DIM:Z

.field private static final SUPPPORT_UISERVICE:Z

.field private static final TAG:Ljava/lang/String; = "WindowManagerService"

.field private static final TIME_RESET_SWAP_ANIMATION:I = 0x5dc

.field private static final TRANSACT_ID_CHOOSE_BLUR_TYPE:I = 0x84da

.field private static final UISERVICE_TRANSACTION_NOTIFY_FLOAT_WINDOWSCENE:I = 0x6

.field private static final UI_SERVICE_NAME:Ljava/lang/String; = "uiservice"

.field private static final VIRTUAL_CAMERA_BOUNDARY:I = 0x64

.field private static final WHITE_BOOT_UP_ACTIVITY:Ljava/lang/String; = "com.android.provision/.activities.DefaultActivity"

.field private static final WIFISETTINGACTIVITY:Ljava/lang/String; = "com.android.settings.Settings$WifiSettingsActivity"

.field private static mCarMirrorRelaunchBlackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mFloatWindowMirrorWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mLaunchBindCoreAnimEnable:Z

.field private static mProjectionBlackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private BOOST:Z

.field HAS_SCREEN_SHOT:Z

.field IS_CTS_MODE:Z

.field private leftAppearance:I

.field private leftStatusBounds:Landroid/graphics/Rect;

.field private mAnimInterruptController:Lcom/android/server/wm/AnimInterruptController;

.field mAppOps:Landroid/app/AppOpsManager;

.field mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

.field private final mAvailabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

.field private mBlackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBlurWallpaperBmp:Landroid/graphics/Bitmap;

.field private mBootBlackCoverLayer:Landroid/view/SurfaceControl;

.field private mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

.field private mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private mCaptureGameLayerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCarMirrorRelaunchChanges:I

.field mContext:Landroid/content/Context;

.field private volatile mCurrentDeviceState:I

.field private mDimNeedAssistMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mDimUserTimeoutMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field private mDisplayManagerServiceStub:Lcom/android/server/display/DisplayManagerServiceStub;

.field private mEnableCarMirrorRelaunch:Z

.field private final mFlipListenerLock:Ljava/lang/Object;

.field private mFoldedDeviceStates:[I

.field private mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field final mH:Lcom/android/server/wm/WindowManagerServiceImpl$H;

.field private mIsOccluded:Z

.field private mIsResolutionChanged:Z

.field private mLastAnimationScale:[F

.field private final mLastAnimationScaleProp:Ljava/lang/String;

.field private mLastIsFullScreen:Ljava/lang/Boolean;

.field public mLastWindowHasSecure:Z

.field private mMiuiDisplayDensity:I

.field private mMiuiDisplayHeight:I

.field private mMiuiDisplayWidth:I

.field private mMiuiPaperContrastOverlay:Landroid/view/SurfaceControl;

.field private mMiuiSecurityImeWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mNavigationBarColorListenerMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/view/IFlipWindowStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNavigationColor:I

.field private mNeedSwapAnimation:Z

.field private mNeedUpdateOrientationForFold:Z

.field final mOccludedChangedListener:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/IOccludedChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOpeningCameraID:Ljava/util/Set;

.field private mPackageInternal:Landroid/content/pm/PackageManagerInternal;

.field private mPendingHoldonStateOff:Z

.field private mPendingSetOrientationForFold:Z

.field volatile mPendingSetRotationAndOrientationForFold:Z

.field private mPendingSwitchResolution:Z

.field private mPhysicalDensity:I

.field private mPhysicalHeight:I

.field private mPhysicalWidth:I

.field private mPowerKeeperPolicy:Lcom/miui/whetstone/PowerKeeperPolicy;

.field private final mResetAnimationScaleTimeout:Ljava/lang/Runnable;

.field private final mResetSwapAnimation:Ljava/lang/Runnable;

.field private mRunningRecentsAnimation:Z

.field private final mScreenStateListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/WindowManagerServiceImpl$ScreenStateListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mScreenStateListenersToNotify:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowManagerServiceImpl$ScreenStateListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mSecureChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/IWindowSecureChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSecurityInternal:Lmiui/security/SecurityManagerInternal;

.field private mSmartPowerServiceInternal:Lcom/miui/app/smartpower/SmartPowerServiceInternal;

.field private mSplitMode:Z

.field private mStubBinder:Lcom/android/server/wm/WindowManagerServiceImpl$StubBinder;

.field private mSupportActiveModeSwitch:Z

.field private mSupportSwitchResolutionFeature:Z

.field private mTaskIdScreenBrightnessOverrides:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mTicketActive:Z

.field private mTransitionReadyList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateOrientationForFoldTimeout:Ljava/lang/Runnable;

.field private mWallpaperCallback:Landroid/app/IWallpaperManagerCallback;

.field mWmService:Lcom/android/server/wm/WindowManagerService;

.field private miuiHoverModeInternal:Lcom/android/server/wm/MiuiHoverModeInternal;

.field private rightAppearance:I

.field private rightStatusBounds:Landroid/graphics/Rect;


# direct methods
.method public static synthetic $r8$lambda$5_CJGJx0yX6hinNC_pj7kIGyEIM(Lcom/android/server/wm/WindowManagerServiceImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerServiceImpl;->lambda$updateScreenShareProjectFlag$10()V

    return-void
.end method

.method public static synthetic $r8$lambda$BG6WVoEoI3XISsaGmsXqynPbeTI(Lcom/android/server/wm/WindowManagerServiceImpl;Lcom/android/server/wm/Task;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerServiceImpl;->lambda$notifySystemBrightnessChange$11(Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DOh1iXopMnm5zxpG3aGmznh4xPU(Lcom/android/server/wm/WindowManagerServiceImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerServiceImpl;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$KHH6IJH7v2SEfpF7hvwrSwwsugs(Lcom/android/server/wm/WindowManagerServiceImpl;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerServiceImpl;->lambda$registerLocalScenarioCallback$4(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$RyCc2MUUqXzDSlXmaiY8tCl2r-Y(Lcom/android/server/wm/WindowManagerServiceImpl;Lcom/android/server/wm/WindowState;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerServiceImpl;->lambda$updateScreenShareProjectFlag$9(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TY0W24w7TvsnPcN3hNC4GXvw_5U(Lcom/android/server/wm/WindowManagerServiceImpl;Lcom/android/server/wm/WindowState;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerServiceImpl;->lambda$notAllowCaptureDisplay$13(Lcom/android/server/wm/WindowState;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$VzHo8Br9559BZ0_Nwqa1BVtlmKE(Lcom/android/server/wm/WindowManagerServiceImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerServiceImpl;->lambda$notifySystemBrightnessChange$12()V

    return-void
.end method

.method public static synthetic $r8$lambda$ZGHtuk-s8EiJVFuhiyFKtRkm2ZI(Lcom/android/server/wm/WindowManagerServiceImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerServiceImpl;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$l6gIlLOB3IBkElddu05U4pJnXv8(Lcom/android/server/wm/WindowManagerServiceImpl;ZLcom/android/server/wm/WindowState;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowManagerServiceImpl;->lambda$setRoundedCornerOverlaysCanScreenShot$6(ZLcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mmzPm2_DdzG3NT-zjQDPlSch7lw(Lcom/android/server/wm/WindowManagerServiceImpl;JJZLmiui/scenariorecognition/RimParameter;)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/server/wm/WindowManagerServiceImpl;->lambda$registerLocalScenarioCallback$5(JJZLmiui/scenariorecognition/RimParameter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yymC5ai2GIQiTruvB0sK9gxsv2k(Lcom/android/server/wm/WindowManagerServiceImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerServiceImpl;->lambda$setNeedUpdateOrientationForFold$19()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmGlobalLock(Lcom/android/server/wm/WindowManagerServiceImpl;)Lcom/android/server/wm/WindowManagerGlobalLock;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOpeningCameraID(Lcom/android/server/wm/WindowManagerServiceImpl;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mOpeningCameraID:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcurrentPackageName(Lcom/android/server/wm/WindowManagerServiceImpl;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerServiceImpl;->currentPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mremoveScreenStateListener(Lcom/android/server/wm/WindowManagerServiceImpl;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerServiceImpl;->removeScreenStateListener(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/wm/WindowManagerServiceImpl;->mFloatWindowMirrorWhiteList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/wm/WindowManagerServiceImpl;->BLACK_LIST_NOT_COLLECT_IN_TRANSITION:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/wm/WindowManagerServiceImpl;->HOME_PACKAGE_NAME:Ljava/util/Set;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/wm/WindowManagerServiceImpl;->SUB_BUILTIN_DISPLAY_PACKAGE_NAME_WHITE_LIST:Landroid/util/ArraySet;

    sget-object v0, Lcom/android/server/wm/WindowManagerServiceImpl;->SUB_BUILTIN_DISPLAY_PACKAGE_NAME_WHITE_LIST:Landroid/util/ArraySet;

    const-string v1, "android.server.wm.app"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/wm/WindowManagerServiceImpl;->HOME_PACKAGE_NAME:Ljava/util/Set;

    const-string v1, "com.miui.home"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/wm/WindowManagerServiceImpl;->HOME_PACKAGE_NAME:Ljava/util/Set;

    const-string v1, "com.mi.android.globallauncher"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/wm/WindowManagerServiceImpl;->BLACK_LIST_NOT_COLLECT_IN_TRANSITION:Ljava/util/ArrayList;

    const-string v1, "com.xiaomi.misubscreenui"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/wm/WindowManagerServiceImpl;->mFloatWindowMirrorWhiteList:Ljava/util/ArrayList;

    const-string v1, "com.alibaba.android.rimet"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/wm/WindowManagerServiceImpl;->mFloatWindowMirrorWhiteList:Ljava/util/ArrayList;

    const-string v1, "com.tencent.mm"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/wm/WindowManagerServiceImpl;->mFloatWindowMirrorWhiteList:Ljava/util/ArrayList;

    const-string v2, "tv.danmaku.bili"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "com.tencent.mm/com.tencent.mm.plugin.voip.ui.VideoActivity"

    const-string v2, "com.tencent.mm/com.tencent.mm.plugin.multitalk.ui.MultiTalkMainUI"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/WindowManagerServiceImpl;->FORCE_ORI_LIST:[Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sput-object v0, Lcom/android/server/wm/WindowManagerServiceImpl;->CUR_DEVICE:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/wm/WindowManagerServiceImpl;->mProjectionBlackList:Ljava/util/List;

    sput-object v1, Lcom/android/server/wm/WindowManagerServiceImpl;->MM:Ljava/lang/String;

    const-string v0, "com.tencent.mobileqq"

    sput-object v0, Lcom/android/server/wm/WindowManagerServiceImpl;->QQ:Ljava/lang/String;

    const-string v0, "com.google.android.dialer"

    sput-object v0, Lcom/android/server/wm/WindowManagerServiceImpl;->GOOGLE:Ljava/lang/String;

    const-string v0, "com.miui.securitycenter"

    sput-object v0, Lcom/android/server/wm/WindowManagerServiceImpl;->SECURITY:Ljava/lang/String;

    const-string v0, "com.tencent.mm/.FloatingWindow"

    sput-object v0, Lcom/android/server/wm/WindowManagerServiceImpl;->MM_FLOATING:Ljava/lang/String;

    const-string v0, "com.tencent.mobileqq/.FloatingWindow"

    sput-object v0, Lcom/android/server/wm/WindowManagerServiceImpl;->QQ_FLOATING:Ljava/lang/String;

    const-string v0, "com.google.android.dialer/.FloatingWindow"

    sput-object v0, Lcom/android/server/wm/WindowManagerServiceImpl;->GOOGLE_FLOATING:Ljava/lang/String;

    const-string v0, "com.miui.securitycenter/.FloatingWindow"

    sput-object v0, Lcom/android/server/wm/WindowManagerServiceImpl;->SECURITY_FLOATING:Ljava/lang/String;

    const-string v0, "com.xiaomi.finddevice"

    sput-object v0, Lcom/android/server/wm/WindowManagerServiceImpl;->FIND_DEVICE:Ljava/lang/String;

    const-string v0, "support_cloud_dim"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/WindowManagerServiceImpl;->SUPPPORT_CLOUD_DIM:Z

    const-string v0, "persist.sys.unionpower.enable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/WindowManagerServiceImpl;->SUPPORT_UNION_POWER_CORE:Z

    const-string v0, "persist.sys.bindcore_anim_enable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/WindowManagerServiceImpl;->mLaunchBindCoreAnimEnable:Z

    const-string v0, "ro.vendor.display.uiservice.enable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/WindowManagerServiceImpl;->SUPPPORT_UISERVICE:Z

    const-string v0, "persist.sys.background_blur_supported"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/WindowManagerServiceImpl;->BACKGROUND_BLUR_SUPPORTED:Z

    const-string v0, "persist.sys.background_blur_status_default"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/WindowManagerServiceImpl;->BACKGROUND_BLUR_STATUS_DEFAULT:Z

    nop

    const-string v0, "persist.sys.capture_game_layer"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/WindowManagerServiceImpl;->CAN_CAPTURE_GAME_LAYER:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/wm/WindowManagerServiceImpl;->mCarMirrorRelaunchBlackList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mNeedSwapAnimation:Z

    new-instance v1, Lcom/android/server/wm/WindowManagerServiceImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/wm/WindowManagerServiceImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/WindowManagerServiceImpl;)V

    iput-object v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mResetSwapAnimation:Ljava/lang/Runnable;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mDimUserTimeoutMap:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mDimNeedAssistMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mPowerKeeperPolicy:Lcom/miui/whetstone/PowerKeeperPolicy;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mTaskIdScreenBrightnessOverrides:Landroid/util/SparseArray;

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->IS_CTS_MODE:Z

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->HAS_SCREEN_SHOT:Z

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mSplitMode:Z

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mOpeningCameraID:Ljava/util/Set;

    const-string v2, "persist.sys.raise_anim_prio"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->BOOST:Z

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mLastWindowHasSecure:Z

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->leftStatusBounds:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->rightStatusBounds:Landroid/graphics/Rect;

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->leftAppearance:I

    iput v2, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->rightAppearance:I

    iput-object v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mMiuiPaperContrastOverlay:Landroid/view/SurfaceControl;

    iput-object v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mLastIsFullScreen:Ljava/lang/Boolean;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mFlipListenerLock:Ljava/lang/Object;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mNavigationBarColorListenerMap:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/server/wm/WindowManagerServiceImpl$1;

    invoke-direct {v1, p0}, Lcom/android/server/wm/WindowManagerServiceImpl$1;-><init>(Lcom/android/server/wm/WindowManagerServiceImpl;)V

    iput-object v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mCaptureGameLayerList:Ljava/util/List;

    new-instance v1, Lcom/android/server/wm/WindowManagerServiceImpl$2;

    invoke-direct {v1, p0}, Lcom/android/server/wm/WindowManagerServiceImpl$2;-><init>(Lcom/android/server/wm/WindowManagerServiceImpl;)V

    iput-object v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mMiuiSecurityImeWhiteList:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mTransitionReadyList:Ljava/util/HashSet;

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mIsOccluded:Z

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mEnableCarMirrorRelaunch:Z

    iput v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mCarMirrorRelaunchChanges:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mSecureChangeListeners:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/wm/WindowManagerServiceImpl$H;

    invoke-direct {v1, p0}, Lcom/android/server/wm/WindowManagerServiceImpl$H;-><init>(Lcom/android/server/wm/WindowManagerServiceImpl;)V

    iput-object v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mH:Lcom/android/server/wm/WindowManagerServiceImpl$H;

    iput v2, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mCurrentDeviceState:I

    const/4 v1, 0x3

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mLastAnimationScale:[F

    nop

    const-string v1, "persist.sys.animation_scale"

    const-string v2, "1.0, 1.0, 1.0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mLastAnimationScaleProp:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mTicketActive:Z

    new-instance v0, Lcom/android/server/wm/WindowManagerServiceImpl$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/server/wm/WindowManagerServiceImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/WindowManagerServiceImpl;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mResetAnimationScaleTimeout:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/wm/WindowManagerServiceImpl$6;

    invoke-direct {v0, p0}, Lcom/android/server/wm/WindowManagerServiceImpl$6;-><init>(Lcom/android/server/wm/WindowManagerServiceImpl;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mAvailabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mOccludedChangedListener:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mScreenStateListeners:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mScreenStateListenersToNotify:Ljava/util/ArrayList;

    return-void

    :array_0
    .array-data 4
        0x3f800000
        0x3f800000
        0x3f800000
    .end array-data
.end method

.method private accessModeAll(II)Z
    .registers 15

    const-string v0, "Invalid packageUid format: "

    const-string v1, "WindowManagerService"

    invoke-static {}, Lcom/android/server/wm/MirrorActiveUidsStub;->getInstance()Lcom/android/server/wm/MirrorActiveUidsStub;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/wm/MirrorActiveUidsStub;->getVisibleWindowPackageWithUidList(I)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_3

    :cond_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    :try_start_0
    const-string v6, "~"

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    array-length v8, v6

    if-ne v8, v7, :cond_3

    const/4 v7, 0x0

    aget-object v8, v6, v7

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_1

    :cond_1
    aget-object v8, v6, v7

    aget-object v9, v6, v3

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {}, Lcom/android/server/wm/WindowManagerServiceStub;->get()Lcom/android/server/wm/WindowManagerServiceStub;

    move-result-object v10

    invoke-interface {v10, p2, v8, v9}, Lcom/android/server/wm/WindowManagerServiceStub;->accessAppContentEnable(ILjava/lang/String;I)Z

    move-result v10

    if-nez v10, :cond_2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "failed for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " to access "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_2
    goto :goto_2

    :cond_3
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    goto :goto_0

    :cond_4
    return v3

    :cond_5
    :goto_3
    return v3
.end method

.method private accessModeExclude(II[Ljava/lang/String;)Z
    .registers 20

    move/from16 v1, p2

    move-object/from16 v0, p3

    const-string v2, "Invalid packageUid format: "

    const/4 v3, 0x0

    const-string v4, "WindowManagerService"

    if-eqz v0, :cond_1

    array-length v5, v0

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    move-object v5, v0

    goto :goto_1

    :cond_1
    :goto_0
    const-string v5, "Mode 1 but no layers to exclude, checking all uids."

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, v3, [Ljava/lang/String;

    move-object v5, v0

    :goto_1
    new-instance v0, Ljava/util/HashSet;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v6, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "captureDisplay: layers to exclude="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/wm/MirrorActiveUidsStub;->getInstance()Lcom/android/server/wm/MirrorActiveUidsStub;

    move-result-object v0

    move/from16 v7, p1

    invoke-virtual {v0, v7}, Lcom/android/server/wm/MirrorActiveUidsStub;->getVisibleWindowPackageWithUidList(I)Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x1

    if-eqz v8, :cond_8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_5

    :cond_2
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/lang/String;

    :try_start_0
    const-string v0, "~"

    const/4 v12, 0x2

    invoke-virtual {v11, v0, v12}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v13, v0

    if-ne v13, v12, :cond_6

    aget-object v12, v0, v3

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3

    goto :goto_3

    :cond_3
    aget-object v12, v0, v3

    aget-object v13, v0, v9

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v6, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    goto :goto_2

    :cond_4
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "uid "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", pkg: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " is not in exclude list"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v4, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/wm/WindowManagerServiceStub;->get()Lcom/android/server/wm/WindowManagerServiceStub;

    move-result-object v14

    invoke-interface {v14, v1, v12, v13}, Lcom/android/server/wm/WindowManagerServiceStub;->accessAppContentEnable(ILjava/lang/String;I)Z

    move-result v14

    if-nez v14, :cond_5

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "failed for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " to access "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", pkg:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v4, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_5
    goto :goto_4

    :cond_6
    :goto_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    goto :goto_2

    :cond_7
    const-string v0, "All necessary permission checks passed for mode 1."

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_8
    :goto_5
    return v9
.end method

.method private accessModeInclude(II[Ljava/lang/String;)Z
    .registers 20

    move/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "Invalid packageUid format: "

    const/4 v4, 0x1

    const-string v5, "WindowManagerService"

    if-eqz v2, :cond_8

    array-length v0, v2

    if-nez v0, :cond_0

    move/from16 v7, p1

    goto :goto_4

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v6, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "captureDisplay: layers to include="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/wm/MirrorActiveUidsStub;->getInstance()Lcom/android/server/wm/MirrorActiveUidsStub;

    move-result-object v0

    move/from16 v7, p1

    invoke-virtual {v0, v7}, Lcom/android/server/wm/MirrorActiveUidsStub;->getVisibleWindowPackageWithUidList(I)Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_7

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_3

    :cond_1
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/lang/String;

    :try_start_0
    const-string v0, "~"

    const/4 v11, 0x2

    invoke-virtual {v10, v0, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v12, v0

    if-ne v12, v11, :cond_5

    const/4 v11, 0x0

    aget-object v12, v0, v11

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_2

    goto :goto_1

    :cond_2
    aget-object v12, v0, v11

    aget-object v13, v0, v4

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v6, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    goto :goto_0

    :cond_3
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "uid "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " ctlPkg: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " is in include list"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v5, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/wm/WindowManagerServiceStub;->get()Lcom/android/server/wm/WindowManagerServiceStub;

    move-result-object v14

    invoke-interface {v14, v1, v12, v13}, Lcom/android/server/wm/WindowManagerServiceStub;->accessAppContentEnable(ILjava/lang/String;I)Z

    move-result v14

    if-nez v14, :cond_4

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "failed for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " to access "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", ctlPkg:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v5, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    :cond_4
    goto :goto_2

    :cond_5
    :goto_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    goto :goto_0

    :cond_6
    const-string v0, "All necessary permission checks passed for mode 2."

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_7
    :goto_3
    return v4

    :cond_8
    move/from16 v7, p1

    :goto_4
    const-string v0, "Mode 2 but no layers to include, nothing to capture."

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method private addShowOnFindDeviceKeyguardAttrsIfNecessary(Landroid/view/WindowManager$LayoutParams;Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.xiaomi.system.devicelock.locked"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    const-string v3, "com.android.phone"

    invoke-static {v3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    return-void

    :cond_0
    const-string v3, "com.google.android.dialer"

    invoke-static {v3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    return-void

    :cond_1
    if-nez v0, :cond_2

    return-void

    :cond_2
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    or-int/lit16 v1, v1, 0x1000

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    return-void
.end method

.method private adjustFindDeviceAttrs(ILandroid/view/WindowManager$LayoutParams;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p2, p3}, Lcom/android/server/wm/WindowManagerServiceImpl;->addShowOnFindDeviceKeyguardAttrsIfNecessary(Landroid/view/WindowManager$LayoutParams;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/WindowManagerServiceImpl;->removeFindDeviceKeyguardFlagsIfNecessary(ILandroid/view/WindowManager$LayoutParams;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/WindowManagerServiceImpl;->killFreeformForFindDeviceKeyguardIfNecessary(ILandroid/view/WindowManager$LayoutParams;Ljava/lang/String;)V

    return-void
.end method

.method private adjustGoogleAssistantAttrs(Landroid/view/WindowManager$LayoutParams;Ljava/lang/String;)V
    .registers 5

    const-string v0, "com.google.android.googlequicksearchbox"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    return-void
.end method

.method private calcDensityAndUpdateForceDensityIfNeed(I)I
    .registers 7

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerServiceImpl;->getForcedDensity()I

    move-result v0

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerServiceImpl;->isDensityForced()Z

    move-result v1

    const/high16 v2, 0x3f800000

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mPhysicalDensity:I

    mul-int/2addr v1, p1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mPhysicalWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mMiuiDisplayWidth:I

    if-eqz v1, :cond_1

    mul-int v1, p1, v0

    int-to-float v1, v1

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mMiuiDisplayWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iput v0, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    const-string v4, "display_density_forced"

    invoke-static {v1, v4, v2, v3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_1
    :goto_0
    return v0
.end method

.method private checkDDICSupportAndInitPhysicalSize()V
    .registers 8

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    iget-object v2, v0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v4, v2, v1

    iget v5, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mPhysicalHeight:I

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v5

    iget v6, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mPhysicalHeight:I

    if-eq v5, v6, :cond_0

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mSupportActiveModeSwitch:Z

    :cond_0
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v5

    iget v6, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mPhysicalHeight:I

    if-le v5, v6, :cond_1

    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v5

    iput v5, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mPhysicalWidth:I

    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v5

    iput v5, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mPhysicalHeight:I

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-string v1, "ro.sf.lcd_density"

    const/16 v3, 0x230

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mPhysicalDensity:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init resolution mSupportActiveModeSwitch:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mSupportActiveModeSwitch:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " mPhysicalWidth:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mPhysicalWidth:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " mPhysicalHeight:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mPhysicalHeight:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " mPhysicalDensity:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mPhysicalDensity:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "WindowManagerService"

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private checkIfUnusualWindowEvent(ILjava/lang/String;II)V
    .registers 14

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v0

    nop

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "com.miui.home"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "com.android.systemui"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "android"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v6, p2

    goto :goto_3

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mSecurityInternal:Lmiui/security/SecurityManagerInternal;

    if-nez v0, :cond_1

    const-class v0, Lmiui/security/SecurityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManagerInternal;

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mSecurityInternal:Lmiui/security/SecurityManagerInternal;

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mSecurityInternal:Lmiui/security/SecurityManagerInternal;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mSecurityInternal:Lmiui/security/SecurityManagerInternal;

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Lmiui/security/SecurityManagerInternal;->getThreshold(I)J

    move-result-wide v7

    int-to-long v0, p3

    cmp-long v0, v0, v7

    if-lez v0, :cond_6

    int-to-long v0, p4

    cmp-long v0, v0, v7

    if-gtz v0, :cond_2

    move-object v6, p2

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mPhysicalWidth:I

    if-lez v0, :cond_5

    iget v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mPhysicalHeight:I

    if-lez v0, :cond_5

    int-to-long v0, p3

    iget v2, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mPhysicalWidth:I

    int-to-long v4, v2

    add-long/2addr v4, v7

    cmp-long v0, v0, v4

    if-gez v0, :cond_4

    int-to-long v0, p4

    iget v2, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mPhysicalHeight:I

    int-to-long v4, v2

    add-long/2addr v4, v7

    cmp-long v0, v0, v4

    if-ltz v0, :cond_3

    goto :goto_0

    :cond_3
    move-object v6, p2

    goto :goto_2

    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mSecurityInternal:Lmiui/security/SecurityManagerInternal;

    const/16 v2, 0x26

    const-wide/16 v4, 0x1

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lmiui/security/SecurityManagerInternal;->recordAppBehaviorAsync(ILjava/lang/String;JLjava/lang/String;)V

    goto :goto_2

    :cond_5
    move-object v6, p2

    goto :goto_2

    :cond_6
    move-object v6, p2

    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mSecurityInternal:Lmiui/security/SecurityManagerInternal;

    const/16 v2, 0x25

    const-wide/16 v4, 0x1

    invoke-virtual/range {v1 .. v6}, Lmiui/security/SecurityManagerInternal;->recordAppBehaviorAsync(ILjava/lang/String;JLjava/lang/String;)V

    goto :goto_2

    :cond_7
    move-object v6, p2

    :goto_2
    return-void

    :cond_8
    move-object v6, p2

    goto :goto_3

    :cond_9
    move-object v6, p2

    goto :goto_3

    :cond_a
    move-object v6, p2

    :goto_3
    return-void

    :catch_0
    move-exception v0

    move-object v6, p2

    move-object p2, v0

    return-void
.end method

.method private createAppearance(Landroid/graphics/Rect;)I
    .registers 11

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mBlurWallpaperBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mBlurWallpaperBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mBlurWallpaperBmp:Landroid/graphics/Bitmap;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-static {v2, v4, v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/wm/WindowManagerServiceImpl;->getAverageColorBitmap(Landroid/graphics/Bitmap;)I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    invoke-static {v4}, Lcom/android/internal/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/high16 v7, 0x3fe0000000000000L

    cmpl-double v5, v5, v7

    if-ltz v5, :cond_0

    const/16 v3, 0x8

    :cond_0
    return v3

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "create appearance fail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WindowManagerService"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method private currentPackageName()Ljava/lang/String;
    .registers 2

    invoke-static {}, Landroid/app/ActivityThread;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "system_server"

    return-object v0

    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private dumpAotTrace(Z)V
    .registers 8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    const-string v2, "WindowManagerService"

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    const-string v1, "dumpAotTrace: only system or root can dump aot trace"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dumpAotTrace sync:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-class v1, Lcom/android/server/logmanager/HyperLogManagerServiceInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/logmanager/HyperLogManagerServiceInternal;

    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/android/server/wm/WindowManagerServiceImpl$$ExternalSyntheticLambda19;

    invoke-direct {v2, p1}, Lcom/android/server/wm/WindowManagerServiceImpl$$ExternalSyntheticLambda19;-><init>(Z)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method private dumpPerfTrace()V
    .registers 6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    const-string v1, "WindowManagerService"

    const-string v2, "DumpPerfTrace failed: only system or root can dump performance trace"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    const-class v3, Lcom/android/server/logmanager/HyperLogManagerServiceInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/logmanager/HyperLogManagerServiceInternal;

    invoke-static {v3}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lcom/android/server/wm/WindowManagerServiceImpl$$ExternalSyntheticLambda16;

    invoke-direct {v4}, Lcom/android/server/wm/WindowManagerServiceImpl$$ExternalSyntheticLambda16;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private enableFullScreen(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 7

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/WindowManagerServiceImpl;->getFlipCompatModeByActivity(Landroid/content/pm/IPackageManager;Landroid/content/ComponentName;)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_1

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/android/server/wm/WindowManagerServiceImpl;->getFlipCompatModeByApp(Landroid/content/pm/IPackageManager;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    return v3

    :cond_1
    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    :goto_1
    return v3
.end method

.method private enableWmsDebugConfig(Ljava/lang/String;Z)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableWMSDebugConfig, config=:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", enable=:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "DEBUG_UNKNOWN_APP_VISIBILITY"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x18

    goto :goto_1

    :sswitch_1
    const-string v0, "DEBUG_INPUT_METHOD"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_2
    const-string v0, "DEBUG_POWER"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    goto :goto_1

    :sswitch_3
    const-string v0, "DEBUG_INPUT"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_4
    const-string v0, "DEBUG_LAYOUT"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_5
    const-string v0, "DEBUG_LAYERS"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_6
    const-string v0, "DEBUG_WINDOW_CROP"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x17

    goto :goto_1

    :sswitch_7
    const-string v0, "SHOW_STACK_CRAWLS"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16

    goto :goto_1

    :sswitch_8
    const-string v0, "DEBUG_STARTING_WINDOW_VERBOSE"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_9
    const-string v0, "DEBUG_LAYOUT_REPEATS"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto :goto_1

    :sswitch_a
    const-string v0, "DEBUG_TASK_MOVEMENT"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto :goto_1

    :sswitch_b
    const-string v0, "DEBUG_CONFIGURATION"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_c
    const-string v0, "DEBUG_ROOT_TASK"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto :goto_1

    :sswitch_d
    const-string v0, "SHOW_VERBOSE_TRANSACTIONS"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    goto :goto_1

    :sswitch_e
    const-string v0, "DEBUG_DISPLAY"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto :goto_1

    :sswitch_f
    const-string v0, "DEBUG"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_10
    const-string v0, "DEBUG_SCREENSHOT"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto :goto_1

    :sswitch_11
    const-string v0, "DEBUG_TASK_POSITIONING"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto :goto_1

    :sswitch_12
    const-string v0, "DEBUG_WALLPAPER"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_13
    const-string v0, "DEBUG_DRAG"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto :goto_1

    :sswitch_14
    const-string v0, "DEBUG_ANIM"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_15
    const-string v0, "DEBUG_WINDOW_TRACE"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto :goto_1

    :sswitch_16
    const-string v0, "SHOW_LIGHT_TRANSACTIONS"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    goto :goto_1

    :sswitch_17
    const-string v0, "DEBUG_WALLPAPER_LIGHT"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_1

    :sswitch_18
    const-string v0, "DEBUG_VISIBILITY"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0  #0x18
    sput-boolean p2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_UNKNOWN_APP_VISIBILITY:Z

    goto :goto_2

    :pswitch_1  #0x17
    sput-boolean p2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_CROP:Z

    goto :goto_2

    :pswitch_2  #0x16
    sput-boolean p2, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_STACK_CRAWLS:Z

    goto :goto_2

    :pswitch_3  #0x15
    sput-boolean p2, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    goto :goto_2

    :pswitch_4  #0x14
    sput-boolean p2, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_VERBOSE_TRANSACTIONS:Z

    goto :goto_2

    :pswitch_5  #0x13
    sput-boolean p2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_POWER:Z

    goto :goto_2

    :pswitch_6  #0x12
    sput-boolean p2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DISPLAY:Z

    goto :goto_2

    :pswitch_7  #0x11
    sput-boolean p2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ROOT_TASK:Z

    goto :goto_2

    :pswitch_8  #0x10
    sput-boolean p2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    goto :goto_2

    :pswitch_9  #0xf
    sput-boolean p2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_MOVEMENT:Z

    goto :goto_2

    :pswitch_a  #0xe
    sput-boolean p2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_TRACE:Z

    goto :goto_2

    :pswitch_b  #0xd
    sput-boolean p2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    goto :goto_2

    :pswitch_c  #0xc
    sput-boolean p2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREENSHOT:Z

    goto :goto_2

    :pswitch_d  #0xb
    sput-boolean p2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DRAG:Z

    goto :goto_2

    :pswitch_e  #0xa
    sput-boolean p2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER_LIGHT:Z

    goto :goto_2

    :pswitch_f  #0x9
    sput-boolean p2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    goto :goto_2

    :pswitch_10  #0x8
    sput-boolean p2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW_VERBOSE:Z

    goto :goto_2

    :pswitch_11  #0x7
    sput-boolean p2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    goto :goto_2

    :pswitch_12  #0x6
    sput-boolean p2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    goto :goto_2

    :pswitch_13  #0x5
    sput-boolean p2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    goto :goto_2

    :pswitch_14  #0x4
    sput-boolean p2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT:Z

    goto :goto_2

    :pswitch_15  #0x3
    sput-boolean p2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYERS:Z

    goto :goto_2

    :pswitch_16  #0x2
    sput-boolean p2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    goto :goto_2

    :pswitch_17  #0x1
    sput-boolean p2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    goto :goto_2

    :pswitch_18  #0x0
    sput-boolean p2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG:Z

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7caac762 -> :sswitch_18
        -0x644285b3 -> :sswitch_17
        -0x5ff91180 -> :sswitch_16
        -0x541dd15e -> :sswitch_15
        -0x4f0b4363 -> :sswitch_14
        -0x4f09d840 -> :sswitch_13
        -0x44802d2a -> :sswitch_12
        -0x27886d35 -> :sswitch_11
        -0x933a50e -> :sswitch_10
        0x3de9e33 -> :sswitch_f
        0x27030696 -> :sswitch_e
        0x27931d14 -> :sswitch_d
        0x31af5fb6 -> :sswitch_c
        0x37e7a7ca -> :sswitch_b
        0x4796751d -> :sswitch_a
        0x4bab218f -> :sswitch_9
        0x4c2f9be6 -> :sswitch_8
        0x4d5f5ce5 -> :sswitch_7
        0x58185973 -> :sswitch_6
        0x58cd58ce -> :sswitch_5
        0x58cd7eb6 -> :sswitch_4
        0x6e13ae9e -> :sswitch_3
        0x6e76dfd9 -> :sswitch_2
        0x78cf05a2 -> :sswitch_1
        0x7d7e2051 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_18  #00000000
        :pswitch_17  #00000001
        :pswitch_16  #00000002
        :pswitch_15  #00000003
        :pswitch_14  #00000004
        :pswitch_13  #00000005
        :pswitch_12  #00000006
        :pswitch_11  #00000007
        :pswitch_10  #00000008
        :pswitch_f  #00000009
        :pswitch_e  #0000000a
        :pswitch_d  #0000000b
        :pswitch_c  #0000000c
        :pswitch_b  #0000000d
        :pswitch_a  #0000000e
        :pswitch_9  #0000000f
        :pswitch_8  #00000010
        :pswitch_7  #00000011
        :pswitch_6  #00000012
        :pswitch_5  #00000013
        :pswitch_4  #00000014
        :pswitch_3  #00000015
        :pswitch_2  #00000016
        :pswitch_1  #00000017
        :pswitch_0  #00000018
    .end packed-switch
.end method

.method private getAverageColorBitmap(Landroid/graphics/Bitmap;)I
    .registers 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-ge v5, v6, :cond_1

    const/4 v6, 0x0

    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    if-ge v6, v7, :cond_0

    invoke-virtual {p1, v6, v5}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v7

    add-int/lit8 v4, v4, 0x1

    invoke-static {v7}, Landroid/graphics/Color;->red(I)I

    move-result v8

    add-int/2addr v0, v8

    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    move-result v8

    add-int/2addr v1, v8

    invoke-static {v7}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    add-int/2addr v2, v8

    invoke-static {v7}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    add-int/2addr v3, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    div-int v5, v0, v4

    div-int v6, v1, v4

    div-int v7, v2, v4

    div-int v8, v3, v4

    invoke-static {v8, v5, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v9

    return v9
.end method

.method private getDefaultDisplayContent()Lcom/android/server/wm/DisplayContent;
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-object v0
.end method

.method private getFlipCompatModeByActivity(Landroid/content/pm/IPackageManager;Landroid/content/ComponentName;)I
    .registers 7

    const/4 v0, 0x0

    nop

    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const-wide/16 v2, 0x80

    invoke-interface {p1, p2, v2, v3, v1}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "WindowManagerService"

    const-string v3, "getActivityInfo fail"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowManagerServiceImpl;->getFullScreenValue(Landroid/content/pm/PackageItemInfo;)I

    move-result v1

    return v1
.end method

.method private getFlipCompatModeByApp(Landroid/content/pm/IPackageManager;Ljava/lang/String;)I
    .registers 7

    const/4 v0, 0x0

    nop

    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const-wide/16 v2, 0x80

    invoke-interface {p1, p2, v2, v3, v1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "WindowManagerService"

    const-string v3, "getApplicationInfo fail"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowManagerServiceImpl;->getFullScreenValue(Landroid/content/pm/PackageItemInfo;)I

    move-result v1

    return v1
.end method

.method private getFullScreenValue(Landroid/content/pm/PackageItemInfo;)I
    .registers 4

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "miui.supportFlipFullScreen"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public static getInstance()Lcom/android/server/wm/WindowManagerServiceImpl;
    .registers 1

    invoke-static {}, Lcom/android/server/wm/WindowManagerServiceStub;->get()Lcom/android/server/wm/WindowManagerServiceStub;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerServiceImpl;

    return-object v0
.end method

.method public static getProjectionBlackList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/server/wm/WindowManagerServiceImpl;->mProjectionBlackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/wm/WindowManagerServiceImpl;->mProjectionBlackList:Ljava/util/List;

    const-string v1, "StatusBar"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/wm/WindowManagerServiceImpl;->mProjectionBlackList:Ljava/util/List;

    const-string v1, "Splash Screen com.android.incallui"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/wm/WindowManagerServiceImpl;->mProjectionBlackList:Ljava/util/List;

    const-string v1, "com.android.incallui/com.android.incallui.InCallActivity"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/wm/WindowManagerServiceImpl;->mProjectionBlackList:Ljava/util/List;

    const-string v1, "FloatAssistantView"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/wm/WindowManagerServiceImpl;->mProjectionBlackList:Ljava/util/List;

    const-string v1, "MiuiFreeformBorderView"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/wm/WindowManagerServiceImpl;->mProjectionBlackList:Ljava/util/List;

    const-string v1, "SnapshotStartingWindow for"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/wm/WindowManagerServiceImpl;->mProjectionBlackList:Ljava/util/List;

    const-string v1, "ScreenshotThumbnail"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/wm/WindowManagerServiceImpl;->mProjectionBlackList:Ljava/util/List;

    const-string v1, "com.milink.ui.activity.ScreeningConsoleWindow"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/wm/WindowManagerServiceImpl;->mProjectionBlackList:Ljava/util/List;

    const-string v1, "FloatNotificationPanel"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/wm/WindowManagerServiceImpl;->mProjectionBlackList:Ljava/util/List;

    const-string v1, "com.tencent.mobileqq/com.tencent.av.ui.AVActivity"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/wm/WindowManagerServiceImpl;->mProjectionBlackList:Ljava/util/List;

    const-string v1, "com.tencent.mobileqq/com.tencent.av.ui.AVLoadingDialogActivity"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/wm/WindowManagerServiceImpl;->mProjectionBlackList:Ljava/util/List;

    const-string v1, "com.tencent.mobileqq/com.tencent.av.ui.VideoInviteActivity"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/wm/WindowManagerServiceImpl;->mProjectionBlackList:Ljava/util/List;

    const-string v1, "com.tencent.mobileqq/.FloatingWindow"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/wm/WindowManagerServiceImpl;->mProjectionBlackList:Ljava/util/List;

    const-string v1, "Splash Screen com.tencent.mm"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/wm/WindowManagerServiceImpl;->mProjectionBlackList:Ljava/util/List;

    const-string v1, "com.tencent.mm/com.tencent.mm.plugin.voip.ui.VideoActivity"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/wm/WindowManagerServiceImpl;->mProjectionBlackList:Ljava/util/List;

    const-string v1, "com.tencent.mm/.FloatingWindow"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/wm/WindowManagerServiceImpl;->mProjectionBlackList:Ljava/util/List;

    const-string v1, "com.whatsapp/com.whatsapp.voipcalling.VoipActivityV2"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/wm/WindowManagerServiceImpl;->mProjectionBlackList:Ljava/util/List;

    const-string v1, "com.google.android.dialer/com.android.incallui.InCallActivity"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/wm/WindowManagerServiceImpl;->mProjectionBlackList:Ljava/util/List;

    const-string v1, "com.google.android.dialer/.FloatingWindow"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/wm/WindowManagerServiceImpl;->mProjectionBlackList:Ljava/util/List;

    const-string v1, "com.miui.yellowpage/com.miui.yellowpage.activity.MarkNumberActivity"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/wm/WindowManagerServiceImpl;->mProjectionBlackList:Ljava/util/List;

    const-string v1, "com.miui.securitycenter/.FloatingWindow"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/wm/WindowManagerServiceImpl;->mProjectionBlackList:Ljava/util/List;

    const-string v1, "com.milink.service.ui.PrivateWindow"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/wm/WindowManagerServiceImpl;->mProjectionBlackList:Ljava/util/List;

    const-string v1, "com.milink.ui.activity.NFCLoadingActivity"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/wm/WindowManagerServiceImpl;->mProjectionBlackList:Ljava/util/List;

    const-string v1, "Freeform-OverLayView"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/wm/WindowManagerServiceImpl;->mProjectionBlackList:Ljava/util/List;

    const-string v1, "Freeform-HotSpotView"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/wm/WindowManagerServiceImpl;->mProjectionBlackList:Ljava/util/List;

    const-string v1, "Freeform-TipView"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v0, Lcom/android/server/wm/WindowManagerServiceImpl;->mProjectionBlackList:Ljava/util/List;

    return-object v0
.end method

.method private getRootHomeTask(Lcom/android/server/wm/TaskDisplayArea;)Lcom/android/server/wm/Task;
    .registers 3

    new-instance v0, Lcom/android/server/wm/WindowManagerServiceImpl$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/android/server/wm/WindowManagerServiceImpl$$ExternalSyntheticLambda14;-><init>()V

    invoke-virtual {p1, v0}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0
.end method

.method private handleCaptureMode(IILandroid/window/ScreenCapture$CaptureArgs;)Z
    .registers 8

    const/4 v0, 0x1

    if-eqz p3, :cond_2

    iget v1, p3, Landroid/window/ScreenCapture$CaptureArgs;->mCaptureMode:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "captureDisplay: mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WindowManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowManagerServiceImpl;->accessModeAll(II)Z

    move-result v0

    return v0

    :cond_0
    if-ne v1, v0, :cond_1

    iget-object v0, p3, Landroid/window/ScreenCapture$CaptureArgs;->mExcludeOrIncludeLayerNames:[Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/wm/WindowManagerServiceImpl;->accessModeExclude(II[Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget-object v0, p3, Landroid/window/ScreenCapture$CaptureArgs;->mExcludeOrIncludeLayerNames:[Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/wm/WindowManagerServiceImpl;->accessModeInclude(II[Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_2
    return v0
.end method

.method private initAnimationScale()V
    .registers 8

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getAnimationScales()[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mLastAnimationScale:[F

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mLastAnimationScale:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    const/high16 v1, 0x3f400000

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mLastAnimationScaleProp:Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    const-string v4, "WindowManagerService"

    if-ge v2, v3, :cond_3

    :try_start_0
    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    cmpl-float v5, v3, v1

    if-lez v5, :cond_2

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mLastAnimationScale:[F

    aput v3, v5, v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    goto :goto_1

    :catch_0
    move-exception v3

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mLastAnimationScale:[F

    const/high16 v6, 0x3f800000

    aput v6, v5, v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parse animationScale prop failed, using default 1.0f: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v0, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mLastAnimationScale:[F

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->setAnimationScales([F)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reset animationScale to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mLastAnimationScale:[F

    invoke-static {v2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private isDensityForced()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerServiceImpl;->getForcedDensity()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isFindDeviceFlagUsePermitted(ILjava/lang/String;)Z
    .registers 9

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    :try_start_0
    const-string v2, "android"

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-interface {v0, v2, p2, v3}, Landroid/content/pm/IPackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    return v3

    :cond_2
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    const-wide/16 v4, 0x0

    invoke-interface {v0, p2, v4, v5, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    iget v4, v2, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/2addr v4, v3

    if-eqz v4, :cond_3

    return v3

    :cond_3
    goto :goto_0

    :catch_0
    move-exception v2

    :goto_0
    return v1
.end method

.method private isSupportSwitchResoluton()Z
    .registers 5

    const/4 v0, 0x0

    const-string v1, "screen_resolution_supported"

    invoke-static {v1}, Lmiui/util/FeatureParser;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSupportSwitchResoluton:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WindowManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private static isSystemApp(I)Z
    .registers 2

    invoke-static {}, Lcom/android/server/am/ActivityManagerServiceImpl;->getInstance()Lcom/android/server/am/ActivityManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/am/ActivityManagerServiceImpl;->isSystemApp(I)Z

    move-result v0

    return v0
.end method

.method private killFreeformForFindDeviceKeyguardIfNecessary(ILandroid/view/WindowManager$LayoutParams;Ljava/lang/String;)V
    .registers 5

    if-eqz p3, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/server/wm/WindowManagerServiceImpl;->FIND_DEVICE:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p3}, Lcom/android/server/wm/WindowManagerServiceImpl;->isFindDeviceFlagUsePermitted(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    invoke-interface {v0}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->freeformKillAll()V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic lambda$bindFloatwindowAndTargetTask$15(Landroid/view/WindowManager$LayoutParams;Ljava/util/ArrayList;Lcom/android/server/wm/WindowToken;Lcom/android/server/wm/Task;)V
    .registers 7

    invoke-virtual {p3}, Lcom/android/server/wm/Task;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attach float window "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static synthetic lambda$dumpAotTrace$2(ZLcom/android/server/logmanager/HyperLogManagerServiceInternal;)V
    .registers 3

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p0}, Lcom/android/server/logmanager/HyperLogManagerServiceInternal;->triggerDumpAOTTrace(IZ)V

    return-void
.end method

.method static synthetic lambda$dumpPerfTrace$3(Lcom/android/server/logmanager/HyperLogManagerServiceInternal;)V
    .registers 2

    const-string v0, "window_perf_trace_"

    invoke-virtual {p0, v0}, Lcom/android/server/logmanager/HyperLogManagerServiceInternal;->triggerDumpPerfTrace(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$getRootHomeTask$14(Lcom/android/server/wm/Task;)Z
    .registers 7

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    sget-object v3, Lcom/android/server/wm/WindowManagerServiceImpl;->HOME_PACKAGE_NAME:Ljava/util/Set;

    iget-object v4, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopVisibleActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_1

    sget-object v4, Lcom/android/server/wm/WindowManagerServiceImpl;->HOME_PACKAGE_NAME:Ljava/util/Set;

    iget-object v5, v3, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    nop

    :goto_0
    return v1

    :cond_2
    return v1
.end method

.method private synthetic lambda$new$0()V
    .registers 3

    const-string v0, "WindowManagerService"

    const-string v1, "reset mNeedSwapAnimation to false, after 1500ms"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mNeedSwapAnimation:Z

    return-void
.end method

.method private synthetic lambda$new$1()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowManagerServiceImpl;->updateAnimationScale(Z)V

    return-void
.end method

.method private synthetic lambda$notAllowCaptureDisplay$13(Lcom/android/server/wm/WindowState;)Z
    .registers 6

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x2000

    const/4 v2, 0x1

    const-string v3, "WindowManagerService"

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Secure window Can\'t CaptureDisplay   return ! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isSecureLocked()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerServiceImpl;->isCtsVerifier(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Content Sensitive Can\'t CaptureDisplay   return ! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    return v1

    :cond_3
    :goto_0
    return v1
.end method

.method private synthetic lambda$notifySystemBrightnessChange$11(Lcom/android/server/wm/Task;)V
    .registers 3

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowManagerServiceImpl;->notifySystemBrightnessChange(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method private synthetic lambda$notifySystemBrightnessChange$12()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_0
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getVisibleTasks()Ljava/util/ArrayList;

    move-result-object v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, Lcom/android/server/wm/WindowManagerServiceImpl$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0}, Lcom/android/server/wm/WindowManagerServiceImpl$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/wm/WindowManagerServiceImpl;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private synthetic lambda$registerLocalScenarioCallback$4(Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerServiceImpl;->updateAnimationScale(Z)V

    return-void
.end method

.method private synthetic lambda$registerLocalScenarioCallback$5(JJZLmiui/scenariorecognition/RimParameter;)V
    .registers 9

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/WindowManagerServiceImpl$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p5}, Lcom/android/server/wm/WindowManagerServiceImpl$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/wm/WindowManagerServiceImpl;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic lambda$scheduleAsFifoPriorityIfNeed$8(I)V
    .registers 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/server/am/ActivityManagerService;->scheduleAsRegularPriority(IZ)Z

    return-void
.end method

.method static synthetic lambda$screenTurningOff$20(ILcom/android/server/wm/WindowManagerServiceImpl$ScreenStateListenerRecord;)V
    .registers 2

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowManagerServiceImpl$ScreenStateListenerRecord;->onScreenTurningOff(I)V

    return-void
.end method

.method private synthetic lambda$setNeedUpdateOrientationForFold$19()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isDisplayFolded()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowManagerServiceImpl;->updateActivityOrientationForFold(Z)V

    return-void
.end method

.method private synthetic lambda$setRoundedCornerOverlaysCanScreenShot$6(ZLcom/android/server/wm/WindowState;)V
    .registers 4

    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowToken;->mRoundedCornerOverlay:Z

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getClientViewRootSurface()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/WindowManagerServiceImpl;->setSurfaceCanScreenShot(Landroid/view/SurfaceControl;Z)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic lambda$setRoundedCornerOverlaysVisible$7(ZLcom/android/server/wm/WindowState;)V
    .registers 4

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowToken;->mRoundedCornerOverlay:Z

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p1, v1, v0}, Lcom/android/server/wm/WindowState;->show(ZZ)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v1, v0}, Lcom/android/server/wm/WindowState;->hide(ZZ)Z

    :goto_0
    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method static synthetic lambda$updateActivityOrientationForDisplayResized$17(Lcom/android/server/wm/ActivityRecord;)V
    .registers 2

    invoke-static {}, Lcom/android/server/wm/MiuiOrientationStub;->get()Lcom/android/server/wm/MiuiOrientationStub;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/server/wm/MiuiOrientationStub;->skipCompatMode(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->clearSizeCompatMode()V

    :cond_0
    invoke-static {}, Lcom/android/server/wm/MiuiOrientationStub;->get()Lcom/android/server/wm/MiuiOrientationStub;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/server/wm/MiuiOrientationStub;->overrideOrientationForDisplayResized(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method static synthetic lambda$updateActivityOrientationForFold$18(Lcom/android/server/wm/ActivityRecord;)V
    .registers 2

    invoke-static {}, Lcom/android/server/wm/MiuiOrientationStub;->get()Lcom/android/server/wm/MiuiOrientationStub;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/server/wm/MiuiOrientationStub;->overrideOrientationForFoldChanged(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method static synthetic lambda$updateActivityOrientationForSensor$16(Lcom/android/server/wm/ActivityRecord;)V
    .registers 2

    invoke-static {}, Lcom/android/server/wm/MiuiOrientationStub;->get()Lcom/android/server/wm/MiuiOrientationStub;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/server/wm/MiuiOrientationStub;->overrideOrientationBeforeSensorChanged(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method private synthetic lambda$updateScreenShareProjectFlag$10()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v2, Lcom/android/server/wm/WindowManagerServiceImpl$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lcom/android/server/wm/WindowManagerServiceImpl$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/wm/WindowManagerServiceImpl;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private synthetic lambda$updateScreenShareProjectFlag$9(Lcom/android/server/wm/WindowState;)V
    .registers 4

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerServiceImpl;->getScreenShareProjectAndPrivateCastFlag(Lcom/android/server/wm/WindowStateAnimator;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/wm/WindowManagerServiceImpl;->setMiVisibleStateForDisplay(Landroid/view/SurfaceControl;I)V

    :cond_0
    return-void
.end method

.method private notifySystemBrightnessChange(Lcom/android/server/wm/WindowState;)V
    .registers 5

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/high16 v1, -0x40800000

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mTaskIdScreenBrightnessOverrides:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mTaskIdScreenBrightnessOverrides:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    new-instance v1, Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessOverrideRequest;

    invoke-direct {v1}, Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessOverrideRequest;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessOverrideRequest;->tag:Ljava/lang/CharSequence;

    const/high16 v2, 0x7fc00000

    iput v2, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessOverrideRequest;->brightness:F

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v2, v0}, Landroid/hardware/display/DisplayManagerInternal;->setScreenBrightnessOverrideFromWindowManager(Landroid/util/SparseArray;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private registerBootCompletedReceiver()V
    .registers 4

    new-instance v0, Lcom/android/server/wm/WindowManagerServiceImpl$3;

    invoke-direct {v0, p0}, Lcom/android/server/wm/WindowManagerServiceImpl$3;-><init>(Lcom/android/server/wm/WindowManagerServiceImpl;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mWallpaperCallback:Landroid/app/IWallpaperManagerCallback;

    new-instance v0, Lcom/android/server/wm/WindowManagerServiceImpl$4;

    invoke-direct {v0, p0}, Lcom/android/server/wm/WindowManagerServiceImpl$4;-><init>(Lcom/android/server/wm/WindowManagerServiceImpl;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerDisplayListenerForCommittedState()V
    .registers 9

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    new-instance v2, Lcom/android/server/wm/WindowManagerServiceImpl$5;

    invoke-direct {v2, p0}, Lcom/android/server/wm/WindowManagerServiceImpl$5;-><init>(Lcom/android/server/wm/WindowManagerServiceImpl;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mUiHandler:Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x8

    invoke-virtual/range {v1 .. v7}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;JJ)V

    return-void
.end method

.method private registerLocalScenarioCallback()V
    .registers 5

    invoke-static {}, Lmiui/scenariorecognition/SystemServerScenarioStub;->getInstance()Lmiui/scenariorecognition/SystemServerScenarioStub;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/WindowManagerServiceImpl$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/server/wm/WindowManagerServiceImpl$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/wm/WindowManagerServiceImpl;)V

    const-wide/16 v2, 0x18

    invoke-interface {v0, v2, v3, v1}, Lmiui/scenariorecognition/SystemServerScenarioStub;->registerLocalScenarioCallback(JLmiui/scenariorecognition/ScenarioRecognitionCallback;)V

    return-void
.end method

.method private removeFindDeviceKeyguardFlagsIfNecessary(ILandroid/view/WindowManager$LayoutParams;Ljava/lang/String;)V
    .registers 5

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    and-int/lit16 v0, v0, 0x800

    if-nez v0, :cond_0

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    and-int/lit16 v0, v0, 0x1000

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/android/server/wm/WindowManagerServiceImpl;->isFindDeviceFlagUsePermitted(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_1

    const-string v0, "com.xiaomi.finddevice"

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return-void

    :cond_2
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    return-void
.end method

.method private removeScreenStateListener(I)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mScreenStateListeners:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mScreenStateListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mScreenStateListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static setAlertWindowTitle(Landroid/view/WindowManager$LayoutParams;)V
    .registers 3

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-static {v0}, Landroid/view/WindowManager$LayoutParams;->isSystemAlertWindowType(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/server/wm/WindowManagerServiceImpl;->QQ:Ljava/lang/String;

    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/wm/WindowManagerServiceImpl;->QQ_FLOATING:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    sget-object v0, Lcom/android/server/wm/WindowManagerServiceImpl;->MM:Ljava/lang/String;

    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/wm/WindowManagerServiceImpl;->MM_FLOATING:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    :cond_2
    sget-object v0, Lcom/android/server/wm/WindowManagerServiceImpl;->GOOGLE:Ljava/lang/String;

    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/server/wm/WindowManagerServiceImpl;->GOOGLE_FLOATING:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    :cond_3
    sget-object v0, Lcom/android/server/wm/WindowManagerServiceImpl;->SECURITY:Ljava/lang/String;

    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/server/wm/WindowManagerServiceImpl;->SECURITY_FLOATING:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method

.method private setDefaultBlurConfigIfNeeded(Landroid/content/Context;)V
    .registers 5

    sget-boolean v0, Lcom/android/server/wm/WindowManagerServiceImpl;->BACKGROUND_BLUR_SUPPORTED:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "background_blur_enable"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    sget-boolean v0, Lcom/android/server/wm/WindowManagerServiceImpl;->BACKGROUND_BLUR_STATUS_DEFAULT:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManagerService"

    const-string v2, "set default background blur config to true"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method public static setMiVisibleStateForDisplay(Landroid/view/SurfaceControl;I)V
    .registers 3

    if-eqz p0, :cond_0

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    invoke-virtual {v0, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setMiVisibleStateForDisplay(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_0
    return-void
.end method

.method private setNeedUpdateOrientationForFold(Z)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-nez v0, :cond_0

    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mPendingSetOrientationForFold:Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mUpdateOrientationForFoldTimeout:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/server/wm/WindowManagerServiceImpl$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Lcom/android/server/wm/WindowManagerServiceImpl$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/wm/WindowManagerServiceImpl;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mUpdateOrientationForFoldTimeout:Ljava/lang/Runnable;

    :cond_1
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mNeedUpdateOrientationForFold:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNeedUpdateOrientationForFold is set to : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mNeedUpdateOrientationForFold:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mH:Lcom/android/server/wm/WindowManagerServiceImpl$H;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mUpdateOrientationForFoldTimeout:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerServiceImpl$H;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mH:Lcom/android/server/wm/WindowManagerServiceImpl$H;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mUpdateOrientationForFoldTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerServiceImpl$H;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mPendingSetOrientationForFold:Z

    return-void
.end method

.method public static setProjectionBlackList(Ljava/util/List;)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sput-object p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mProjectionBlackList:Ljava/util/List;

    return-void
.end method

.method private setRoundedCornerOverlaysCanScreenShot(Z)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v1, Lcom/android/server/wm/WindowManagerServiceImpl$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/WindowManagerServiceImpl$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/wm/WindowManagerServiceImpl;Z)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method private setRoundedCornerOverlaysVisible(Z)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v1, Lcom/android/server/wm/WindowManagerServiceImpl$$ExternalSyntheticLambda9;

    invoke-direct {v1, p1}, Lcom/android/server/wm/WindowManagerServiceImpl$$ExternalSyntheticLambda9;-><init>(Z)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method private setSurfaceCanScreenShot(Landroid/view/SurfaceControl;Z)V
    .registers 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    return-void
.end method

.method private switchResolutionInternal(II)V
    .registers 9

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowManagerServiceImpl;->setRoundedCornerOverlaysVisible(Z)V

    const-wide/16 v1, 0x46

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_1
    iget-boolean v2, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mPendingSwitchResolution:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mSupportSwitchResolutionFeature:Z

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerServiceImpl;->calcDensityAndUpdateForceDensityIfNeed(I)I

    move-result v2

    const-string v3, "WindowManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start switching resolution, width:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",height:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",density:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mMiuiDisplayWidth:I

    iput p2, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mMiuiDisplayHeight:I

    iput v2, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mMiuiDisplayDensity:I

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mPendingSwitchResolution:Z

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4, v0}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    :cond_1
    invoke-direct {p0, v3}, Lcom/android/server/wm/WindowManagerServiceImpl;->setRoundedCornerOverlaysCanScreenShot(Z)V

    const-string v3, "persist.sys.miui_resolution"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mMiuiDisplayWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mMiuiDisplayHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mMiuiDisplayDensity:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/server/wm/WindowManagerServiceImpl$$ExternalSyntheticLambda4;

    invoke-direct {v5, v4}, Lcom/android/server/wm/WindowManagerServiceImpl$$ExternalSyntheticLambda4;-><init>(Landroid/app/ActivityManagerInternal;)V

    invoke-virtual {v3, v5}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mSmartPowerServiceInternal:Lcom/miui/app/smartpower/SmartPowerServiceInternal;

    invoke-interface {v3, p1, p2, v2}, Lcom/miui/app/smartpower/SmartPowerServiceInternal;->onDisplaySwitchResolutionLocked(III)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-direct {p0, v3}, Lcom/android/server/wm/WindowManagerServiceImpl;->updateScreenResolutionLocked(Lcom/android/server/wm/DisplayContent;)V

    iget-boolean v3, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mSupportActiveModeSwitch:Z

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/server/display/mode/DisplayModeDirectorStub;->getInstance()Lcom/android/server/display/mode/DisplayModeDirectorStub;

    move-result-object v3

    iget v4, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mMiuiDisplayWidth:I

    iget v5, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mMiuiDisplayHeight:I

    invoke-interface {v3, v0, v4, v5}, Lcom/android/server/display/mode/DisplayModeDirectorStub;->updateDisplaySize(III)V

    :cond_2
    monitor-exit v1

    return-void

    :cond_3
    :goto_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private topRunningActivityChange(Lcom/android/server/wm/WindowState;)Z
    .registers 7

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerServiceImpl;->getDefaultDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result v2

    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerServiceImpl;->isKeyGuardShowing()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    const/4 v4, 0x5

    if-eq v2, v4, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private updateAnimationScale(Z)V
    .registers 9

    const-string v0, "WindowManagerService"

    if-eqz p1, :cond_4

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getAnimationScales()[F

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mResetAnimationScaleTimeout:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v2, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mTicketActive:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mLastAnimationScale:[F

    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    if-lez v3, :cond_0

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    aget v4, v1, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string v3, "persist.sys.animation_scale"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 v2, 0x3

    new-array v3, v2, [F

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_3

    const/high16 v5, 0x3f400000

    aget v6, v1, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService;->setAnimationScales([F)V

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mResetAnimationScaleTimeout:Ljava/lang/Runnable;

    const-wide/32 v5, 0x493e0

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mResetAnimationScaleTimeout:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mLastAnimationScale:[F

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->setAnimationScales([F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    const-string v2, "setAnimationScales failed"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mTicketActive:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAnimationScale active = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mLastAnimationScale = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mLastAnimationScale:[F

    invoke-static {v2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateAppearance()V
    .registers 9

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mBlurWallpaperBmp:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayPolicy;->getStatusBar()Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mBlurWallpaperBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mBlurWallpaperBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->leftStatusBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v6, Landroid/graphics/Rect;

    div-int/lit8 v7, v4, 0x4

    invoke-direct {v6, v1, v1, v7, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v6, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->leftStatusBounds:Landroid/graphics/Rect;

    :cond_2
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->rightStatusBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance v6, Landroid/graphics/Rect;

    mul-int/lit8 v7, v4, 0x3

    div-int/lit8 v7, v7, 0x4

    invoke-direct {v6, v7, v1, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v6, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->rightStatusBounds:Landroid/graphics/Rect;

    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->leftStatusBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->leftStatusBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v1}, Lcom/android/server/wm/WindowManagerServiceImpl;->createAppearance(Landroid/graphics/Rect;)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->leftAppearance:I

    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->rightStatusBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->rightStatusBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v1}, Lcom/android/server/wm/WindowManagerServiceImpl;->createAppearance(Landroid/graphics/Rect;)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->rightAppearance:I

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateAppearance left"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->leftStatusBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " right"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->rightStatusBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " appearance = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v6, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->leftAppearance:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ", "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v6, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->rightAppearance:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v6, "WindowManagerService"

    invoke-static {v6, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    :goto_0
    return-void
.end method

.method private updateScreenResolutionLocked(Lcom/android/server/wm/DisplayContent;)V
    .registers 10

    iget v0, p1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mMiuiDisplayWidth:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    iget v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mMiuiDisplayHeight:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    :goto_1
    iput-boolean v0, p1, Lcom/android/server/wm/DisplayContent;->mIsSizeForced:Z

    iget v0, p1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    iget v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mMiuiDisplayDensity:I

    if-eq v0, v1, :cond_2

    move v2, v3

    :cond_2
    iput-boolean v2, p1, Lcom/android/server/wm/DisplayContent;->mIsDensityForced:Z

    iget v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mMiuiDisplayWidth:I

    int-to-float v0, v0

    iget v1, p1, Lcom/android/server/wm/DisplayContent;->mInitialPhysicalXDpi:F

    mul-float/2addr v0, v1

    iget v1, p1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    int-to-float v1, v1

    div-float v6, v0, v1

    iget v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mMiuiDisplayHeight:I

    int-to-float v0, v0

    iget v1, p1, Lcom/android/server/wm/DisplayContent;->mInitialPhysicalYDpi:F

    mul-float/2addr v0, v1

    iget v1, p1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    int-to-float v1, v1

    div-float v7, v0, v1

    iget v3, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mMiuiDisplayWidth:I

    iget v4, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mMiuiDisplayHeight:I

    iget v5, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mMiuiDisplayDensity:I

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/DisplayContent;->updateBaseDisplayMetrics(IIIFF)V

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->reconfigureDisplayLocked()V

    return-void
.end method


# virtual methods
.method public accessAppContentEnable(ILjava/lang/String;I)Z
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mSecurityInternal:Lmiui/security/SecurityManagerInternal;

    if-nez v0, :cond_0

    const-class v0, Lmiui/security/SecurityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManagerInternal;

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mSecurityInternal:Lmiui/security/SecurityManagerInternal;

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mSecurityInternal:Lmiui/security/SecurityManagerInternal;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mSecurityInternal:Lmiui/security/SecurityManagerInternal;

    invoke-virtual {v0, p1, p2, p3}, Lmiui/security/SecurityManagerInternal;->accessAppContentEnable(ILjava/lang/String;I)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public acquireRearAodSleepToken(Lcom/android/server/wm/RootWindowContainer;I)V
    .registers 7

    invoke-static {}, Lmiui/util/MiuiMultiDisplayTypeInfo;->isIndependentRearDevice()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const-string v1, "android.permission.DEVICE_POWER"

    const-string v2, "acquireRearAodSleepToken"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p1, Lcom/android/server/wm/RootWindowContainer;->mRearAodSleepTokenAcquirer:Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirer;

    invoke-virtual {v3, p2}, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirer;->acquire(I)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires permission android.permission.DEVICE_POWER"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    return-void
.end method

.method public addBootBlackCoverLayer()V
    .registers 5

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerServiceImpl;->needBootBlackCoverLayer()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerServiceImpl;->hasBootBlackCoverLayer()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->makeOverlay()Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    const-string v3, "BootBlackCoverLayerSurface"

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    const-string v3, "BootAnimation"

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mBootBlackCoverLayer:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mBootBlackCoverLayer:Landroid/view/SurfaceControl;

    const v3, 0x1eab91

    invoke-virtual {v0, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mBootBlackCoverLayer:Landroid/view/SurfaceControl;

    const/high16 v3, 0x3f800000

    invoke-virtual {v0, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mBootBlackCoverLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    const-string v2, "DisplayRotationImpl"

    const-string v3, "addBootBlackCoverLayerSurface"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public addMiuiPaperContrastOverlay(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/SurfaceControl;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/server/wm/MiuiPaperContrastOverlayStub;->get()Lcom/android/server/wm/MiuiPaperContrastOverlayStub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/MiuiPaperContrastOverlayStub;->getMiuiPaperSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mMiuiPaperContrastOverlay:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addOccludedChangedListener(Landroid/app/IOccludedChangedListener;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mOccludedChangedListener:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mOccludedChangedListener:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addSecureChangedListener(Landroid/app/IWindowSecureChangeListener;)V
    .registers 7

    if-nez p1, :cond_0

    const-string v0, "WindowManagerService"

    const-string v1, "Attempt to add null secure change listener"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mSecureChangeListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mSecureChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    new-instance v1, Lcom/android/server/wm/WindowManagerServiceImpl$SecureChangedListener;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/WindowManagerServiceImpl$SecureChangedListener;-><init>(Lcom/android/server/wm/WindowManagerServiceImpl;Landroid/app/IWindowSecureChangeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {p1}, Landroid/app/IWindowSecureChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mSecureChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "WindowManagerService"

    const-string v4, "Failed to link to death"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public addWindowBegin(IILandroid/view/WindowManager$LayoutParams;)Z
    .registers 6

    invoke-static {}, Lcom/android/server/am/PreloadAppControllerStub;->get()Lcom/android/server/am/PreloadAppControllerStub;

    move-result-object v0

    invoke-interface {v0, p3}, Lcom/android/server/am/PreloadAppControllerStub;->interceptWindowInjector(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/android/server/am/PreStartFeedbackStub;->getInstance()Lcom/android/server/am/PreStartFeedbackStub;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/am/PreStartFeedbackStub;->isProhibitShowWindow(IILandroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public adjustWindowParams(Landroid/view/WindowManager$LayoutParams;Ljava/lang/String;I)V
    .registers 15

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x3e8

    if-eq p3, v0, :cond_6

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-nez v0, :cond_2

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v5, p2

    goto :goto_3

    :cond_2
    :goto_0
    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, p2, v3, v2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_1
    if-nez v1, :cond_3

    move v0, p3

    goto :goto_2

    :cond_3
    iget v0, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    :goto_2
    move v4, v0

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mAppOps:Landroid/app/AppOpsManager;

    const/4 v6, 0x0

    const-string v7, "WindowManagerServiceImpl#adjustWindowParams"

    const/16 v3, 0x2724

    move-object v5, p2

    invoke-virtual/range {v2 .. v7}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mSecurityInternal:Lmiui/security/SecurityManagerInternal;

    if-nez v0, :cond_4

    const-class v0, Lmiui/security/SecurityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManagerInternal;

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mSecurityInternal:Lmiui/security/SecurityManagerInternal;

    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mSecurityInternal:Lmiui/security/SecurityManagerInternal;

    if-eqz v0, :cond_5

    move-object v7, v5

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mSecurityInternal:Lmiui/security/SecurityManagerInternal;

    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const/16 v6, 0x24

    const-wide/16 v8, 0x1

    invoke-virtual/range {v5 .. v10}, Lmiui/security/SecurityManagerInternal;->recordAppBehaviorAsync(ILjava/lang/String;JLjava/lang/String;)V

    move-object v5, v7

    :cond_5
    if-eqz p2, :cond_7

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x80001

    and-int/2addr v0, v2

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x400001

    and-int/2addr v0, v2

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MIUILOG- Show when locked PermissionDenied pkg : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " uid : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WindowManagerService"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_6
    move-object v5, p2

    :cond_7
    :goto_3
    invoke-direct {p0, p3, p1, v5}, Lcom/android/server/wm/WindowManagerServiceImpl;->adjustFindDeviceAttrs(ILandroid/view/WindowManager$LayoutParams;Ljava/lang/String;)V

    invoke-direct {p0, p1, v5}, Lcom/android/server/wm/WindowManagerServiceImpl;->adjustGoogleAssistantAttrs(Landroid/view/WindowManager$LayoutParams;Ljava/lang/String;)V

    iget p2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 p2, p2, 0x1000

    if-eqz p2, :cond_8

    iget p2, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v0, 0x63

    if-gt p2, v0, :cond_8

    iget p2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 p2, p2, -0x1001

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_8
    return-void
.end method

.method public assessScreenContentEnable(ILandroid/window/ScreenCapture$CaptureArgs;)Z
    .registers 10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mSecurityInternal:Lmiui/security/SecurityManagerInternal;

    if-nez v1, :cond_0

    const-class v1, Lmiui/security/SecurityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/security/SecurityManagerInternal;

    iput-object v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mSecurityInternal:Lmiui/security/SecurityManagerInternal;

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mSecurityInternal:Lmiui/security/SecurityManagerInternal;

    const-string v2, "WindowManagerService"

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mSecurityInternal:Lmiui/security/SecurityManagerInternal;

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4, v0}, Lmiui/security/SecurityManagerInternal;->shouldSkipPermissionCheck(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "assessScreenContentEnable, skip permission check"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mPackageInternal:Landroid/content/pm/PackageManagerInternal;

    if-nez v1, :cond_2

    const-class v1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    iput-object v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mPackageInternal:Landroid/content/pm/PackageManagerInternal;

    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mPackageInternal:Landroid/content/pm/PackageManagerInternal;

    if-nez v1, :cond_3

    return v3

    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mPackageInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManagerInternal;->getPackage(I)Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v1

    if-nez v1, :cond_4

    return v3

    :cond_4
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mAppOps:Landroid/app/AppOpsManager;

    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2746

    invoke-virtual {v4, v6, v0, v5}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_5

    goto :goto_0

    :cond_5
    move v3, v5

    :goto_0
    if-nez v3, :cond_6

    const-string v4, "assessScreenContentEnable, no screen content permission"

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_6
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, p1, v2, p2}, Lcom/android/server/wm/WindowManagerServiceImpl;->handleCaptureMode(IILandroid/window/ScreenCapture$CaptureArgs;)Z

    move-result v2

    return v2
.end method

.method public bindFloatwindowAndTargetTask(Landroid/view/WindowManager$LayoutParams;Lcom/android/server/wm/WindowToken;Lcom/android/server/wm/RootWindowContainer;)V
    .registers 10

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7f6

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "home_worldCirculate_and_smallWindow_crop"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/android/server/wm/WindowManagerServiceImpl;->mFloatWindowMirrorWhiteList:Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.miui.home/.launcher.Launcher"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.miui.circulate.world.AppCirculateActivity"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    invoke-virtual {p3}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lcom/android/server/wm/WindowManagerServiceImpl$$ExternalSyntheticLambda15;

    invoke-direct {v4, p1, v3, p2}, Lcom/android/server/wm/WindowManagerServiceImpl$$ExternalSyntheticLambda15;-><init>(Landroid/view/WindowManager$LayoutParams;Ljava/util/ArrayList;Lcom/android/server/wm/WindowToken;)V

    invoke-virtual {v2, v4}, Lcom/android/server/wm/TaskDisplayArea;->forAllRootTasks(Ljava/util/function/Consumer;)V

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/Task;

    iput-object p2, v5, Lcom/android/server/wm/Task;->floatWindow:Lcom/android/server/wm/WindowToken;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    iput-object p2, v0, Lcom/android/server/wm/Task;->floatWindow:Lcom/android/server/wm/WindowToken;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attach float window "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WindowManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void
.end method

.method public calcHoverAnimatingColor([F)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->miuiHoverModeInternal:Lcom/android/server/wm/MiuiHoverModeInternal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->miuiHoverModeInternal:Lcom/android/server/wm/MiuiHoverModeInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/MiuiHoverModeInternal;->calcHoverAnimatingColor([F)V

    :cond_0
    return-void
.end method

.method public canCaptureGameLayer(Lcom/android/server/wm/Task;)Z
    .registers 4

    sget-boolean v0, Lcom/android/server/wm/WindowManagerServiceImpl;->CAN_CAPTURE_GAME_LAYER:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mCaptureGameLayerList:Ljava/util/List;

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public checkBootBlackCoverLayer()V
    .registers 6

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerServiceImpl;->needBootBlackCoverLayer()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerServiceImpl;->hasBootBlackCoverLayer()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "DisplayRotationImpl"

    const-string v1, "checkBootBlackCoverLayer"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v2

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerServiceImpl;->removeBootBlackCoverLayer()V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x6d

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->sendNewMessageDelayed(ILjava/lang/Object;J)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public checkFlipFullScreenChange(Lcom/android/server/wm/ActivityRecord;)V
    .registers 11

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerServiceImpl;->enableFullScreen(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-gtz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mLastIsFullScreen:Ljava/lang/Boolean;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mLastIsFullScreen:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-ne v3, v2, :cond_1

    const-string v1, "WindowManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkFlipFullScreenChange is same, nowIsFullScreen = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mLastIsFullScreen:Ljava/lang/Boolean;

    const-string v3, "FlipSCF"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifying flip small screen change, is full = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , activity = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mFlipListenerLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mNavigationBarColorListenerMap:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    sub-int/2addr v4, v1

    :goto_1
    if-ltz v4, :cond_3

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mNavigationBarColorListenerMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/IFlipWindowStateListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v1, v2}, Landroid/view/IFlipWindowStateListener;->onIsFullScreenChange(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v5

    :try_start_2
    instance-of v6, v5, Landroid/os/DeadObjectException;

    if-eqz v6, :cond_2

    const-string v6, "WindowManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onNavigationColorChange binder died, remove it, key = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mNavigationBarColorListenerMap:Landroid/util/ArrayMap;

    invoke-virtual {v8, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mNavigationBarColorListenerMap:Landroid/util/ArrayMap;

    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    const-string v6, "WindowManagerService"

    const-string v7, "onNavigationColorChange fail"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_3
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public checkUpdateFocusWindow(Ljava/lang/String;)V
    .registers 5

    sget-boolean v0, Lcom/android/server/wm/MiuiOrientationStub;->IS_TABLET:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "com.android.provision/.activities.DefaultActivity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    :cond_0
    return-void
.end method

.method public clearForcedDisplaySize(Lcom/android/server/wm/DisplayContent;)V
    .registers 5

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerServiceImpl;->getUserSetResolution()[I

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    invoke-virtual {p1, v1, v2}, Lcom/android/server/wm/DisplayContent;->setForcedSize(II)V

    goto :goto_0

    :cond_0
    iget v1, p1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget v2, p1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    invoke-virtual {p1, v1, v2}, Lcom/android/server/wm/DisplayContent;->setForcedSize(II)V

    :goto_0
    return-void
.end method

.method public clearOverrideBrightnessRecord(I)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mTaskIdScreenBrightnessOverrides:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTaskRemoved: mTaskIdScreenBrightnessOverrides : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mTaskIdScreenBrightnessOverrides:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " taskId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mTaskIdScreenBrightnessOverrides:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    :cond_0
    return-void
.end method

.method public clearPendingHoldonStateOff(Lcom/android/server/wm/Transition;)V
    .registers 4

    iget v0, p1, Lcom/android/server/wm/Transition;->mType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mPendingHoldonStateOff:Z

    :cond_0
    return-void
.end method

.method public delayFinishFixedRotationAppIfNeed(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mAnimInterruptController:Lcom/android/server/wm/AnimInterruptController;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mAnimInterruptController:Lcom/android/server/wm/AnimInterruptController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/AnimInterruptController;->interceptFinishFixedRotationAppIfNeed(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    return v0
.end method

.method public doesAddCarWithNavigationBarRequireToken(Ljava/lang/String;)Z
    .registers 13

    const-string v0, "WindowManagerService"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "com.miui.carlink"

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v4, 0x0

    :try_start_1
    const-string v5, "SHA-256"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    move-object v4, v5

    invoke-virtual {v4, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    array-length v7, v5

    mul-int/lit8 v7, v7, 0x2

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v7, 0x0

    :goto_0
    array-length v8, v5

    const/4 v9, 0x1

    if-ge v7, v8, :cond_1

    aget-byte v8, v5, v7

    and-int/lit16 v8, v8, 0xff

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-ne v10, v9, :cond_0

    const/16 v9, 0x30

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    nop

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    const-string v7, "c8a2e9bccf597c2fb6dc66bee293fc13f2fc47ec77bc6b2b0d52c11f51192ab8"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "c9009d01ebf9f5d0302bc71b2fe9aa9a47a432bba17308a3111b75d7b2149025"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    goto :goto_2

    :cond_3
    :goto_1
    return v9

    :catch_0
    move-exception v5

    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "packageName"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "NoSuchAlgorithmException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    nop

    goto :goto_3

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "packageName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not carlink"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    return v1

    :catch_1
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NameNotFoundException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return v1
.end method

.method public enableCarMirrorRelaunchBlacklist(ZLjava/util/ArrayList;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set car mirror relaunch blackList, enable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", blackList = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", changes = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Landroid/content/res/Configuration;->configurationDiffToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/wm/ActivityRecordStub;->setShouldCarMirrorNotRelaunch(Z)V

    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mEnableCarMirrorRelaunch:Z

    iput p3, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mCarMirrorRelaunchChanges:I

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p2, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    sput-object p2, Lcom/android/server/wm/WindowManagerServiceImpl;->mCarMirrorRelaunchBlackList:Ljava/util/ArrayList;

    :cond_0
    return-void
.end method

.method public enableWmsDebugConfig(Lcom/android/server/wm/WindowManagerShellCommand;Ljava/io/PrintWriter;)I
    .registers 7

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    const-string v1, "enable-text"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "disable-text"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v1, "Error: wrong args , must be enable-text or disable-text"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, -0x1

    return v1

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v3, v1}, Lcom/android/server/wm/WindowManagerServiceImpl;->enableWmsDebugConfig(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public executeShellCommand(Ljava/io/PrintWriter;[Ljava/lang/String;ILjava/lang/String;)Z
    .registers 10

    const/4 v0, 0x0

    aget-object v1, p2, v0

    const-string v2, "-set-cover"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const-string v0, "true"

    aget-object v1, p2, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/server/wm/TaskCoverImpl;->setProjectionCover(Z)V

    return v2

    :cond_0
    const-string v1, "-dump_aot_trace"

    aget-object v3, p2, v0

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v2}, Lcom/android/server/wm/WindowManagerServiceImpl;->dumpAotTrace(Z)V

    return v2

    :cond_1
    const-string v1, "-dump_aot_trace_async"

    aget-object v3, p2, v0

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowManagerServiceImpl;->dumpAotTrace(Z)V

    return v2

    :cond_2
    const-string v1, "-dump_aot_and_perf_trace_async"

    aget-object v3, p2, v0

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowManagerServiceImpl;->dumpAotTrace(Z)V

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerServiceImpl;->dumpPerfTrace()V

    return v2

    :cond_3
    array-length v1, p2

    if-ge p3, v1, :cond_4

    array-length v1, p2

    sub-int/2addr v1, p3

    new-array v1, v1, [Ljava/lang/String;

    goto :goto_0

    :cond_4
    new-array v1, v0, [Ljava/lang/String;

    :goto_0
    array-length v3, p2

    sub-int/2addr v3, p3

    invoke-static {p2, p3, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WindowManagerServiceImpl:executeShellCommand opti = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " opt = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->get()Lcom/android/server/wm/ActivityTaskManagerServiceStub;

    move-result-object v3

    invoke-virtual {v3, p4, v1, p1}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->executeShellCommand(Ljava/lang/String;[Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_5

    return v2

    :cond_5
    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return v0
.end method

.method public finishSwitchResolution()V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/wm/WindowManagerServiceImpl$$ExternalSyntheticLambda4;

    invoke-direct {v2, v1}, Lcom/android/server/wm/WindowManagerServiceImpl$$ExternalSyntheticLambda4;-><init>(Landroid/app/ActivityManagerInternal;)V

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/server/wm/WindowManagerServiceImpl;->setRoundedCornerOverlaysCanScreenShot(Z)V

    iget-boolean v2, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mPendingSwitchResolution:Z

    if-eqz v2, :cond_0

    const-string v2, "WindowManagerService"

    const-string v3, "finished switching resolution"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mPendingSwitchResolution:Z

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowManagerServiceImpl;->setRoundedCornerOverlaysVisible(Z)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getBlurWallpaperAppearance(Landroid/graphics/Rect;Landroid/graphics/Rect;[I)V
    .registers 10

    if-eqz p3, :cond_5

    array-length v0, p3

    const/4 v1, 0x2

    if-lt v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mBlurWallpaperBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    const-string v1, "appearance = "

    const-string v2, "WindowManagerService"

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    aput v3, p3, v4

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->leftStatusBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->leftAppearance:I

    if-eq v0, v3, :cond_2

    iget v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->leftAppearance:I

    aput v0, p3, v4

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerServiceImpl;->createAppearance(Landroid/graphics/Rect;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->leftAppearance:I

    aput v0, p3, v4

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->leftStatusBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBlurWallpaperAppearance left bounds = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v4, p3, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    aput v3, p3, v4

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->rightStatusBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->rightAppearance:I

    if-eq v0, v3, :cond_4

    iget v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->rightAppearance:I

    aput v0, p3, v4

    goto :goto_1

    :cond_4
    invoke-direct {p0, p2}, Lcom/android/server/wm/WindowManagerServiceImpl;->createAppearance(Landroid/graphics/Rect;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->rightAppearance:I

    aput v0, p3, v4

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->rightStatusBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBlurWallpaperAppearance right bounds = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v1, p3, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_5
    :goto_2
    return-void
.end method

.method public getBlurWallpaperBmp()Landroid/graphics/Bitmap;
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mBlurWallpaperBmp:Landroid/graphics/Bitmap;

    const-string v1, "WindowManagerService"

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x6a

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    const-string v0, "mBlurWallpaperBmp is null, wait to update"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "Reusing mBlurWallpaperBmp"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mBlurWallpaperBmp:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getBootSensorRotation()I
    .registers 3

    const-string v0, "ro.boot.ori"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    return v1

    :pswitch_0  #0x4
    const/4 v1, 0x2

    return v1

    :pswitch_1  #0x3
    const/4 v1, 0x3

    return v1

    :pswitch_2  #0x2
    const/4 v1, 0x0

    return v1

    :pswitch_3  #0x1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3  #00000001
        :pswitch_2  #00000002
        :pswitch_1  #00000003
        :pswitch_0  #00000004
    .end packed-switch
.end method

.method public getCarMirrorRelaunchBlackList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/server/wm/WindowManagerServiceImpl;->mCarMirrorRelaunchBlackList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCarMirrorRelaunchChanges()I
    .registers 2

    iget v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mCarMirrorRelaunchChanges:I

    return v0
.end method

.method public getCompatScale(Ljava/lang/String;I)F
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mCompatModePackages:Lcom/android/server/wm/CompatModePackages;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/CompatModePackages;->getCompatScale(Ljava/lang/String;I)F

    move-result v0

    return v0
.end method

.method public getCurrentDeviceState()I
    .registers 2

    iget v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mCurrentDeviceState:I

    return v0
.end method

.method public getCurrentNavigationBarColor()I
    .registers 2

    iget v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mNavigationColor:I

    return v0
.end method

.method public getDefaultDensity()I
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mSupportSwitchResolutionFeature:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mPhysicalWidth:I

    iget v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mMiuiDisplayWidth:I

    mul-int/2addr v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mPhysicalDensity:I

    iget v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mMiuiDisplayWidth:I

    mul-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x3f800000

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mPhysicalWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    return v0
.end method

.method public getElementChangeByCloseTask(Lcom/android/server/wm/Task;Landroid/window/TransitionInfo$Change;Landroid/app/ElementSurfaceTransition;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;)Landroid/window/TransitionInfo$Change;
    .registers 12

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    nop

    invoke-virtual {p3}, Landroid/app/ElementSurfaceTransition;->getUpdateCallback()Landroid/app/ISurfaceInfoUpdateCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p4}, Landroid/window/TransitionInfo;->getMiuiTransitionInfo()Landroid/window/TransitionInfoStub;

    move-result-object v2

    new-instance v3, Landroid/window/TransitionInfo$Change;

    invoke-virtual {p3}, Landroid/app/ElementSurfaceTransition;->getElementSurface()Landroid/view/SurfaceControl;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v5, v4}, Landroid/window/TransitionInfo$Change;-><init>(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl;)V

    move-object v0, v3

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/window/TransitionInfo$Change;->setMode(I)V

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/window/TransitionInfo$Change;->setStartAbsBounds(Landroid/graphics/Rect;)V

    const/high16 v3, -0x80000000

    invoke-virtual {v0, v3}, Landroid/window/TransitionInfo$Change;->setFlags(I)V

    invoke-virtual {p4, v0}, Landroid/window/TransitionInfo;->addChange(Landroid/window/TransitionInfo$Change;)V

    invoke-virtual {v2}, Landroid/window/TransitionInfoStub;->getMiuiFlags()I

    move-result v3

    or-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Landroid/window/TransitionInfoStub;->setMiuiFlags(I)V

    invoke-virtual {p4}, Landroid/window/TransitionInfo;->getMiuiTransitionInfo()Landroid/window/TransitionInfoStub;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/window/TransitionInfoStub;->setSurfaceInfoUpdateCallback(Landroid/app/ISurfaceInfoUpdateCallback;)V

    :cond_0
    return-object v0
.end method

.method public getElementChangeByOpenTask(Lcom/android/server/wm/Task;Landroid/window/TransitionInfo$Change;)Landroid/window/TransitionInfo$Change;
    .registers 8

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/server/wm/Task;->mTaskStub:Lcom/android/server/wm/TaskStub;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStub;->getElementSurfaceTransition()Landroid/app/ElementSurfaceTransition;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/wm/Task;->mTaskStub:Lcom/android/server/wm/TaskStub;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStub;->getElementSurfaceTransition()Landroid/app/ElementSurfaceTransition;

    move-result-object v1

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v2

    invoke-static {v2}, Lcom/android/server/wm/TransitionImpl;->isOpeningType(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/app/ElementSurfaceTransition;->getElementSurfaceInfo()Landroid/app/ElementSurfaceTransition$ElementSurfaceInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ElementSurfaceTransition$ElementSurfaceInfo;->isUseElement()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v1}, Landroid/app/ElementSurfaceTransition;->getElementSurface()Landroid/view/SurfaceControl;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3}, Landroid/window/TransitionInfo$Change;-><init>(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl;)V

    move-object v0, v2

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/window/TransitionInfo$Change;->setMode(I)V

    nop

    invoke-virtual {v1}, Landroid/app/ElementSurfaceTransition;->getElementSurfaceInfo()Landroid/app/ElementSurfaceTransition$ElementSurfaceInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ElementSurfaceTransition$ElementSurfaceInfo;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/window/TransitionInfo$Change;->setStartAbsBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/window/TransitionInfo$Change;->setEndAbsBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getMiuiChange()Landroid/window/TransitionInfoStub$MiuiChange;

    move-result-object v2

    invoke-virtual {v1}, Landroid/app/ElementSurfaceTransition;->getElementSurfaceInfo()Landroid/app/ElementSurfaceTransition$ElementSurfaceInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ElementSurfaceTransition$ElementSurfaceInfo;->getRoundCorner()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/window/TransitionInfoStub$MiuiChange;->setCornerRadius(F)V

    const/high16 v2, -0x80000000

    invoke-virtual {v0, v2}, Landroid/window/TransitionInfo$Change;->setFlags(I)V

    :cond_0
    return-object v0
.end method

.method public getForcedDensity()I
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    const-string v2, "display_density_forced"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public getInterruptRotation(I)I
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mAnimInterruptController:Lcom/android/server/wm/AnimInterruptController;

    if-nez v0, :cond_0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mAnimInterruptController:Lcom/android/server/wm/AnimInterruptController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AnimInterruptController;->getInterruptRotation(I)I

    move-result v0

    return v0
.end method

.method public getNeedSwapAnimation()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mNeedSwapAnimation:Z

    return v0
.end method

.method public getResetLauncherChangeInfoIfNeed(Ljava/util/ArrayList;Lcom/android/server/wm/Task;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Task;",
            ">;",
            "Lcom/android/server/wm/Task;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isActivityTypeHome()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_0

    iget v4, v3, Lcom/android/server/wm/ActivityRecord;->mTransitionChangeFlags:I

    const v5, 0x48000

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_0

    iget v4, v3, Lcom/android/server/wm/ActivityRecord;->mTransitionChangeFlags:I

    const v5, -0x48001

    and-int/2addr v4, v5

    iput v4, v3, Lcom/android/server/wm/ActivityRecord;->mTransitionChangeFlags:I

    :cond_0
    goto :goto_0

    :cond_1
    iget-boolean v1, p2, Lcom/android/server/wm/Task;->mVisibleRequested:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    return v1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "may change transition changeInfo, task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mVisibleRequested="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p2, Lcom/android/server/wm/Task;->mVisibleRequested:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p2, Lcom/android/server/wm/Task;->mVisibleRequested:Z

    return v1
.end method

.method public getResolutionSwitchShotBuffer(ZLandroid/graphics/Rect;)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;
    .registers 8

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mPendingSwitchResolution:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/server/display/DisplayControl;->getPhysicalDisplayIds()[J

    move-result-object v1

    const/4 v2, 0x0

    aget-wide v2, v1, v2

    invoke-static {v2, v3}, Lcom/android/server/display/DisplayControl;->getPhysicalDisplayToken(J)Landroid/os/IBinder;

    move-result-object v2

    new-instance v3, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;

    invoke-direct {v3, v2}, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;-><init>(Landroid/os/IBinder;)V

    invoke-virtual {v3, p2}, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;->setSourceCrop(Landroid/graphics/Rect;)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object v3

    check-cast v3, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;->setCaptureSecureLayers(Z)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object v3

    check-cast v3, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;

    invoke-virtual {v3, v4}, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;->setAllowProtected(Z)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object v3

    check-cast v3, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;

    invoke-virtual {v3, p1}, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;->setHintForSeamlessTransition(Z)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object v3

    check-cast v3, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;

    invoke-virtual {v3}, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;->build()Landroid/window/ScreenCapture$DisplayCaptureArgs;

    move-result-object v3

    invoke-static {v3}, Landroid/window/ScreenCapture;->captureDisplay(Landroid/window/ScreenCapture$DisplayCaptureArgs;)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getRotationAnimInterruptStatus()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mAnimInterruptController:Lcom/android/server/wm/AnimInterruptController;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mAnimInterruptController:Lcom/android/server/wm/AnimInterruptController;

    invoke-virtual {v0}, Lcom/android/server/wm/AnimInterruptController;->getAnimInterruptStatus()Z

    move-result v0

    return v0
.end method

.method public getScreenShareProjectAndPrivateCastFlag(Lcom/android/server/wm/WindowStateAnimator;)I
    .registers 14

    const/4 v0, 0x0

    invoke-static {}, Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;->getInstance()Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_share_protection_on"

    const/4 v4, 0x0

    const/4 v5, -0x2

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    iget-object v6, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v1}, Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;->getMiuiInScreeningSettingsKey()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v4, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    iget-object v7, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v1}, Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;->getMiuiPrivacyOnSettingsKey()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v4, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eqz p1, :cond_8

    iget-object v5, p1, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    if-eqz v5, :cond_8

    iget-object v5, p1, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    if-eqz v5, :cond_8

    iget-object v5, p1, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v5}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_8

    iget-object v5, p1, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v5}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    if-lez v6, :cond_3

    if-lez v4, :cond_3

    invoke-virtual {v1}, Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;->getProjectionBlackList()Ljava/util/ArrayList;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v1}, Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;->getExtraScreenProjectFlag()I

    move-result v10

    or-int/2addr v0, v10

    goto :goto_2

    :cond_1
    iget-object v10, p1, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v10, v10, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-eqz v10, :cond_2

    iget-object v10, p1, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->getName()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_2

    iget-object v10, p1, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowState;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "PopupWindow"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, p1, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v10, v10, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez v10, :cond_2

    invoke-virtual {v1}, Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;->getExtraScreenProjectFlag()I

    move-result v10

    or-int/2addr v0, v10

    :cond_2
    :goto_2
    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p1, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v9, v9, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v9, :cond_4

    iget-object v9, p1, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v9, v9, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v9, v9, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v9, :cond_4

    iget-object v9, p1, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v9, v9, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v9, v9, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v10, p1, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v10, v10, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v10, v10, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v11, 0x2739

    invoke-virtual {v10, v11, v9, v8}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v7

    :cond_4
    if-eqz v2, :cond_8

    if-ne v7, v3, :cond_5

    if-eqz v8, :cond_5

    or-int/lit8 v0, v0, 0x40

    :cond_5
    invoke-virtual {v1}, Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;->getScreenShareProjectBlackList()Ljava/util/ArrayList;

    move-result-object v3

    if-nez v3, :cond_6

    return v0

    :cond_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_7

    or-int/lit16 v0, v0, 0x80

    :cond_7
    goto :goto_3

    :cond_8
    return v0
.end method

.method public getSnapshotLayer()I
    .registers 2

    const v0, 0x7ffffff5

    return v0
.end method

.method public getStatusBarInfo(Landroid/graphics/Rect;)Landroid/view/SurfaceControl;
    .registers 6

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerServiceImpl;->getDefaultDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->getStatusBar()Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "WindowManagerService"

    const-string v3, "getStatusBarInfo: return null"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return-object v2

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_1
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    return-object v2
.end method

.method public getStubBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mStubBinder:Lcom/android/server/wm/WindowManagerServiceImpl$StubBinder;

    return-object v0
.end method

.method public getTransitionReadyState()Z
    .registers 6

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mTransitionReadyList:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    const-string v1, "WindowManagerService"

    if-eqz v0, :cond_0

    const-string v0, "getTransitionReadyState mTransitionReadyList = null"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mTransitionReadyList:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTransitionReadyState syncId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public getUserActivityTime(Ljava/lang/String;)I
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mDimUserTimeoutMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getUserSetResolution()[I
    .registers 6

    const-string v0, ","

    const/4 v1, 0x3

    new-array v1, v1, [I

    const-string v2, "persist.sys.miui_resolution"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    :try_start_0
    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v4

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v4

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aput v0, v1, v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getResolutionFromProperty exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WindowManagerService"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v1

    :cond_0
    return-object v3
.end method

.method public handleAppDied(Lcom/android/server/am/ProcessRecord;I)V
    .registers 7

    const-string v0, "WindowManagerService"

    if-eqz p1, :cond_0

    const-string v1, "com.xiaomi.subscreencenter"

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/WindowManagerServiceImpl;->releaseRearAodSleepToken(Lcom/android/server/wm/RootWindowContainer;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Force released RearAodSleepToken for dead process pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error releasing RearAodSleepToken for dead process pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public hasBootBlackCoverLayer()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mBootBlackCoverLayer:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDelayFixedApp()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mAnimInterruptController:Lcom/android/server/wm/AnimInterruptController;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mAnimInterruptController:Lcom/android/server/wm/AnimInterruptController;

    invoke-virtual {v0}, Lcom/android/server/wm/AnimInterruptController;->hasDelayFixedApp()Z

    move-result v0

    return v0
.end method

.method public hasPermission(Ljava/lang/String;III)Z
    .registers 7

    invoke-static {}, Lmiui/util/MiuiMultiDisplayTypeInfo;->isIndependentRearDevice()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    if-eq p3, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p4}, Lcom/android/server/wm/WindowManagerServiceImpl;->isSystemApp(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    sget-object v0, Lcom/android/server/wm/WindowManagerServiceImpl;->SUB_BUILTIN_DISPLAY_PACKAGE_NAME_WHITE_LIST:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/16 v0, 0x7d0

    if-lt p2, v0, :cond_3

    const/16 v0, 0xbb7

    if-gt p2, v0, :cond_3

    const/4 v0, 0x0

    return v0

    :cond_3
    return v1

    :cond_4
    :goto_0
    return v1
.end method

.method public immediatelyRemoveBootLayer()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerServiceImpl;->needBootBlackCoverLayer()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerServiceImpl;->hasBootBlackCoverLayer()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerServiceImpl;->removeBootBlackCoverLayer()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public inHoverAnimating()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->miuiHoverModeInternal:Lcom/android/server/wm/MiuiHoverModeInternal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->miuiHoverModeInternal:Lcom/android/server/wm/MiuiHoverModeInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/MiuiHoverModeInternal;->inHoverAnimating()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public init(Lcom/android/server/wm/WindowManagerService;Landroid/content/Context;)V
    .registers 8

    iput-object p2, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mWmService:Lcom/android/server/wm/WindowManagerService;

    new-instance v0, Lcom/android/server/wm/WindowManagerServiceImpl$StubBinder;

    invoke-direct {v0, p0}, Lcom/android/server/wm/WindowManagerServiceImpl$StubBinder;-><init>(Lcom/android/server/wm/WindowManagerServiceImpl;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mStubBinder:Lcom/android/server/wm/WindowManagerServiceImpl$StubBinder;

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppOps:Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mAppOps:Landroid/app/AppOpsManager;

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107007e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mFoldedDeviceStates:[I

    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {}, Lcom/android/server/display/DisplayManagerServiceStub;->getInstance()Lcom/android/server/display/DisplayManagerServiceStub;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mDisplayManagerServiceStub:Lcom/android/server/display/DisplayManagerServiceStub;

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerServiceImpl;->isSupportSwitchResoluton()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mSupportSwitchResolutionFeature:Z

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerServiceImpl;->checkDDICSupportAndInitPhysicalSize()V

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerServiceImpl;->registerBootCompletedReceiver()V

    new-instance v0, Lcom/android/server/wm/WindowManagerServiceImpl$WindowOpChangedListener;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v0, v1, p2}, Lcom/android/server/wm/WindowManagerServiceImpl$WindowOpChangedListener;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v2, 0x2739

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    invoke-static {}, Lcom/miui/whetstone/PowerKeeperPolicy;->getInstance()Lcom/miui/whetstone/PowerKeeperPolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mPowerKeeperPolicy:Lcom/miui/whetstone/PowerKeeperPolicy;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x110300a9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mBlackList:Ljava/util/List;

    const-class v1, Lcom/miui/app/smartpower/SmartPowerServiceInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/app/smartpower/SmartPowerServiceInternal;

    iput-object v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mSmartPowerServiceInternal:Lcom/miui/app/smartpower/SmartPowerServiceInternal;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "persist.sys.hyper_transition"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerServiceImpl;->initAnimationScale()V

    sget v2, Lmiui/util/DeviceLevel;->CPU:I

    invoke-static {v1, v2}, Lmiui/util/DeviceLevel;->getDeviceLevel(II)I

    move-result v2

    sget v3, Lmiui/util/DeviceLevel;->GPU:I

    invoke-static {v1, v3}, Lmiui/util/DeviceLevel;->getDeviceLevel(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    sget v3, Lmiui/util/DeviceLevel;->HIGH:I

    if-ne v2, v3, :cond_0

    sget-object v2, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "goku"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "babylon"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    sget-boolean v3, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v3, :cond_1

    const-string v3, "WindowManagerService"

    const-string v4, "init interrupt anim control"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "persist.sys.interruption_anim"

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v1, v3}, Lcom/android/server/wm/AnimInterruptController;->getInstance(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/AnimInterruptController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mAnimInterruptController:Lcom/android/server/wm/AnimInterruptController;

    :cond_1
    nop

    invoke-static {}, Lcom/android/server/wm/ContentRecorderImpl;->getContentRecorderVersion()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "persist.sys.sf_content_recorder_version"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/android/server/wm/PreStartingManager;->init(Lcom/android/server/wm/WindowManagerService;Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerServiceImpl;->registerDisplayListenerForCommittedState()V

    return-void
.end method

.method public initAfterBoot()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mBlurWallpaperBmp:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerServiceImpl;->updateBlurWallpaperBmp()V

    :cond_0
    return-void
.end method

.method public initializeMiuiResolutionLocked()V
    .registers 5

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mSupportSwitchResolutionFeature:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerServiceImpl;->getUserSetResolution()[I

    move-result-object v0

    if-eqz v0, :cond_1

    aget v2, v0, v1

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mPhysicalWidth:I

    :goto_0
    if-eqz v0, :cond_2

    const/4 v3, 0x1

    aget v3, v0, v3

    goto :goto_1

    :cond_2
    iget v3, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mPhysicalHeight:I

    :goto_1
    invoke-direct {p0, v2, v3}, Lcom/android/server/wm/WindowManagerServiceImpl;->switchResolutionInternal(II)V

    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mPendingSwitchResolution:Z

    return-void
.end method

.method public interceptChangeAnimIfNeed(Lcom/android/server/wm/DisplayContent;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mAnimInterruptController:Lcom/android/server/wm/AnimInterruptController;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mAnimInterruptController:Lcom/android/server/wm/AnimInterruptController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AnimInterruptController;->interceptChangeAnimIfNeed(Lcom/android/server/wm/DisplayContent;)Z

    move-result v0

    return v0
.end method

.method public interceptClearFOIfNeed(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/DisplayContent;)Z
    .registers 6

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->inTransition()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isInTransition()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mHyperStub:Lcom/android/server/wm/ActivityRecordStub;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecordStub;->getOriginRequestOrientation()I

    move-result v0

    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isFixedOrientationPortrait(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mAnimInterruptController:Lcom/android/server/wm/AnimInterruptController;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mAnimInterruptController:Lcom/android/server/wm/AnimInterruptController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AnimInterruptController;->interceptClearFOIfNeed(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public interruptForStartActivity(Lcom/android/server/wm/Transition;Z)Z
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mAnimInterruptController:Lcom/android/server/wm/AnimInterruptController;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mAnimInterruptController:Lcom/android/server/wm/AnimInterruptController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/AnimInterruptController;->interruptForStartActivity(Lcom/android/server/wm/Transition;Z)Z

    move-result v0

    return v0
.end method

.method public isAbortTransitionInScreenOff(ILcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/Transition;)Z
    .registers 11

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-ne p1, v0, :cond_4

    if-nez p3, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    iget-object v2, p3, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    const-string v6, "com.miui.voiceassist.floatactivity"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    iget-object v3, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    if-eqz v3, :cond_3

    iget-object v3, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v4

    iget v4, v4, Landroid/view/DisplayInfo;->state:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    invoke-virtual {p3}, Lcom/android/server/wm/Transition;->getFlags()I

    move-result v4

    and-int/lit16 v4, v4, 0x100

    if-nez v4, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {p3}, Lcom/android/server/wm/Transition;->abort()V

    return v5

    :cond_3
    return v1

    :cond_4
    :goto_2
    return v1
.end method

.method public isAdjustScreenOff(Ljava/lang/CharSequence;)Z
    .registers 5

    sget-boolean v0, Lcom/android/server/wm/WindowManagerServiceImpl;->SUPPPORT_CLOUD_DIM:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mDimUserTimeoutMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mDimUserTimeoutMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    return v1
.end method

.method public isAllowedDisableKeyguard(I)Z
    .registers 8

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x2710

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    if-eqz v0, :cond_3

    array-length v1, v0

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v3, 0x2724

    const/4 v4, 0x0

    aget-object v5, v0, v4

    invoke-virtual {v1, v3, p1, v5}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MIUILOG- DisableKeyguard PermissionDenied uid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WindowManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_3
    :goto_1
    return v2
.end method

.method public isAssistResson(Ljava/lang/CharSequence;)Z
    .registers 4

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mDimNeedAssistMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mDimNeedAssistMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mDimNeedAssistMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isCameraOpen()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mOpeningCameraID:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCtsModeEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->IS_CTS_MODE:Z

    return v0
.end method

.method public isCtsVerifier(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "com.android.cts.verifier"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isDeviceStateFolded()Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mFoldedDeviceStates:[I

    iget v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mCurrentDeviceState:I

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    return v0
.end method

.method public isDisableDim(Lcom/android/server/wm/Task;Ljava/util/ArrayList;Landroid/util/ArrayMap;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/Task;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Transition$ChangeInfo;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/wm/WindowContainer;",
            "Lcom/android/server/wm/Transition$ChangeInfo;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getDimmer()Lcom/android/server/wm/Dimmer;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {v1}, Lcom/android/server/wm/Dimmer;->hostIsTask()Z

    move-result v3

    if-eqz v3, :cond_2

    return v0

    :cond_2
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Transition$ChangeInfo;

    iget-object v3, v3, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isActivityTypeHomeOrRecents()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Transition$ChangeInfo;

    iget-object v3, v3, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isVisibleRequested()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p3, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v2

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v0
.end method

.method public isEnableCarMirrorRelaunch()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mEnableCarMirrorRelaunch:Z

    return v0
.end method

.method public isFixedGameSizeCompatAspectRatio(Ljava/lang/String;)Z
    .registers 6

    const-class v0, Lcom/android/server/wm/MiuiSizeCompatInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/MiuiSizeCompatInternal;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/server/wm/MiuiSizeCompatInternal;->getGameAspectRatioByPackage(Ljava/lang/String;)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isImeFocusInMultiWindow(Landroid/os/IBinder;)Z
    .registers 6

    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    return v1

    :cond_1
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->inMultiWindowMode()Z

    move-result v1

    return v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public isKeyGuardShowing()Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/KeyguardController;->isKeyguardShowing(I)Z

    move-result v0

    return v0
.end method

.method public isNotifyTouchEnable()Z
    .registers 2

    sget-boolean v0, Lcom/android/server/wm/WindowManagerServiceImpl;->SUPPORT_UNION_POWER_CORE:Z

    return v0
.end method

.method public isPendingHoldOnStateOff()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mPendingHoldonStateOff:Z

    return v0
.end method

.method public isPendingSetRotationAndOrientationForFold()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mPendingSetRotationAndOrientationForFold:Z

    return v0
.end method

.method public isPendingSwitchResolution()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mPendingSwitchResolution:Z

    return v0
.end method

.method public isRotationLocked(Z)Z
    .registers 6

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    const-string v2, "WindowManagerService"

    if-nez v0, :cond_0

    const-string v3, "Trying to get userRotationMode for a missing display."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const-string v1, "Trying to get userRotationMode success."

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/DisplayRotation;->mDisplayRotationStub:Lcom/android/server/wm/DisplayRotationStub;

    invoke-interface {v1, p1}, Lcom/android/server/wm/DisplayRotationStub;->isRotationLocked(Z)Z

    move-result v1

    return v1
.end method

.method public isSplitMode()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mSplitMode:Z

    return v0
.end method

.method public isSupportSetActiveModeSwitchResolution()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mSupportActiveModeSwitch:Z

    return v0
.end method

.method public isTopLayoutFullScreen()Z
    .registers 3

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerServiceImpl;->getDefaultDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isTopLayoutFullscreen()Z

    move-result v1

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isUpdateFocusedWindowLocked(Ljava/lang/String;)Z
    .registers 5

    sget-boolean v0, Lcom/android/server/wm/MiuiOrientationStub;->IS_TABLET:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_2

    const-string v0, "com.android.provision/.activities.DefaultActivity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerServiceImpl;->hasBootBlackCoverLayer()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isExistBootBlackCoverLayer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public linkWallpaperWindowTokenDeathMonitor(Landroid/os/IBinder;I)V
    .registers 5

    :try_start_0
    new-instance v0, Lcom/android/server/wm/WindowManagerServiceImpl$WallpaperDeathMonitor;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/wm/WindowManagerServiceImpl$WallpaperDeathMonitor;-><init>(Lcom/android/server/wm/WindowManagerServiceImpl;Landroid/os/IBinder;I)V

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public mayChangeToMiuiSecurityInputMethod()Z
    .registers 10

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getImeInputTarget()Lcom/android/server/wm/InputTarget;

    move-result-object v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->getImeTarget(I)Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-interface {v3}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v3}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getWindowingMode()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_3

    invoke-interface {v2}, Lcom/android/server/wm/InputTarget;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.android.settings.Settings$WifiSettingsActivity"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    return v1

    :cond_3
    invoke-interface {v2}, Lcom/android/server/wm/InputTarget;->getWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v4

    if-nez v4, :cond_4

    return v1

    :cond_4
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    if-eqz v5, :cond_6

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mMiuiSecurityImeWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "windowName: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " activityRecord: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v6, "WindowManagerService"

    invoke-static {v6, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    return v1

    :cond_5
    goto :goto_0

    :cond_6
    return v1

    :cond_7
    :goto_1
    return v1
.end method

.method public mayChangeToMiuiSecurityInputMethod(Landroid/os/IBinder;)Z
    .registers 9

    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    return v1

    :cond_1
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mMiuiSecurityImeWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v1, 0x1

    return v1

    :cond_2
    goto :goto_0

    :cond_3
    return v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public needBootBlackCoverLayer()Z
    .registers 3

    sget-boolean v0, Lcom/android/server/wm/MiuiOrientationStub;->IS_TABLET:Z

    if-eqz v0, :cond_0

    const-string v0, "ro.boot.ori"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public needUpdateOrientationForFold()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mNeedUpdateOrientationForFold:Z

    return v0
.end method

.method public notAllowCaptureDisplay(Lcom/android/server/wm/RootWindowContainer;I)Z
    .registers 7

    const/4 v1, 0x1

    const-string v0, "disable_mezo_screenshot_secure"

    invoke-static {v0, v1}, Landroid/preference/SettingsMezoHelper;->getIntofSettings(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    invoke-static {}, Lcom/android/server/wm/ActivityRecordStub;->isCompatibilityMode()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Screenshot on invalid display "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "WindowManagerService"

    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    new-instance v1, Lcom/android/server/wm/WindowManagerServiceImpl$$ExternalSyntheticLambda21;

    invoke-direct {v1, p0}, Lcom/android/server/wm/WindowManagerServiceImpl$$ExternalSyntheticLambda21;-><init>(Lcom/android/server/wm/WindowManagerServiceImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v1

    return v1

    :cond_3
    :goto_0
    return v2
.end method

.method public notCollectInTransition(Lcom/android/server/wm/WindowContainer;)Z
    .registers 7

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/WindowManagerServiceImpl;->BLACK_LIST_NOT_COLLECT_IN_TRANSITION:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.miui.carlink/com.carwith.launcher.card.CardActivity"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/ActivityRecordImpl;->isVirtualDisplay(Lcom/android/server/wm/DisplayContent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v2, 0x0

    const/16 v3, 0x7dd

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getWindowType()I

    move-result v4

    if-ne v4, v3, :cond_3

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isKeyguardGoingAway()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getTopRootTask()Lcom/android/server/wm/Task;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-boolean v4, v3, Lcom/android/server/wm/ActivityRecord;->mIsHoldOn:Z

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    return v1

    :cond_3
    invoke-static {}, Lcom/android/server/wm/WallpaperControllerStub;->getInstance()Lcom/android/server/wm/WallpaperControllerStub;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/wm/WallpaperControllerStub;->showWallpaperForProjection()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getWindowType()I

    move-result v4

    if-ne v4, v3, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    return v1
.end method

.method public notifyAnimBeInterrupt()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mAnimInterruptController:Lcom/android/server/wm/AnimInterruptController;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mAnimInterruptController:Lcom/android/server/wm/AnimInterruptController;

    invoke-virtual {v0}, Lcom/android/server/wm/AnimInterruptController;->markForeseeInterrupt()V

    return-void
.end method

.method public notifyFinishTransition(Landroid/app/ISurfaceInfoUpdateCallback;)V
    .registers 3

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Landroid/app/ISurfaceInfoUpdateCallback;->onTransitionFinish()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public notifyOrientationUpdate2Global()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mAnimInterruptController:Lcom/android/server/wm/AnimInterruptController;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mAnimInterruptController:Lcom/android/server/wm/AnimInterruptController;

    invoke-virtual {v0}, Lcom/android/server/wm/AnimInterruptController;->notifyOrientationUpdate2Global()V

    return-void
.end method

.method public notifyPowerFloatWindowScene(Ljava/lang/String;IZ)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mPowerKeeperPolicy:Lcom/miui/whetstone/PowerKeeperPolicy;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mPowerKeeperPolicy:Lcom/miui/whetstone/PowerKeeperPolicy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/whetstone/PowerKeeperPolicy;->notifyFloatWindowScene(Ljava/lang/String;IZ)V

    return-void
.end method

.method public notifySFBlurChanged(Z)V
    .registers 9

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "SurfaceFlinger"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    move-object v2, v4

    const-string v4, "android.ui.ISurfaceComposer"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    :goto_0
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x84da

    invoke-interface {v3, v6, v2, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz v2, :cond_2

    :goto_1
    :try_start_1
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception v3

    goto :goto_3

    :catch_0
    move-exception v3

    :try_start_2
    const-string v4, "WindowManagerService"

    const-string v5, "Failed to notify blur state to SurfaceFlinger"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :goto_3
    if-eqz v2, :cond_3

    :try_start_3
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    :cond_3
    nop

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public notifySystemBrightnessChange()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v1, Lcom/android/server/wm/WindowManagerServiceImpl$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/android/server/wm/WindowManagerServiceImpl$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/wm/WindowManagerServiceImpl;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public notifyTaskFocusChange(Lcom/android/server/wm/ActivityRecord;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mDisplayManagerServiceStub:Lcom/android/server/display/DisplayManagerServiceStub;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mPowerKeeperPolicy:Lcom/miui/whetstone/PowerKeeperPolicy;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerServiceImpl;->isNotifyTouchEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mPowerKeeperPolicy:Lcom/miui/whetstone/PowerKeeperPolicy;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/miui/whetstone/PowerKeeperPolicy;->notifyTaskFocusChange(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mDisplayManagerServiceStub:Lcom/android/server/display/DisplayManagerServiceStub;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/display/DisplayManagerServiceStub;->notifyTaskFocusChange(Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method public notifyTouchFromNative(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mPowerKeeperPolicy:Lcom/miui/whetstone/PowerKeeperPolicy;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mPowerKeeperPolicy:Lcom/miui/whetstone/PowerKeeperPolicy;

    invoke-virtual {v0, p1}, Lcom/miui/whetstone/PowerKeeperPolicy;->notifyTouchStatus(Z)V

    return-void
.end method

.method public notifyTransitionFinished(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mAnimInterruptController:Lcom/android/server/wm/AnimInterruptController;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mAnimInterruptController:Lcom/android/server/wm/AnimInterruptController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AnimInterruptController;->requestChangeTransitionIfNeed(I)V

    return-void
.end method

.method public notifyTransitionPlaying(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mAnimInterruptController:Lcom/android/server/wm/AnimInterruptController;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mAnimInterruptController:Lcom/android/server/wm/AnimInterruptController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AnimInterruptController;->notifyTransitionPlaying(I)V

    return-void
.end method

.method public notifyTransitionReady(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mAnimInterruptController:Lcom/android/server/wm/AnimInterruptController;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mAnimInterruptController:Lcom/android/server/wm/AnimInterruptController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AnimInterruptController;->notifyTransitionReady(I)V

    return-void
.end method

.method public notifyTransitionRequest(Landroid/window/TransitionRequestInfo$DisplayChange;Lcom/android/server/wm/Transition;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mAnimInterruptController:Lcom/android/server/wm/AnimInterruptController;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mAnimInterruptController:Lcom/android/server/wm/AnimInterruptController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/AnimInterruptController;->notifyTransitionRequest(Landroid/window/TransitionRequestInfo$DisplayChange;Lcom/android/server/wm/Transition;)V

    return-void
.end method

.method public notifyUIServiceFloatWindowScene(Ljava/lang/String;IZ)V
    .registers 10

    const/16 v0, 0x7f6

    if-ne p2, v0, :cond_1

    sget-boolean v0, Lcom/android/server/wm/WindowManagerServiceImpl;->SUPPPORT_UISERVICE:Z

    if-eqz v0, :cond_1

    const-string v0, "uiservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    const-string v1, "WindowManagerService"

    if-nez v0, :cond_0

    const-string v2, "null binder"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    const-string v3, "com.android.server.ui.IUiService"

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x6

    :try_start_0
    invoke-interface {v0, v5, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_1
    const-string v4, "uiService abnormal="

    invoke-static {v1, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    goto :goto_0

    :goto_1
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v1

    :cond_1
    :goto_2
    return-void
.end method

.method public notifyWindowAdded(Lcom/android/server/wm/WindowState;)V
    .registers 5

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/wm/WindowManagerServiceImpl;->notifyPowerFloatWindowScene(Ljava/lang/String;IZ)V

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/wm/WindowManagerServiceImpl;->notifyUIServiceFloatWindowScene(Ljava/lang/String;IZ)V

    invoke-static {}, Landroid/os/microsoft/flags/Flags;->ltwEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/wm/BlackScreenWindowManager;->getInstance()Lcom/android/server/wm/BlackScreenWindowManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/BlackScreenWindowManager;->onWindowAdded(Lcom/android/server/wm/WindowState;)V

    :cond_0
    return-void
.end method

.method public notifyWindowRemoved(Lcom/android/server/wm/WindowState;)V
    .registers 5

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/wm/WindowManagerServiceImpl;->notifyPowerFloatWindowScene(Ljava/lang/String;IZ)V

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/wm/WindowManagerServiceImpl;->notifyUIServiceFloatWindowScene(Ljava/lang/String;IZ)V

    invoke-static {}, Lcom/android/server/wm/MiuiWindowMonitorStub;->getInstance()Lcom/android/server/wm/MiuiWindowMonitorStub;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/MiuiWindowMonitorStub;->removeWindowInfoLocked(Landroid/os/IBinder;)V

    invoke-static {}, Landroid/os/microsoft/flags/Flags;->ltwEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/wm/BlackScreenWindowManager;->getInstance()Lcom/android/server/wm/BlackScreenWindowManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/BlackScreenWindowManager;->onWindowRemoved(Lcom/android/server/wm/WindowState;)V

    :cond_0
    return-void
.end method

.method public onDisplayDeviceStateChangeLocked(I)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDisplayDeviceStateChange deviceState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mCurrentDeviceState:I

    return-void
.end method

.method public onFinishTransition()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->miuiHoverModeInternal:Lcom/android/server/wm/MiuiHoverModeInternal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->miuiHoverModeInternal:Lcom/android/server/wm/MiuiHoverModeInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/MiuiHoverModeInternal;->onFinishTransition()V

    :cond_0
    return-void
.end method

.method public onHoverModeRecentAnimStart()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->miuiHoverModeInternal:Lcom/android/server/wm/MiuiHoverModeInternal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->miuiHoverModeInternal:Lcom/android/server/wm/MiuiHoverModeInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/MiuiHoverModeInternal;->onHoverModeRecentAnimStart()V

    :cond_0
    return-void
.end method

.method public onOccludedChangedListener(Z)V
    .registers 6

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mIsOccluded:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mIsOccluded:Z

    const-string v0, "WindowManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOccludedChangedListener, isOccluded = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mOccludedChangedListener:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mOccludedChangedListener:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/IOccludedChangedListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v2, p1}, Landroid/app/IOccludedChangedListener;->onOccludedChangedCallback(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_2
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    goto :goto_0

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mPowerKeeperPolicy:Lcom/miui/whetstone/PowerKeeperPolicy;

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mPowerKeeperPolicy:Lcom/miui/whetstone/PowerKeeperPolicy;

    invoke-virtual {v0, v1}, Lcom/miui/whetstone/PowerKeeperPolicy;->notifyTouchStatus(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mPowerKeeperPolicy:Lcom/miui/whetstone/PowerKeeperPolicy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/whetstone/PowerKeeperPolicy;->notifyTouchStatus(Z)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method public onScreenRotationAnimationEnd()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->miuiHoverModeInternal:Lcom/android/server/wm/MiuiHoverModeInternal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->miuiHoverModeInternal:Lcom/android/server/wm/MiuiHoverModeInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/MiuiHoverModeInternal;->onScreenRotationAnimationEnd()V

    :cond_0
    return-void
.end method

.method public onSecureChangedListener(Lcom/android/server/wm/WindowState;Z)V
    .registers 11

    if-eqz p1, :cond_9

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_5

    :cond_0
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x2000

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v3, :cond_2

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    sget-object v4, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    sget-object v4, Lcom/android/server/wm/ActivityRecord$State;->STARTED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :cond_3
    :goto_1
    iget-boolean v2, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mLastWindowHasSecure:Z

    if-eq v0, v2, :cond_8

    if-nez p2, :cond_4

    if-eqz v1, :cond_8

    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerServiceImpl;->topRunningActivityChange(Lcom/android/server/wm/WindowState;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-static {v2}, Lcom/android/server/wm/MiuiEmbeddingWindowServiceStub;->isProjection(Lcom/android/server/wm/WindowContainer;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getWindowType()I

    move-result v2

    const/16 v3, 0x7e1

    if-eq v2, v3, :cond_5

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getWindowType()I

    move-result v2

    const/16 v3, 0x7f8

    if-ne v2, v3, :cond_8

    :cond_5
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getWindowType()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_8

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mLastWindowHasSecure:Z

    const-string v2, "WindowManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSecureChanged, current win = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", hasSecure = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mSecureChangeListeners:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mSecureChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    monitor-exit v2

    return-void

    :cond_6
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mSecureChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/IWindowSecureChangeListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Landroid/app/IWindowSecureChangeListener;->onSecureChangeCallback(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v5

    :try_start_2
    const-string v6, "WindowManagerService"

    const-string v7, "Failed to notify NFC callback about secure window changes"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    :goto_3
    goto :goto_2

    :cond_7
    monitor-exit v2

    goto :goto_4

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    :cond_8
    :goto_4
    return-void

    :cond_9
    :goto_5
    return-void
.end method

.method public onStopFreezingDisplayLocked()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->miuiHoverModeInternal:Lcom/android/server/wm/MiuiHoverModeInternal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->miuiHoverModeInternal:Lcom/android/server/wm/MiuiHoverModeInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/MiuiHoverModeInternal;->onStopFreezingDisplayLocked()V

    :cond_0
    return-void
.end method

.method public onSystemReady()V
    .registers 3

    const-class v0, Lcom/android/server/wm/MiuiHoverModeInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/MiuiHoverModeInternal;

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->miuiHoverModeInternal:Lcom/android/server/wm/MiuiHoverModeInternal;

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->miuiHoverModeInternal:Lcom/android/server/wm/MiuiHoverModeInternal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->miuiHoverModeInternal:Lcom/android/server/wm/MiuiHoverModeInternal;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/MiuiHoverModeInternal;->onSystemReady(Lcom/android/server/wm/WindowManagerService;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowManagerServiceImpl;->setDefaultBlurConfigIfNeeded(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/server/wm/DisplayPolicyStub;->getInstance()Lcom/android/server/wm/DisplayPolicyStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wm/DisplayPolicyStub;->onSystemReady()V

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerServiceImpl;->registerLocalScenarioCallback()V

    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 6

    const/16 v0, 0xff

    if-ne p1, v0, :cond_0

    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/wm/WindowManagerServiceImpl;->switchResolution(Landroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :cond_0
    nop

    const/4 v0, 0x0

    return v0
.end method

.method public onWindowRequestSize(IIILjava/lang/CharSequence;)V
    .registers 7

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x2710

    if-lt v0, v1, :cond_0

    if-lez p2, :cond_0

    if-lez p3, :cond_0

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/server/wm/WindowManagerServiceImpl;->checkIfUnusualWindowEvent(ILjava/lang/String;II)V

    :cond_0
    return-void
.end method

.method public receiveMotionFromOutside(Lcom/android/server/wm/InputTarget;)Z
    .registers 5

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/android/server/wm/InputTarget;->getWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Lcom/android/server/wm/InputTarget;->getWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "GestureStubLeft"

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {p1}, Lcom/android/server/wm/InputTarget;->getWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "GestureStubRight"

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const-string v0, "WindowManagerService"

    const-string v1, "touch another display`s GestureStub,update focus!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_3
    :goto_1
    return v0
.end method

.method public registerFlipWindowStateListener(Landroid/view/IFlipWindowStateListener;)Z
    .registers 6

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mFlipListenerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mNavigationBarColorListenerMap:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/view/IFlipWindowStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "FlipSCF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerNavigationBarColorListener binder = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Landroid/view/IFlipWindowStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mNavigationBarColorListenerMap:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mLastIsFullScreen:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public registerScreenStateListener(Landroid/view/IScreenStateListener;)V
    .registers 8

    if-eqz p1, :cond_2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/wm/WindowManagerServiceImpl;->isSystemApp(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mScreenStateListeners:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mScreenStateListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v2, "WindowManagerService"

    const-string v3, "Can\'t register repeat listener for screen state"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_1
    new-instance v2, Lcom/android/server/wm/WindowManagerServiceImpl$ScreenStateListenerRecord;

    invoke-direct {v2, p0, p1, v1}, Lcom/android/server/wm/WindowManagerServiceImpl$ScreenStateListenerRecord;-><init>(Lcom/android/server/wm/WindowManagerServiceImpl;Landroid/view/IScreenStateListener;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {p1}, Landroid/view/IScreenStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    :try_start_2
    const-string v3, "WindowManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " registered a screen state listener"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mScreenStateListeners:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v0

    return-void

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_2
    :goto_0
    const-string v0, "WindowManagerService"

    const-string v1, "Not Support normal application listen screen state"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public relayoutWindow(Lcom/android/server/wm/WindowState;III)V
    .registers 17

    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7f6

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getPid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningUid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array/range {v1 .. v11}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "relayoutWindow"

    invoke-static {v2, v1}, Lcom/android/server/camera/CameraOpt;->callMethod(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public releaseRearAodSleepToken(Lcom/android/server/wm/RootWindowContainer;I)V
    .registers 7

    invoke-static {}, Lmiui/util/MiuiMultiDisplayTypeInfo;->isIndependentRearDevice()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const-string v1, "android.permission.DEVICE_POWER"

    const-string v2, "releaseRearAodSleepToken"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->checkCallingPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p1, Lcom/android/server/wm/RootWindowContainer;->mRearAodSleepTokenAcquirer:Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirer;

    invoke-virtual {v3, p2}, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirer;->release(I)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires permission android.permission.DEVICE_POWER"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    return-void
.end method

.method public removeBootBlackCoverLayer()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mBootBlackCoverLayer:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mBootBlackCoverLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mBootBlackCoverLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mBootBlackCoverLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    const-string v1, "DisplayRotationImpl"

    const-string v2, "removeBootBlackCoverLayerSurface"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public removeBootBlackCoverLayer(Landroid/view/SurfaceControl$Transaction;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mBootBlackCoverLayer:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mBootBlackCoverLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mBootBlackCoverLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mBootBlackCoverLayer:Landroid/view/SurfaceControl;

    const-string v0, "DisplayRotationImpl"

    const-string v1, "applyRotation removeBootBlackCoverLayerSurface"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    const/16 v2, 0x6d

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(ILjava/lang/Object;)V

    return-void
.end method

.method public removeFlipWindowStateListener(Landroid/view/IFlipWindowStateListener;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mFlipListenerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mNavigationBarColorListenerMap:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/view/IFlipWindowStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "FlipSCF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeNavigationBarColorListener binder = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Landroid/view/IFlipWindowStateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mNavigationBarColorListenerMap:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeMiuiPaperContrastOverlay([Landroid/view/SurfaceControl;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mMiuiPaperContrastOverlay:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    aget-object v1, p1, v0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mMiuiPaperContrastOverlay:Landroid/view/SurfaceControl;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    aput-object v1, p1, v0

    iput-object v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mMiuiPaperContrastOverlay:Landroid/view/SurfaceControl;

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public removeOccludedChangedListener(Landroid/app/IOccludedChangedListener;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mOccludedChangedListener:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mOccludedChangedListener:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeSecureChangedListener(Landroid/app/IWindowSecureChangeListener;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mSecureChangeListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mSecureChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public saveFlipCutoutColorAndNotify(ILcom/android/server/wm/ActivityRecord;)V
    .registers 10

    iget v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mNavigationColor:I

    if-eq p1, v0, :cond_3

    iput p1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mNavigationColor:I

    const-string v0, "FlipSCF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Notifying listeners that the SCF has changed , originalColor = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mNavigationColor:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , new color = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , new ARGB = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , current activity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p2, :cond_0

    iget-object v2, p2, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mNavigationBarColorListenerMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mNavigationBarColorListenerMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/IFlipWindowStateListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v2, p1}, Landroid/view/IFlipWindowStateListener;->onNavigationColorChange(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v3

    :try_start_2
    instance-of v4, v3, Landroid/os/DeadObjectException;

    if-eqz v4, :cond_1

    const-string v4, "FlipSCF"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onNavigationColorChange binder died, remove it, key = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mNavigationBarColorListenerMap:Landroid/util/ArrayMap;

    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mNavigationBarColorListenerMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    const-string v4, "FlipSCF"

    const-string v5, "onNavigationColorChange fail"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_2
    monitor-exit v0

    goto :goto_3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_3
    :goto_3
    return-void
.end method

.method public scheduleAsFifoPriorityIfNeed()V
    .registers 9

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->BOOST:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->getThreadScheduler(I)I

    move-result v1

    const v2, 0x40000001

    if-eq v1, v2, :cond_0

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/server/am/ActivityManagerService;->scheduleAsFifoPriority(IZ)Z

    new-instance v2, Lcom/android/server/wm/WindowManagerServiceImpl$$ExternalSyntheticLambda20;

    invoke-direct {v2, v0}, Lcom/android/server/wm/WindowManagerServiceImpl$$ExternalSyntheticLambda20;-><init>(I)V

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x64

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    sget-boolean v0, Lcom/android/server/wm/WindowManagerServiceImpl;->mLaunchBindCoreAnimEnable:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/server/am/SchedBoostManagerInternalStub;->getInstance()Lcom/android/server/am/SchedBoostManagerInternalStub;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v4

    const-string v2, "System_Server"

    const/4 v5, 0x7

    const-wide/16 v6, 0x32

    invoke-interface/range {v1 .. v7}, Lcom/android/server/am/SchedBoostManagerInternalStub;->setSchedMode(Ljava/lang/String;IIIJ)V

    :cond_1
    return-void
.end method

.method public screenTurningOff(I)V
    .registers 6

    invoke-static {}, Lmiui/util/MiuiMultiDisplayTypeInfo;->isIndependentRearDevice()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "WindowManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Screen turning off on display id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mScreenStateListeners:Landroid/util/SparseArray;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mScreenStateListeners:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mScreenStateListenersToNotify:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mScreenStateListeners:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowManagerServiceImpl$ScreenStateListenerRecord;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mScreenStateListenersToNotify:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/wm/WindowManagerServiceImpl$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Lcom/android/server/wm/WindowManagerServiceImpl$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mScreenStateListenersToNotify:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_2
    :goto_1
    return-void
.end method

.method public setBlurActivated(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->setBlurActivated(Z)V

    :cond_0
    return-void
.end method

.method public setCloudDimControllerList(Ljava/lang/String;)V
    .registers 9

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mDimUserTimeoutMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mDimNeedAssistMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    aget-object v2, v0, v1

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mDimUserTimeoutMap:Ljava/util/HashMap;

    const/4 v4, 0x0

    aget-object v5, v2, v4

    const/4 v6, 0x1

    aget-object v6, v2, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mDimNeedAssistMap:Ljava/util/HashMap;

    aget-object v4, v2, v4

    const/4 v5, 0x2

    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setDeviceFolded(Z)V
    .registers 4

    if-eqz p1, :cond_0

    invoke-static {}, Lmiui/util/MiuiMultiDisplayTypeInfo;->isFlipDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mAnimInterruptController:Lcom/android/server/wm/AnimInterruptController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mAnimInterruptController:Lcom/android/server/wm/AnimInterruptController;

    invoke-virtual {v0}, Lcom/android/server/wm/AnimInterruptController;->clearInterruptStatus()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mAnimInterruptController:Lcom/android/server/wm/AnimInterruptController;

    goto :goto_0

    :cond_0
    invoke-static {}, Lmiui/util/MiuiMultiDisplayTypeInfo;->isFlipDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->DEVICE_INITIAL_SDK_INT:I

    const/16 v1, 0x24

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v0, v1}, Lcom/android/server/wm/AnimInterruptController;->getInstance(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/AnimInterruptController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mAnimInterruptController:Lcom/android/server/wm/AnimInterruptController;

    :cond_1
    :goto_0
    return-void
.end method

.method public setDisplayFlags(II)V
    .registers 11

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/server/wm/DisplayContent;->hasAccess(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "WindowManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Display "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " setDisplayFlags FLAG_STEAL_TOP_FOCUS_DISABLED "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    and-int/lit16 v6, p2, 0x1000

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    move v6, v3

    :goto_0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, p2}, Lcom/android/server/wm/DisplayContent;->setDisplayFlags(I)V

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/RootWindowContainer;->getTopFocusedDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->canStealTopFocus()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v5

    if-ne v5, p1, :cond_1

    const-string v5, "WindowManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Move DEFAULT_DISPLAY to top because the display "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " changed flag FLAG_STEAL_TOP_FOCUS_DISABLED."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/android/server/wm/DisplayContent;->setImeInputTarget(Lcom/android/server/wm/InputTarget;)V

    const/4 v0, 0x1

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v3}, Lcom/android/server/wm/WindowManagerService;->moveDisplayToTopIfAllowed(I)V

    :cond_2
    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public setNeedSwapAnimation(ZZ)Z
    .registers 8

    const-string v0, "WindowManagerService"

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/android/server/wm/MiuiOrientationStub;->get()Lcom/android/server/wm/MiuiOrientationStub;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/wm/MiuiOrientationStub;->isFlipDevice()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "flip_continuity_default"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/server/wm/AppContinuityRouterStub;->get()Lcom/android/server/wm/AppContinuityRouterStub;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/AppContinuityRouterStub;->isKeepContinuityInFold()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    const-string v2, "Because isKeepContinuityInFold is false, set needSwapAnimation to false"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mNeedSwapAnimation:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WMS has received, needSwapAnimation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isFolded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTransitionController()Lcom/android/server/wm/TransitionController;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Receive need swap animation, now collecting is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", t.mRelateSwapAnimation = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/wm/Transition;->mTransitionStub:Lcom/android/server/wm/TransitionStub$MutableTransitionStub;

    invoke-interface {v4}, Lcom/android/server/wm/TransitionStub$MutableTransitionStub;->isRelateSwapAnimation()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/wm/TransitionStub;->get()Lcom/android/server/wm/TransitionStub;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/server/wm/TransitionStub;->preShowCoverLeashIfNeeded(Lcom/android/server/wm/TransitionController;)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mResetSwapAnimation:Ljava/lang/Runnable;

    const-wide/16 v3, 0x5dc

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mResetSwapAnimation:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_0
    return p1
.end method

.method public setPendingSetRotationAndOrientationForFold(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mPendingSetRotationAndOrientationForFold:Z

    return-void
.end method

.method public setRotationLockForFold(ZIZ)V
    .registers 10

    invoke-static {}, Lcom/android/server/wm/MiuiOrientationStub;->get()Lcom/android/server/wm/MiuiOrientationStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wm/MiuiOrientationStub;->isAllEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v4, "WindowManagerService"

    const-string v5, "Trying to update userRotationMode of another display for a missing display."

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_0
    :try_start_2
    const-string v4, "WindowManagerService"

    const-string v5, "Trying to update userRotationMode of another display success."

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    nop

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/DisplayRotation;->mDisplayRotationStub:Lcom/android/server/wm/DisplayRotationStub;

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v5

    invoke-interface {v4, v5, p1, p2, p3}, Lcom/android/server/wm/DisplayRotationStub;->setUserRotationForFold(IZIZ)V

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :cond_1
    :goto_0
    return-void
.end method

.method public setRunningRecentsAnimation(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mRunningRecentsAnimation:Z

    return-void
.end method

.method public setSplittable(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mSplitMode:Z

    return-void
.end method

.method public setTransitionReadyState(IZ)V
    .registers 5

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mTransitionReadyList:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mTransitionReadyList:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mTransitionReadyList:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public shouldApplyOverrideBrightness(Lcom/android/server/wm/WindowState;)Z
    .registers 7

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mTaskIdScreenBrightnessOverrides:Landroid/util/SparseArray;

    iget v3, v0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-gez v2, :cond_1

    return v1

    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mTaskIdScreenBrightnessOverrides:Landroid/util/SparseArray;

    iget v4, v0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mBlackList:Ljava/util/List;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shouldApplyOverrideBrightness: mTaskIdScreenBrightnessOverrides="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mTaskIdScreenBrightnessOverrides:Landroid/util/SparseArray;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " taskId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WindowManagerService"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mTaskIdScreenBrightnessOverrides:Landroid/util/SparseArray;

    iget v4, v0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->delete(I)V

    return v1

    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public shouldApplyOverrideBrightnessForPip(Lcom/android/server/wm/WindowState;)Z
    .registers 6

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    const/4 v1, 0x0

    if-ltz v0, :cond_4

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isVisibleRequested()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->inTransition()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityRecord;->mWaitForEnteringPinnedMode:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->inPinnedWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v2, v0, Lcom/android/server/wm/Transition;->mType:I

    const/16 v3, 0xa

    if-eq v2, v3, :cond_2

    iget v2, v0, Lcom/android/server/wm/Transition;->mType:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_3

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Override brightness when "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is entering PIP."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    return v1

    :cond_3
    return v1

    :cond_4
    :goto_0
    return v1
.end method

.method public shouldNotSetRelativeLayerToIme(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)Z
    .registers 6

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getWindowingMode()I

    move-result v1

    if-ne v1, v0, :cond_1

    :cond_0
    if-eqz p2, :cond_3

    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7f8

    if-ne v1, v2, :cond_3

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not relative layer to ime, imeTarget = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getWindowingMode()I

    move-result v2

    invoke-static {v2}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public shouldSeamlessForInterruptAnim()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mAnimInterruptController:Lcom/android/server/wm/AnimInterruptController;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mAnimInterruptController:Lcom/android/server/wm/AnimInterruptController;

    invoke-virtual {v0}, Lcom/android/server/wm/AnimInterruptController;->shouldSeamlessForInterruptAnim()Z

    move-result v0

    return v0
.end method

.method public showPinnedTaskIfNeeded(Lcom/android/server/wm/Task;)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mRunningRecentsAnimation:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "show pinned task surface: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public skipOnPointerDownOutsideFocusLocked(Lcom/android/server/wm/Task;Lcom/android/server/wm/WindowState;)Z
    .registers 6

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isActivityTypeHomeOrRecents()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/Transition;->mTransitionStub:Lcom/android/server/wm/TransitionStub$MutableTransitionStub;

    invoke-interface {v1}, Lcom/android/server/wm/TransitionStub$MutableTransitionStub;->getHyperRemoteTransition()Landroid/window/IHyperRemoteTransition;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/server/wm/TransitionControllerImpl;->getInstance()Lcom/android/server/wm/TransitionControllerImpl;

    move-result-object v1

    iget-object v2, p2, Lcom/android/server/wm/WindowState;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v2}, Lcom/android/server/wm/TransitionController;->getQueuedTransitions()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/TransitionControllerImpl;->isRecentsQueueing(Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "WindowManagerService"

    const-string v2, "skip onPointerDownOutsideFocusLocked for home"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public supportInterruptAnim()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mAnimInterruptController:Lcom/android/server/wm/AnimInterruptController;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method switchResolution(Landroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_0
    invoke-direct {p0, v1, v2}, Lcom/android/server/wm/WindowManagerServiceImpl;->switchResolutionInternal(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    const/4 v5, 0x1

    return v5

    :catchall_0
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Can only set the default display"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Only system uid can switch resolution"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public syncMultiUserAdvancedSwitchSettings(II)V
    .registers 7

    sget-boolean v0, Lcom/android/server/wm/WindowManagerServiceImpl;->BACKGROUND_BLUR_SUPPORTED:Z

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    const-string v1, "background_blur_enable"

    const/4 v2, -0x1

    if-eq p1, p2, :cond_0

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v1, v2, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    :cond_0
    if-eq v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1, v0, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_1
    return-void
.end method

.method public trackScreenData(ILjava/lang/String;)V
    .registers 4

    invoke-static {}, Lcom/android/server/wm/OneTrackRotationHelper;->getInstance()Lcom/android/server/wm/OneTrackRotationHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/OneTrackRotationHelper;->trackScreenData(ILjava/lang/String;)V

    return-void
.end method

.method public trackWindowSurfaceTransparent(Ljava/lang/String;ILandroid/view/WindowManager$LayoutParams;Lcom/android/server/wm/WindowStateAnimator;)V
    .registers 8

    and-int/lit16 v0, p2, 0x80

    if-eqz v0, :cond_0

    iget v0, p3, Landroid/view/WindowManager$LayoutParams;->alpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    if-eqz p4, :cond_0

    iget-object v0, p4, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "trackWindowSurfaceTransparent mSurface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p4, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " shown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p4, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/wm/WindowManagerServiceImpl$7;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/server/wm/WindowManagerServiceImpl$7;-><init>(Lcom/android/server/wm/WindowManagerServiceImpl;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public unregisterScreenStateListener(Landroid/view/IScreenStateListener;)V
    .registers 6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/wm/WindowManagerServiceImpl;->isSystemApp(I)Z

    move-result v1

    const-string v2, "WindowManagerService"

    if-nez v1, :cond_0

    const-string v1, "Not Support normal application listen screen state"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowManagerServiceImpl;->removeScreenStateListener(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pid "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " unregistered a screen state listener"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateActivityOrientationForDisplayResized(I)V
    .registers 7

    invoke-static {}, Lcom/android/server/wm/MiuiOrientationStub;->get()Lcom/android/server/wm/MiuiOrientationStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wm/MiuiOrientationStub;->isProjectedEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_2

    if-nez p1, :cond_1

    goto :goto_3

    :cond_1
    :try_start_1
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayRotation;->pause()V

    new-instance v2, Lcom/android/server/wm/WindowManagerServiceImpl$$ExternalSyntheticLambda17;

    invoke-direct {v2}, Lcom/android/server/wm/WindowManagerServiceImpl$$ExternalSyntheticLambda17;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->forAllActivities(Ljava/util/function/Consumer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v2

    :goto_0
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayRotation;->resume()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_3
    const-string v3, "WindowManagerService"

    const-string v4, "updateOrientationForActivityDisplayResized"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v2

    goto :goto_0

    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayRotation;->resume()V

    nop

    throw v2

    :cond_2
    :goto_3
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public updateActivityOrientationForFold(Z)V
    .registers 8

    invoke-static {}, Lcom/android/server/wm/MiuiOrientationStub;->get()Lcom/android/server/wm/MiuiOrientationStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wm/MiuiOrientationStub;->isAllEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mPendingSetOrientationForFold:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerServiceImpl;->needUpdateOrientationForFold()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v1, :cond_4

    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowManagerServiceImpl;->setNeedUpdateOrientationForFold(Z)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-nez v0, :cond_3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-void

    :cond_3
    :try_start_1
    const-string v3, "WindowManagerService"

    const-string v4, "Pausing rotation during updateActivityOrientationForFold"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayRotation;->pause()V

    new-instance v3, Lcom/android/server/wm/WindowManagerServiceImpl$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/android/server/wm/WindowManagerServiceImpl$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v3}, Lcom/android/server/wm/DisplayContent;->forAllActivities(Ljava/util/function/Consumer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v3, "WindowManagerService"

    const-string v4, "Resuming rotation during updateActivityOrientationForFold"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v3

    goto :goto_2

    :catch_0
    move-exception v3

    :try_start_3
    const-string v4, "WindowManagerService"

    const-string v5, "updateOrientationForActivity"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    const-string v3, "WindowManagerService"

    const-string v4, "Resuming rotation during updateActivityOrientationForFold"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v3

    :goto_1
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayRotation;->resume()V

    nop

    monitor-exit v2

    :cond_4
    return-void

    :goto_2
    const-string v4, "WindowManagerService"

    const-string v5, "Resuming rotation during updateActivityOrientationForFold"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayRotation;->resume()V

    nop

    throw v3

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public updateActivityOrientationForSensor()V
    .registers 6

    invoke-static {}, Lcom/android/server/wm/MiuiOrientationStub;->get()Lcom/android/server/wm/MiuiOrientationStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wm/MiuiOrientationStub;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/wm/MiuiOrientationStub;->IS_FOLD:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isDisplayFolded()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-static {}, Lcom/android/server/wm/MiuiOrientationStub;->get()Lcom/android/server/wm/MiuiOrientationStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wm/MiuiOrientationStub;->isFlipDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isDisplayFolded()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    sget-boolean v0, Lcom/android/server/wm/MiuiOrientationStub;->IS_TABLET:Z

    if-eqz v0, :cond_5

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/android/server/wm/MiuiOrientationStub;->IS_TABLET:Z

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/server/wm/MiuiOrientationStub;->get()Lcom/android/server/wm/MiuiOrientationStub;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/wm/MiuiOrientationStub;->needUpdateOrientationForPad()Z

    move-result v1

    if-nez v1, :cond_3

    monitor-exit v0

    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-nez v1, :cond_4

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-void

    :cond_4
    :try_start_1
    const-string v2, "WindowManagerService"

    const-string v3, "Pausing rotation during updateActivityOrientationForSensor"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayRotation;->pause()V

    new-instance v2, Lcom/android/server/wm/WindowManagerServiceImpl$$ExternalSyntheticLambda11;

    invoke-direct {v2}, Lcom/android/server/wm/WindowManagerServiceImpl$$ExternalSyntheticLambda11;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->forAllActivities(Ljava/util/function/Consumer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v2, "WindowManagerService"

    const-string v3, "Resuming rotation during updateActivityOrientationForSensor"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_3
    const-string v3, "WindowManagerService"

    const-string v4, "updateActivityOrientationForSensor"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    const-string v2, "WindowManagerService"

    const-string v3, "Resuming rotation during updateActivityOrientationForSensor"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v2

    :goto_0
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayRotation;->resume()V

    nop

    monitor-exit v0

    goto :goto_2

    :goto_1
    const-string v3, "WindowManagerService"

    const-string v4, "Resuming rotation during updateActivityOrientationForSensor"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayRotation;->resume()V

    nop

    throw v2

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    :cond_5
    :goto_2
    return-void
.end method

.method public updateBlurWallpaperBmp()V
    .registers 7

    const-class v0, Lcom/android/server/wallpaper/WallpaperManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerInternal;

    const-string v1, "WindowManagerService"

    if-nez v0, :cond_0

    const-string v2, "WallpaperManagerInternal is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mWallpaperCallback:Landroid/app/IWallpaperManagerCallback;

    invoke-virtual {v0, v3}, Lcom/android/server/wallpaper/WallpaperManagerInternal;->getBlurWallpaper(Landroid/app/IWallpaperManagerCallback;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    move-object v2, v3

    if-eqz v2, :cond_1

    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mBlurWallpaperBmp:Landroid/graphics/Bitmap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateBlurWallpaperBmp, mBlurWallpaperBmp = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mBlurWallpaperBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerServiceImpl;->updateAppearance()V

    goto :goto_0

    :cond_1
    const-string v3, "getWallpaper, fd is null"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v3

    :try_start_1
    const-string v4, "getWallpaper wrong"

    invoke-static {v1, v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    :goto_1
    invoke-static {v2}, Lmiui/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    nop

    return-void

    :goto_2
    invoke-static {v2}, Lmiui/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v1
.end method

.method public updateCloseElementSurface()V
    .registers 1

    return-void
.end method

.method public updateDockHierarchy(I)V
    .registers 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "toState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerServiceImpl;->getDefaultDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mDisplayContentStub:Lcom/android/server/wm/DisplayContentStub$MutableDisplayContentStub;

    invoke-interface {v1}, Lcom/android/server/wm/DisplayContentStub$MutableDisplayContentStub;->getDockWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mDisplayContentStub:Lcom/android/server/wm/DisplayContentStub$MutableDisplayContentStub;

    invoke-interface {v1, p1}, Lcom/android/server/wm/DisplayContentStub$MutableDisplayContentStub;->setDockState(I)V

    const/4 v1, 0x1

    const v2, 0x7ffffffe

    if-ne p1, v1, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->getRootHomeTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mDisplayContentStub:Lcom/android/server/wm/DisplayContentStub$MutableDisplayContentStub;

    invoke-interface {v3}, Lcom/android/server/wm/DisplayContentStub$MutableDisplayContentStub;->getDockWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/android/server/wm/WindowManagerServiceImpl;->getRootHomeTask(Lcom/android/server/wm/TaskDisplayArea;)Lcom/android/server/wm/Task;

    move-result-object v4

    iget-object v5, v3, Lcom/android/server/wm/WindowState;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v5, :cond_1

    iget-object v5, v3, Lcom/android/server/wm/WindowState;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v5}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v4, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v5}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/SurfaceControl$Transaction;

    iget-object v6, v3, Lcom/android/server/wm/WindowState;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v7, v4, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v5, v6, v7}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object v6, v3, Lcom/android/server/wm/WindowState;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v5, v6, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v5}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_1
    goto :goto_1

    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mDisplayContentStub:Lcom/android/server/wm/DisplayContentStub$MutableDisplayContentStub;

    invoke-interface {v3}, Lcom/android/server/wm/DisplayContentStub$MutableDisplayContentStub;->getDockWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v4, :cond_4

    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v4}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, v1, Lcom/android/server/wm/TaskDisplayArea;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v4}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/SurfaceControl$Transaction;

    iget-object v5, v3, Lcom/android/server/wm/WindowState;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v6, v1, Lcom/android/server/wm/TaskDisplayArea;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v4, v5, v6}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object v5, v3, Lcom/android/server/wm/WindowState;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v4, v5, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v4}, Landroid/view/SurfaceControl$Transaction;->apply()V

    goto :goto_0

    :cond_3
    const/4 v1, 0x3

    if-ne p1, v1, :cond_4

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mDisplayContentStub:Lcom/android/server/wm/DisplayContentStub$MutableDisplayContentStub;

    invoke-interface {v2}, Lcom/android/server/wm/DisplayContentStub$MutableDisplayContentStub;->getDockWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    invoke-direct {p0, v1}, Lcom/android/server/wm/WindowManagerServiceImpl;->getRootHomeTask(Lcom/android/server/wm/TaskDisplayArea;)Lcom/android/server/wm/Task;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v4, :cond_5

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v4}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz v3, :cond_5

    iget-object v4, v3, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v4}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/SurfaceControl$Transaction;

    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v6, v3, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v4, v5, v6}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v4}, Landroid/view/SurfaceControl$Transaction;->apply()V

    goto :goto_1

    :cond_4
    :goto_0
    nop

    :cond_5
    :goto_1
    return-void

    :cond_6
    :goto_2
    return-void
.end method

.method public updateHoldOnStateOffIfNeeded(Lcom/android/server/wm/WindowState;)V
    .registers 5

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/android/server/wm/Transition;->mType:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mPendingHoldonStateOff:Z

    :cond_0
    return-void
.end method

.method public updateLetterboxForTransfer(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowState;)V
    .registers 5

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/server/wm/ActivityRecord;->updateLetterboxSurfaceIfNeeded(Lcom/android/server/wm/WindowState;)V

    invoke-virtual {p1, p3}, Lcom/android/server/wm/ActivityRecord;->updateLetterboxSurfaceIfNeeded(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public updateOrientationAndModeForFold()V
    .registers 4

    invoke-static {}, Lcom/android/server/wm/MiuiOrientationStub;->get()Lcom/android/server/wm/MiuiOrientationStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wm/MiuiOrientationStub;->isAllEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowManagerServiceImpl;->setNeedUpdateOrientationForFold(Z)V

    invoke-static {}, Lcom/android/server/display/DisplayManagerServiceStub;->getInstance()Lcom/android/server/display/DisplayManagerServiceStub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/DisplayManagerServiceStub;->resetCount()V

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v0, "WindowManagerService"

    const-string v2, "Trying to update userRotationMode for a missing display."

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mPendingSetRotationAndOrientationForFold:Z

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/DisplayRotation;->mDisplayRotationStub:Lcom/android/server/wm/DisplayRotationStub;

    invoke-interface {v2, v0}, Lcom/android/server/wm/DisplayRotationStub;->setFilpFoldFixedRotationState(Z)V

    nop

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayRotation;->getOrientationListener()Lcom/android/server/wm/WindowOrientationListener;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowOrientationListener;->reset(Z)V

    :cond_1
    return-void
.end method

.method public updateScreenShareProjectFlag()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceImpl;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v1, Lcom/android/server/wm/WindowManagerServiceImpl$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/android/server/wm/WindowManagerServiceImpl$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/wm/WindowManagerServiceImpl;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateSurfaceParentIfNeed(Lcom/android/server/wm/WindowState;)V
    .registers 2

    return-void
.end method

.method public updateWallpaperVisibleIfNeed(Lcom/android/server/wm/WindowContainer;)V
    .registers 4

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asWallpaperToken()Lcom/android/server/wm/WallpaperWindowToken;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asWallpaperToken()Lcom/android/server/wm/WallpaperWindowToken;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WallpaperWindowToken;->setVisibility(Z)V

    :cond_1
    return-void
.end method

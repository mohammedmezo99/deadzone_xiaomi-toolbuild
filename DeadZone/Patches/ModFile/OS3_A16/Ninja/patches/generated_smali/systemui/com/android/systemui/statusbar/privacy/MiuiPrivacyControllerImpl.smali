.class public Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/systemui/plugins/miui/statusbar/MiuiPrivacyController;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/systemui/privacy/PrivacyItemController$Callback;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/miui/systemui/modulesettings/DeveloperSettings$MiuiOptimizationListener;
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;
.implements Lcom/miui/interfaces/keyguard/IMiuiShortcutController$SystemUIShortcutPluginCallback;


# static fields
.field public static mSupportNewCTA:Z


# instance fields
.field public isDelayCheck:Z

.field public final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public mAndroidPromptInfo:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$AndroidPromptInfoImpl;

.field public final mAppOpsController:Lcom/android/systemui/appops/AppOpsController;

.field public final mBgExecutor:Ljava/util/concurrent/Executor;

.field public final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field public final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final mContext:Landroid/content/Context;

.field public final mDefaultColor:I

.field public final mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field public final mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

.field public mIsShadeState:Z

.field public mIsWhiteList:Z

.field public mLastMiuiPromptInfo:I

.field public final mMainExecutor:Ljava/util/concurrent/Executor;

.field public final mMainHandler:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$2;

.field public mMiuiOptimization:Z

.field public final mMiuiPrivacyCallbacks:Ljava/util/List;

.field public mOrientation:I

.field public mPendingIntent:Landroid/app/PendingIntent;

.field public final mPermissionManager:Landroid/permission/PermissionManager;

.field public final mPrivacyDialogController:Lcom/android/systemui/privacy/PrivacyDialogController;

.field public final mPrivacyDialogControllerV2:Lcom/android/systemui/privacy/PrivacyDialogControllerV2;

.field public final mPrivacyEvent:Lcom/android/systemui/statusbar/events/MiuiPrivacyEvent;

.field public final mPrivacyFlaresDotController:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;

.field public mPrivacyItems:Ljava/util/List;

.field public final mPromptContainers:Ljava/util/HashMap;

.field public mPromptInfo:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$MiuiPromptInfoImpl;

.field public mSafetyCenterEnabled:Z

.field public final mSafetyCenterManager:Landroid/safetycenter/SafetyCenterManager;

.field public final mSafetyCenterReceiver:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$1;

.field public mSettingPrivacy:Z

.field public final mStatusBarIconController:Ldagger/Lazy;

.field public mStatusBarVisible:Z

.field public mUnoccludedAnimationEnd:Z

.field public shadeStateChangeTimeStamp:J

.field public statusBarVisibleChangeTimeStamp:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "duchamp"

    const-string v1, "manet"

    const-string v2, "vermeer"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mSupportNewCTA:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;Lcom/android/systemui/privacy/PrivacyDialogController;Lcom/android/systemui/privacy/PrivacyDialogControllerV2;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/privacy/PrivacyItemController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/miui/systemui/SettingsManager;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/plugins/ActivityStarter;Landroid/permission/PermissionManager;Landroid/safetycenter/SafetyCenterManager;Lcom/android/systemui/appops/AppOpsController;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Ldagger/Lazy;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/util/kotlin/JavaAdapter;Lcom/android/systemui/statusbar/policy/StatusBarIconObserver;Lcom/miui/interfaces/keyguard/IMiuiShortcutController;)V
    .registers 35

    move-object/from16 v1, p9

    move-object/from16 v2, p22

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Lcom/android/systemui/statusbar/events/MiuiPrivacyEvent;

    invoke-direct {v3}, Lcom/android/systemui/statusbar/events/MiuiPrivacyEvent;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPrivacyEvent:Lcom/android/systemui/statusbar/events/MiuiPrivacyEvent;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPrivacyItems:Ljava/util/List;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPromptContainers:Ljava/util/HashMap;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mMiuiPrivacyCallbacks:Ljava/util/List;

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mStatusBarVisible:Z

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->isDelayCheck:Z

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mSettingPrivacy:Z

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mIsWhiteList:Z

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mUnoccludedAnimationEnd:Z

    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->shadeStateChangeTimeStamp:J

    iput-wide v5, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->statusBarVisibleChangeTimeStamp:J

    new-instance v5, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mSafetyCenterReceiver:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$1;

    iput-object p1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPrivacyFlaresDotController:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;

    iput-object p4, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPrivacyDialogController:Lcom/android/systemui/privacy/PrivacyDialogController;

    move-object/from16 v6, p5

    iput-object v6, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPrivacyDialogControllerV2:Lcom/android/systemui/privacy/PrivacyDialogControllerV2;

    move-object/from16 v6, p6

    iput-object v6, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    move-object/from16 v6, p8

    iput-object v6, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    move-object/from16 v6, p10

    iput-object v6, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    move-object/from16 v6, p11

    iput-object v6, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    move-object/from16 v6, p12

    iput-object v6, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPermissionManager:Landroid/permission/PermissionManager;

    move-object/from16 v6, p13

    iput-object v6, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mSafetyCenterManager:Landroid/safetycenter/SafetyCenterManager;

    move-object/from16 v7, p14

    iput-object v7, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mAppOpsController:Lcom/android/systemui/appops/AppOpsController;

    move-object/from16 v7, p16

    iput-object v7, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    move-object/from16 v7, p18

    iput-object v7, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mMainExecutor:Ljava/util/concurrent/Executor;

    move-object/from16 v7, p19

    iput-object v7, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mBgExecutor:Ljava/util/concurrent/Executor;

    move-object/from16 v8, p17

    iput-object v8, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mStatusBarIconController:Ldagger/Lazy;

    invoke-virtual {v1, p0}, Lcom/miui/systemui/SettingsManager;->registerMiuiOptimizationListener(Lcom/miui/systemui/modulesettings/DeveloperSettings$MiuiOptimizationListener;)V

    move-object/from16 v8, p23

    check-cast v8, Lcom/android/keyguard/shortcut/MiuiShortcutController;

    invoke-virtual {v8, p0}, Lcom/android/keyguard/shortcut/MiuiShortcutController;->registerSystemUIShortcutPluginCallback(Lcom/miui/interfaces/keyguard/IMiuiShortcutController$SystemUIShortcutPluginCallback;)V

    iget-boolean v1, v1, Lcom/miui/systemui/SettingsManager;->miuiOptimizationEnabled:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mMiuiOptimization:Z

    iget-boolean v8, p3, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mMiuiOptimization:Z

    if-eq v8, v1, :cond_3

    iput-boolean v1, p3, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mMiuiOptimization:Z

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->updateDotViewHeight()V

    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v1, p3, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mMiuiOptimization:Z

    const/4 v8, 0x0

    iget-object v9, p3, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mListener:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController$$ExternalSyntheticLambda1;

    if-eqz v1, :cond_1

    move-object v1, v9

    goto :goto_0

    :cond_1
    move-object v1, v8

    :goto_0
    iget-object v10, p3, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mPrivacyDotHotArea:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v10, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v1, p3, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mMiuiOptimization:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p3, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mIsFlipTinyScreen:Z

    if-nez v1, :cond_2

    move-object v8, v9

    :cond_2
    iget-object v0, p3, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mPrivacyFlares:Lcom/android/systemui/statusbar/privacy/PrivacyDotWindowView;

    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    :goto_1
    const v0, 0x7f060b50

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mDefaultColor:I

    new-instance v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$2;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$2;-><init>(Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mMainHandler:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$2;

    move-object/from16 p2, p7

    invoke-virtual {p2, p0}, Lcom/android/systemui/privacy/PrivacyItemController;->addCallback(Lcom/android/systemui/privacy/PrivacyItemController$Callback;)V

    new-instance p2, Landroid/content/IntentFilter;

    const-string v0, "android.safetycenter.action.SAFETY_CENTER_ENABLED_CHANGED"

    invoke-direct {p2, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p15 .. p15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    const/16 v1, 0x38

    const/4 v8, 0x0

    move-object p4, p2

    move-object/from16 p2, p15

    move/from16 p7, v0

    move/from16 p8, v1

    move-object p3, v5

    move-object/from16 p5, v7

    move-object/from16 p6, v8

    invoke-static/range {p2 .. p8}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;II)V

    invoke-virtual {v6}, Landroid/safetycenter/SafetyCenterManager;->isSafetyCenterEnabled()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mSafetyCenterEnabled:Z

    move-object/from16 p2, p20

    invoke-interface {p2, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    invoke-interface {p2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p2

    if-nez p2, :cond_4

    goto :goto_2

    :cond_4
    move v3, v4

    :goto_2
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mIsShadeState:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0500d4

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    sput-boolean p1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mSupportNewCTA:Z

    iget-object p1, v2, Lcom/android/systemui/statusbar/policy/StatusBarIconObserver;->statusBarIconShow:Lkotlinx/coroutines/flow/StateFlowImpl;

    new-instance p2, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, v2}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;Lcom/android/systemui/statusbar/policy/StatusBarIconObserver;)V

    move-object/from16 p0, p21

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/util/kotlin/JavaAdapter;->alwaysCollectFlow(Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static isCTARequiredLocation()Z
    .registers 3

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "ro.product.first_api_level"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x22

    if-lt v0, v2, :cond_0

    const-class v0, Lcom/miui/systemui/SettingsManager;

    invoke-static {v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/systemui/SettingsManager;

    iget-boolean v0, v0, Lcom/miui/systemui/SettingsManager;->miuiOptimizationEnabled:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mSupportNewCTA:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method


# virtual methods
.method public final addPrivacyCallback(Lcom/android/systemui/plugins/miui/statusbar/MiuiPrivacyController$MiuiPrivacyCallback;)V
    .registers 3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mMiuiPrivacyCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mMiuiPrivacyCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPromptInfo:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$MiuiPromptInfoImpl;

    iget-object p0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mAndroidPromptInfo:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$AndroidPromptInfoImpl;

    invoke-interface {p1, v0, p0}, Lcom/android/systemui/plugins/miui/statusbar/MiuiPrivacyController$MiuiPrivacyCallback;->onPromptInfoChanged(Lcom/android/systemui/plugins/miui/statusbar/MiuiPrivacyController$MiuiPromptInfo;Lcom/android/systemui/plugins/miui/statusbar/MiuiPrivacyController$AndroidPromptInfo;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final addPromptContainer(Landroid/widget/LinearLayout;I)V
    .registers 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e0274

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPromptContainers:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->updatePrompt(Landroid/widget/LinearLayout;I)V

    return-void
.end method

.method public final checkIfNeedClearLastPrivacyType()V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPromptInfo:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$MiuiPromptInfoImpl;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$MiuiPromptInfoImpl;->mMiuiType:[I

    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->allMatch(Ljava/util/function/IntPredicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPrivacyFlaresDotController:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->getMiuiPrivacyType()[I

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->getHomeRemoteViews()Landroid/widget/RemoteViews;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v1, :cond_3

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->updateLastMiuiPromptInfo([ILandroid/widget/RemoteViews;)V

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p0, 0x0

    iput p0, v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mLastMiuiPromptInfo:I

    const/4 p0, 0x0

    iput-object p0, v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mRemoteViews:Landroid/widget/RemoteViews;

    :goto_2
    const-string p0, "PrivacyNewController"

    const-string v0, "Clear the last privacy type."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final getHomeRemoteViews()Landroid/widget/RemoteViews;
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mMiuiOptimization:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPromptInfo:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$MiuiPromptInfoImpl;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$MiuiPromptInfoImpl;->mHomeRemoteViews:Landroid/widget/RemoteViews;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getMiuiContentDescription()Ljava/lang/String;
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mMiuiOptimization:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPromptInfo:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$MiuiPromptInfoImpl;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$MiuiPromptInfoImpl;->mMiuiContentDescription:Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public final getMiuiPrivacyType()[I
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mMiuiOptimization:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPromptInfo:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$MiuiPromptInfoImpl;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$MiuiPromptInfoImpl;->mMiuiType:[I

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final onChanged(Z)V
    .registers 5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mMiuiOptimization:Z

    if-eq v0, p1, :cond_3

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mMiuiOptimization:Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPrivacyFlaresDotController:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mMiuiOptimization:Z

    if-eq v0, p1, :cond_3

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mMiuiOptimization:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->updateDotViewHeight()V

    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mMiuiOptimization:Z

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mListener:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController$$ExternalSyntheticLambda1;

    if-eqz p1, :cond_1

    move-object p1, v1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mPrivacyDotHotArea:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mMiuiOptimization:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mIsFlipTinyScreen:Z

    if-nez p1, :cond_2

    move-object v0, v1

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mPrivacyFlares:Lcom/android/systemui/statusbar/privacy/PrivacyDotWindowView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .registers 5

    iget-object p1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    check-cast p1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->deviceProvisioned:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "click. is WhiteList "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mIsWhiteList:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", miuiOpt "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mMiuiOptimization:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", safetyCenter "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mSafetyCenterEnabled:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", flag "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    sget-object v1, Lcom/android/systemui/flags/Flags;->ENABLE_NEW_PRIVACY_DIALOG:Lcom/android/systemui/flags/ReleasedFlag;

    check-cast v0, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;

    invoke-virtual {v0, v1}, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PrivacyNewController"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mMiuiOptimization:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mIsWhiteList:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {v1, p1}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "click postStartActivityDismissingKeyguard fail. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/CommandQueue;->animateCollapsePanels()V

    :goto_1
    return-void

    :cond_2
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mSafetyCenterEnabled:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    check-cast p1, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;

    invoke-virtual {p1, v1}, Lcom/android/systemui/flags/FeatureFlagsClassicRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPrivacyDialogControllerV2:Lcom/android/systemui/privacy/PrivacyDialogControllerV2;

    iget-object p0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mContext:Landroid/content/Context;

    iget-object v0, p1, Lcom/android/systemui/privacy/PrivacyDialogControllerV2;->dialog:Lcom/android/systemui/privacy/PrivacyDialogV2;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_3
    iget-object v0, p1, Lcom/android/systemui/privacy/PrivacyDialogControllerV2;->backgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/privacy/PrivacyDialogControllerV2$showDialog$1;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lcom/android/systemui/privacy/PrivacyDialogControllerV2$showDialog$1;-><init>(Lcom/android/systemui/privacy/PrivacyDialogControllerV2;Landroid/content/Context;Lcom/android/systemui/privacy/OngoingPrivacyChip;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mBgExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_5
    iget-object p1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPrivacyDialogController:Lcom/android/systemui/privacy/PrivacyDialogController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mContext:Landroid/content/Context;

    iget-object v0, p1, Lcom/android/systemui/privacy/PrivacyDialogController;->dialog:Lcom/android/systemui/privacy/PrivacyDialog;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_6
    iget-object v0, p1, Lcom/android/systemui/privacy/PrivacyDialogController;->backgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/privacy/PrivacyDialogController$showDialog$1;

    invoke-direct {v1, p1, p0}, Lcom/android/systemui/privacy/PrivacyDialogController$showDialog$1;-><init>(Lcom/android/systemui/privacy/PrivacyDialogController;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .registers 3

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iget v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mOrientation:I

    if-eq p1, v0, :cond_1

    iput p1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mOrientation:I

    iget-object p1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/utils/configs/MiuiConfigs;->isFlipTinyScreen(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mOrientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mStatusBarVisible:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->updateDotVisibility()V

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPrivacyFlaresDotController:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->refreshStatusBarHeight()V

    return-void
.end method

.method public final onDensityOrFontScaleChanged()V
    .registers 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f071889

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPromptContainers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    const v3, 0x7f0b075c

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    const v4, 0x7f0b0972

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v0, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mContext:Landroid/content/Context;

    const v4, 0x7f081cfe

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final onLocationActiveChanged$1(Z)V
    .registers 4

    invoke-static {}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->isCTARequiredLocation()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MIUILOG onLocationActiveChanged active: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PrivacyNewController"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final onPrivacyClick(Landroid/view/View;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->onClick(Landroid/view/View;)V

    return-void
.end method

.method public final onPrivacyItemsChanged(Ljava/util/List;)V
    .registers 9

    iput-object p1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPrivacyItems:Ljava/util/List;

    iget-object v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPrivacyEvent:Lcom/android/systemui/statusbar/events/MiuiPrivacyEvent;

    iget-object v1, v0, Lcom/android/systemui/statusbar/events/MiuiPrivacyEvent;->privacyItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    goto :goto_2

    :cond_0
    iget-object v1, v0, Lcom/android/systemui/statusbar/events/MiuiPrivacyEvent;->privacyItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move v2, v3

    :goto_0
    if-ge v2, v1, :cond_2

    iget-object v4, v0, Lcom/android/systemui/statusbar/events/MiuiPrivacyEvent;->privacyItems:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/privacy/PrivacyItem;

    iget-object v4, v4, Lcom/android/systemui/privacy/PrivacyItem;->log:Ljava/lang/String;

    move v5, v3

    :goto_1
    if-ge v5, v1, :cond_a

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/privacy/PrivacyItem;

    invoke-virtual {v6}, Lcom/android/systemui/privacy/PrivacyItem;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPrivacyEvent:Lcom/android/systemui/statusbar/events/MiuiPrivacyEvent;

    iget-object v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPrivacyItems:Ljava/util/List;

    iput-object v0, p1, Lcom/android/systemui/statusbar/events/MiuiPrivacyEvent;->privacyItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_9

    iget-object p1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mAndroidPromptInfo:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$AndroidPromptInfoImpl;

    if-nez p1, :cond_3

    new-instance p1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$AndroidPromptInfoImpl;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mAndroidPromptInfo:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$AndroidPromptInfoImpl;

    :cond_3
    const/4 p1, 0x4

    new-array p1, p1, [I

    iget-object v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPrivacyEvent:Lcom/android/systemui/statusbar/events/MiuiPrivacyEvent;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPrivacyEvent:Lcom/android/systemui/statusbar/events/MiuiPrivacyEvent;

    iget-object v0, v0, Lcom/android/systemui/statusbar/events/MiuiPrivacyEvent;->privacyItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, v3

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/privacy/PrivacyItem;

    iget-object v4, v2, Lcom/android/systemui/privacy/PrivacyItem;->privacyType:Lcom/android/systemui/privacy/PrivacyType;

    iget-object v2, v2, Lcom/android/systemui/privacy/PrivacyItem;->application:Lcom/android/systemui/privacy/PrivacyApplication;

    iget-object v2, v2, Lcom/android/systemui/privacy/PrivacyApplication;->packageName:Ljava/lang/String;

    invoke-static {v2}, Landroid/miui/AppOpsUtils;->isExceptionByTestPolicy(Ljava/lang/String;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_7

    if-eq v2, v4, :cond_6

    const/4 v5, 0x2

    if-eq v2, v5, :cond_5

    const/4 v5, 0x3

    if-eq v2, v5, :cond_4

    goto :goto_3

    :cond_4
    aput v4, p1, v5

    goto :goto_3

    :cond_5
    aput v4, p1, v5

    goto :goto_3

    :cond_6
    aput v4, p1, v4

    goto :goto_3

    :cond_7
    aput v4, p1, v3

    goto :goto_3

    :cond_8
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mIsWhiteList:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mAndroidPromptInfo:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$AndroidPromptInfoImpl;

    iput-object p1, v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$AndroidPromptInfoImpl;->mAndroidType:[I

    goto :goto_4

    :cond_9
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mIsWhiteList:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mAndroidPromptInfo:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$AndroidPromptInfoImpl;

    :cond_a
    :goto_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->updatePrompt()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->updateDotVisibility()V

    return-void
.end method

.method public final onStateChanged(I)V
    .registers 4

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mIsShadeState:Z

    if-eq p1, v0, :cond_1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mIsShadeState:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->shadeStateChangeTimeStamp:J

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->updateDotVisibility()V

    :cond_1
    return-void
.end method

.method public final onUnoccludedAnimationEnd()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mUnoccludedAnimationEnd:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->updateDotVisibility()V

    return-void
.end method

.method public final onUnoccludedAnimationStart()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mUnoccludedAnimationEnd:Z

    return-void
.end method

.method public final removePrivacyCallback(Lcom/android/systemui/plugins/miui/statusbar/MiuiPrivacyController$MiuiPrivacyCallback;)V
    .registers 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mMiuiPrivacyCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final removePromptContainer(Landroid/widget/LinearLayout;)V
    .registers 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPromptContainers:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setControlCenterPromptInfo(Landroid/os/Bundle;)V
    .registers 6

    const-string v0, "key_prompt_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "key_prompt_contentDescription"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_prompt_controlCenterDotColor"

    iget v3, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mDefaultColor:I

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iget-object v2, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPromptInfo:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$MiuiPromptInfoImpl;

    if-nez v2, :cond_1

    new-instance v2, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$MiuiPromptInfoImpl;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPromptInfo:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$MiuiPromptInfoImpl;

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPromptInfo:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$MiuiPromptInfoImpl;

    iput-object v0, v2, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$MiuiPromptInfoImpl;->mMiuiType:[I

    iput-object v1, v2, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$MiuiPromptInfoImpl;->mMiuiContentDescription:Ljava/lang/String;

    iput p1, v2, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$MiuiPromptInfoImpl;->mControlCenterDotColor:I

    array-length p1, v0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    const/4 p1, 0x2

    aget p1, v0, p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->onLocationActiveChanged$1(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final setStatus(ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 9

    const-string v0, "action_update_prompt"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "action_control_center_update_prompt"

    if-nez v1, :cond_0

    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p1, :cond_1

    if-nez p3, :cond_1

    goto :goto_2

    :cond_1
    if-nez p1, :cond_2

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPromptInfo:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$MiuiPromptInfoImpl;

    iput-object p1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPendingIntent:Landroid/app/PendingIntent;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->onLocationActiveChanged$1(Z)V

    goto :goto_1

    :cond_2
    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "key_status_bar_priority"

    const/4 p2, -0x1

    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x3

    if-gt p1, p2, :cond_9

    if-gez p1, :cond_3

    goto :goto_2

    :cond_3
    const-string p1, "key_status_bar_mini_state"

    const-class p2, Landroid/widget/RemoteViews;

    invoke-virtual {p3, p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/RemoteViews;

    const-string p2, "key_status_bar_home_state"

    const-class v0, Landroid/widget/RemoteViews;

    invoke-virtual {p3, p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/RemoteViews;

    if-eqz p1, :cond_9

    if-nez p2, :cond_4

    goto :goto_2

    :cond_4
    const-string v0, "key_dot_color"

    iget v1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mDefaultColor:I

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "key_fullscreen_dot_visibility"

    const/16 v2, 0x8

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "key_first_use_location_prompt"

    const/4 v3, 0x1

    invoke-virtual {p3, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPromptInfo:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$MiuiPromptInfoImpl;

    if-nez v3, :cond_5

    new-instance v3, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$MiuiPromptInfoImpl;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPromptInfo:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$MiuiPromptInfoImpl;

    :cond_5
    const-string v3, "key_prompt_pending"

    const-class v4, Landroid/app/PendingIntent;

    invoke-virtual {p3, v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    iput-object v3, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v3, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPromptInfo:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$MiuiPromptInfoImpl;

    iput-object p1, v3, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$MiuiPromptInfoImpl;->mMiniStateViews:Landroid/widget/RemoteViews;

    iput v0, v3, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$MiuiPromptInfoImpl;->mDotColor:I

    const-string v0, "dont_STEAL_my_STUFF"

    const-string v0, "privacy_elite_dot"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/preference/SettingsEliteHelper;->getIntofSettings(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_6

    const/16 v1, 0x8

    goto :goto_0

    :cond_6
    const/16 v1, 0x0

    :goto_0
    iput v1, v3, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$MiuiPromptInfoImpl;->mFullscreenDotVisibility:I

    iput-object p2, v3, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$MiuiPromptInfoImpl;->mHomeRemoteViews:Landroid/widget/RemoteViews;

    iput-boolean v2, v3, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$MiuiPromptInfoImpl;->mFirstUseLocationPrompt:Z

    invoke-virtual {p0, p3}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->setControlCenterPromptInfo(Landroid/os/Bundle;)V

    goto :goto_1

    :cond_7
    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p0, p3}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->setControlCenterPromptInfo(Landroid/os/Bundle;)V

    :cond_8
    :goto_1
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mMiuiOptimization:Z

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->updatePrompt()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->updateDotVisibility()V

    :cond_9
    :goto_2
    return-void
.end method

.method public final setWindowState(III)V
    .registers 6

    if-nez p1, :cond_3

    const/4 p1, 0x1

    if-ne p2, p1, :cond_3

    const/4 p2, 0x0

    if-nez p3, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mStatusBarVisible:Z

    if-eq v0, v1, :cond_3

    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    move p1, p2

    :goto_1
    if-eq p1, v1, :cond_3

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mStatusBarVisible:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->statusBarVisibleChangeTimeStamp:J

    iget-object p1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/utils/configs/MiuiConfigs;->isFlipTinyScreen(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mOrientation:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mStatusBarVisible:Z

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->updateDotVisibility()V

    :cond_3
    :goto_2
    return-void
.end method

.method public final updateDotVisibility()V
    .registers 15

    iget-object v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mMainHandler:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$2;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mMainHandler:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$2;

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mMainHandler:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$2;

    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mMiuiOptimization:Z

    const/16 v4, 0x3e8

    const/4 v5, 0x0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->isDelayCheck:Z

    const-wide/16 v6, 0x1f4

    const-string v8, "PrivacyNewController"

    const/16 v9, 0xd

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->statusBarVisibleChangeTimeStamp:J

    sub-long/2addr v10, v12

    cmp-long v0, v10, v6

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->shadeStateChangeTimeStamp:J

    sub-long/2addr v10, v12

    cmp-long v0, v10, v6

    if-lez v0, :cond_0

    const-string v0, "isDelayCheck,return"

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->checkIfNeedClearLastPrivacyType()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mMainHandler:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$2;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mMainHandler:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$2;

    invoke-virtual {p0, v9, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPromptInfo:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$MiuiPromptInfoImpl;

    const/4 v10, 0x1

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v11, "updateDotVisibility, mStatusBarVisible:"

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v11, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mStatusBarVisible:Z

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ",mIsShadeState:"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v11, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mIsShadeState:Z

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, "mPromptInfo.getFullscreenDotVisibility() == View.VISIBLE:"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPromptInfo:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$MiuiPromptInfoImpl;

    iget v11, v11, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$MiuiPromptInfoImpl;->mFullscreenDotVisibility:I

    if-nez v11, :cond_1

    move v11, v10

    goto :goto_0

    :cond_1
    move v11, v5

    :goto_0
    invoke-static {v0, v8, v11}, Lcom/android/keyguard/BaseMiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mStatusBarVisible:Z

    if-nez v0, :cond_5

    iget-object v8, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPromptInfo:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$MiuiPromptInfoImpl;

    if-eqz v8, :cond_5

    iget v11, v8, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$MiuiPromptInfoImpl;->mFullscreenDotVisibility:I

    if-nez v11, :cond_5

    iget-object v11, v8, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$MiuiPromptInfoImpl;->mHomeRemoteViews:Landroid/widget/RemoteViews;

    if-nez v11, :cond_3

    iget-object v8, v8, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$MiuiPromptInfoImpl;->mMiuiType:[I

    if-eqz v8, :cond_5

    :cond_3
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mIsShadeState:Z

    if-eqz v8, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPrivacyFlaresDotController:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->isShowing:Z

    if-eqz v0, :cond_4

    move v4, v5

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mMainHandler:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$2;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->isDelayCheck:Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mMainHandler:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$2;

    int-to-long v2, v4

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_5
    if-eqz v0, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->statusBarVisibleChangeTimeStamp:J

    sub-long/2addr v0, v4

    cmp-long v0, v0, v6

    if-lez v0, :cond_6

    goto :goto_1

    :cond_6
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mIsShadeState:Z

    if-nez v0, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->shadeStateChangeTimeStamp:J

    sub-long/2addr v0, v4

    cmp-long v0, v0, v6

    if-lez v0, :cond_8

    :goto_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->isDelayCheck:Z

    if-nez v0, :cond_7

    iput-boolean v10, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->isDelayCheck:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mMainHandler:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$2;

    invoke-virtual {v0, v9, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->checkIfNeedClearLastPrivacyType()V

    :cond_7
    return-void

    :cond_8
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mUnoccludedAnimationEnd:Z

    if-eqz v0, :cond_9

    iget-object p0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mMainHandler:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$2;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_9
    iget-object p0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mMainHandler:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$2;

    invoke-virtual {p0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_a
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mStatusBarVisible:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPrivacyItems:Ljava/util/List;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_c

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mIsShadeState:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPrivacyFlaresDotController:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->isShowing:Z

    if-eqz v0, :cond_b

    move v4, v5

    :cond_b
    iget-object p0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mMainHandler:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$2;

    int-to-long v2, v4

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_c
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mUnoccludedAnimationEnd:Z

    if-eqz v0, :cond_d

    iget-object p0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mMainHandler:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$2;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_d
    iget-object p0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mMainHandler:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$2;

    invoke-virtual {p0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final updatePrompt()V
    .registers 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPromptContainers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->updatePrompt(Landroid/widget/LinearLayout;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mMiuiPrivacyCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/miui/statusbar/MiuiPrivacyController$MiuiPrivacyCallback;

    if-eqz v1, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mMiuiOptimization:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPromptInfo:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$MiuiPromptInfoImpl;

    goto :goto_2

    :cond_2
    move-object v4, v3

    :goto_2
    if-nez v2, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mAndroidPromptInfo:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$AndroidPromptInfoImpl;

    :cond_3
    invoke-interface {v1, v4, v3}, Lcom/android/systemui/plugins/miui/statusbar/MiuiPrivacyController$MiuiPrivacyCallback;->onPromptInfoChanged(Lcom/android/systemui/plugins/miui/statusbar/MiuiPrivacyController$MiuiPromptInfo;Lcom/android/systemui/plugins/miui/statusbar/MiuiPrivacyController$AndroidPromptInfo;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final updatePrompt(Landroid/widget/LinearLayout;I)V
    .registers 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p2

    const-string v3, "dont_STEAL_my_STUFF"

    const-string v3, "privacy_elite_dot"

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/preference/SettingsEliteHelper;->getIntofSettings(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    iget-boolean v3, v1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mMiuiOptimization:Z

    :goto_0
    const/4 v4, 0x3

    const/4 v5, -0x2

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/16 v8, 0x8

    const v9, 0x7f0b0972

    const/4 v10, 0x0

    const v11, 0x7f0b075c

    const/4 v12, 0x1

    if-eqz v3, :cond_19

    if-eqz v0, :cond_1

    iget-object v3, v1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->getMiuiContentDescription()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->getMiuiPrivacyType()[I

    move-result-object v14

    invoke-static {v3, v13, v14}, Lcom/android/systemui/statusbar/privacy/StatusBarPrivacyUtils;->getPravicyContentDescription(Landroid/content/Context;Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    const v11, 0x7f0b0960

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    instance-of v13, v11, Landroid/widget/ImageView;

    if-eqz v13, :cond_2

    check-cast v11, Landroid/widget/ImageView;

    goto :goto_1

    :cond_2
    move-object v11, v10

    :goto_1
    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    if-eqz v3, :cond_1c

    const/4 v13, 0x2

    invoke-virtual {v3, v13}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    invoke-virtual {v3, v10}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez v2, :cond_3

    invoke-virtual {v9, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPromptInfo:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$MiuiPromptInfoImpl;

    if-eqz v0, :cond_1c

    iget v0, v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$MiuiPromptInfoImpl;->mDotColor:I

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v9, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_3
    if-ne v2, v12, :cond_4

    iget-object v0, v1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPromptInfo:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$MiuiPromptInfoImpl;

    if-eqz v0, :cond_1c

    iget v0, v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$MiuiPromptInfoImpl;->mDotColor:I

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    return-void

    :cond_4
    const-string v9, "updateMiuiPrivacyPrompt: something wrong "

    const-string v14, "PrivacyNewController"

    if-ne v2, v13, :cond_9

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->removeAllViews()V

    if-eqz v11, :cond_5

    invoke-virtual {v11, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v11, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    iget-object v0, v1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPromptInfo:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$MiuiPromptInfoImpl;

    if-eqz v0, :cond_8

    iget-object v0, v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$MiuiPromptInfoImpl;->mMiniStateViews:Landroid/widget/RemoteViews;

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    :try_start_0
    iget-object v2, v1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget-object v4, v1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v11, 0x7f0718b6

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v12}, Landroid/view/View;->setIsRootNamespace(Z)V

    iget-object v2, v1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0718ba

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setMinimumWidth(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v10, v0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-static {v14, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    if-eqz v10, :cond_7

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v10, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_c

    :cond_7
    invoke-virtual {v3, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_c

    :cond_8
    :goto_3
    invoke-virtual {v3, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void

    :cond_9
    if-ne v2, v4, :cond_1c

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    iget-object v0, v1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPromptInfo:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$MiuiPromptInfoImpl;

    if-eqz v0, :cond_18

    iget-object v2, v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$MiuiPromptInfoImpl;->mHomeRemoteViews:Landroid/widget/RemoteViews;

    if-eqz v2, :cond_18

    iget-object v2, v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$MiuiPromptInfoImpl;->mMiuiType:[I

    if-eqz v2, :cond_18

    if-eqz v11, :cond_a

    iget v0, v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$MiuiPromptInfoImpl;->mDotColor:I

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_a
    move v0, v7

    move v2, v0

    :goto_4
    iget-object v4, v1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPromptInfo:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$MiuiPromptInfoImpl;

    iget-object v4, v4, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$MiuiPromptInfoImpl;->mMiuiType:[I

    array-length v8, v4

    if-ge v0, v8, :cond_c

    aget v4, v4, v0

    if-ne v4, v12, :cond_b

    sget-object v4, Lcom/android/systemui/statusbar/util/StatusBarUtils;->PRIVACY_TYPE:[I

    aget v4, v4, v0

    xor-int/2addr v2, v4

    :cond_b
    add-int/2addr v0, v12

    goto :goto_4

    :cond_c
    iget v0, v1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mLastMiuiPromptInfo:I

    invoke-static {v2, v0}, Lcom/android/systemui/statusbar/util/StatusBarUtils;->getOnlyUpdateLocation(II)Z

    move-result v0

    iget v4, v1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mLastMiuiPromptInfo:I

    or-int v8, v2, v4

    if-ne v8, v4, :cond_d

    sub-int v8, v2, v4

    if-gez v8, :cond_d

    move v8, v12

    goto :goto_5

    :cond_d
    move v8, v7

    :goto_5
    if-eq v2, v4, :cond_e

    move v11, v12

    goto :goto_6

    :cond_e
    move v11, v7

    :goto_6
    iput v2, v1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mLastMiuiPromptInfo:I

    iget-object v13, v1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/systemui/statusbar/util/StatusBarUtils;->getLessLocationTip(Landroid/content/Context;)I

    move-result v13

    and-int/lit8 v15, v2, 0x4

    if-eqz v15, :cond_f

    and-int/lit8 v16, v2, 0xb

    if-nez v16, :cond_f

    move/from16 v16, v12

    goto :goto_7

    :cond_f
    move/from16 v16, v7

    :goto_7
    if-eqz v15, :cond_10

    and-int/lit8 v2, v2, 0xb

    if-nez v2, :cond_10

    move v2, v12

    goto :goto_8

    :cond_10
    move v2, v7

    :goto_8
    and-int/lit8 v15, v4, 0x1

    if-eqz v15, :cond_11

    and-int/lit8 v15, v4, 0x4

    if-eqz v15, :cond_11

    move v15, v12

    goto :goto_9

    :cond_11
    move v15, v7

    :goto_9
    if-eqz v2, :cond_12

    if-eqz v15, :cond_12

    move v2, v12

    goto :goto_a

    :cond_12
    move v2, v7

    :goto_a
    if-eqz v0, :cond_13

    iget-object v0, v1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPromptInfo:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$MiuiPromptInfoImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$MiuiPromptInfoImpl;->mFirstUseLocationPrompt:Z

    if-nez v0, :cond_13

    if-nez v16, :cond_14

    :cond_13
    if-eqz v2, :cond_15

    :cond_14
    move v7, v12

    :cond_15
    if-lez v13, :cond_17

    if-eqz v11, :cond_17

    if-nez v8, :cond_16

    if-eqz v7, :cond_17

    :cond_16
    iput v4, v1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mLastMiuiPromptInfo:I

    return-void

    :cond_17
    :try_start_1
    iget-object v0, v1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPromptInfo:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$MiuiPromptInfoImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl$MiuiPromptInfoImpl;->mHomeRemoteViews:Landroid/widget/RemoteViews;

    iget-object v2, v1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget-object v4, v1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f071883

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v12}, Landroid/view/View;->setIsRootNamespace(Z)V

    iget-object v1, v1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f071884

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumWidth(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v10, v0

    goto :goto_b

    :catch_1
    move-exception v0

    invoke-static {v14, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_b
    if-eqz v10, :cond_1c

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->removeAllViews()V

    invoke-virtual {v3, v10, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_c

    :cond_18
    iput v7, v1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mLastMiuiPromptInfo:I

    return-void

    :cond_19
    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v3, :cond_1c

    invoke-virtual {v3, v10}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->removeAllViews()V

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz v2, :cond_1c

    if-eq v2, v12, :cond_1c

    if-ne v2, v4, :cond_1a

    goto :goto_c

    :cond_1a
    iget-object v0, v1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPrivacyEvent:Lcom/android/systemui/statusbar/events/MiuiPrivacyEvent;

    iget-object v0, v0, Lcom/android/systemui/statusbar/events/MiuiPrivacyEvent;->privacyItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1b

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v2, v1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f071889

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mPrivacyEvent:Lcom/android/systemui/statusbar/events/MiuiPrivacyEvent;

    iget-object v0, v0, Lcom/android/systemui/statusbar/events/MiuiPrivacyEvent;->viewCreator:Lcom/android/systemui/statusbar/events/MiuiPrivacyEvent$$ExternalSyntheticLambda0;

    iget-object v2, v1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/events/MiuiPrivacyEvent$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/events/BackgroundAnimatableView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-interface {v0}, Lcom/android/systemui/statusbar/events/BackgroundAnimatableView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void

    :cond_1b
    invoke-virtual {v3, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1c
    :goto_c
    return-void
.end method

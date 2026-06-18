.class public final Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/statusbar/OnIslandStatusChangedListener;


# instance fields
.field public fullPrivacyMarginEnd:I

.field public isFolded:Z

.field public isShowing:Z

.field public mBarHeight:I

.field public final mContext:Landroid/content/Context;

.field public final mDisplayListener:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController$2;

.field public final mHandler:Landroid/os/Handler;

.field public mIsFlipTinyScreen:Z

.field public mIsFullScreenGesture:Z

.field public mIsNewMiuiPromptInfo:Z

.field public mIsRTL:Z

.field public mLastMiuiPromptInfo:I

.field public final mListener:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController$$ExternalSyntheticLambda1;

.field public mLp:Landroid/view/WindowManager$LayoutParams;

.field public final mLpChanged:Landroid/view/WindowManager$LayoutParams;

.field public mMiuiContentDescription:Ljava/lang/String;

.field public mMiuiOptimization:Z

.field public mOnlyUpdateLocation:Z

.field public final mPrivacyCapsule:Landroid/widget/FrameLayout;

.field public final mPrivacyCapsuleContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final mPrivacyCapsuleFolme:Lmiuix/animation/IFolme;

.field public final mPrivacyDot:Landroid/widget/ImageView;

.field public final mPrivacyDotFolme:Lmiuix/animation/IFolme;

.field public final mPrivacyDotHotArea:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final mPrivacyFlares:Lcom/android/systemui/statusbar/privacy/PrivacyDotWindowView;

.field public mReducePromptInfo:Z

.field public mRemoteViews:Landroid/widget/RemoteViews;

.field public final mResources:Landroid/content/res/Resources;

.field public mRotation:I

.field public final mStretchAnimation:Lcom/android/systemui/statusbar/phone/IslandStretchAnimation;

.field public final mWindowManager:Landroid/view/WindowManager;

.field public final runnable:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController$$ExternalSyntheticLambda0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManager;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/util/kotlin/JavaAdapter;Lcom/android/systemui/statusbar/policy/ConfigurationController;Landroid/os/Handler;Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;)V
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v4, -0x1

    iput v4, v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mBarHeight:I

    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mMiuiOptimization:Z

    const/4 v5, 0x0

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->isShowing:Z

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mIsRTL:Z

    new-instance v6, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController$$ExternalSyntheticLambda0;

    invoke-direct {v6, v0}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;)V

    iput-object v6, v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->runnable:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController$$ExternalSyntheticLambda0;

    new-instance v6, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController$2;

    invoke-direct {v6, v0}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController$2;-><init>(Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;)V

    iput-object v6, v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mDisplayListener:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController$2;

    iput-object v1, v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mContext:Landroid/content/Context;

    move-object/from16 v7, p2

    iput-object v7, v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mWindowManager:Landroid/view/WindowManager;

    new-instance v7, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v7}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v7, v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iput-object v7, v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mResources:Landroid/content/res/Resources;

    iput-object v2, v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mHandler:Landroid/os/Handler;

    move-object/from16 v8, p5

    check-cast v8, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v8, v0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;->addOnIslandStatusChangedListener(Lcom/android/systemui/statusbar/OnIslandStatusChangedListener;)V

    invoke-static {v1}, Lcom/miui/utils/configs/MiuiConfigs;->isFlipTinyScreen(Landroid/content/Context;)Z

    move-result v8

    iput-boolean v8, v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mIsFlipTinyScreen:Z

    iget v8, v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mBarHeight:I

    if-gez v8, :cond_0

    const v8, 0x105038c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mBarHeight:I

    :cond_0
    new-instance v7, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController$$ExternalSyntheticLambda1;

    invoke-direct {v7, v0}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;)V

    iput-object v7, v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mListener:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController$$ExternalSyntheticLambda1;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f0e03c1

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    move-object v12, v8

    check-cast v12, Lcom/android/systemui/statusbar/privacy/PrivacyDotWindowView;

    iput-object v12, v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mPrivacyFlares:Lcom/android/systemui/statusbar/privacy/PrivacyDotWindowView;

    const v8, 0x7f0b04ee

    invoke-virtual {v12, v8}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mPrivacyDot:Landroid/widget/ImageView;

    const v9, 0x7f0b075c

    invoke-virtual {v12, v9}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout;

    iput-object v9, v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mPrivacyCapsule:Landroid/widget/FrameLayout;

    const v11, 0x7f0b095f

    invoke-virtual {v12, v11}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v11, v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mPrivacyCapsuleContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v11, 0x7f0b04ef

    invoke-virtual {v12, v11}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v11, v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mPrivacyDotHotArea:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v13, v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mPrivacyDotFolme:Lmiuix/animation/IFolme;

    if-eqz v13, :cond_2

    iget-object v13, v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mPrivacyCapsuleFolme:Lmiuix/animation/IFolme;

    if-nez v13, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    move-object v8, v11

    goto :goto_2

    :cond_2
    :goto_1
    new-array v13, v4, [Landroid/view/View;

    aput-object v8, v13, v5

    invoke-static {v13}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v8

    iput-object v8, v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mPrivacyDotFolme:Lmiuix/animation/IFolme;

    new-array v8, v4, [Landroid/view/View;

    aput-object v9, v8, v5

    invoke-static {v8}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v8

    iput-object v8, v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mPrivacyCapsuleFolme:Lmiuix/animation/IFolme;

    goto :goto_0

    :goto_2
    new-instance v11, Lcom/android/systemui/statusbar/phone/IslandStretchAnimation;

    invoke-direct {v11, v4, v3, v10}, Lcom/android/systemui/statusbar/phone/IslandStretchAnimation;-><init>(ILcom/android/systemui/statusbar/StatusBarIslandControllerImpl;Lcom/android/systemui/statusbar/policy/StatusBarDelegateImpl;)V

    iput-object v11, v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mStretchAnimation:Lcom/android/systemui/statusbar/phone/IslandStretchAnimation;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v15, v12

    invoke-virtual/range {v11 .. v17}, Lcom/android/systemui/statusbar/phone/IslandStretchAnimation;->initMiuiViewsOnViewCreated(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/android/systemui/statusbar/views/MiuiClock;Landroid/view/View;)V

    new-instance v9, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController$1;

    invoke-direct {v9, v0, v2}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController$1;-><init>(Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;Landroid/os/Handler;)V

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v13, "force_fsg_nav_bar"

    invoke-static {v13}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v11, v13, v5, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {v9, v5}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController$1;->onChange(Z)V

    sget-boolean v9, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v9, :cond_3

    goto :goto_5

    :cond_3
    iget-boolean v9, v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mMiuiOptimization:Z

    if-eqz v9, :cond_4

    move-object v9, v7

    goto :goto_3

    :cond_4
    move-object v9, v10

    :goto_3
    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v8, v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mMiuiOptimization:Z

    if-eqz v8, :cond_5

    iget-boolean v8, v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mIsFlipTinyScreen:Z

    if-nez v8, :cond_5

    goto :goto_4

    :cond_5
    move-object v7, v10

    :goto_4
    invoke-virtual {v12, v7}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_5
    const-string v7, "MiuiPrivacyFlaresDotController"

    move-object/from16 v8, p3

    invoke-virtual {v8, v7, v0}, Lcom/android/systemui/dump/DumpManager;->registerCriticalDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    sget-boolean v7, Lcom/miui/utils/configs/MiuiConfigs;->IS_FOLD:Z

    if-eqz v7, :cond_6

    const-class v7, Landroid/hardware/devicestate/DeviceStateManager;

    invoke-virtual {v1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/devicestate/DeviceStateManager;

    new-instance v8, Landroid/os/HandlerExecutor;

    invoke-direct {v8, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    new-instance v9, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;

    new-instance v10, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController$$ExternalSyntheticLambda2;

    invoke-direct {v10, v0, v5}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;I)V

    invoke-direct {v9, v1, v10}, Landroid/hardware/devicestate/DeviceStateManager$FoldStateListener;-><init>(Landroid/content/Context;Ljava/util/function/Consumer;)V

    invoke-virtual {v7, v8, v9}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    :cond_6
    const-string v5, "display"

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    if-eqz v1, :cond_7

    const-wide/16 v7, 0x4

    invoke-virtual {v1, v6, v2, v7, v8}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;J)V

    :cond_7
    new-instance v1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0, v4}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;I)V

    iget-object v0, v3, Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;->burnShakeFlow:Lkotlinx/coroutines/flow/StateFlowImpl;

    move-object/from16 v2, p4

    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/util/kotlin/JavaAdapter;->alwaysCollectFlow(Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static getAnimConfig$2(F)Lmiuix/animation/base/AnimConfig;
    .registers 6

    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v1, -0x2

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p0, v2, v3

    const p0, 0x3eb33333

    const/4 v4, 0x1

    aput p0, v2, v4

    invoke-virtual {v0, v1, v2}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    int-to-long v1, v3

    invoke-virtual {p0, v1, v2}, Lmiuix/animation/base/AnimConfig;->setDelay(J)Lmiuix/animation/base/AnimConfig;

    return-object v0
.end method

.method public static isRTL$1()Z
    .registers 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 3

    iget-object p0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mPrivacyFlares:Lcom/android/systemui/statusbar/privacy/PrivacyDotWindowView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p0

    const-string p2, "  "

    invoke-virtual {p0, p2, p1}, Landroid/view/ViewRootImpl;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_0
    return-void
.end method

.method public final hide()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->isShowing:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->runnable:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController$$ExternalSyntheticLambda0;

    iget-object v1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mPrivacyFlares:Lcom/android/systemui/statusbar/privacy/PrivacyDotWindowView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mPrivacyCapsuleContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mPrivacyCapsule:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mPrivacyDotHotArea:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->isShowing:Z

    return-void
.end method

.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .registers 4

    iget-object p1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mIsRTL:Z

    invoke-static {}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->isRTL$1()Z

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mRotation:I

    if-eq p1, v0, :cond_1

    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mRotation:I

    invoke-static {}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->isRTL$1()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mIsRTL:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->updateDotViewMarginEndAndGravity()V

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/utils/configs/MiuiConfigs;->isFlipTinyScreen(Landroid/content/Context;)Z

    move-result p1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mIsFlipTinyScreen:Z

    if-eq v0, p1, :cond_3

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mIsFlipTinyScreen:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mMiuiOptimization:Z

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mListener:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController$$ExternalSyntheticLambda1;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mPrivacyFlares:Lcom/android/systemui/statusbar/privacy/PrivacyDotWindowView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    return-void
.end method

.method public final onDensityOrFontScaleChanged()V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f071519

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mPrivacyDot:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne v2, v0, :cond_0

    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-eq v2, v0, :cond_1

    :cond_0
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mPrivacyDot:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mPrivacyDot:Landroid/widget/ImageView;

    const v0, 0x7f081cfe

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    return-void
.end method

.method public final onIslandStatusChanged(ZZZ)V
    .registers 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mStretchAnimation:Lcom/android/systemui/statusbar/phone/IslandStretchAnimation;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->isShowing:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p1, p3, p0}, Lcom/android/systemui/statusbar/phone/IslandStretchAnimation;->onIslandStatusChanged(ZZZ)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final refreshStatusBarHeight()V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/utils/configs/MiuiConfigs;->isFlipTinyScreen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/utils/configs/MiuiConfigs;->getAdjustedRotation(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, -0x2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mResources:Landroid/content/res/Resources;

    const v1, 0x105038c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mBarHeight:I

    if-eq v1, v0, :cond_1

    iput v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mBarHeight:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->updateDotViewHeight()V

    :cond_1
    return-void
.end method

.method public final show(ILandroid/widget/RemoteViews;[IZZ)V
    .registers 30

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    iget-object v4, v1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mPrivacyCapsuleFolme:Lmiuix/animation/IFolme;

    const/4 v5, 0x1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->updateDotViewMarginEndAndGravity()V

    iget-object v0, v1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    const-string v6, "MiuiPrivacyFlaresDotController"

    if-eqz v0, :cond_0

    const-string v0, "possible crash by display id error"

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iget-object v7, v1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mPrivacyDot:Landroid/widget/ImageView;

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, v1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mContext:Landroid/content/Context;

    iget-object v7, v1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mMiuiContentDescription:Ljava/lang/String;

    invoke-static {v0, v7, v3}, Lcom/android/systemui/statusbar/privacy/StatusBarPrivacyUtils;->getPravicyContentDescription(Landroid/content/Context;Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v0

    iget-object v7, v1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mPrivacyFlares:Lcom/android/systemui/statusbar/privacy/PrivacyDotWindowView;

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v9, 0x0

    const/16 v10, 0x8

    iget-object v11, v1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mPrivacyDotHotArea:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v2, :cond_1

    if-nez v3, :cond_2

    :cond_1
    move-object v9, v7

    goto :goto_8

    :cond_2
    :try_start_0
    iget-object v0, v1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mContext:Landroid/content/Context;

    iget-object v12, v1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mPrivacyCapsule:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0, v12}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v12, v1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mPrivacyCapsule:Landroid/widget/FrameLayout;

    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    iget-object v13, v1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f071883

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    iput v13, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v13, v1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mPrivacyCapsule:Landroid/widget/FrameLayout;

    invoke-virtual {v13, v12}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setIsRootNamespace(Z)V

    iget-object v12, v1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f071884

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    invoke-virtual {v0, v12}, Landroid/view/View;->setMinimumWidth(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v12, "updateMiuiPrivacyPrompt: something wrong "

    invoke-static {v6, v12, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v3, v2}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->updateLastMiuiPromptInfo([ILandroid/widget/RemoteViews;)V

    iget-object v2, v1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mHandler:Landroid/os/Handler;

    iget-object v3, v1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->runnable:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController$$ExternalSyntheticLambda0;

    if-nez v0, :cond_4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->showPrivacyDotAndHideCapsule()V

    :cond_3
    :goto_1
    move-object v9, v7

    goto :goto_9

    :cond_4
    iget-object v6, v1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/systemui/statusbar/util/StatusBarUtils;->getLessLocationTip(Landroid/content/Context;)I

    move-result v6

    if-nez p4, :cond_5

    iget-boolean v12, v1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mOnlyUpdateLocation:Z

    if-eqz v12, :cond_5

    move v12, v5

    goto :goto_2

    :cond_5
    move v12, v9

    :goto_2
    iget-boolean v13, v1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mIsNewMiuiPromptInfo:Z

    const/4 v8, 0x0

    const/high16 v14, 0x3f800000

    if-nez v13, :cond_6

    iget-object v0, v1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mPrivacyCapsule:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-ne v0, v10, :cond_3

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-ne v0, v10, :cond_3

    invoke-virtual {v11, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, v1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mPrivacyDot:Landroid/widget/ImageView;

    invoke-virtual {v0, v14}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object v0, v1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mPrivacyDot:Landroid/widget/ImageView;

    invoke-virtual {v0, v14}, Landroid/widget/ImageView;->setScaleY(F)V

    iget-object v0, v1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mPrivacyDot:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setTranslationX(F)V

    iget-object v0, v1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mPrivacyDot:Landroid/widget/ImageView;

    invoke-virtual {v0, v14}, Landroid/widget/ImageView;->setAlpha(F)V

    new-array v0, v5, [Landroid/view/View;

    aput-object v11, v0, v9

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    new-instance v2, Lmiuix/animation/controller/AnimState;

    const-string v3, "privacy_dot_hot_area_set"

    invoke-direct {v2, v3}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v3, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    const-wide/16 v10, 0x0

    invoke-virtual {v2, v3, v10, v11}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v2

    invoke-interface {v0, v2}, Lmiuix/animation/FolmeStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    const-string v2, "privacy_dot_hot_area_to"

    const-wide/high16 v10, 0x3ff0000000000000L

    invoke-static {v2, v3, v10, v11}, Lcom/android/keyguard/clock/KeyguardClockContainer$carrierTextCallback$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lmiuix/animation/property/ViewProperty;D)Lmiuix/animation/controller/AnimState;

    move-result-object v2

    new-array v3, v9, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v0, v2, v3}, Lmiuix/animation/FolmeStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_1

    :cond_6
    if-lez v6, :cond_7

    if-nez v12, :cond_8

    iget-boolean v6, v1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mReducePromptInfo:Z

    if-nez v6, :cond_8

    :cond_7
    if-eqz p5, :cond_9

    :cond_8
    iget-object v0, v1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mPrivacyCapsule:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v11, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    :cond_9
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v12, -0x1

    const/4 v13, -0x2

    invoke-direct {v6, v13, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v12, v1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mPrivacyCapsule:Landroid/widget/FrameLayout;

    invoke-virtual {v12}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v12, v1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mPrivacyCapsule:Landroid/widget/FrameLayout;

    invoke-virtual {v12, v0, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mPrivacyCapsule:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_a

    :goto_3
    move-object v14, v2

    move-object v0, v3

    move-object v9, v7

    goto :goto_7

    :cond_a
    invoke-virtual {v11}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    const-string v6, "privacy_capsule_to"

    const-string v11, "privacy_capsule_set"

    if-ne v0, v10, :cond_b

    iget-object v0, v1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mPrivacyCapsule:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-interface {v4}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    new-instance v4, Lmiuix/animation/controller/AnimState;

    invoke-direct {v4, v11}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v8, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    const-wide/16 v10, 0x0

    invoke-virtual {v4, v8, v10, v11}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v4

    sget-object v12, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {v4, v12, v10, v11}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v4

    sget-object v14, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {v4, v14, v10, v11}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v4

    invoke-interface {v0, v4}, Lmiuix/animation/FolmeStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    const-wide/high16 v10, 0x3ff0000000000000L

    invoke-static {v6, v8, v10, v11}, Lcom/android/keyguard/clock/KeyguardClockContainer$carrierTextCallback$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lmiuix/animation/property/ViewProperty;D)Lmiuix/animation/controller/AnimState;

    move-result-object v4

    invoke-virtual {v4, v12, v10, v11}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v4

    invoke-virtual {v4, v14, v10, v11}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v4

    const v6, 0x3f666666

    invoke-static {v6}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->getAnimConfig$2(F)Lmiuix/animation/base/AnimConfig;

    move-result-object v6

    filled-new-array {v6}, [Lmiuix/animation/base/AnimConfig;

    move-result-object v6

    invoke-interface {v0, v4, v6}, Lmiuix/animation/FolmeStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_3

    :cond_b
    iget-object v0, v1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mPrivacyCapsule:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v10, v1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v12, 0x7f071519

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    div-float/2addr v0, v10

    iget-object v10, v1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v15, 0x7f071882

    invoke-virtual {v10, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    iget-object v15, v1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    div-float/2addr v10, v12

    cmpl-float v12, v0, v8

    if-nez v12, :cond_c

    move v12, v8

    goto :goto_4

    :cond_c
    div-float v12, v14, v0

    :goto_4
    cmpl-float v15, v10, v8

    if-nez v15, :cond_d

    goto :goto_5

    :cond_d
    div-float v8, v14, v10

    :goto_5
    iget-object v14, v1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mPrivacyCapsule:Landroid/widget/FrameLayout;

    invoke-virtual {v14}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v14

    int-to-double v14, v14

    const-wide/high16 v16, 0x4000000000000000L

    div-double v14, v14, v16

    iget-object v13, v1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v5, 0x7f07151b

    invoke-virtual {v13, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    move/from16 v18, v10

    float-to-double v9, v5

    add-double/2addr v14, v9

    iget-object v5, v1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v9, 0x7f07151a

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-double v9, v5

    div-double v9, v9, v16

    sub-double/2addr v14, v9

    iget-object v5, v1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mPrivacyCapsule:Landroid/widget/FrameLayout;

    const/4 v13, 0x0

    invoke-virtual {v5, v13}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v5, v1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mPrivacyDotFolme:Lmiuix/animation/IFolme;

    invoke-interface {v5}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v5

    new-instance v9, Lmiuix/animation/controller/AnimState;

    const-string v10, "privacy_dot_set"

    invoke-direct {v9, v10}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v10, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    move-wide/from16 v16, v14

    const-wide/high16 v13, 0x3ff0000000000000L

    invoke-virtual {v9, v10, v13, v14}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v9

    sget-object v15, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {v9, v15, v13, v14}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v9

    move-object/from16 v20, v4

    sget-object v4, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {v9, v4, v13, v14}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v9

    sget-object v13, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    move-object v14, v2

    move-object/from16 v21, v3

    const-wide/16 v2, 0x0

    invoke-virtual {v9, v13, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v9

    invoke-interface {v5, v9}, Lmiuix/animation/FolmeStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v5

    new-instance v9, Lmiuix/animation/controller/AnimState;

    const-string v2, "privacy_dot_to"

    invoke-direct {v9, v2}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    float-to-double v2, v0

    invoke-virtual {v9, v10, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    move/from16 v2, v18

    float-to-double v2, v2

    invoke-virtual {v0, v15, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v4, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    invoke-static {}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->isRTL$1()Z

    move-result v2

    move-object v9, v7

    if-eqz v2, :cond_e

    move-wide/from16 v2, v16

    move-object/from16 v16, v6

    move-wide v6, v2

    goto :goto_6

    :cond_e
    move-wide/from16 v2, v16

    move-object/from16 v16, v6

    neg-double v6, v2

    :goto_6
    invoke-virtual {v0, v13, v6, v7}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    const v6, 0x3f733333

    invoke-static {v6}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->getAnimConfig$2(F)Lmiuix/animation/base/AnimConfig;

    move-result-object v7

    filled-new-array {v7}, [Lmiuix/animation/base/AnimConfig;

    move-result-object v7

    invoke-interface {v5, v0, v7}, Lmiuix/animation/FolmeStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    invoke-interface/range {v20 .. v20}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    new-instance v5, Lmiuix/animation/controller/AnimState;

    invoke-direct {v5, v11}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    float-to-double v11, v12

    invoke-virtual {v5, v10, v11, v12}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v5

    float-to-double v7, v8

    invoke-virtual {v5, v15, v7, v8}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v5

    const-wide/16 v7, 0x0

    invoke-virtual {v5, v4, v7, v8}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v5

    invoke-static {}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->isRTL$1()Z

    move-result v11

    if-eqz v11, :cond_f

    neg-double v2, v2

    :cond_f
    invoke-virtual {v5, v13, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v2

    invoke-interface {v0, v2}, Lmiuix/animation/FolmeStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    move-object/from16 v5, v16

    const-wide/high16 v2, 0x3ff0000000000000L

    invoke-static {v5, v10, v2, v3}, Lcom/android/keyguard/clock/KeyguardClockContainer$carrierTextCallback$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lmiuix/animation/property/ViewProperty;D)Lmiuix/animation/controller/AnimState;

    move-result-object v5

    invoke-virtual {v5, v15, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v5

    invoke-virtual {v5, v4, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v2

    invoke-virtual {v2, v13, v7, v8}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v2

    invoke-static {v6}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->getAnimConfig$2(F)Lmiuix/animation/base/AnimConfig;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController$3;

    const/4 v5, 0x1

    invoke-direct {v4, v1, v5}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController$3;-><init>(Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;I)V

    filled-new-array {v4}, [Lmiuix/animation/listener/TransitionListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object v3

    filled-new-array {v3}, [Lmiuix/animation/base/AnimConfig;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lmiuix/animation/FolmeStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    move-object/from16 v0, v21

    :goto_7
    invoke-virtual {v14, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v14, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_9

    :goto_8
    const-string v0, "updatePrivacy, remoteViews == null or miuiTypes == null, hide."

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v11, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, v1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mPrivacyCapsule:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v10}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_9
    iget-boolean v0, v1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->isShowing:Z

    if-nez v0, :cond_13

    iget-object v0, v1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mPrivacyCapsuleContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v13, 0x0

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, v1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/utils/configs/MiuiConfigs;->isFlipTinyScreen(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x3

    if-eqz v0, :cond_10

    iget-object v0, v1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/utils/configs/MiuiConfigs;->getAdjustedRotation(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v2, :cond_10

    const/4 v8, -0x2

    goto :goto_a

    :cond_10
    iget-object v0, v1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mResources:Landroid/content/res/Resources;

    const v3, 0x105038c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    :goto_a
    iput v8, v1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mBarHeight:I

    new-instance v18, Landroid/view/WindowManager$LayoutParams;

    iget v0, v1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mBarHeight:I

    const/16 v19, -0x2

    const/16 v21, 0x7e1

    const v22, -0x5e7fffd8

    const/16 v23, -0x3

    move/from16 v20, v0

    invoke-direct/range {v18 .. v23}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    move-object/from16 v0, v18

    iput-object v0, v1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v4, 0x21000000

    or-int/2addr v3, v4

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    new-instance v3, Landroid/os/Binder;

    invoke-direct {v3}, Landroid/os/Binder;-><init>()V

    iput-object v3, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iget-object v0, v1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-static {}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->isRTL$1()Z

    move-result v3

    if-eqz v3, :cond_11

    const v3, 0x800003

    goto :goto_b

    :cond_11
    const v3, 0x800005

    :goto_b
    or-int/lit8 v3, v3, 0x30

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, v1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/4 v13, 0x0

    invoke-virtual {v0, v13}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    iget-object v0, v1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mLp:Landroid/view/WindowManager$LayoutParams;

    const-string v3, "FlaresView"

    invoke-virtual {v0, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, v1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iget-object v0, v1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mLp:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    sget-boolean v2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v2, :cond_12

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->setTrustedOverlay()V

    :cond_12
    iget-object v0, v1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/4 v13, 0x0

    invoke-virtual {v0, v13}, Landroid/view/WindowManager$LayoutParams;->setCanPlayMoveAnimation(Z)V

    iget-object v0, v1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, v1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v9, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    :cond_13
    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->isShowing:Z

    return-void
.end method

.method public final showPrivacyDotAndHideCapsule()V
    .registers 19

    move-object/from16 v0, p0

    const/4 v1, 0x0

    iget-object v2, v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mPrivacyCapsule:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f071519

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    div-float/2addr v2, v3

    iget-object v3, v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f071882

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iget-object v5, v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    div-float/2addr v3, v4

    const/4 v4, 0x0

    cmpl-float v5, v2, v4

    const/high16 v6, 0x3f800000

    if-nez v5, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    div-float v5, v6, v2

    :goto_0
    cmpl-float v7, v3, v4

    if-nez v7, :cond_1

    goto :goto_1

    :cond_1
    div-float v4, v6, v3

    :goto_1
    iget-object v6, v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mPrivacyCapsule:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v6

    int-to-double v6, v6

    const-wide/high16 v8, 0x4000000000000000L

    div-double/2addr v6, v8

    iget-object v10, v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f07151b

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-double v10, v10

    add-double/2addr v6, v10

    iget-object v10, v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f07151a

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-double v10, v10

    div-double/2addr v10, v8

    sub-double/2addr v6, v10

    iget-object v8, v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mPrivacyCapsule:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v8

    iget-object v9, v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mPrivacyDotHotArea:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v8, :cond_4

    invoke-virtual {v9, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v8, v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mPrivacyDotFolme:Lmiuix/animation/IFolme;

    invoke-interface {v8}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v8

    new-instance v9, Lmiuix/animation/controller/AnimState;

    const-string v10, "privacy_dot_set"

    invoke-direct {v9, v10}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v10, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    float-to-double v11, v2

    invoke-virtual {v9, v10, v11, v12}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v2

    sget-object v9, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    float-to-double v11, v3

    invoke-virtual {v2, v9, v11, v12}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v2

    sget-object v3, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    const-wide/16 v11, 0x0

    invoke-virtual {v2, v3, v11, v12}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v2

    sget-object v13, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    invoke-static {}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->isRTL$1()Z

    move-result v14

    if-eqz v14, :cond_2

    move-wide v14, v6

    goto :goto_2

    :cond_2
    neg-double v14, v6

    :goto_2
    invoke-virtual {v2, v13, v14, v15}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v2

    invoke-interface {v8, v2}, Lmiuix/animation/FolmeStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v2

    const-string v8, "privacy_dot_to"

    const-wide/high16 v14, 0x3ff0000000000000L

    invoke-static {v8, v10, v14, v15}, Lcom/android/keyguard/clock/KeyguardClockContainer$carrierTextCallback$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lmiuix/animation/property/ViewProperty;D)Lmiuix/animation/controller/AnimState;

    move-result-object v8

    invoke-virtual {v8, v9, v14, v15}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v8

    invoke-virtual {v8, v3, v14, v15}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v8

    invoke-virtual {v8, v13, v11, v12}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v8

    const v16, 0x3f733333

    invoke-static/range {v16 .. v16}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->getAnimConfig$2(F)Lmiuix/animation/base/AnimConfig;

    move-result-object v17

    filled-new-array/range {v17 .. v17}, [Lmiuix/animation/base/AnimConfig;

    move-result-object v11

    invoke-interface {v2, v8, v11}, Lmiuix/animation/FolmeStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    iget-object v2, v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mPrivacyCapsule:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v2, v0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mPrivacyCapsuleFolme:Lmiuix/animation/IFolme;

    invoke-interface {v2}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v2

    const-string v8, "privacy_capsule_set"

    invoke-static {v8, v10, v14, v15}, Lcom/android/keyguard/clock/KeyguardClockContainer$carrierTextCallback$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lmiuix/animation/property/ViewProperty;D)Lmiuix/animation/controller/AnimState;

    move-result-object v8

    invoke-virtual {v8, v9, v14, v15}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v8

    invoke-virtual {v8, v3, v14, v15}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v8

    const-wide/16 v11, 0x0

    invoke-virtual {v8, v13, v11, v12}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v8

    invoke-interface {v2, v8}, Lmiuix/animation/FolmeStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v2

    new-instance v8, Lmiuix/animation/controller/AnimState;

    const-string v14, "privacy_capsule_to"

    invoke-direct {v8, v14}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    float-to-double v14, v5

    invoke-virtual {v8, v10, v14, v15}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v5

    float-to-double v14, v4

    invoke-virtual {v5, v9, v14, v15}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v4

    invoke-virtual {v4, v3, v11, v12}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v3

    invoke-static {}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->isRTL$1()Z

    move-result v4

    if-eqz v4, :cond_3

    neg-double v6, v6

    :cond_3
    invoke-virtual {v3, v13, v6, v7}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v3

    invoke-static/range {v16 .. v16}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->getAnimConfig$2(F)Lmiuix/animation/base/AnimConfig;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController$3;

    invoke-direct {v5, v0, v1}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController$3;-><init>(Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;I)V

    filled-new-array {v5}, [Lmiuix/animation/listener/TransitionListener;

    move-result-object v0

    invoke-virtual {v4, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    filled-new-array {v0}, [Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lmiuix/animation/FolmeStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    return-void

    :cond_4
    invoke-virtual {v9, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public final updateDotViewHeight()V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mBarHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->isShowing:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mLp:Landroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget-object p0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mPrivacyFlares:Lcom/android/systemui/statusbar/privacy/PrivacyDotWindowView;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public final updateDotViewMarginEndAndGravity()V
    .registers 12

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mIsRTL:Z

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sget-boolean v3, Lcom/miui/utils/configs/MiuiConfigs;->IS_FOLD:Z

    if-eqz v3, :cond_1

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->isFolded:Z

    if-nez v4, :cond_2

    :cond_1
    sget-boolean v4, Lcom/miui/utils/configs/MiuiConfigs;->IS_PAD:Z

    if-nez v4, :cond_3

    if-nez v3, :cond_3

    :cond_2
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mIsFullScreenGesture:Z

    if-nez v4, :cond_3

    iget v4, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mRotation:I

    if-ne v4, v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f07139e

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    iput v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->fullPrivacyMarginEnd:I

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->isFolded:Z

    if-nez v3, :cond_6

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mIsRTL:Z

    if-nez v3, :cond_4

    iget v4, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mRotation:I

    if-eq v4, v1, :cond_5

    :cond_4
    if-eqz v3, :cond_6

    iget v1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mRotation:I

    if-nez v1, :cond_6

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0715ca

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->fullPrivacyMarginEnd:I

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07151b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    new-instance v3, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v3}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mPrivacyCapsuleContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    invoke-static {}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->isRTL$1()Z

    move-result v4

    const v9, 0x7f0b075c

    const v10, 0x7f0b04ef

    const v5, 0x7f0b04ee

    if-eqz v4, :cond_7

    const/4 v2, 0x2

    invoke-virtual {v3, v5, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    iget v8, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->fullPrivacyMarginEnd:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    const v4, 0x7f0b04ee

    const/4 v7, 0x1

    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    invoke-virtual {v3, v10, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    iget v8, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->fullPrivacyMarginEnd:I

    const v4, 0x7f0b04ef

    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    invoke-virtual {v3, v9, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    iget p0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->fullPrivacyMarginEnd:I

    add-int v8, p0, v0

    const v4, 0x7f0b075c

    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    goto :goto_2

    :cond_7
    invoke-virtual {v3, v5, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    iget v8, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->fullPrivacyMarginEnd:I

    const/4 v5, 0x2

    const/4 v6, 0x0

    const v4, 0x7f0b04ee

    const/4 v7, 0x2

    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    invoke-virtual {v3, v10, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    iget v8, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->fullPrivacyMarginEnd:I

    const v4, 0x7f0b04ef

    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    invoke-virtual {v3, v9, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    iget p0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->fullPrivacyMarginEnd:I

    add-int v8, p0, v0

    const v4, 0x7f0b075c

    invoke-virtual/range {v3 .. v8}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    :goto_2
    invoke-virtual {v3, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void
.end method

.method public final updateLastMiuiPromptInfo([ILandroid/widget/RemoteViews;)V
    .registers 8

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    array-length v3, p1

    const/4 v4, 0x1

    if-ge v1, v3, :cond_1

    aget v3, p1, v1

    if-ne v3, v4, :cond_0

    sget-object v3, Lcom/android/systemui/statusbar/util/StatusBarUtils;->PRIVACY_TYPE:[I

    aget v3, v3, v1

    xor-int/2addr v2, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mLastMiuiPromptInfo:I

    if-ne v2, p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mRemoteViews:Landroid/widget/RemoteViews;

    if-eq p2, p1, :cond_2

    goto :goto_1

    :cond_2
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mIsNewMiuiPromptInfo:Z

    goto :goto_2

    :cond_3
    :goto_1
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mIsNewMiuiPromptInfo:Z

    iput-object p2, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mRemoteViews:Landroid/widget/RemoteViews;

    :goto_2
    const-string p1, "updatePrivacy: "

    const-string p2, " "

    invoke-static {v2, p1, p2}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mLastMiuiPromptInfo:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mIsNewMiuiPromptInfo:Z

    const-string v1, "MiuiPrivacyFlaresDotController"

    invoke-static {p1, v1, p2}, Lcom/android/keyguard/BaseMiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    iget p1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mLastMiuiPromptInfo:I

    invoke-static {v2, p1}, Lcom/android/systemui/statusbar/util/StatusBarUtils;->getOnlyUpdateLocation(II)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mOnlyUpdateLocation:Z

    iget p1, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mLastMiuiPromptInfo:I

    or-int p2, v2, p1

    if-ne p2, p1, :cond_4

    sub-int p1, v2, p1

    if-gez p1, :cond_4

    move v0, v4

    :cond_4
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mReducePromptInfo:Z

    iput v2, p0, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyFlaresDotController;->mLastMiuiPromptInfo:I

    return-void
.end method

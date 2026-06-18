.class public final Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;
.super Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;

# interfaces
.implements Lcom/android/systemui/statusbar/policy/MinimalismModeController$MinimalismModeListener;
.implements Lcom/miui/systemui/controller/RegionController$Callback;
.implements Lcom/android/systemui/statusbar/chips/ui/view/AnyExpandListener;
.implements Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifPromptCallback;
.implements Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;


# instance fields
.field public hasDynamicIsland:Z

.field public hasPosted:Z

.field public isShowFoldNotification:Z

.field public isShowOperatorName:Z

.field public lastUserId:I

.field public mBatteryContainer:Landroid/view/View;

.field public final mBatterySpaceProvider:Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$3;

.field public mBatteryView:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;

.field public final mClockLayoutChangeListener:Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$$ExternalSyntheticLambda5;

.field public final mClockLeftProvider:Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$3;

.field public mClockSeat:Landroid/view/View;

.field public final mClockSpaceProvider:Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$3;

.field public mClockView:Lcom/android/systemui/statusbar/views/MiuiClock;

.field public mControlPanelExpand:Z

.field public mCutoutSpace:Landroid/view/View;

.field public mDensityDpi:I

.field public final mDep:Lcom/android/systemui/statusbar/MiuiStatusBarFragmentDep;

.field public final mDynamicIslandController:Lcom/android/systemui/statusbar/notification/DynamicIslandController;

.field public final mDynamicIslandPluginController:Lcom/android/systemui/statusbar/notification/DynamicIslandPluginController;

.field public mFocusedNotLine:Lcom/android/systemui/statusbar/phone/DividerLine;

.field public mFocusedNotifParent:Landroid/widget/LinearLayout;

.field public mFocusedNotifView:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;

.field public final mFoldNotifManager:Lcom/android/systemui/statusbar/notification/history/IFoldNotifManager;

.field public mIsFocusedNotifPromptViewShowing:Z

.field public mIsFocusedNotifyViewShowing:Z

.field public mIsMinimalismModeOn:Z

.field public mIsShowNotifPromptView:Z

.field public mIsWindowHidden:Z

.field public mIslandController:Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;

.field public final mIslandListener:Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$2;

.field public mIslandShowing:Z

.field public mKeyguardGoneIslandAnimationBlock:Z

.field public mLastIsFocusedNotifPromptViewShowing:Z

.field public mNicBindingDisposable:Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;

.field public final mNicViewBinder:Lcom/miui/systemui/statusbar/viewbinder/NotificationIconContainerMultiStatusBarViewBinder;

.field public mNotificationPanelExpand:Z

.field public mOnCancelAnimatorListener:Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$OnCancelAnimatorListener;

.field public mOriginDisable1:I

.field public mOriginDisable2:I

.field public mPadClockCancelAnimListener:Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$OnCancelAnimatorListener;

.field public mPadClockView:Lcom/android/systemui/statusbar/views/MiuiClock;

.field public final mPostUpdateParams:Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$$ExternalSyntheticLambda0;

.field public mRegion:Ljava/lang/String;

.field public mSaveClockSetWidth:I

.field public final mSelectedUserInteractor:Lcom/miui/systemui/user/domain/SelectedUserInteractorDelegate;

.field public mStatusBar:Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;

.field public mStatusBarContent:Landroid/view/View;

.field public final mStatusBarDelegate:Lcom/android/systemui/statusbar/policy/StatusBarDelegateImpl;

.field public mStatusBarIcons:Landroid/view/View;

.field public mStatusBarPrivacyContainer:Landroid/view/View;

.field public mStatusContainer:Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;

.field public mStrategyBase:Lcom/android/systemui/statusbar/phone/DeviceConfigurationStrategyBase;

.field public mStretchAnimation:Lcom/android/systemui/statusbar/phone/IslandStretchAnimation;

.field public final mUpdateDisableRunnable:Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$1;

.field public mUseCustomizedAnim:Z

.field public final notificationCallback:Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$6;

.field public oldStatusBarState:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;Lcom/android/systemui/shade/ShadeExpansionStateManager;Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl$SwitchingProvider$86;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl$SwitchingProvider$87;Lcom/android/systemui/statusbar/pipeline/shared/ui/binder/HomeStatusBarViewBinderImpl;Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/shade/domain/interactor/PanelExpansionInteractor;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/util/CarrierConfigTracker;Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentLogger;Lcom/android/systemui/statusbar/OperatorNameViewController$Factory;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/demomode/DemoModeController;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl$SwitchingProvider$95;Lcom/android/systemui/statusbar/MiuiStatusBarFragmentDep;Lcom/miui/systemui/statusbar/viewbinder/NotificationIconContainerMultiStatusBarViewBinder;Lcom/android/systemui/statusbar/notification/history/IFoldNotifManager;Lcom/android/systemui/statusbar/notification/DynamicIslandPluginController;Lcom/android/systemui/statusbar/notification/DynamicIslandController;Lcom/android/systemui/statusbar/policy/StatusBarDelegateImpl;Lcom/miui/systemui/user/domain/SelectedUserInteractorDelegate;)V
    .registers 28

    invoke-direct/range {p0 .. p20}, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;-><init>(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;Lcom/android/systemui/shade/ShadeExpansionStateManager;Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl$SwitchingProvider$86;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl$SwitchingProvider$87;Lcom/android/systemui/statusbar/pipeline/shared/ui/binder/HomeStatusBarViewBinderImpl;Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/shade/domain/interactor/PanelExpansionInteractor;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/util/CarrierConfigTracker;Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentLogger;Lcom/android/systemui/statusbar/OperatorNameViewController$Factory;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/demomode/DemoModeController;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl$SwitchingProvider$95;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mUseCustomizedAnim:Z

    new-instance p2, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$$ExternalSyntheticLambda0;

    const/4 p3, 0x4

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;I)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mPostUpdateParams:Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$$ExternalSyntheticLambda0;

    new-instance p2, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$1;-><init>(Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mUpdateDisableRunnable:Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$1;

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->hasPosted:Z

    iput p1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mSaveClockSetWidth:I

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->isShowOperatorName:Z

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mIsWindowHidden:Z

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mIslandShowing:Z

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->hasDynamicIsland:Z

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mKeyguardGoneIslandAnimationBlock:Z

    iput p1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->lastUserId:I

    new-instance p2, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$2;-><init>(Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mIslandListener:Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$2;

    new-instance p2, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$3;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$3;-><init>(Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;I)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mClockSpaceProvider:Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$3;

    new-instance p2, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$3;

    const/4 p3, 0x1

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$3;-><init>(Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;I)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mBatterySpaceProvider:Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$3;

    new-instance p2, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$3;

    const/4 p3, 0x2

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$3;-><init>(Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;I)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mClockLeftProvider:Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$3;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p2

    iput p2, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->oldStatusBarState:I

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->isShowFoldNotification:Z

    new-instance p1, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$$ExternalSyntheticLambda5;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;I)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mClockLayoutChangeListener:Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$$ExternalSyntheticLambda5;

    new-instance p1, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$6;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$6;-><init>(Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->notificationCallback:Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$6;

    move-object/from16 p1, p22

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mNicViewBinder:Lcom/miui/systemui/statusbar/viewbinder/NotificationIconContainerMultiStatusBarViewBinder;

    move-object/from16 p1, p21

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mDep:Lcom/android/systemui/statusbar/MiuiStatusBarFragmentDep;

    move-object/from16 p1, p23

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mFoldNotifManager:Lcom/android/systemui/statusbar/notification/history/IFoldNotifManager;

    move-object/from16 p1, p24

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mDynamicIslandPluginController:Lcom/android/systemui/statusbar/notification/DynamicIslandPluginController;

    move-object/from16 p1, p25

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mDynamicIslandController:Lcom/android/systemui/statusbar/notification/DynamicIslandController;

    move-object/from16 p1, p26

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mStatusBarDelegate:Lcom/android/systemui/statusbar/policy/StatusBarDelegateImpl;

    move-object/from16 p1, p27

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mSelectedUserInteractor:Lcom/miui/systemui/user/domain/SelectedUserInteractorDelegate;

    return-void
.end method

.method public static cancelAnimate(Landroid/view/View;)V
    .registers 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    return-void
.end method


# virtual methods
.method public final animateHiddenState(ILandroid/view/View;ZZ)V
    .registers 13

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->isSupportAnimForWindow()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->cancelAnimate(Landroid/view/View;)V

    if-nez p3, :cond_2

    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p2, p0}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_2
    sget-object v5, Lcom/android/app/animation/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    new-instance v6, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$$ExternalSyntheticLambda12;

    const/4 p3, 0x4

    invoke-direct {v6, p2, p1, p3}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$$ExternalSyntheticLambda12;-><init>(Ljava/lang/Object;II)V

    const/4 v2, 0x0

    const-wide/16 v3, 0xa0

    move-object v0, p0

    move-object v1, p2

    move v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->startAnimation(Landroid/view/View;FJLandroid/animation/TimeInterpolator;Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public final animateShow(Landroid/view/View;ZZ)V
    .registers 13

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->isSupportAnimForWindow()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    move p2, v0

    :goto_0
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->cancelAnimate(Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mNotificationIconAreaInner:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    if-ne p1, v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->hasDynamicIsland:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->IS_PAD:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mStretchAnimation:Lcom/android/systemui/statusbar/phone/IslandStretchAnimation;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/IslandStretchAnimation;->notificationViewTransX:F

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-nez p2, :cond_4

    if-eqz p3, :cond_3

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mUseCustomizedAnim:Z

    if-nez p2, :cond_4

    :cond_3
    const/high16 p0, 0x3f800000

    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    return-void

    :cond_4
    sget-object v6, Lcom/android/app/animation/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    new-instance v7, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$$ExternalSyntheticLambda6;

    invoke-direct {v7, p0, p1}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;Landroid/view/View;)V

    const/high16 v3, 0x3f800000

    const-wide/16 v4, 0x140

    move-object v1, p0

    move-object v2, p1

    move v8, p3

    invoke-virtual/range {v1 .. v8}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->startAnimation(Landroid/view/View;FJLandroid/animation/TimeInterpolator;Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public final clockHiddenMode()I
    .registers 3

    iget v0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mOriginDisable1:I

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mIsFocusedNotifPromptViewShowing:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mStrategyBase:Lcom/android/systemui/statusbar/phone/DeviceConfigurationStrategyBase;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DeviceConfigurationStrategyBase;->disableClock()Z

    move-result p0

    if-eqz p0, :cond_1

    :goto_0
    const/16 p0, 0x8

    return p0

    :cond_1
    const/4 p0, 0x4

    return p0
.end method

.method public final disable(IIIZ)V
    .registers 16

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    if-eq p1, v0, :cond_0

    goto :goto_2

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->oldStatusBarState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    if-eqz p4, :cond_1

    goto :goto_0

    :cond_1
    move p4, v2

    goto :goto_1

    :cond_2
    :goto_0
    move p4, v1

    :goto_1
    iput p2, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mOriginDisable1:I

    iput p3, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mOriginDisable2:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->isSupportAnimForWindow()Z

    move-result v0

    if-nez v0, :cond_3

    move p4, v2

    :cond_3
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    if-eq p1, v0, :cond_4

    :goto_2
    return-void

    :cond_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mCollapsedStatusBarFragmentLogger:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentLogger;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    new-instance v3, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentLogger$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1}, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentLogger$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentLogger;)V

    const-string v4, "CollapsedSbFragment"

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v0, v3, v5}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/log/LogMessageImpl;

    iput p2, v3, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    iput p3, v3, Lcom/android/systemui/log/LogMessageImpl;->int2:I

    invoke-virtual {p1, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    new-instance v4, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;

    const/high16 p1, 0x800000

    and-int/2addr p1, p2

    if-nez p1, :cond_5

    move v5, v1

    goto :goto_3

    :cond_5
    move v5, v2

    :goto_3
    const/high16 p1, 0x20000

    and-int/2addr p1, p2

    if-nez p1, :cond_6

    move v6, v1

    goto :goto_4

    :cond_6
    move v6, v2

    :goto_4
    const/high16 p1, 0x4000000

    and-int/2addr p1, p2

    if-nez p1, :cond_7

    move v7, v1

    goto :goto_5

    :cond_7
    move v7, v2

    :goto_5
    if-nez p1, :cond_8

    move v8, v1

    goto :goto_6

    :cond_8
    move v8, v2

    :goto_6
    const/high16 p1, 0x100000

    and-int/2addr p1, p2

    if-nez p1, :cond_9

    and-int/lit8 p1, p3, 0x2

    if-nez p1, :cond_9

    move v9, v1

    goto :goto_7

    :cond_9
    move v9, v2

    :goto_7
    const/4 v10, 0x1

    invoke-direct/range {v4 .. v10}, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;-><init>(ZZZZZZ)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mLastSystemVisibility:Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;

    invoke-virtual {p0, p4}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->updateStatusBarVisibilities(Z)V

    return-void
.end method

.method public final getDensity()F
    .registers 2

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hideClock(Z)V
    .registers 14

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->clockHiddenMode()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mClockView:Lcom/android/systemui/statusbar/views/MiuiClock;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->cancelAnimate(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mPadClockView:Lcom/android/systemui/statusbar/views/MiuiClock;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->cancelAnimate(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mClockSeat:Landroid/view/View;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->cancelAnimate(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mFocusedNotLine:Lcom/android/systemui/statusbar/phone/DividerLine;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->cancelAnimate(Landroid/view/View;)V

    const/4 v1, 0x1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mUseCustomizedAnim:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mClockView:Lcom/android/systemui/statusbar/views/MiuiClock;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mClockView:Lcom/android/systemui/statusbar/views/MiuiClock;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTranslationX(F)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mClockView:Lcom/android/systemui/statusbar/views/MiuiClock;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/views/MiuiClock;->setPolicyVisibility(I)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mClockSeat:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mClockSeat:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mClockSeat:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mIsFocusedNotifyViewShowing:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mFocusedNotLine:Lcom/android/systemui/statusbar/phone/DividerLine;

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mFocusedNotLine:Lcom/android/systemui/statusbar/phone/DividerLine;

    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mFocusedNotLine:Lcom/android/systemui/statusbar/phone/DividerLine;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mPadClockView:Lcom/android/systemui/statusbar/views/MiuiClock;

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mNotificationPanelExpand:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p1

    if-ne p1, v1, :cond_5

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mPadClockView:Lcom/android/systemui/statusbar/views/MiuiClock;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mPadClockView:Lcom/android/systemui/statusbar/views/MiuiClock;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTranslationX(F)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mPadClockView:Lcom/android/systemui/statusbar/views/MiuiClock;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/views/MiuiClock;->setPolicyVisibility(I)V

    return-void

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mClockView:Lcom/android/systemui/statusbar/views/MiuiClock;

    sget-object v9, Lcom/android/app/animation/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    new-instance v8, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$$ExternalSyntheticLambda12;

    const/4 p1, 0x0

    invoke-direct {v8, p0, v0, p1}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$$ExternalSyntheticLambda12;-><init>(Ljava/lang/Object;II)V

    const-wide/16 v5, 0xa0

    move-object v7, v9

    const/4 v9, 0x1

    const/4 v4, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->startAnimation(Landroid/view/View;FJLandroid/animation/TimeInterpolator;Ljava/lang/Runnable;Z)V

    move-object v4, v2

    move-object v9, v7

    iget-boolean p0, v4, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mNotificationPanelExpand:Z

    if-eqz p0, :cond_3

    iget-object p0, v4, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p0

    if-ne p0, v1, :cond_4

    :cond_3
    iget-object v5, v4, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mPadClockView:Lcom/android/systemui/statusbar/views/MiuiClock;

    new-instance v10, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$$ExternalSyntheticLambda12;

    const/4 p0, 0x1

    invoke-direct {v10, v4, v0, p0}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$$ExternalSyntheticLambda12;-><init>(Ljava/lang/Object;II)V

    const-wide/16 v7, 0xa0

    const/4 v11, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {v4 .. v11}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->startAnimation(Landroid/view/View;FJLandroid/animation/TimeInterpolator;Ljava/lang/Runnable;Z)V

    :cond_4
    iget-object v5, v4, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mClockSeat:Landroid/view/View;

    new-instance v10, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$$ExternalSyntheticLambda12;

    const/4 p0, 0x2

    invoke-direct {v10, v4, v0, p0}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$$ExternalSyntheticLambda12;-><init>(Ljava/lang/Object;II)V

    const-wide/16 v7, 0xa0

    const/4 v11, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {v4 .. v11}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->startAnimation(Landroid/view/View;FJLandroid/animation/TimeInterpolator;Ljava/lang/Runnable;Z)V

    iget-boolean p0, v4, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mIsFocusedNotifyViewShowing:Z

    if-eqz p0, :cond_5

    iget-object v5, v4, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mFocusedNotLine:Lcom/android/systemui/statusbar/phone/DividerLine;

    new-instance v10, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$$ExternalSyntheticLambda12;

    const/4 p0, 0x3

    invoke-direct {v10, v4, v0, p0}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$$ExternalSyntheticLambda12;-><init>(Ljava/lang/Object;II)V

    const-wide/16 v7, 0xa0

    const/4 v11, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {v4 .. v11}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->startAnimation(Landroid/view/View;FJLandroid/animation/TimeInterpolator;Ljava/lang/Runnable;Z)V

    :cond_5
    return-void
.end method

.method public final hideNotificationIconArea(Z)V
    .registers 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mDep:Lcom/android/systemui/statusbar/MiuiStatusBarFragmentDep;

    iget-object v0, v0, Lcom/android/systemui/statusbar/MiuiStatusBarFragmentDep;->focusedNotifPromptController:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mInterruptAnimatorController:Lcom/android/systemui/statusbar/phone/FocusedNotifInterruptAnimatorController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/FocusedNotifInterruptAnimatorController;->mPromptViewAnimState:Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchController$PromptViewAnimState;

    sget-object v1, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchController$PromptViewAnimState;->PROMPT_VIEW_ANIM_INIT:Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchController$PromptViewAnimState;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/4 v1, 0x4

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mIsFocusedNotifyViewShowing:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mNotificationIconAreaInner:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {p0, v1, v0, p1, v3}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->animateHiddenState(ILandroid/view/View;ZZ)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mNotificationIconAreaInner:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {p0, v1, p1, v2, v2}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->animateHiddenState(ILandroid/view/View;ZZ)V

    return-void
.end method

.method public final initOperatorName()V
    .registers 12

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mOperatorNameViewController:Lcom/android/systemui/statusbar/OperatorNameViewController;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;

    if-eqz v0, :cond_1

    const v1, 0x7f0b08d1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b08d0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v0, 0x7f0b08cf

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/OperatorNameView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->setOperatorNameView(Landroid/view/View;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "initOperatorName: init controller "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mRegion:Ljava/lang/String;

    const-string v2, "CollapsedStatusBarFragment"

    invoke-static {v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mOperatorNameViewControllerFactory:Lcom/android/systemui/statusbar/OperatorNameViewController$Factory;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mHomeStatusBarComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$HomeStatusBarComponentImpl;

    iget-object v4, v1, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$HomeStatusBarComponentImpl;->darkIconDispatcher:Lcom/android/systemui/plugins/DarkIconDispatcher;

    new-instance v2, Lcom/android/systemui/statusbar/OperatorNameViewController;

    iget-object v6, v0, Lcom/android/systemui/statusbar/OperatorNameViewController$Factory;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v9, v0, Lcom/android/systemui/statusbar/OperatorNameViewController$Factory;->mSubscriptionManagerProxy:Lcom/android/systemui/statusbar/pipeline/mobile/util/SubscriptionManagerProxyImpl;

    iget-object v7, v0, Lcom/android/systemui/statusbar/OperatorNameViewController$Factory;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v10, v0, Lcom/android/systemui/statusbar/OperatorNameViewController$Factory;->mJavaAdapter:Lcom/android/systemui/util/kotlin/JavaAdapter;

    iget-object v5, v0, Lcom/android/systemui/statusbar/OperatorNameViewController$Factory;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    iget-object v8, v0, Lcom/android/systemui/statusbar/OperatorNameViewController$Factory;->mAirplaneModeInteractor:Lcom/android/systemui/statusbar/pipeline/airplane/domain/interactor/AirplaneModeInteractor;

    invoke-direct/range {v2 .. v10}, Lcom/android/systemui/statusbar/OperatorNameViewController;-><init>(Landroid/view/View;Lcom/android/systemui/plugins/DarkIconDispatcher;Lcom/android/systemui/tuner/TunerService;Landroid/telephony/TelephonyManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/pipeline/airplane/domain/interactor/AirplaneModeInteractor;Lcom/android/systemui/statusbar/pipeline/mobile/util/SubscriptionManagerProxyImpl;Lcom/android/systemui/util/kotlin/JavaAdapter;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mOperatorNameViewController:Lcom/android/systemui/statusbar/OperatorNameViewController;

    invoke-virtual {v2}, Lcom/android/systemui/util/ViewController;->init()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mOperatorNameViewController:Lcom/android/systemui/statusbar/OperatorNameViewController;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2, v2}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->animateHiddenState(ILandroid/view/View;ZZ)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mOperatorNameViewController:Lcom/android/systemui/statusbar/OperatorNameViewController;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->shouldShowOperatorName()Z

    move-result p0

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/OperatorNameViewController;->mShowOperatorNameOnStatusBar:Z

    if-eq v1, p0, :cond_2

    iput-boolean p0, v0, Lcom/android/systemui/statusbar/OperatorNameViewController;->mShowOperatorNameOnStatusBar:Z

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/OperatorNameViewController;->update$3$1()V

    :cond_2
    return-void
.end method

.method public final isDefaultStatusBar()Z
    .registers 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mInjector:Lcom/miui/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentInjector;

    invoke-virtual {p0}, Lcom/miui/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentInjector;->getStatusBarToken()Lcom/miui/systemui/statusbar/StatusBarToken;

    move-result-object p0

    iget p0, p0, Lcom/miui/systemui/statusbar/StatusBarToken;->statusBarIndex:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isSupportAnimForWindow()Z
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mDep:Lcom/android/systemui/statusbar/MiuiStatusBarFragmentDep;

    iget-object v0, v0, Lcom/android/systemui/statusbar/MiuiStatusBarFragmentDep;->animatorController:Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mInjector:Lcom/miui/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentInjector;

    invoke-virtual {v1}, Lcom/miui/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentInjector;->getStatusBarToken()Lcom/miui/systemui/statusbar/StatusBarToken;

    move-result-object v1

    iget-object v0, v0, Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController;->showingStatusBarToken:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mIsWindowHidden:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 7

    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    sget-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->IS_PAD:Z

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mIslandShowing:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mPadClockView:Lcom/android/systemui/statusbar/views/MiuiClock;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/TextView;->getAlpha()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mPadClockView:Lcom/android/systemui/statusbar/views/MiuiClock;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_1
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mDensityDpi:I

    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v0, v2, :cond_2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mDensityDpi:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mPadClockView:Lcom/android/systemui/statusbar/views/MiuiClock;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mPadClockView:Lcom/android/systemui/statusbar/views/MiuiClock;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07187a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mStrategyBase:Lcom/android/systemui/statusbar/phone/DeviceConfigurationStrategyBase;

    if-eqz v0, :cond_7

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    iget v3, v0, Lcom/android/systemui/statusbar/phone/DeviceConfigurationStrategyBase;->mOrientation:I

    const/4 v4, 0x1

    if-eq v2, v3, :cond_3

    move v3, v4

    goto :goto_0

    :cond_3
    move v3, v1

    :goto_0
    if-eqz v3, :cond_4

    iput v2, v0, Lcom/android/systemui/statusbar/phone/DeviceConfigurationStrategyBase;->mOrientation:I

    :cond_4
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DeviceConfigurationStrategyBase;->hasScreenUpdate()Z

    move-result v0

    if-nez v3, :cond_5

    if-eqz v0, :cond_7

    :cond_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mFocusedNotifView:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->setNeedUpdateRect(Z)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mStrategyBase:Lcom/android/systemui/statusbar/phone/DeviceConfigurationStrategyBase;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/phone/DeviceConfigurationStrategyBase;->getClockSeatWidth(Landroid/content/res/Configuration;)I

    move-result p1

    const-string v2, "focusedFocusedWidth :"

    const-string v3, " class name = "

    invoke-static {p1, v2, v3}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mStrategyBase:Lcom/android/systemui/statusbar/phone/DeviceConfigurationStrategyBase;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CollapsedStatusBarFragment"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->updateFocusedParentParams(I)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mStrategyBase:Lcom/android/systemui/statusbar/phone/DeviceConfigurationStrategyBase;

    instance-of p1, p1, Lcom/android/systemui/statusbar/phone/MiuiFlipStrategy;

    if-eqz p1, :cond_6

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    if-nez p1, :cond_6

    iget p1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mOriginDisable1:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mOriginDisable2:I

    invoke-virtual {p0, v1, p1, v2, v1}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->disable(IIIZ)V

    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->isDefaultStatusBar()Z

    move-result p1

    if-eqz p1, :cond_7

    if-eqz v0, :cond_7

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mDep:Lcom/android/systemui/statusbar/MiuiStatusBarFragmentDep;

    iget-object p0, p0, Lcom/android/systemui/statusbar/MiuiStatusBarFragmentDep;->islandController:Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;->onConfigChanged$1()V

    :cond_7
    :goto_1
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7

    const v0, 0x7f0e0461

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    sget-boolean p2, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz p2, :cond_2

    const p2, 0x7f0b08f1

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewStub;

    invoke-virtual {p2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->densityDpi:I

    goto :goto_1

    :cond_1
    :goto_0
    move p2, v1

    :goto_1
    iput p2, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mDensityDpi:I

    :cond_2
    move-object p2, p1

    check-cast p2, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;

    if-eqz p3, :cond_4

    const-string p2, "raw_display_id"

    const/4 v0, -0x1

    invoke-virtual {p3, p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    sget-object v0, Lcom/miui/systemui/statusbar/StatusBarToken;->DEFAULT_STATUS_BAR_TOKEN:Lcom/miui/systemui/statusbar/StatusBarToken;

    invoke-static {p2}, Lcom/miui/systemui/statusbar/StatusBarToken$Companion;->create(I)Lcom/miui/systemui/statusbar/StatusBarToken;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->setStatusBarToken(Lcom/miui/systemui/statusbar/StatusBarToken;)V

    const-string p2, "CLOCK_WIDTH_KEY"

    invoke-virtual {p3, p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mSaveClockSetWidth:I

    const-string p2, "DENSITY_KEY"

    const/4 v0, 0x0

    invoke-virtual {p3, p2, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->getDensity()F

    move-result p3

    iget v1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mSaveClockSetWidth:I

    if-eqz v1, :cond_3

    cmpl-float v2, p2, v0

    if-eqz v2, :cond_3

    cmpl-float v0, p3, v0

    if-eqz v0, :cond_3

    cmpl-float v0, p2, p3

    if-eqz v0, :cond_3

    int-to-float v0, v1

    invoke-static {p2, v0}, Lmiuix/core/util/MiuixUIUtils;->px2dp(FF)I

    move-result p2

    int-to-float p2, p2

    invoke-static {p3, p2}, Lmiuix/core/util/MiuixUIUtils;->dp2px(FF)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mSaveClockSetWidth:I

    :cond_3
    return-object p1

    :cond_4
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mInjector:Lcom/miui/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentInjector;

    invoke-virtual {p3}, Lcom/miui/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentInjector;->getStatusBarToken()Lcom/miui/systemui/statusbar/StatusBarToken;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->setStatusBarToken(Lcom/miui/systemui/statusbar/StatusBarToken;)V

    iput v1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mSaveClockSetWidth:I

    return-object p1
.end method

.method public final onDestroyView()V
    .registers 4

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mNicBindingDisposable:Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;->dispose()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mNicBindingDisposable:Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mDep:Lcom/android/systemui/statusbar/MiuiStatusBarFragmentDep;

    iget-object v0, v0, Lcom/android/systemui/statusbar/MiuiStatusBarFragmentDep;->notification:Lcom/miui/systemui/shade/NotificationShadeWrapper;

    iget-object v0, v0, Lcom/miui/systemui/shade/NotificationShadeWrapper;->panelExpandController:Lcom/android/systemui/shade/NotificationPanelExpandController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->notificationCallback:Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$6;

    invoke-virtual {v0, v2}, Lcom/android/systemui/shade/NotificationPanelExpandController;->removeCallback(Lcom/android/systemui/plugins/miui/shade/PanelExpandController$Callback;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mDep:Lcom/android/systemui/statusbar/MiuiStatusBarFragmentDep;

    iget-object v0, v0, Lcom/android/systemui/statusbar/MiuiStatusBarFragmentDep;->islandController:Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mIslandListener:Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$2;

    if-eqz v2, :cond_1

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;->islandStateHandler:Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl$IslandStateHandler;

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl$IslandStateHandler;->onIslandStateChangedListeners:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->isDefaultStatusBar()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mDep:Lcom/android/systemui/statusbar/MiuiStatusBarFragmentDep;

    iget-object v0, v0, Lcom/android/systemui/statusbar/MiuiStatusBarFragmentDep;->islandController:Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;

    iput-object v1, v0, Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;->clockSpaceProvider:Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$3;

    iput-object v1, v0, Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;->batterySpaceProvider:Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$3;

    iput-object v1, v0, Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;->padClockLeftProvider:Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$3;

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mStretchAnimation:Lcom/android/systemui/statusbar/phone/IslandStretchAnimation;

    const v0, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IslandStretchAnimation;->cancelAnimation()V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/IslandStretchAnimation;->leftFolme:Lmiuix/animation/IFolme;

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/IslandStretchAnimation;->rightFolme:Lmiuix/animation/IFolme;

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/IslandStretchAnimation;->privacyFolme:Lmiuix/animation/IFolme;

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/IslandStretchAnimation;->notificationFolme:Lmiuix/animation/IFolme;

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mUpdateDisableRunnable:Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$1;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mClockSeat:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mPostUpdateParams:Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mClockView:Lcom/android/systemui/statusbar/views/MiuiClock;

    if-eqz v0, :cond_6

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mClockLayoutChangeListener:Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$$ExternalSyntheticLambda5;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mPadClockView:Lcom/android/systemui/statusbar/views/MiuiClock;

    if-eqz v0, :cond_7

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mClockLayoutChangeListener:Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$$ExternalSyntheticLambda5;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mDep:Lcom/android/systemui/statusbar/MiuiStatusBarFragmentDep;

    iget-object v0, v0, Lcom/android/systemui/statusbar/MiuiStatusBarFragmentDep;->focusedNotifPromptController:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mDep:Lcom/android/systemui/statusbar/MiuiStatusBarFragmentDep;

    iget-object v0, v0, Lcom/android/systemui/statusbar/MiuiStatusBarFragmentDep;->minimalismModeController:Lcom/android/systemui/statusbar/policy/MinimalismModeController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MinimalismModeController;->mListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mDep:Lcom/android/systemui/statusbar/MiuiStatusBarFragmentDep;

    iget-object v0, v0, Lcom/android/systemui/statusbar/MiuiStatusBarFragmentDep;->regionController:Lcom/miui/systemui/controller/RegionController;

    iget-object v0, v0, Lcom/miui/systemui/controller/RegionController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->removeCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->UNISOLATION_PROPERTY:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$6;

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->mAnimationEndAction:Ljava/util/function/Consumer;

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->mAnimationCancelAction:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState$$ExternalSyntheticLambda1;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mEndSideContent:Landroid/view/View;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->cancelAnimate(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mStatusBarPrivacyContainer:Landroid/view/View;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->cancelAnimate(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mOperatorNameViewController:Lcom/android/systemui/statusbar/OperatorNameViewController;

    if-eqz v0, :cond_8

    iget-object v0, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->cancelAnimate(Landroid/view/View;)V

    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mNotificationIconAreaInner:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->cancelAnimate(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mClockView:Lcom/android/systemui/statusbar/views/MiuiClock;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->cancelAnimate(Landroid/view/View;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mPadClockView:Lcom/android/systemui/statusbar/views/MiuiClock;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->cancelAnimate(Landroid/view/View;)V

    return-void
.end method

.method public final onDozingChanged(Z)V
    .registers 2

    return-void
.end method

.method public final onFocusedNotifVisibilityChanged(Z)V
    .registers 5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mIsFocusedNotifPromptViewShowing:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mIsFocusedNotifPromptViewShowing:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mUseCustomizedAnim:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mStrategyBase:Lcom/android/systemui/statusbar/phone/DeviceConfigurationStrategyBase;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DeviceConfigurationStrategyBase;->disableClock()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mUseCustomizedAnim:Z

    move p1, v1

    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mOriginDisable1:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mOriginDisable2:I

    invoke-virtual {p0, v1, v0, v2, p1}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->disable(IIIZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final onKeyguardGoingAwayChanged()V
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardGoingAway:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mUpdateDisableRunnable:Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$1;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final onMiUnoccludedAnimStateChanged()V
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->updateStatusBarVisibilities(Z)V

    :cond_0
    return-void
.end method

.method public final onMinimalismModeChanged(Z)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mIsMinimalismModeOn:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mIsMinimalismModeOn:Z

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    if-nez p1, :cond_1

    iget p1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mOriginDisable1:I

    iget v0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mOriginDisable2:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0, v1}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->disable(IIIZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onRegionChanged(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mRegion:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->initOperatorName()V

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mClockSeat:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mClockSeat:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    const-string v1, "CLOCK_WIDTH_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "DENSITY_KEY"

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->getDensity()F

    move-result p0

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    :cond_0
    return-void
.end method

.method public final onStateChanged(I)V
    .registers 5

    iget v0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mOriginDisable1:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mOriginDisable2:I

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->disable(IIIZ)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mPadClockView:Lcom/android/systemui/statusbar/views/MiuiClock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->hideClock(Z)V

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->oldStatusBarState:I

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 10

    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    new-instance v0, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mLastModifiedVisibility:Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;->showPrimaryOngoingActivityChip:Z

    const/4 v2, 0x1

    const/4 v5, 0x1

    const/4 v1, 0x1

    iget-boolean v4, p1, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;->showSecondaryOngoingActivityChip:Z

    iget-boolean v6, p1, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;->showNotifPromptView:Z

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;-><init>(ZZZZZZ)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mLastModifiedVisibility:Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mDep:Lcom/android/systemui/statusbar/MiuiStatusBarFragmentDep;

    iget-object p1, p1, Lcom/android/systemui/statusbar/MiuiStatusBarFragmentDep;->focusedNotifPromptController:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mIsFocusedNotifPromptShowing:Z

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->onFocusedNotifVisibilityChanged(Z)V

    return-void
.end method

.method public final setWindowState(III)V
    .registers 5

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, 0x1

    if-eq p2, p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p2, 0x2

    if-ne p3, p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mIsWindowHidden:Z

    if-eq p2, p1, :cond_3

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mIsWindowHidden:Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getInject()Lcom/android/systemui/statusbar/phone/NotificationIconContainerInject;

    move-result-object p0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainerInject;->statusbarWindowHidden:Z

    :cond_3
    :goto_1
    return-void
.end method

.method public final shouldHideStatusBar()Z
    .registers 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mShadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    iget v3, v3, Lcom/android/systemui/shade/ShadeExpansionStateManager;->state:I

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mPanelExpansionInteractor:Lcom/android/systemui/shade/domain/interactor/PanelExpansionInteractor;

    invoke-interface {v3}, Lcom/android/systemui/shade/domain/interactor/PanelExpansionInteractor;->shouldHideStatusBarIconsWhenExpanded()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v3, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardGoingAway:Z

    if-nez v3, :cond_3

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardGoingAway:Z

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-eqz v3, :cond_5

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->miUnoccludedAnimation:Z

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    if-eqz v0, :cond_6

    const-class v0, Lcom/miui/interfaces/keyguard/IMiuiShortcutController;

    invoke-static {v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/interfaces/keyguard/IMiuiShortcutController;

    check-cast v0, Lcom/android/keyguard/shortcut/MiuiShortcutController;

    iget-boolean v0, v0, Lcom/android/keyguard/shortcut/MiuiShortcutController;->isHideStatusBarAppOccluded:Z

    if-eqz v0, :cond_6

    goto :goto_3

    :cond_6
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mWaitingForWindowStateChangeAfterCameraLaunch:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBarWindowStateController:Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;

    iget v0, v0, Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;->windowState:I

    if-nez v0, :cond_7

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSecureCameraLaunched:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    if-eqz v0, :cond_8

    goto :goto_3

    :cond_8
    :goto_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mTransitionFromLockscreenToDreamStarted:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDreaming:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    if-eqz v0, :cond_9

    goto :goto_3

    :cond_9
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBarHideIconsForBouncerManager:Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager;->hideIconsForBouncer:Z

    if-nez v0, :cond_b

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager;->wereIconsJustHidden:Z

    if-eqz p0, :cond_a

    goto :goto_3

    :cond_a
    return v2

    :cond_b
    :goto_3
    return v1
.end method

.method public final shouldShowOperatorName()Z
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mDep:Lcom/android/systemui/statusbar/MiuiStatusBarFragmentDep;

    iget-object v0, v0, Lcom/android/systemui/statusbar/MiuiStatusBarFragmentDep;->operatorCustomizedPolicy:Lcom/miui/interfaces/IOperatorCustomizedPolicy;

    check-cast v0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;

    iget-object v0, v0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;->mNoMccMncResources:Landroid/content/res/Resources;

    const v1, 0x7f050065

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SA"

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mRegion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mIslandController:Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;->islandStateHandler:Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl$IslandStateHandler;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl$IslandStateHandler;->islandShowing:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->isShowOperatorName:Z

    return v0
.end method

.method public final showClock(Z)V
    .registers 14

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mClockView:Lcom/android/systemui/statusbar/views/MiuiClock;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mClockView:Lcom/android/systemui/statusbar/views/MiuiClock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/views/MiuiClock;->setPolicyVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mClockSeat:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mClockSeat:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mFocusedNotLine:Lcom/android/systemui/statusbar/phone/DividerLine;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mIsFocusedNotifyViewShowing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mFocusedNotLine:Lcom/android/systemui/statusbar/phone/DividerLine;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mPadClockView:Lcom/android/systemui/statusbar/views/MiuiClock;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mPadClockView:Lcom/android/systemui/statusbar/views/MiuiClock;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/views/MiuiClock;->setPolicyVisibility(I)V

    :cond_1
    const/4 v0, 0x1

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mUseCustomizedAnim:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mClockView:Lcom/android/systemui/statusbar/views/MiuiClock;

    const/high16 v1, 0x3f800000

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mClockView:Lcom/android/systemui/statusbar/views/MiuiClock;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTranslationX(F)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mClockSeat:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mClockView:Lcom/android/systemui/statusbar/views/MiuiClock;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTranslationX(F)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mPadClockView:Lcom/android/systemui/statusbar/views/MiuiClock;

    if-eqz p1, :cond_3

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->hasDynamicIsland:Z

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mIslandShowing:Z

    if-eq v3, v4, :cond_2

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mKeyguardGoneIslandAnimationBlock:Z

    :cond_2
    if-nez v3, :cond_3

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTranslationX(F)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mPadClockView:Lcom/android/systemui/statusbar/views/MiuiClock;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_3
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mIsFocusedNotifyViewShowing:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mFocusedNotLine:Lcom/android/systemui/statusbar/phone/DividerLine;

    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationX(F)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mFocusedNotLine:Lcom/android/systemui/statusbar/phone/DividerLine;

    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void

    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mClockView:Lcom/android/systemui/statusbar/views/MiuiClock;

    sget-object v9, Lcom/android/app/animation/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    new-instance v8, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$$ExternalSyntheticLambda0;

    const/4 p1, 0x0

    invoke-direct {v8, p0, p1}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;I)V

    const-wide/16 v5, 0x140

    move-object v7, v9

    const/4 v9, 0x1

    const/high16 v4, 0x3f800000

    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->startAnimation(Landroid/view/View;FJLandroid/animation/TimeInterpolator;Ljava/lang/Runnable;Z)V

    move-object v4, v2

    move-object v9, v7

    iget-object v5, v4, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mPadClockView:Lcom/android/systemui/statusbar/views/MiuiClock;

    if-eqz v5, :cond_6

    iget-boolean p0, v4, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->hasDynamicIsland:Z

    iget-boolean p1, v4, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mIslandShowing:Z

    if-eq p0, p1, :cond_5

    iput-boolean v0, v4, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mKeyguardGoneIslandAnimationBlock:Z

    :cond_5
    if-nez p0, :cond_6

    new-instance v10, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$$ExternalSyntheticLambda0;

    const/4 p0, 0x1

    invoke-direct {v10, v4, p0}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;I)V

    const-wide/16 v7, 0x140

    const/4 v11, 0x1

    const/high16 v6, 0x3f800000

    invoke-virtual/range {v4 .. v11}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->startAnimation(Landroid/view/View;FJLandroid/animation/TimeInterpolator;Ljava/lang/Runnable;Z)V

    :cond_6
    iget-object v5, v4, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mClockSeat:Landroid/view/View;

    new-instance v10, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$$ExternalSyntheticLambda0;

    const/4 p0, 0x2

    invoke-direct {v10, v4, p0}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;I)V

    const-wide/16 v7, 0x140

    const/4 v11, 0x1

    const/high16 v6, 0x3f800000

    invoke-virtual/range {v4 .. v11}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->startAnimation(Landroid/view/View;FJLandroid/animation/TimeInterpolator;Ljava/lang/Runnable;Z)V

    iget-boolean p0, v4, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mIsFocusedNotifyViewShowing:Z

    if-eqz p0, :cond_7

    iget-object v5, v4, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mFocusedNotLine:Lcom/android/systemui/statusbar/phone/DividerLine;

    new-instance v10, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$$ExternalSyntheticLambda0;

    const/4 p0, 0x3

    invoke-direct {v10, v4, p0}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;I)V

    const-wide/16 v7, 0x140

    const/4 v11, 0x1

    const/high16 v6, 0x3f800000

    invoke-virtual/range {v4 .. v11}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->startAnimation(Landroid/view/View;FJLandroid/animation/TimeInterpolator;Ljava/lang/Runnable;Z)V

    :cond_7
    return-void
.end method

.method public final startAnimation(Landroid/view/View;FJLandroid/animation/TimeInterpolator;Ljava/lang/Runnable;Z)V
    .registers 11

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    invoke-virtual {p3, p5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    invoke-virtual {p3, p6}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    const-wide/16 p4, 0x0

    invoke-virtual {p3, p4, p5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    const/4 p6, 0x0

    invoke-virtual {p3, p6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p3

    iget-boolean p6, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mUseCustomizedAnim:Z

    if-eqz p6, :cond_5

    if-eqz p7, :cond_5

    const/high16 p6, 0x3f800000

    cmpl-float p2, p2, p6

    const/4 p6, 0x0

    const/high16 p7, 0x41c80000

    if-nez p2, :cond_1

    move v0, p7

    goto :goto_0

    :cond_1
    move v0, p6

    :goto_0
    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    move p6, p7

    :goto_1
    const-wide/16 v1, 0x12c

    if-nez p2, :cond_3

    move-wide p4, v1

    :cond_3
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    new-instance p2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p3, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {p3, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {p3, p4, p5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {p3, p6}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mOnCancelAnimatorListener:Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$OnCancelAnimatorListener;

    if-nez p2, :cond_4

    new-instance p2, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$OnCancelAnimatorListener;

    invoke-direct {p2}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$OnCancelAnimatorListener;-><init>()V

    new-instance p4, Ljava/lang/ref/WeakReference;

    invoke-direct {p4, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p4, p2, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$OnCancelAnimatorListener;->mRefs:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mOnCancelAnimatorListener:Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$OnCancelAnimatorListener;

    :cond_4
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mOnCancelAnimatorListener:Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$OnCancelAnimatorListener;

    invoke-virtual {p3, p2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    :cond_5
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mPadClockView:Lcom/android/systemui/statusbar/views/MiuiClock;

    if-ne p1, p2, :cond_7

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mPadClockCancelAnimListener:Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$OnCancelAnimatorListener;

    if-nez p2, :cond_6

    new-instance p2, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$OnCancelAnimatorListener;

    invoke-direct {p2, p1}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$OnCancelAnimatorListener;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mPadClockCancelAnimListener:Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$OnCancelAnimatorListener;

    :cond_6
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mPadClockCancelAnimListener:Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$OnCancelAnimatorListener;

    invoke-virtual {p3, p0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    :cond_7
    invoke-virtual {p3}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public final updateFocusedLayoutParams()V
    .registers 8

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mClockSeat:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mOperatorNameViewController:Lcom/android/systemui/statusbar/OperatorNameViewController;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v3, 0x8

    if-eq v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mOperatorNameViewController:Lcom/android/systemui/statusbar/OperatorNameViewController;

    iget-object v1, v1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mPadClockView:Lcom/android/systemui/statusbar/views/MiuiClock;

    const-string v4, "CollapsedStatusBarFragment"

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mClockView:Lcom/android/systemui/statusbar/views/MiuiClock;

    invoke-virtual {v3}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    add-int/2addr v3, v1

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "phone clockView new width = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-static {v3, v4, v1}, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mClockView:Lcom/android/systemui/statusbar/views/MiuiClock;

    invoke-virtual {v3}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mPadClockView:Lcom/android/systemui/statusbar/views/MiuiClock;

    invoke-virtual {v5}, Landroid/widget/TextView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    if-eqz v6, :cond_3

    if-eqz v3, :cond_3

    if-eqz v5, :cond_3

    add-int/2addr v3, v5

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0718b3

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f071878

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    add-int/2addr v3, v5

    add-int/2addr v3, v1

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "pad clockView new width = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-static {v3, v4, v1}, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mClockSeat:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->hasPosted:Z

    return-void
.end method

.method public final updateFocusedParentParams(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mFocusedNotifParent:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p1, :cond_0

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mFocusedNotifParent:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final updateStatusBarVisibilities(Z)V
    .registers 25

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mLastModifiedVisibility:Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mLastSystemVisibility:Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mHomeStatusBarComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$HomeStatusBarComponentImpl;

    invoke-virtual {v4}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$HomeStatusBarComponentImpl;->getHeadsUpAppearanceController()Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->shouldHeadsUpStatusBarBeVisible()Z

    move-result v4

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v5, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v6, v5, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mLaunchTransitionFadingAway:Z

    const/4 v8, 0x1

    if-nez v6, :cond_1

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardFadingAway:Z

    if-nez v5, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->shouldHideStatusBar()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v5}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v5

    if-ne v5, v8, :cond_0

    if-nez v4, :cond_1

    :cond_0
    new-instance v9, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x1

    invoke-direct/range {v9 .. v15}, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;-><init>(ZZZZZZ)V

    goto :goto_3

    :cond_1
    iget-boolean v5, v3, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;->showClock:Z

    if-eqz v5, :cond_2

    if-nez v4, :cond_2

    move v10, v8

    goto :goto_0

    :cond_2
    const/4 v10, 0x0

    :goto_0
    iget-boolean v5, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mHasPrimaryOngoingActivity:Z

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mHasSecondaryOngoingActivity:Z

    new-instance v9, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;

    if-eqz v5, :cond_3

    if-nez v4, :cond_3

    move v12, v8

    goto :goto_1

    :cond_3
    const/4 v12, 0x0

    :goto_1
    if-eqz v6, :cond_4

    if-nez v4, :cond_4

    move v13, v8

    goto :goto_2

    :cond_4
    const/4 v13, 0x0

    :goto_2
    iget-boolean v11, v3, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;->showNotificationIcons:Z

    iget-boolean v14, v3, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;->showSystemInfo:Z

    const/4 v15, 0x1

    invoke-direct/range {v9 .. v15}, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;-><init>(ZZZZZZ)V

    :goto_3
    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mHomeStatusBarComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$HomeStatusBarComponentImpl;

    invoke-virtual {v4}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$HomeStatusBarComponentImpl;->getHeadsUpAppearanceController()Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->shouldHeadsUpStatusBarBeVisible()Z

    move-result v4

    iget-boolean v5, v3, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;->showClock:Z

    iget-boolean v6, v3, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;->showNotificationIcons:Z

    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mOngoingCallController:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->hasOngoingCall()Z

    move-result v10

    iget-boolean v10, v3, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;->showSystemInfo:Z

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mDep:Lcom/android/systemui/statusbar/MiuiStatusBarFragmentDep;

    iget-object v11, v11, Lcom/android/systemui/statusbar/MiuiStatusBarFragmentDep;->focusedNotifPromptController:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;

    iget-object v12, v11, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mCurrentNotifBean:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;

    if-nez v12, :cond_5

    const-string v11, ""

    goto :goto_4

    :cond_5
    iget-object v11, v11, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mCurrentNotifBean:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;

    iget-object v11, v11, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->packageName:Ljava/lang/String;

    :goto_4
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->isDefaultStatusBar()Z

    move-result v12

    if-eqz v12, :cond_8

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mDep:Lcom/android/systemui/statusbar/MiuiStatusBarFragmentDep;

    iget-object v12, v12, Lcom/android/systemui/statusbar/MiuiStatusBarFragmentDep;->islandController:Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;

    if-nez v5, :cond_7

    if-nez v6, :cond_7

    if-eqz v10, :cond_6

    goto :goto_5

    :cond_6
    const/4 v13, 0x0

    goto :goto_6

    :cond_7
    :goto_5
    move v13, v8

    :goto_6
    iget-object v12, v12, Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;->configChangedListener:Lcom/android/systemui/statusbar/notification/DynamicIslandController$1;

    if-eqz v12, :cond_8

    iget-object v12, v12, Lcom/android/systemui/statusbar/notification/DynamicIslandController$1;->this$0:Lcom/android/systemui/statusbar/notification/DynamicIslandController;

    iget-boolean v14, v12, Lcom/android/systemui/statusbar/notification/DynamicIslandController;->statusBarViewShowing:Z

    if-eq v14, v13, :cond_8

    iput-boolean v13, v12, Lcom/android/systemui/statusbar/notification/DynamicIslandController;->statusBarViewShowing:Z

    iget-object v12, v12, Lcom/android/systemui/statusbar/notification/DynamicIslandController;->dynamicIslandPluginController:Lcom/android/systemui/statusbar/notification/DynamicIslandPluginController;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    const-string v15, "action_key"

    const-string v7, "action_set_status_bar_view_visible"

    invoke-virtual {v14, v15, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "extra_status_bar_view_visible"

    invoke-virtual {v14, v7, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/notification/DynamicIslandPluginController;->getContent$packages__apps__MiuiSystemUI__packages__SystemUI__miuiModules__Notification__android_common__MiuiNotification()Lcom/android/systemui/plugins/miui/dynamicisland/DynamicIslandContent;

    move-result-object v7

    if-eqz v7, :cond_8

    invoke-interface {v7, v14}, Lcom/android/systemui/plugins/miui/dynamicisland/DynamicIslandContent;->handleDynamicIsland(Landroid/os/Bundle;)Landroid/os/Bundle;

    :cond_8
    iget-boolean v3, v3, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;->showNotifPromptView:Z

    iget v7, v0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mOriginDisable1:I

    const/high16 v12, 0x20000

    and-int/2addr v7, v12

    if-eqz v7, :cond_9

    const-string v7, "com.android.incallui"

    invoke-virtual {v7, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    :cond_9
    invoke-static {}, Lcom/miui/systemui/util/CommonUtil;->getTopActivity()Landroid/content/ComponentName;

    move-result-object v7

    if-nez v7, :cond_a

    goto :goto_7

    :cond_a
    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "com.miui.keyguard.editor.EditorActivity"

    invoke-static {v11, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string v11, "com.miui.aod"

    invoke-static {v7, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_c

    :cond_b
    const/4 v3, 0x0

    :cond_c
    :goto_7
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->shouldHideStatusBar()Z

    move-result v7

    if-eqz v7, :cond_e

    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v7}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v7

    if-ne v7, v8, :cond_d

    if-nez v4, :cond_e

    :cond_d
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    :cond_e
    iget-boolean v4, v0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mControlPanelExpand:Z

    if-eqz v4, :cond_10

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->isShowOperatorName:Z

    if-eqz v4, :cond_f

    const/4 v5, 0x0

    const/4 v6, 0x0

    :cond_f
    const/4 v10, 0x0

    :cond_10
    iget-boolean v4, v0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mNotificationPanelExpand:Z

    if-eqz v4, :cond_11

    invoke-virtual {v0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v8, :cond_11

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mDep:Lcom/android/systemui/statusbar/MiuiStatusBarFragmentDep;

    iget-object v4, v4, Lcom/android/systemui/statusbar/MiuiStatusBarFragmentDep;->ccsr:Ldagger/Lazy;

    invoke-interface {v4}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/interfaces/controlcenter/data/repository/ControlCenterSettingsRepository;

    check-cast v4, Lcom/miui/systemui/controlcenter/data/repository/ControlCenterSettingsRepositoryImpl;

    iget-object v4, v4, Lcom/miui/systemui/controlcenter/data/repository/ControlCenterSettingsRepositoryImpl;->useControlCenter:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    invoke-virtual {v4}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_11

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v4, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardGoingAway:Z

    if-nez v4, :cond_11

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->isShowFoldNotification:Z

    if-nez v4, :cond_11

    const/4 v5, 0x0

    :cond_11
    iget-boolean v4, v0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mIsMinimalismModeOn:Z

    if-eqz v4, :cond_13

    :cond_12
    :goto_8
    const/4 v6, 0x0

    goto :goto_9

    :cond_13
    iget-boolean v4, v0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mIsFocusedNotifPromptViewShowing:Z

    if-eqz v4, :cond_14

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mStrategyBase:Lcom/android/systemui/statusbar/phone/DeviceConfigurationStrategyBase;

    if-eqz v4, :cond_12

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/DeviceConfigurationStrategyBase;->disableClock()Z

    move-result v4

    if-eqz v4, :cond_12

    const/4 v5, 0x0

    goto :goto_8

    :cond_14
    :goto_9
    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mIslandController:Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;

    if-eqz v4, :cond_15

    iget-object v4, v4, Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;->islandStateHandler:Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl$IslandStateHandler;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl$IslandStateHandler;->islandShowing:Z

    if-eqz v4, :cond_15

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mStrategyBase:Lcom/android/systemui/statusbar/phone/DeviceConfigurationStrategyBase;

    if-eqz v4, :cond_15

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/DeviceConfigurationStrategyBase;->disableClock()Z

    move-result v4

    if-eqz v4, :cond_15

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    goto :goto_a

    :cond_15
    move/from16 v22, v3

    move/from16 v17, v5

    move/from16 v18, v6

    move/from16 v21, v10

    :goto_a
    new-instance v16, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;

    iget-boolean v3, v9, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;->showPrimaryOngoingActivityChip:Z

    iget-boolean v4, v9, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;->showSecondaryOngoingActivityChip:Z

    move/from16 v19, v3

    move/from16 v20, v4

    invoke-direct/range {v16 .. v22}, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;-><init>(ZZZZZZ)V

    move-object/from16 v3, v16

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v4, v19

    move/from16 v7, v20

    move/from16 v10, v21

    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mCollapsedStatusBarFragmentLogger:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentLogger;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    new-instance v12, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentLogger$$ExternalSyntheticLambda1;

    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v13, "CollapsedSbFragment"

    const/4 v14, 0x0

    invoke-virtual {v9, v13, v11, v12, v14}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v11

    move-object v12, v11

    check-cast v12, Lcom/android/systemui/log/LogMessageImpl;

    iput-boolean v5, v12, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    iput-boolean v6, v12, Lcom/android/systemui/log/LogMessageImpl;->bool2:Z

    iput-boolean v4, v12, Lcom/android/systemui/log/LogMessageImpl;->bool3:Z

    iput v7, v12, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    iput-boolean v10, v12, Lcom/android/systemui/log/LogMessageImpl;->bool4:Z

    invoke-virtual {v9, v11}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mLastModifiedVisibility:Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;

    iget-boolean v3, v2, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;->showSystemInfo:Z

    const/4 v9, 0x4

    if-eq v10, v3, :cond_17

    if-eqz v10, :cond_16

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mEndSideContent:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v0, v3, v1, v10}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->animateShow(Landroid/view/View;ZZ)V

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mStatusBarPrivacyContainer:Landroid/view/View;

    invoke-virtual {v0, v3, v1, v10}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->animateShow(Landroid/view/View;ZZ)V

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mOperatorNameViewController:Lcom/android/systemui/statusbar/OperatorNameViewController;

    if-eqz v3, :cond_17

    iget-object v3, v3, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    invoke-virtual {v0, v3, v1, v10}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->animateShow(Landroid/view/View;ZZ)V

    goto :goto_b

    :cond_16
    const/4 v10, 0x0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mEndSideContent:Landroid/view/View;

    invoke-virtual {v0, v9, v3, v1, v10}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->animateHiddenState(ILandroid/view/View;ZZ)V

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mStatusBarPrivacyContainer:Landroid/view/View;

    invoke-virtual {v0, v9, v3, v1, v10}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->animateHiddenState(ILandroid/view/View;ZZ)V

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mOperatorNameViewController:Lcom/android/systemui/statusbar/OperatorNameViewController;

    if-eqz v3, :cond_17

    iget-object v3, v3, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    invoke-virtual {v0, v9, v3, v1, v10}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->animateHiddenState(ILandroid/view/View;ZZ)V

    :cond_17
    :goto_b
    iget-boolean v3, v2, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;->showNotificationIcons:Z

    if-eq v6, v3, :cond_18

    move v3, v8

    goto :goto_c

    :cond_18
    const/4 v3, 0x0

    :goto_c
    iget-boolean v6, v2, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;->showPrimaryOngoingActivityChip:Z

    if-ne v4, v6, :cond_1a

    iget-boolean v4, v2, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;->showSecondaryOngoingActivityChip:Z

    if-eq v7, v4, :cond_19

    goto :goto_d

    :cond_19
    const/4 v4, 0x0

    goto :goto_e

    :cond_1a
    :goto_d
    move v4, v8

    :goto_e
    if-nez v3, :cond_1b

    if-eqz v4, :cond_1c

    :cond_1b
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->updateNotificationIconAreaAndOngoingActivityChip(Z)V

    :cond_1c
    iget-boolean v2, v2, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;->showClock:Z

    if-ne v5, v2, :cond_1d

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mClockView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->clockHiddenMode()I

    move-result v3

    if-eq v2, v3, :cond_1f

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mClockView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1f

    :cond_1d
    if-eqz v5, :cond_1e

    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->showClock(Z)V

    goto :goto_f

    :cond_1e
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->hideClock(Z)V

    :cond_1f
    :goto_f
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mLastModifiedVisibility:Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;->showNotifPromptView:Z

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mIsShowNotifPromptView:Z

    if-ne v2, v3, :cond_20

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mIsFocusedNotifPromptViewShowing:Z

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mLastIsFocusedNotifPromptViewShowing:Z

    if-eq v3, v4, :cond_26

    :cond_20
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mIsShowNotifPromptView:Z

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mIsFocusedNotifPromptViewShowing:Z

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mLastIsFocusedNotifPromptViewShowing:Z

    const/16 v4, 0x8

    if-eqz v3, :cond_24

    if-eqz v2, :cond_24

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mDep:Lcom/android/systemui/statusbar/MiuiStatusBarFragmentDep;

    iget-object v2, v2, Lcom/android/systemui/statusbar/MiuiStatusBarFragmentDep;->focusedNotifPromptController:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mInterruptAnimatorController:Lcom/android/systemui/statusbar/phone/FocusedNotifInterruptAnimatorController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/FocusedNotifInterruptAnimatorController;->isInterruptState()Z

    move-result v2

    if-nez v2, :cond_24

    iput-boolean v8, v0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mIsFocusedNotifyViewShowing:Z

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mFocusedNotifView:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;

    const/4 v10, 0x0

    invoke-virtual {v0, v2, v10, v10}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->animateShow(Landroid/view/View;ZZ)V

    invoke-virtual {v0, v10}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->hideNotificationIconArea(Z)V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->clockHiddenMode()I

    move-result v2

    if-eq v2, v4, :cond_21

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mFocusedNotLine:Lcom/android/systemui/statusbar/phone/DividerLine;

    invoke-virtual {v0, v2, v1, v10}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->animateShow(Landroid/view/View;ZZ)V

    const/4 v10, 0x0

    goto :goto_12

    :cond_21
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mFocusedNotLine:Lcom/android/systemui/statusbar/phone/DividerLine;

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mStrategyBase:Lcom/android/systemui/statusbar/phone/DeviceConfigurationStrategyBase;

    if-eqz v4, :cond_22

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/DeviceConfigurationStrategyBase;->disableClock()Z

    move-result v4

    if-nez v4, :cond_23

    :cond_22
    if-eqz v1, :cond_23

    :goto_10
    const/4 v10, 0x0

    goto :goto_11

    :cond_23
    const/4 v8, 0x0

    goto :goto_10

    :goto_11
    invoke-virtual {v0, v2, v3, v8, v10}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->animateHiddenState(ILandroid/view/View;ZZ)V

    goto :goto_12

    :cond_24
    const/4 v10, 0x0

    iput-boolean v10, v0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mIsFocusedNotifyViewShowing:Z

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mFocusedNotifView:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;

    invoke-virtual {v0, v9, v2, v1, v10}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->animateHiddenState(ILandroid/view/View;ZZ)V

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mFocusedNotLine:Lcom/android/systemui/statusbar/phone/DividerLine;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->clockHiddenMode()I

    move-result v3

    if-ne v3, v4, :cond_25

    move v9, v4

    :cond_25
    invoke-virtual {v0, v9, v2, v1, v10}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->animateHiddenState(ILandroid/view/View;ZZ)V

    :cond_26
    :goto_12
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;

    if-eqz v1, :cond_27

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mLastModifiedVisibility:Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->mHoverHelper:Lcom/android/systemui/statusbar/phone/MiuiStatusBarHoverHelper;

    if-eqz v1, :cond_27

    iget v3, v1, Lcom/android/systemui/statusbar/phone/MiuiStatusBarHoverHelper;->mHoverWhere:I

    if-eqz v3, :cond_27

    iget-boolean v3, v2, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;->showClock:Z

    if-nez v3, :cond_27

    iget-boolean v3, v2, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;->showNotifPromptView:Z

    if-nez v3, :cond_27

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;->showNotificationIcons:Z

    if-nez v2, :cond_27

    const/4 v10, 0x0

    iput v10, v1, Lcom/android/systemui/statusbar/phone/MiuiStatusBarHoverHelper;->mHoverWhere:I

    const-string v2, "StatusBarVisibilityModel false"

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/MiuiStatusBarHoverHelper;->updateHoverViewBg(Ljava/lang/String;)V

    :cond_27
    const/4 v10, 0x0

    iput-boolean v10, v0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mUseCustomizedAnim:Z

    return-void
.end method

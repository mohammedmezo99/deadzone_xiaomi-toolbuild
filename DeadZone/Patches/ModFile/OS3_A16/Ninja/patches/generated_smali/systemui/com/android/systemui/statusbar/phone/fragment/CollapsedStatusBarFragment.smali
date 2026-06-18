.class public abstract Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;
.super Landroid/app/Fragment;

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;
.implements Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public mAnimationsEnabled:Z

.field public final mBlockedIcons:Ljava/util/List;

.field public final mCarrierConfigCallback:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$2;

.field public final mCarrierConfigTracker:Lcom/android/systemui/util/CarrierConfigTracker;

.field public mClockView:Landroid/view/View;

.field public final mCollapsedStatusBarFragmentLogger:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentLogger;

.field public final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field public mDarkIconManager:Lcom/android/systemui/statusbar/phone/ui/DarkIconManager;

.field public final mDarkIconManagerFactory:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl$SwitchingProvider$86;

.field public final mDefaultDataListener:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$3;

.field public final mDemoModeCallback:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$4;

.field public final mDemoModeController:Lcom/android/systemui/demomode/DemoModeController;

.field public final mDumpManager:Lcom/android/systemui/dump/DumpManager;

.field public mEndSideAlphaController:Lcom/android/systemui/statusbar/phone/fragment/MultiSourceMinAlphaController;

.field public mEndSideContent:Landroid/view/View;

.field public mHasPrimaryOngoingActivity:Z

.field public mHasSecondaryOngoingActivity:Z

.field public mHomeStatusBarComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$HomeStatusBarComponentImpl;

.field public final mHomeStatusBarViewBinder:Lcom/android/systemui/statusbar/pipeline/shared/ui/binder/HomeStatusBarViewBinderImpl;

.field public mHomeStatusBarViewModel:Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/HomeStatusBarViewModelImpl;

.field public final mHomeStatusBarViewModelFactory:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl$SwitchingProvider$87;

.field public final mInjector:Lcom/miui/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentInjector;

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public mLastModifiedVisibility:Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;

.field public mLastSystemVisibility:Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;

.field public mNotificationIconAreaInner:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

.field public mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

.field public final mOngoingCallController:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;

.field public final mOngoingCallListener:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$1;

.field public mOperatorNameViewController:Lcom/android/systemui/statusbar/OperatorNameViewController;

.field public final mOperatorNameViewControllerFactory:Lcom/android/systemui/statusbar/OperatorNameViewController$Factory;

.field public final mPanelExpansionInteractor:Lcom/android/systemui/shade/domain/interactor/PanelExpansionInteractor;

.field public mPrimaryOngoingActivityChip:Landroid/view/View;

.field public mSecondaryOngoingActivityChip:Landroid/view/View;

.field public final mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field public final mShadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

.field public final mStartableStates:Ljava/util/Map;

.field public mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

.field public final mStatusBarHideIconsForBouncerManager:Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager;

.field public final mStatusBarIconController:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;

.field public final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public final mStatusBarVisibilityChangeListener:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$5;

.field public final mStatusBarWindowStateController:Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;

.field public final mStatusBarWindowStateListener:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$$ExternalSyntheticLambda2;

.field public mSystemEventAnimator:Lcom/android/systemui/statusbar/phone/fragment/StatusBarSystemEventDefaultAnimator;

.field public mTransitionFromLockscreenToDreamStarted:Z

.field public final mVolumeSettingObserver:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$6;

.field public mWaitingForWindowStateChangeAfterCameraLaunch:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;Lcom/android/systemui/shade/ShadeExpansionStateManager;Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl$SwitchingProvider$86;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl$SwitchingProvider$87;Lcom/android/systemui/statusbar/pipeline/shared/ui/binder/HomeStatusBarViewBinderImpl;Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/shade/domain/interactor/PanelExpansionInteractor;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/util/CarrierConfigTracker;Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentLogger;Lcom/android/systemui/statusbar/OperatorNameViewController$Factory;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/demomode/DemoModeController;Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl$SwitchingProvider$95;)V
    .registers 29

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    new-instance v0, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;

    const/4 v3, 0x1

    const/4 v6, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;-><init>(ZZZZZZ)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mLastSystemVisibility:Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;

    new-instance v1, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;

    const/4 v4, 0x1

    const/4 v7, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;-><init>(ZZZZZZ)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mLastModifiedVisibility:Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mBlockedIcons:Ljava/util/List;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStartableStates:Ljava/util/Map;

    new-instance v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$1;-><init>(Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mOngoingCallListener:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$1;

    new-instance v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$2;-><init>(Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mCarrierConfigCallback:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$2;

    new-instance v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$3;-><init>(Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mDefaultDataListener:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$3;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mWaitingForWindowStateChangeAfterCameraLaunch:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mTransitionFromLockscreenToDreamStarted:Z

    new-instance v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBarWindowStateListener:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$$ExternalSyntheticLambda2;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mAnimationsEnabled:Z

    new-instance v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$4;-><init>(Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mDemoModeCallback:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$4;

    new-instance v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$5;-><init>(Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBarVisibilityChangeListener:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$5;

    new-instance v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$6;-><init>(Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mVolumeSettingObserver:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$6;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mOngoingCallController:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mShadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBarIconController:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mHomeStatusBarViewModelFactory:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl$SwitchingProvider$87;

    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mHomeStatusBarViewBinder:Lcom/android/systemui/statusbar/pipeline/shared/ui/binder/HomeStatusBarViewBinderImpl;

    iput-object p7, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBarHideIconsForBouncerManager:Lcom/android/systemui/statusbar/phone/StatusBarHideIconsForBouncerManager;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mDarkIconManagerFactory:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl$SwitchingProvider$86;

    move-object/from16 p1, p8

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object/from16 p1, p9

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mPanelExpansionInteractor:Lcom/android/systemui/shade/domain/interactor/PanelExpansionInteractor;

    move-object/from16 p1, p10

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    move-object/from16 p1, p11

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    move-object/from16 p1, p12

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mCarrierConfigTracker:Lcom/android/systemui/util/CarrierConfigTracker;

    move-object/from16 p1, p13

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mCollapsedStatusBarFragmentLogger:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentLogger;

    move-object/from16 p1, p14

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mOperatorNameViewControllerFactory:Lcom/android/systemui/statusbar/OperatorNameViewController$Factory;

    move-object/from16 p1, p15

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    move-object/from16 p1, p16

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    move-object/from16 p1, p17

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBarWindowStateController:Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;

    move-object/from16 p1, p18

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 p1, p19

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mDemoModeController:Lcom/android/systemui/demomode/DemoModeController;

    move-object/from16 p1, p20

    invoke-virtual {p1, p0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl$SwitchingProvider$95;->create(Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;)Lcom/miui/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentInjector;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mInjector:Lcom/miui/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentInjector;

    return-void
.end method


# virtual methods
.method public disableAnimationsForTesting()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mAnimationsEnabled:Z

    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    new-instance p2, Landroid/util/IndentingPrintWriter;

    const-string v0, "  "

    invoke-direct {p2, p1, v0}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "mHasPrimaryOngoingActivity="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mHasPrimaryOngoingActivity:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "mHasSecondaryOngoingActivity="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mHasSecondaryOngoingActivity:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "mAnimationsEnabled="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mAnimationsEnabled:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mHomeStatusBarComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$HomeStatusBarComponentImpl;

    if-nez p1, :cond_0

    const-string p0, "StatusBarFragmentComponent is null"

    invoke-virtual {p2, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$HomeStatusBarComponentImpl;->getStartables()Ljava/util/Set;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Startables: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/layout/StatusBarBoundsProvider;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStartableStates:Ljava/util/Map;

    sget-object v2, Lcom/android/systemui/statusbar/phone/fragment/dagger/HomeStatusBarComponent$Startable$State;->NONE:Lcom/android/systemui/statusbar/phone/fragment/dagger/HomeStatusBarComponent$Startable$State;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/fragment/dagger/HomeStatusBarComponent$Startable$State;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", state: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public enableAnimationsForTesting()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mAnimationsEnabled:Z

    return-void
.end method

.method public getBlockedIcons()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mBlockedIcons:Ljava/util/List;

    return-object p0
.end method

.method public abstract hideNotificationIconArea(Z)V
.end method

.method public abstract initOperatorName()V
.end method

.method public final onCameraLaunchGestureDetected(I)V
    .registers 2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mWaitingForWindowStateChangeAfterCameraLaunch:Z

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBarWindowStateController:Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBarWindowStateListener:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$$ExternalSyntheticLambda2;

    iget-object p1, p1, Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;->listeners:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mDemoModeController:Lcom/android/systemui/demomode/DemoModeController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mDemoModeCallback:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$4;

    invoke-virtual {p1, p0}, Lcom/android/systemui/demomode/DemoModeController;->addCallback(Lcom/android/systemui/demomode/DemoMode;)V

    return-void
.end method

.method public final onDestroy()V
    .registers 3

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBarWindowStateController:Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBarWindowStateListener:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$$ExternalSyntheticLambda2;

    iget-object v0, v0, Lcom/android/systemui/statusbar/window/StatusBarWindowStateController;->listeners:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mDemoModeController:Lcom/android/systemui/demomode/DemoModeController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mDemoModeCallback:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$4;

    invoke-virtual {v0, p0}, Lcom/android/systemui/demomode/DemoModeController;->removeCallback(Lcom/android/systemui/demomode/DemoMode;)V

    return-void
.end method

.method public onDestroyView()V
    .registers 5

    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mHomeStatusBarComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$HomeStatusBarComponentImpl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBarIconController:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mDarkIconManager:Lcom/android/systemui/statusbar/phone/ui/DarkIconManager;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->removeIconGroup(Lcom/android/systemui/statusbar/phone/ui/IconManager;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mCarrierConfigTracker:Lcom/android/systemui/util/CarrierConfigTracker;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mCarrierConfigCallback:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$2;

    iget-object v0, v0, Lcom/android/systemui/util/CarrierConfigTracker;->mListeners:Ljava/util/Set;

    check-cast v0, Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mCarrierConfigTracker:Lcom/android/systemui/util/CarrierConfigTracker;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mDefaultDataListener:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$3;

    iget-object v0, v0, Lcom/android/systemui/util/CarrierConfigTracker;->mDataListeners:Ljava/util/Set;

    check-cast v0, Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mHomeStatusBarComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$HomeStatusBarComponentImpl;

    invoke-virtual {v0}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$HomeStatusBarComponentImpl;->getStartables()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/layout/StatusBarBoundsProvider;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStartableStates:Ljava/util/Map;

    sget-object v3, Lcom/android/systemui/statusbar/phone/fragment/dagger/HomeStatusBarComponent$Startable$State;->STOPPING:Lcom/android/systemui/statusbar/phone/fragment/dagger/HomeStatusBarComponent$Startable$State;

    check-cast v2, Landroid/util/ArrayMap;

    invoke-virtual {v2, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Lcom/android/systemui/statusbar/layout/StatusBarBoundsProvider;->startSideContent:Landroid/view/View;

    iget-object v3, v1, Lcom/android/systemui/statusbar/layout/StatusBarBoundsProvider;->layoutListener:Lcom/android/systemui/statusbar/layout/StatusBarBoundsProvider$layoutListener$1;

    invoke-virtual {v2, v3}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v2, v1, Lcom/android/systemui/statusbar/layout/StatusBarBoundsProvider;->endSideContent:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStartableStates:Ljava/util/Map;

    sget-object v3, Lcom/android/systemui/statusbar/phone/fragment/dagger/HomeStatusBarComponent$Startable$State;->STOPPED:Lcom/android/systemui/statusbar/phone/fragment/dagger/HomeStatusBarComponent$Startable$State;

    check-cast v2, Landroid/util/ArrayMap;

    invoke-virtual {v2, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mInjector:Lcom/miui/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentInjector;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/miui/systemui/statusbar/StatusBarToken;->DEFAULT_STATUS_BAR_TOKEN:Lcom/miui/systemui/statusbar/StatusBarToken;

    invoke-virtual {p0}, Lcom/miui/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentInjector;->getStatusBarToken()Lcom/miui/systemui/statusbar/StatusBarToken;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/miui/systemui/statusbar/StatusBarToken;->displayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/miui/systemui/statusbar/StatusBarToken;->statusBarIndex:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CollapsedStatusBarFragment"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/dump/DumpManager;->unregisterDumpable(Ljava/lang/String;)V

    return-void
.end method

.method public final onPause()V
    .registers 4

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mHomeStatusBarComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$HomeStatusBarComponentImpl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->removeCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mOngoingCallController:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mOngoingCallListener:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$1;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->mListeners:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->mListeners:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mVolumeSettingObserver:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$6;

    invoke-interface {v0, p0}, Lcom/android/systemui/util/settings/SettingsProxy;->unregisterContentObserverSync(Landroid/database/ContentObserver;)V

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v2

    throw p0
.end method

.method public final onResume()V
    .registers 5

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mHomeStatusBarComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$HomeStatusBarComponentImpl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mOngoingCallController:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mOngoingCallListener:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$1;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->mListeners:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->mListeners:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->mListeners:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mOngoingCallController:Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mPrimaryOngoingActivityChip:Landroid/view/View;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->tearDownChipView()Lkotlin/Unit;

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->chipView:Landroid/view/View;

    const v2, 0x7f0b08ad

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/chips/ui/view/ChipBackgroundContainer;

    if-eqz v1, :cond_2

    new-instance v2, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/chips/ui/view/ChipBackgroundContainer;->setMaxHeightFetcher(Lkotlin/jvm/functions/Function0;)V

    :cond_2
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->hasOngoingCall()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ongoingcall/OngoingCallController;->updateChip()V

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mVolumeSettingObserver:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$6;

    const-string v1, "status_bar_show_vibrate_icon"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-interface {v0, v1, v2, p0, v3}, Lcom/android/systemui/util/settings/UserSettingsProxy;->registerContentObserverForUserSync(Ljava/lang/String;ZLandroid/database/ContentObserver;I)V

    return-void

    :goto_1
    monitor-exit v2

    throw p0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mInjector:Lcom/miui/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentInjector;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentInjector;->getStatusBarToken()Lcom/miui/systemui/statusbar/StatusBarToken;

    move-result-object p0

    const-string v0, "raw_display_id"

    iget p0, p0, Lcom/miui/systemui/statusbar/StatusBarToken;->rawDisplayId:I

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final onSystemEventAnimationBegin()Landroidx/core/animation/Animator;
    .registers 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mSystemEventAnimator:Lcom/android/systemui/statusbar/phone/fragment/StatusBarSystemEventDefaultAnimator;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/fragment/StatusBarSystemEventDefaultAnimator;->onSystemEventAnimationBegin()Landroidx/core/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public final onSystemEventAnimationFinish(Z)Landroidx/core/animation/Animator;
    .registers 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mSystemEventAnimator:Lcom/android/systemui/statusbar/phone/fragment/StatusBarSystemEventDefaultAnimator;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/fragment/StatusBarSystemEventDefaultAnimator;->onSystemEventAnimationFinish(Z)Landroidx/core/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-super/range {p0 .. p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mInjector:Lcom/miui/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentInjector;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v2, :cond_1

    const-string v6, "raw_display_id"

    const/4 v7, -0x1

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v7, :cond_0

    goto :goto_0

    :cond_0
    sget-object v6, Lcom/miui/systemui/statusbar/StatusBarToken;->DEFAULT_STATUS_BAR_TOKEN:Lcom/miui/systemui/statusbar/StatusBarToken;

    invoke-static {v2}, Lcom/miui/systemui/statusbar/StatusBarToken$Companion;->create(I)Lcom/miui/systemui/statusbar/StatusBarToken;

    move-result-object v2

    iput-object v2, v5, Lcom/miui/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentInjector;->_statusBarToken:Lcom/miui/systemui/statusbar/StatusBarToken;

    :cond_1
    :goto_0
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mInjector:Lcom/miui/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentInjector;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lcom/miui/systemui/statusbar/StatusBarToken;->DEFAULT_STATUS_BAR_TOKEN:Lcom/miui/systemui/statusbar/StatusBarToken;

    invoke-virtual {v5}, Lcom/miui/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentInjector;->getStatusBarToken()Lcom/miui/systemui/statusbar/StatusBarToken;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, v5, Lcom/miui/systemui/statusbar/StatusBarToken;->displayId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v5, Lcom/miui/systemui/statusbar/StatusBarToken;->statusBarIndex:I

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "CollapsedStatusBarFragment"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v5, v0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable$default(Lcom/android/systemui/dump/DumpManager;Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mInjector:Lcom/miui/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentInjector;

    iget-object v6, v5, Lcom/miui/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentInjector;->base:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;

    invoke-virtual {v6}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v6

    instance-of v8, v6, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const/4 v9, 0x0

    if-eqz v8, :cond_2

    check-cast v6, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    goto :goto_1

    :cond_2
    move-object v6, v9

    :goto_1
    if-nez v6, :cond_3

    :goto_2
    move-object v5, v9

    goto :goto_3

    :cond_3
    invoke-virtual {v5}, Lcom/miui/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentInjector;->getStatusBarToken()Lcom/miui/systemui/statusbar/StatusBarToken;

    move-result-object v8

    iget-object v10, v5, Lcom/miui/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentInjector;->statusBarConfigurationControllerStore:Lcom/android/systemui/statusbar/data/repository/MultiDisplayStatusBarConfigurationControllerStore;

    check-cast v10, Lcom/android/systemui/statusbar/data/repository/StatusBarPerDisplayStoreImpl;

    iget v8, v8, Lcom/miui/systemui/statusbar/StatusBarToken;->displayId:I

    invoke-virtual {v10, v8}, Lcom/android/systemui/statusbar/data/repository/StatusBarPerDisplayStoreImpl;->forDisplay(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/data/repository/StatusBarConfigurationController;

    if-nez v8, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v5}, Lcom/miui/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentInjector;->getStatusBarToken()Lcom/miui/systemui/statusbar/StatusBarToken;

    move-result-object v10

    iget-object v11, v5, Lcom/miui/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentInjector;->statusBarWindowControllerStore:Lcom/miui/systemui/statusbar/window/MultiStatusBarWindowControllerStoreImpl;

    check-cast v11, Lcom/miui/systemui/statusbar/data/repository/PerDisplayStatusBarStore;

    invoke-virtual {v11, v10}, Lcom/miui/systemui/statusbar/data/repository/PerDisplayStatusBarStore;->forStatusBarToken(Lcom/miui/systemui/statusbar/StatusBarToken;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/statusbar/window/StatusBarWindowController;

    if-nez v10, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v5}, Lcom/miui/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentInjector;->getStatusBarToken()Lcom/miui/systemui/statusbar/StatusBarToken;

    move-result-object v11

    iget-object v12, v5, Lcom/miui/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentInjector;->darkIconDispatcherStore:Lcom/miui/systemui/statusbar/data/repository/MultiStatusBarDarkIconDispatcherStoreImpl;

    check-cast v12, Lcom/miui/systemui/statusbar/data/repository/PerDisplayStatusBarStore;

    invoke-virtual {v12, v11}, Lcom/miui/systemui/statusbar/data/repository/PerDisplayStatusBarStore;->forStatusBarToken(Lcom/miui/systemui/statusbar/StatusBarToken;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/statusbar/phone/SysuiDarkIconDispatcher;

    if-nez v11, :cond_6

    goto :goto_2

    :cond_6
    iget-object v5, v5, Lcom/miui/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentInjector;->homeStatusBarComponentFactory:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$HomeStatusBarComponentFactory;

    invoke-virtual {v5, v6, v8, v10, v11}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$HomeStatusBarComponentFactory;->create(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;Lcom/android/systemui/statusbar/data/repository/StatusBarConfigurationController;Lcom/android/systemui/statusbar/window/StatusBarWindowController;Lcom/android/systemui/plugins/DarkIconDispatcher;)Lcom/android/systemui/statusbar/phone/fragment/dagger/HomeStatusBarComponent;

    move-result-object v5

    :goto_3
    move-object v6, v5

    check-cast v6, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$HomeStatusBarComponentImpl;

    iput-object v6, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mHomeStatusBarComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$HomeStatusBarComponentImpl;

    if-nez v5, :cond_7

    return-void

    :cond_7
    check-cast v5, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$HomeStatusBarComponentImpl;

    invoke-virtual {v5}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$HomeStatusBarComponentImpl;->init()V

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStartableStates:Ljava/util/Map;

    check-cast v5, Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->clear()V

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mHomeStatusBarComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$HomeStatusBarComponentImpl;

    invoke-virtual {v5}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$HomeStatusBarComponentImpl;->getStartables()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/layout/StatusBarBoundsProvider;

    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStartableStates:Ljava/util/Map;

    sget-object v10, Lcom/android/systemui/statusbar/phone/fragment/dagger/HomeStatusBarComponent$Startable$State;->STARTING:Lcom/android/systemui/statusbar/phone/fragment/dagger/HomeStatusBarComponent$Startable$State;

    check-cast v8, Landroid/util/ArrayMap;

    invoke-virtual {v8, v6, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v6, Lcom/android/systemui/statusbar/layout/StatusBarBoundsProvider;->startSideContent:Landroid/view/View;

    iget-object v10, v6, Lcom/android/systemui/statusbar/layout/StatusBarBoundsProvider;->layoutListener:Lcom/android/systemui/statusbar/layout/StatusBarBoundsProvider$layoutListener$1;

    invoke-virtual {v8, v10}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v8, v6, Lcom/android/systemui/statusbar/layout/StatusBarBoundsProvider;->endSideContent:Landroid/view/View;

    invoke-virtual {v8, v10}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStartableStates:Ljava/util/Map;

    sget-object v10, Lcom/android/systemui/statusbar/phone/fragment/dagger/HomeStatusBarComponent$Startable$State;->STARTED:Lcom/android/systemui/statusbar/phone/fragment/dagger/HomeStatusBarComponent$Startable$State;

    check-cast v8, Landroid/util/ArrayMap;

    invoke-virtual {v8, v6, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_8
    move-object v5, v1

    check-cast v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iput-object v5, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mDarkIconManagerFactory:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl$SwitchingProvider$86;

    const v6, 0x7f0b0b66

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    sget-object v10, Lcom/android/systemui/statusbar/phone/StatusBarLocation;->HOME:Lcom/android/systemui/statusbar/phone/StatusBarLocation;

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mHomeStatusBarComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$HomeStatusBarComponentImpl;

    iget-object v11, v11, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$HomeStatusBarComponentImpl;->darkIconDispatcher:Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-virtual {v5, v8, v10, v11}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl$SwitchingProvider$86;->create(Landroid/widget/LinearLayout;Lcom/android/systemui/statusbar/phone/StatusBarLocation;Lcom/android/systemui/plugins/DarkIconDispatcher;)Lcom/android/systemui/statusbar/phone/ui/DarkIconManager;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mDarkIconManager:Lcom/android/systemui/statusbar/phone/ui/DarkIconManager;

    iput-boolean v4, v5, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mShouldLog:Z

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->updateBlockedIcons()V

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBarIconController:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;

    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mDarkIconManager:Lcom/android/systemui/statusbar/phone/ui/DarkIconManager;

    check-cast v5, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;

    invoke-virtual {v5, v8}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->addIconGroup(Lcom/android/systemui/statusbar/phone/ui/IconManager;)V

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v8, 0x7f0b0b6b

    invoke-virtual {v5, v8}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mEndSideContent:Landroid/view/View;

    new-instance v8, Lcom/android/systemui/statusbar/phone/fragment/MultiSourceMinAlphaController;

    invoke-direct {v8, v5}, Lcom/android/systemui/statusbar/phone/fragment/MultiSourceMinAlphaController;-><init>(Landroid/view/View;)V

    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mEndSideAlphaController:Lcom/android/systemui/statusbar/phone/fragment/MultiSourceMinAlphaController;

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v8, 0x7f0b029c

    invoke-virtual {v5, v8}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mClockView:Landroid/view/View;

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v10, 0x7f0b08b0

    invoke-virtual {v5, v10}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mPrimaryOngoingActivityChip:Landroid/view/View;

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v11, 0x7f0b08b1

    invoke-virtual {v5, v11}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mSecondaryOngoingActivityChip:Landroid/view/View;

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mDarkIconManager:Lcom/android/systemui/statusbar/phone/ui/DarkIconManager;

    move-object v12, v0

    check-cast v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;

    iget-object v13, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;

    invoke-virtual {v13, v11}, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->setDarkIconManager(Lcom/android/systemui/statusbar/phone/ui/DarkIconManager;)V

    iget-object v11, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;

    const v13, 0x7f0b0b6b

    invoke-virtual {v11, v13}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    iput-object v11, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mStatusBarContent:Landroid/view/View;

    invoke-static {}, Lcom/miui/utils/BoostHelper;->getInstance()Lcom/miui/utils/BoostHelper;

    move-result-object v11

    invoke-virtual {v11, v5}, Lcom/miui/utils/BoostHelper;->initRenderThreadId(Landroid/view/View;)V

    iget-object v11, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;

    const v13, 0x7f0b0b6f

    invoke-virtual {v11, v13}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    iput-object v11, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mStatusBarIcons:Landroid/view/View;

    iget-object v11, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;

    const v13, 0x7f0b0962

    invoke-virtual {v11, v13}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    iput-object v11, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mStatusBarPrivacyContainer:Landroid/view/View;

    iget-object v11, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;

    const v13, 0x7f0b04ba

    invoke-virtual {v11, v13}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;

    iput-object v11, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mFocusedNotifView:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;

    iget-object v11, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;

    invoke-virtual {v11, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;

    iput-object v6, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mStatusContainer:Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;

    iget-object v6, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;

    const v11, 0x7f0b0180

    invoke-virtual {v6, v11}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;

    iput-object v6, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mBatteryView:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;

    iget-object v6, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mStatusContainer:Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;

    if-eqz v6, :cond_9

    iget-object v11, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mDep:Lcom/android/systemui/statusbar/MiuiStatusBarFragmentDep;

    iget-object v11, v11, Lcom/android/systemui/statusbar/MiuiStatusBarFragmentDep;->animatorController:Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController;

    invoke-virtual {v6, v11}, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->setAnimatorController(Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController;)V

    :cond_9
    iget-object v6, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;

    const v11, 0x7f0b0d60

    invoke-virtual {v6, v11}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/phone/DividerLine;

    iget-object v11, v12, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mHomeStatusBarComponent:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$HomeStatusBarComponentImpl;

    iget-object v11, v11, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$HomeStatusBarComponentImpl;->darkIconDispatcher:Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-virtual {v6, v11}, Lcom/android/systemui/statusbar/phone/DividerLine;->setDarkIconDispatcher(Lcom/android/systemui/plugins/DarkIconDispatcher;)V

    iget-object v11, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;

    const v13, 0x7f0b0188

    invoke-virtual {v11, v13}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/statusbar/views/BatteryIndicator;

    iget-object v13, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mDep:Lcom/android/systemui/statusbar/MiuiStatusBarFragmentDep;

    iget-object v13, v13, Lcom/android/systemui/statusbar/MiuiStatusBarFragmentDep;->batteryIndicatorDep:Lcom/android/systemui/statusbar/BatteryIndicatorDep;

    invoke-virtual {v11, v13}, Lcom/android/systemui/statusbar/views/BatteryIndicator;->setDependency(Lcom/android/systemui/statusbar/BatteryIndicatorDep;)V

    iget-object v11, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;

    invoke-virtual {v11, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    instance-of v11, v10, Lcom/android/systemui/statusbar/chips/ui/view/PriOngoingActivityChip;

    if-eqz v11, :cond_a

    check-cast v10, Lcom/android/systemui/statusbar/chips/ui/view/PriOngoingActivityChip;

    goto :goto_5

    :cond_a
    move-object v10, v9

    :goto_5
    if-eqz v10, :cond_b

    invoke-virtual {v10, v12}, Lcom/android/systemui/statusbar/chips/ui/view/PriOngoingActivityChip;->setAnyExpandListener(Lcom/android/systemui/statusbar/chips/ui/view/AnyExpandListener;)V

    :cond_b
    iput-object v6, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mFocusedNotLine:Lcom/android/systemui/statusbar/phone/DividerLine;

    iget-object v6, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;

    const v10, 0x7f0b04bb

    invoke-virtual {v6, v10}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mClockSeat:Landroid/view/View;

    iget-object v6, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;

    invoke-virtual {v6, v8}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/views/MiuiClock;

    iput-object v6, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mClockView:Lcom/android/systemui/statusbar/views/MiuiClock;

    iget v6, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mSaveClockSetWidth:I

    if-eqz v6, :cond_c

    iget-object v6, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mClockSeat:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    if-eqz v6, :cond_c

    iget-object v6, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mClockSeat:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v8, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mSaveClockSetWidth:I

    iput v8, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_c
    iget-object v14, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;

    new-instance v6, Lcom/android/systemui/statusbar/phone/IslandStretchAnimation;

    iget-object v8, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mDep:Lcom/android/systemui/statusbar/MiuiStatusBarFragmentDep;

    iget-object v8, v8, Lcom/android/systemui/statusbar/MiuiStatusBarFragmentDep;->islandController:Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;

    iget-object v10, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mStatusBarDelegate:Lcom/android/systemui/statusbar/policy/StatusBarDelegateImpl;

    invoke-direct {v6, v3, v8, v10}, Lcom/android/systemui/statusbar/phone/IslandStretchAnimation;-><init>(ILcom/android/systemui/statusbar/StatusBarIslandControllerImpl;Lcom/android/systemui/statusbar/policy/StatusBarDelegateImpl;)V

    iput-object v6, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mStretchAnimation:Lcom/android/systemui/statusbar/phone/IslandStretchAnimation;

    const v6, 0x7f0b092a

    invoke-virtual {v14, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v15

    const v6, 0x7f0b0be6

    invoke-virtual {v14, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v16

    const v6, 0x7f0b095d

    invoke-virtual {v14, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const v6, 0x7f0b08f1

    invoke-virtual {v14, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v19

    iget-object v13, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mStretchAnimation:Lcom/android/systemui/statusbar/phone/IslandStretchAnimation;

    iget-object v8, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mClockView:Lcom/android/systemui/statusbar/views/MiuiClock;

    move-object/from16 v18, v8

    invoke-virtual/range {v13 .. v19}, Lcom/android/systemui/statusbar/phone/IslandStretchAnimation;->initMiuiViewsOnViewCreated(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/android/systemui/statusbar/views/MiuiClock;Landroid/view/View;)V

    iget-object v8, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;

    const v10, 0x7f0b0186

    invoke-virtual {v8, v10}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mBatteryContainer:Landroid/view/View;

    iget-object v8, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;

    const v10, 0x7f0b04bc

    invoke-virtual {v8, v10}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mFocusedNotifParent:Landroid/widget/LinearLayout;

    iget-object v8, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;

    const v10, 0x7f0b0354

    invoke-virtual {v8, v10}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mCutoutSpace:Landroid/view/View;

    iget-object v8, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mDep:Lcom/android/systemui/statusbar/MiuiStatusBarFragmentDep;

    iget-object v8, v8, Lcom/android/systemui/statusbar/MiuiStatusBarFragmentDep;->regionController:Lcom/miui/systemui/controller/RegionController;

    invoke-virtual {v8, v12}, Lcom/miui/systemui/controller/RegionController;->addCallback(Lcom/miui/systemui/controller/RegionController$Callback;)V

    iget-object v8, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mDep:Lcom/android/systemui/statusbar/MiuiStatusBarFragmentDep;

    iget-object v8, v8, Lcom/android/systemui/statusbar/MiuiStatusBarFragmentDep;->minimalismModeController:Lcom/android/systemui/statusbar/policy/MinimalismModeController;

    invoke-virtual {v8, v12}, Lcom/android/systemui/statusbar/policy/MinimalismModeController;->addListener(Lcom/android/systemui/statusbar/policy/MinimalismModeController$MinimalismModeListener;)V

    iget-object v8, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mDep:Lcom/android/systemui/statusbar/MiuiStatusBarFragmentDep;

    iget-object v8, v8, Lcom/android/systemui/statusbar/MiuiStatusBarFragmentDep;->focusedNotifPromptController:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;

    iget-object v10, v8, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mCallbacks:Ljava/util/List;

    invoke-interface {v10, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d

    iget-object v10, v8, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mCallbacks:Ljava/util/List;

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v8, v8, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mIsFocusedNotifPromptShowing:Z

    invoke-virtual {v12, v8}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->onFocusedNotifVisibilityChanged(Z)V

    :cond_d
    iget-object v8, v12, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v8, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    invoke-virtual {v8, v12}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->addCallback(Ljava/lang/Object;)V

    iget-object v8, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mFocusedNotifView:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;

    iget-object v10, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mClockView:Lcom/android/systemui/statusbar/views/MiuiClock;

    invoke-virtual {v8, v10}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->setmClockView(Landroid/view/View;)V

    iget-object v8, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mFocusedNotifView:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;

    iget-object v10, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mClockView:Lcom/android/systemui/statusbar/views/MiuiClock;

    if-eqz v10, :cond_e

    iget-object v11, v8, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->mContentText:Lcom/android/systemui/statusbar/widget/FocusedTextView;

    if-eqz v11, :cond_f

    iget-object v13, v8, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->mContentRemoteViews:Landroid/widget/FrameLayout;

    if-eqz v13, :cond_f

    invoke-virtual {v10}, Landroid/view/View;->getId()I

    move-result v13

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setAccessibilityTraversalAfter(I)V

    iget-object v8, v8, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->mContentRemoteViews:Landroid/widget/FrameLayout;

    invoke-virtual {v10}, Landroid/view/View;->getId()I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/widget/FrameLayout;->setAccessibilityTraversalAfter(I)V

    goto :goto_6

    :cond_e
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_f
    :goto_6
    iget-object v8, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mFocusedNotifView:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;

    iget-object v10, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mFocusedNotifParent:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v10}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->setmFocusedParentView(Landroid/view/View;)V

    sget-boolean v8, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v8, :cond_11

    iget-object v10, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;

    invoke-virtual {v10, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_11

    iget-object v10, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;

    invoke-virtual {v10, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/views/MiuiClock;

    iput-object v6, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mPadClockView:Lcom/android/systemui/statusbar/views/MiuiClock;

    iget-object v10, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mFocusedNotifView:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;

    if-eqz v6, :cond_10

    iget-object v11, v10, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->mContentText:Lcom/android/systemui/statusbar/widget/FocusedTextView;

    if-eqz v11, :cond_11

    iget-object v13, v10, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->mContentRemoteViews:Landroid/widget/FrameLayout;

    if-eqz v13, :cond_11

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v13

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setAccessibilityTraversalAfter(I)V

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->mContentRemoteViews:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {v10, v6}, Landroid/widget/FrameLayout;->setAccessibilityTraversalAfter(I)V

    goto :goto_7

    :cond_10
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_11
    :goto_7
    iget-object v6, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mClockView:Lcom/android/systemui/statusbar/views/MiuiClock;

    iget-object v10, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mClockLayoutChangeListener:Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$$ExternalSyntheticLambda5;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v6, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mPadClockView:Lcom/android/systemui/statusbar/views/MiuiClock;

    if-eqz v6, :cond_12

    iget-object v10, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mClockLayoutChangeListener:Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$$ExternalSyntheticLambda5;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_12
    iget-object v6, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mDep:Lcom/android/systemui/statusbar/MiuiStatusBarFragmentDep;

    iget-object v6, v6, Lcom/android/systemui/statusbar/MiuiStatusBarFragmentDep;->islandController:Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;

    iput-object v6, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mIslandController:Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->isDefaultStatusBar()Z

    move-result v6

    if-eqz v6, :cond_13

    iget-object v6, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mDep:Lcom/android/systemui/statusbar/MiuiStatusBarFragmentDep;

    iget-object v6, v6, Lcom/android/systemui/statusbar/MiuiStatusBarFragmentDep;->islandController:Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;

    iget-object v10, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mClockSpaceProvider:Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$3;

    iput-object v10, v6, Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;->clockSpaceProvider:Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$3;

    iget-object v10, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mBatterySpaceProvider:Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$3;

    iput-object v10, v6, Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;->batterySpaceProvider:Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$3;

    iget-object v10, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mClockLeftProvider:Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$3;

    iput-object v10, v6, Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;->padClockLeftProvider:Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$3;

    :cond_13
    iget-object v6, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mStatusContainer:Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;

    if-eqz v6, :cond_14

    new-instance v10, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$$ExternalSyntheticLambda16;

    invoke-direct {v10, v12}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$$ExternalSyntheticLambda16;-><init>(Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;)V

    invoke-virtual {v6, v10}, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->setAnimatable(Lcom/android/systemui/statusbar/views/IAnimatable;)V

    :cond_14
    iget-object v6, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mBatteryView:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;

    if-eqz v6, :cond_15

    new-instance v10, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$$ExternalSyntheticLambda16;

    invoke-direct {v10, v12}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$$ExternalSyntheticLambda16;-><init>(Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;)V

    invoke-virtual {v6, v10}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->setAnimatable(Lcom/android/systemui/statusbar/views/IAnimatable;)V

    :cond_15
    iget-object v6, v12, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    if-eqz v6, :cond_16

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getInject()Lcom/android/systemui/statusbar/phone/NotificationIconContainerInject;

    move-result-object v6

    iget-object v10, v12, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mInjector:Lcom/miui/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentInjector;

    invoke-virtual {v10}, Lcom/miui/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentInjector;->getStatusBarToken()Lcom/miui/systemui/statusbar/StatusBarToken;

    move-result-object v10

    iput-object v10, v6, Lcom/android/systemui/statusbar/phone/NotificationIconContainerInject;->statusBarToken:Lcom/miui/systemui/statusbar/StatusBarToken;

    :cond_16
    iget-object v6, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mDep:Lcom/android/systemui/statusbar/MiuiStatusBarFragmentDep;

    iget-object v6, v6, Lcom/android/systemui/statusbar/MiuiStatusBarFragmentDep;->islandController:Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;

    iget-object v10, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mIslandListener:Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$2;

    invoke-virtual {v6, v10}, Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;->addOnIslandStatusChangedListener(Lcom/android/systemui/statusbar/OnIslandStatusChangedListener;)V

    sget-object v6, Lcom/miui/utils/configs/MiuiConfigs;->CUSTOMIZED_REGION:Ljava/lang/String;

    invoke-static {}, Lmiui/util/MiuiMultiDisplayTypeInfo;->isFlipDevice()Z

    move-result v6

    if-nez v6, :cond_17

    sget-boolean v6, Lcom/miui/utils/configs/MiuiConfigs;->IS_FOLD:Z

    if-eqz v6, :cond_18

    :cond_17
    invoke-virtual {v12}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->isDefaultStatusBar()Z

    move-result v6

    if-eqz v6, :cond_18

    iget-object v6, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mDep:Lcom/android/systemui/statusbar/MiuiStatusBarFragmentDep;

    iget-object v6, v6, Lcom/android/systemui/statusbar/MiuiStatusBarFragmentDep;->islandController:Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;->onConfigChanged$1()V

    :cond_18
    if-nez v8, :cond_19

    iget-object v6, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mCutoutSpace:Landroid/view/View;

    new-instance v8, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$$ExternalSyntheticLambda5;

    invoke-direct {v8, v12, v4}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;I)V

    invoke-virtual {v6, v8}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_19
    iget-object v6, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mDep:Lcom/android/systemui/statusbar/MiuiStatusBarFragmentDep;

    iget-object v6, v6, Lcom/android/systemui/statusbar/MiuiStatusBarFragmentDep;->controlCenter:Lcom/miui/systemui/controlcenter/container/ControlCenterContainerController;

    iget-object v6, v6, Lcom/miui/systemui/controlcenter/container/ControlCenterContainerController;->expandStateForStatusBar:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v6, v6, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast v6, Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v6}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iput-boolean v6, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mControlPanelExpand:Z

    iget-object v6, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mDep:Lcom/android/systemui/statusbar/MiuiStatusBarFragmentDep;

    iget-object v8, v6, Lcom/android/systemui/statusbar/MiuiStatusBarFragmentDep;->controlCenter:Lcom/miui/systemui/controlcenter/container/ControlCenterContainerController;

    iget-object v8, v8, Lcom/miui/systemui/controlcenter/container/ControlCenterContainerController;->expandStateForStatusBar:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v10, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$$ExternalSyntheticLambda8;

    invoke-direct {v10, v12, v3}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;I)V

    iget-object v6, v6, Lcom/android/systemui/statusbar/MiuiStatusBarFragmentDep;->mainContext:Lkotlin/coroutines/CoroutineContext;

    invoke-static {v5, v8, v10, v6}, Lcom/android/systemui/util/kotlin/JavaAdapterKt;->collectFlow(Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;Lkotlin/coroutines/CoroutineContext;)Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;

    iget-object v6, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mFoldNotifManager:Lcom/android/systemui/statusbar/notification/history/IFoldNotifManager;

    check-cast v6, Lcom/android/systemui/statusbar/notification/history/FoldNotifManagerImpl;

    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/history/FoldNotifManagerImpl;->isShowingFoldState:Lkotlinx/coroutines/flow/StateFlowImpl;

    new-instance v8, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$$ExternalSyntheticLambda8;

    const/4 v10, 0x2

    invoke-direct {v8, v12, v10}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;I)V

    iget-object v10, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mDep:Lcom/android/systemui/statusbar/MiuiStatusBarFragmentDep;

    iget-object v10, v10, Lcom/android/systemui/statusbar/MiuiStatusBarFragmentDep;->mainContext:Lkotlin/coroutines/CoroutineContext;

    invoke-static {v5, v6, v8, v10}, Lcom/android/systemui/util/kotlin/JavaAdapterKt;->collectFlow(Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;Lkotlin/coroutines/CoroutineContext;)Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;

    sget-boolean v6, Lcom/miui/utils/configs/MiuiConfigs;->IS_PAD:Z

    if-eqz v6, :cond_1a

    iget-object v8, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mDynamicIslandController:Lcom/android/systemui/statusbar/notification/DynamicIslandController;

    iget-object v8, v8, Lcom/android/systemui/statusbar/notification/DynamicIslandController;->hasBigIslandData:Lkotlinx/coroutines/flow/StateFlowImpl;

    new-instance v10, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$$ExternalSyntheticLambda8;

    invoke-direct {v10, v12, v4}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;I)V

    iget-object v11, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mDep:Lcom/android/systemui/statusbar/MiuiStatusBarFragmentDep;

    iget-object v11, v11, Lcom/android/systemui/statusbar/MiuiStatusBarFragmentDep;->mainContext:Lkotlin/coroutines/CoroutineContext;

    invoke-static {v5, v8, v10, v11}, Lcom/android/systemui/util/kotlin/JavaAdapterKt;->collectFlow(Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;Lkotlin/coroutines/CoroutineContext;)Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;

    :cond_1a
    iget-object v5, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mDep:Lcom/android/systemui/statusbar/MiuiStatusBarFragmentDep;

    iget-object v8, v5, Lcom/android/systemui/statusbar/MiuiStatusBarFragmentDep;->notification:Lcom/miui/systemui/shade/NotificationShadeWrapper;

    iget-boolean v10, v8, Lcom/miui/systemui/shade/NotificationShadeWrapper;->expanded:Z

    iput-boolean v10, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mNotificationPanelExpand:Z

    iget-object v11, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mStretchAnimation:Lcom/android/systemui/statusbar/phone/IslandStretchAnimation;

    if-eqz v11, :cond_1b

    iput-boolean v10, v11, Lcom/android/systemui/statusbar/phone/IslandStretchAnimation;->notificationExpand:Z

    :cond_1b
    iget-object v5, v5, Lcom/android/systemui/statusbar/MiuiStatusBarFragmentDep;->islandController:Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;

    iput-boolean v10, v5, Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;->isNotificationShowing:Z

    iget-object v5, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->notificationCallback:Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$6;

    iget-object v8, v8, Lcom/miui/systemui/shade/NotificationShadeWrapper;->panelExpandController:Lcom/android/systemui/shade/NotificationPanelExpandController;

    invoke-virtual {v8, v5}, Lcom/android/systemui/shade/NotificationPanelExpandController;->addCallback(Lcom/android/systemui/plugins/miui/shade/PanelExpandController$Callback;)V

    iget-object v5, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mDep:Lcom/android/systemui/statusbar/MiuiStatusBarFragmentDep;

    iget-object v5, v5, Lcom/android/systemui/statusbar/MiuiStatusBarFragmentDep;->focusedNotifPromptController:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;

    iget-boolean v8, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mNotificationPanelExpand:Z

    iput-boolean v8, v5, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mNotificationPanelExpand:Z

    invoke-virtual {v12}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    if-eqz v5, :cond_1f

    sget-boolean v5, Lcom/miui/utils/configs/MiuiConfigs;->IS_FOLD:Z

    if-eqz v5, :cond_1c

    new-instance v5, Lcom/android/systemui/statusbar/phone/MiuiFoldStrategy;

    invoke-virtual {v12}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v10, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mCutoutSpace:Landroid/view/View;

    invoke-direct {v5, v8, v10}, Lcom/android/systemui/statusbar/phone/DeviceConfigurationStrategyBase;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-static {v8}, Lcom/miui/utils/configs/MiuiConfigs;->isFoldLargeScreenAndNotPad(Landroid/content/Context;)Z

    move-result v8

    xor-int/2addr v8, v4

    iput-boolean v8, v5, Lcom/android/systemui/statusbar/phone/MiuiFoldStrategy;->mIsNormalScreen:Z

    iput-object v5, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mStrategyBase:Lcom/android/systemui/statusbar/phone/DeviceConfigurationStrategyBase;

    goto :goto_8

    :cond_1c
    invoke-static {}, Lmiui/util/MiuiMultiDisplayTypeInfo;->isFlipDevice()Z

    move-result v5

    if-eqz v5, :cond_1d

    new-instance v5, Lcom/android/systemui/statusbar/phone/MiuiFlipStrategy;

    invoke-virtual {v12}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v10, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mCutoutSpace:Landroid/view/View;

    invoke-direct {v5, v8, v10}, Lcom/android/systemui/statusbar/phone/MiuiFlipStrategy;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v5, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mStrategyBase:Lcom/android/systemui/statusbar/phone/DeviceConfigurationStrategyBase;

    goto :goto_8

    :cond_1d
    if-eqz v6, :cond_1e

    new-instance v5, Lcom/android/systemui/statusbar/phone/MiuiPadStrategy;

    invoke-virtual {v12}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v10, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mCutoutSpace:Landroid/view/View;

    invoke-direct {v5, v8, v10}, Lcom/android/systemui/statusbar/phone/DeviceConfigurationStrategyBase;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v5, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mStrategyBase:Lcom/android/systemui/statusbar/phone/DeviceConfigurationStrategyBase;

    goto :goto_8

    :cond_1e
    new-instance v5, Lcom/android/systemui/statusbar/phone/MiuiPhoneStrategy;

    invoke-virtual {v12}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v10, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mCutoutSpace:Landroid/view/View;

    invoke-direct {v5, v8, v10}, Lcom/android/systemui/statusbar/phone/DeviceConfigurationStrategyBase;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v5, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mStrategyBase:Lcom/android/systemui/statusbar/phone/DeviceConfigurationStrategyBase;

    :goto_8
    iget-object v5, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mFocusedNotifView:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;

    iget-object v8, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mStrategyBase:Lcom/android/systemui/statusbar/phone/DeviceConfigurationStrategyBase;

    iget-object v10, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mDep:Lcom/android/systemui/statusbar/MiuiStatusBarFragmentDep;

    iget-object v10, v10, Lcom/android/systemui/statusbar/MiuiStatusBarFragmentDep;->launchController:Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchController;

    invoke-virtual {v5, v8, v10}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptView;->setParams(Lcom/android/systemui/statusbar/phone/DeviceConfigurationStrategyBase;Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchController;)V

    invoke-virtual {v12}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    if-eqz v5, :cond_1f

    invoke-virtual {v12}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    if-eqz v5, :cond_1f

    iget-object v5, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mStrategyBase:Lcom/android/systemui/statusbar/phone/DeviceConfigurationStrategyBase;

    invoke-virtual {v12}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/systemui/statusbar/phone/DeviceConfigurationStrategyBase;->getClockSeatWidth(Landroid/content/res/Configuration;)I

    move-result v5

    if-eqz v5, :cond_1f

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "update origin width :"

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v12, v5}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->updateFocusedParentParams(I)V

    :cond_1f
    iget-object v5, v12, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mEndSideContent:Landroid/view/View;

    invoke-virtual {v12, v5, v3, v3}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->animateShow(Landroid/view/View;ZZ)V

    iget-object v5, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mStatusBarPrivacyContainer:Landroid/view/View;

    invoke-virtual {v12, v5, v3, v3}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->animateShow(Landroid/view/View;ZZ)V

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->showClock(Z)V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->initOperatorName()V

    const-string v5, "CollapsedStatusBarFragment#initNotifIconArea"

    invoke-static {v5}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v5, v12, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v7, 0x7f0b088a

    invoke-virtual {v5, v7}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v12}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f0e0358

    invoke-virtual {v7, v8, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v7, 0x7f0b0879

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getInject()Lcom/android/systemui/statusbar/phone/NotificationIconContainerInject;

    move-result-object v8

    iput-boolean v4, v8, Lcom/android/systemui/statusbar/phone/NotificationIconContainerInject;->newAnimationFeature:Z

    iput-object v5, v12, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mNotificationIconAreaInner:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iput-object v5, v12, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v12, v3}, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->updateNotificationIconAreaAndOngoingActivityChip(Z)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    iget-object v5, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;

    if-nez v5, :cond_20

    goto :goto_a

    :cond_20
    invoke-virtual {v5, v7}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iget-object v7, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mNicViewBinder:Lcom/miui/systemui/statusbar/viewbinder/NotificationIconContainerMultiStatusBarViewBinder;

    iget-object v8, v12, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mInjector:Lcom/miui/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentInjector;

    invoke-virtual {v8}, Lcom/miui/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentInjector;->getStatusBarToken()Lcom/miui/systemui/statusbar/StatusBarToken;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Lcom/miui/systemui/statusbar/viewbinder/NotificationIconContainerMultiStatusBarViewBinder;->bindWhileAttached(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;Lcom/miui/systemui/statusbar/StatusBarToken;)Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;

    move-result-object v5

    iput-object v5, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mNicBindingDisposable:Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;

    iget-object v5, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;

    iget-object v7, v12, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mNotificationIconAreaInner:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v5, v7}, Lcom/android/systemui/statusbar/phone/MiuiPhoneStatusBarView;->setNotificationIconAreaInnner(Landroid/view/View;)V

    iget-object v5, v12, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mNotificationIconAreaInner:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    if-eqz v5, :cond_22

    iget-object v7, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mDep:Lcom/android/systemui/statusbar/MiuiStatusBarFragmentDep;

    if-eqz v7, :cond_22

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getInject()Lcom/android/systemui/statusbar/phone/NotificationIconContainerInject;

    move-result-object v5

    iget-object v7, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mDep:Lcom/android/systemui/statusbar/MiuiStatusBarFragmentDep;

    iget-object v7, v7, Lcom/android/systemui/statusbar/MiuiStatusBarFragmentDep;->islandController:Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;

    iget-object v8, v5, Lcom/android/systemui/statusbar/phone/NotificationIconContainerInject;->_islandMonitor:Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;

    if-eqz v8, :cond_21

    goto :goto_9

    :cond_21
    new-instance v8, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;

    iget-object v10, v5, Lcom/android/systemui/statusbar/phone/NotificationIconContainerInject;->target:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-direct {v8, v10, v7}, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;-><init>(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;)V

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;->init()V

    iput-object v8, v5, Lcom/android/systemui/statusbar/phone/NotificationIconContainerInject;->_islandMonitor:Lcom/android/systemui/statusbar/IslandMonitor$RealContainerIslandMonitor;

    :goto_9
    iget-object v7, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mDep:Lcom/android/systemui/statusbar/MiuiStatusBarFragmentDep;

    iget-object v7, v7, Lcom/android/systemui/statusbar/MiuiStatusBarFragmentDep;->animatorController:Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController;

    iput-object v7, v5, Lcom/android/systemui/statusbar/phone/NotificationIconContainerInject;->animationController:Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController;

    iget-object v7, v12, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mInjector:Lcom/miui/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentInjector;

    invoke-virtual {v7}, Lcom/miui/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentInjector;->getStatusBarToken()Lcom/miui/systemui/statusbar/StatusBarToken;

    move-result-object v7

    iput-object v7, v5, Lcom/android/systemui/statusbar/phone/NotificationIconContainerInject;->statusBarToken:Lcom/miui/systemui/statusbar/StatusBarToken;

    :cond_22
    iget-object v5, v12, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mNotificationIconAreaInner:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v12, v5, v3, v4}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->animateShow(Landroid/view/View;ZZ)V

    if-eqz v6, :cond_23

    iget-object v5, v12, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mStretchAnimation:Lcom/android/systemui/statusbar/phone/IslandStretchAnimation;

    iget-object v6, v12, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mNotificationIconAreaInner:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iput-object v6, v5, Lcom/android/systemui/statusbar/phone/IslandStretchAnimation;->notificationView:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iput-object v9, v5, Lcom/android/systemui/statusbar/phone/IslandStretchAnimation;->notificationFolme:Lmiuix/animation/IFolme;

    :cond_23
    :goto_a
    new-instance v5, Lcom/android/systemui/statusbar/phone/fragment/StatusBarSystemEventDefaultAnimator;

    invoke-virtual {v0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    new-instance v7, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$$ExternalSyntheticLambda0;

    invoke-direct {v7, v0, v3}, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;I)V

    new-instance v8, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$$ExternalSyntheticLambda0;

    invoke-direct {v8, v0, v4}, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;I)V

    invoke-direct {v5, v6, v7, v8, v3}, Lcom/android/systemui/statusbar/phone/fragment/StatusBarSystemEventDefaultAnimator;-><init>(Landroid/content/res/Resources;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Z)V

    iput-object v5, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mSystemEventAnimator:Lcom/android/systemui/statusbar/phone/fragment/StatusBarSystemEventDefaultAnimator;

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mCarrierConfigTracker:Lcom/android/systemui/util/CarrierConfigTracker;

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mCarrierConfigCallback:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$2;

    iget-object v3, v3, Lcom/android/systemui/util/CarrierConfigTracker;->mListeners:Ljava/util/Set;

    check-cast v3, Landroid/util/ArraySet;

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mCarrierConfigTracker:Lcom/android/systemui/util/CarrierConfigTracker;

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mDefaultDataListener:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$3;

    iget-object v3, v3, Lcom/android/systemui/util/CarrierConfigTracker;->mDataListeners:Ljava/util/Set;

    check-cast v3, Landroid/util/ArraySet;

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mHomeStatusBarViewModelFactory:Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl$SwitchingProvider$87;

    invoke-virtual {v3, v2}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl$SwitchingProvider$87;->create(I)Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/HomeStatusBarViewModelImpl;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mHomeStatusBarViewModel:Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/HomeStatusBarViewModelImpl;

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mHomeStatusBarViewBinder:Lcom/android/systemui/statusbar/pipeline/shared/ui/binder/HomeStatusBarViewBinderImpl;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v4

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mHomeStatusBarViewModel:Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/HomeStatusBarViewModelImpl;

    iget-object v9, v0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mStatusBarVisibilityChangeListener:Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$5;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/android/systemui/statusbar/pipeline/shared/ui/binder/HomeStatusBarViewBinderImpl;->bind(ILandroid/view/View;Lcom/android/systemui/statusbar/pipeline/shared/ui/viewmodel/HomeStatusBarViewModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment$5;)V

    return-void
.end method

.method public abstract showClock(Z)V
.end method

.method public updateBlockedIcons()V
    .registers 1

    return-void
.end method

.method public final updateNotificationIconAreaAndOngoingActivityChip(Z)V
    .registers 9

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mLastModifiedVisibility:Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;->showNotificationIcons:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;->showPrimaryOngoingActivityChip:Z

    if-eqz v1, :cond_1

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move-object v5, p0

    check-cast v5, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;

    iget-object v6, v5, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mNotificationIconAreaInner:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v5, v6, p1, v2}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->animateShow(Landroid/view/View;ZZ)V

    goto :goto_2

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->hideNotificationIconArea(Z)V

    :goto_2
    const/16 v2, 0x8

    if-eqz v4, :cond_3

    if-eqz v1, :cond_3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mPrimaryOngoingActivityChip:Landroid/view/View;

    move-object v5, p0

    check-cast v5, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;

    invoke-virtual {v5, v4, p1, v3}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->animateShow(Landroid/view/View;ZZ)V

    goto :goto_3

    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mPrimaryOngoingActivityChip:Landroid/view/View;

    move-object v5, p0

    check-cast v5, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;

    invoke-virtual {v5, v2, v4, p1, v3}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->animateHiddenState(ILandroid/view/View;ZZ)V

    :goto_3
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;->showSecondaryOngoingActivityChip:Z

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mSecondaryOngoingActivityChip:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;

    invoke-virtual {p0, v0, p1, v3}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->animateShow(Landroid/view/View;ZZ)V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mSecondaryOngoingActivityChip:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;

    invoke-virtual {p0, v2, v0, p1, v3}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->animateHiddenState(ILandroid/view/View;ZZ)V

    return-void
.end method

.method public abstract updateStatusBarVisibilities(Z)V
.end method

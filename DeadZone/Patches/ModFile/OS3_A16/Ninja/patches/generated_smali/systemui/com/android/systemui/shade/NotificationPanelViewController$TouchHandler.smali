.class public final Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/systemui/Gefingerpoken;


# instance fields
.field public mLastTouchDownTime:J

.field public final synthetic this$0:Lcom/android/systemui/shade/NotificationPanelViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/NotificationPanelViewController;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->mLastTouchDownTime:J

    return-void
.end method


# virtual methods
.method public final handleTouch$1(Landroid/view/MotionEvent;)Z
    .registers 12

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-boolean v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mInstantExpanding:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string p0, "handleTouch: touch ignored due to instant expanding"

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    invoke-virtual {v0, p1, p0}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEvent(Landroid/view/MotionEvent;Ljava/lang/String;)V

    return v2

    :cond_0
    iget-boolean v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchDisabled:Z

    const/4 v1, 0x3

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    const-string v0, "handleTouch: non-cancel action, touch disabled"

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEvent(Landroid/view/MotionEvent;Ljava/lang/String;)V

    return v2

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-boolean v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMotionAborted:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p0

    const-string v1, "handleTouch: non-down action, motion was aborted"

    invoke-virtual {v0, p1, p0, v1}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEventStatusBarState(Landroid/view/MotionEvent;ILjava/lang/String;)V

    return v2

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-boolean v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationsDragEnabled:Z

    const/4 v4, 0x1

    if-nez v3, :cond_4

    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {v0, v4}, Lcom/android/systemui/shade/NotificationPanelViewController;->onTrackingStopped$1(Z)V

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    const-string v0, "handleTouch: drag not enabled"

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEvent(Landroid/view/MotionEvent;Ljava/lang/String;)V

    return v2

    :cond_4
    iget v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTrackingPointer:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTrackingPointer:I

    move v0, v2

    :cond_5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    const/4 v6, 0x2

    if-nez v5, :cond_6

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    if-ne v5, v6, :cond_a

    :goto_0
    iget-object v5, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-boolean v7, v5, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpectingSynthesizedDown:Z

    if-eqz v7, :cond_8

    iput-boolean v2, v5, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpectingSynthesizedDown:Z

    :cond_7
    move v7, v2

    goto :goto_1

    :cond_8
    invoke-virtual {v5}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    move-result v7

    if-nez v7, :cond_9

    iget v7, v5, Lcom/android/systemui/shade/NotificationPanelViewController;->mBarState:I

    if-eqz v7, :cond_7

    :cond_9
    move v7, v4

    :goto_1
    iput-boolean v7, v5, Lcom/android/systemui/shade/NotificationPanelViewController;->mGestureWaitForTouchSlop:Z

    iget-object v5, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iput-boolean v4, v5, Lcom/android/systemui/shade/NotificationPanelViewController;->mIgnoreXTouchSlop:Z

    :cond_a
    invoke-static {p1}, Lcom/android/systemui/navigationbar/gestural/Utilities;->isTrackpadThreeFingerSwipe(Landroid/view/MotionEvent;)Z

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    if-eqz v7, :cond_21

    if-eq v7, v4, :cond_1d

    if-eq v7, v6, :cond_f

    if-eq v7, v1, :cond_1d

    const/4 v1, 0x5

    if-eq v7, v1, :cond_e

    const/4 v0, 0x6

    if-eq v7, v0, :cond_b

    goto :goto_9

    :cond_b
    if-eqz v5, :cond_c

    goto :goto_9

    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mTrackingPointer:I

    if-ne v1, v0, :cond_28

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    if-eq v1, v0, :cond_d

    move v0, v2

    goto :goto_2

    :cond_d
    move v0, v4

    :goto_2
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iget-object v5, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v5, Lcom/android/systemui/shade/NotificationPanelViewController;->mTrackingPointer:I

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iput-boolean v4, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHandlingPointerUp:Z

    const-string v5, "onTouch: pointer_up action onTrackingStarted"

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    invoke-virtual {v0, p1, v5}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEvent(Landroid/view/MotionEvent;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget v0, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedHeight:F

    invoke-static {p1, v3, v1, v4, v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$mstartExpandMotion(Lcom/android/systemui/shade/NotificationPanelViewController;FFZF)V

    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iput-boolean v2, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mHandlingPointerUp:Z

    goto :goto_9

    :cond_e
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v6, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    iget-object v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v1

    const-string v7, "handleTouch: pointer down action"

    invoke-virtual {v6, p1, v1, v7}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEventStatusBarState(Landroid/view/MotionEvent;ILjava/lang/String;)V

    if-nez v5, :cond_28

    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v1

    if-ne v1, v4, :cond_28

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iput-boolean v4, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMotionAborted:Z

    invoke-static {p0, p1, v3, v0, v4}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$mendMotionEvent(Lcom/android/systemui/shade/NotificationPanelViewController;Landroid/view/MotionEvent;FFZ)V

    return v2

    :cond_f
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iput-boolean v2, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mHasVibratedOnOpen:Z

    iget v5, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedFraction:F

    iget-object v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lcom/android/systemui/log/core/LogLevel;->VERBOSE:Lcom/android/systemui/log/core/LogLevel;

    new-instance v7, Lcom/android/systemui/shade/ShadeLogger$$ExternalSyntheticLambda0;

    const/16 v8, 0x8

    invoke-direct {v7, v8}, Lcom/android/systemui/shade/ShadeLogger$$ExternalSyntheticLambda0;-><init>(I)V

    const/4 v8, 0x0

    iget-object v1, v1, Lcom/android/systemui/shade/ShadeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v9, "systemui.shade"

    invoke-virtual {v1, v9, v6, v7, v8}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/android/systemui/log/LogMessageImpl;

    iput-boolean v2, v7, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    float-to-double v8, v5

    iput-wide v8, v7, Lcom/android/systemui/log/LogMessageImpl;->double1:D

    invoke-virtual {v1, v6}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    :cond_10
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-static {v1, p1}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$maddMovement(Lcom/android/systemui/shade/NotificationPanelViewController;Landroid/view/MotionEvent;)V

    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    move-result v1

    if-nez v1, :cond_11

    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {v1, v4}, Lcom/android/systemui/shade/NotificationPanelViewController;->maybeVibrateOnOpening(Z)V

    :cond_11
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mInitialExpandY:F

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {v6, p1}, Lcom/android/systemui/shade/NotificationPanelViewController;->getTouchSlop$2(Landroid/view/MotionEvent;)F

    move-result v6

    cmpl-float v5, v5, v6

    const/4 v6, 0x0

    if-lez v5, :cond_15

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget-object v7, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget v7, v7, Lcom/android/systemui/shade/NotificationPanelViewController;->mInitialExpandX:F

    sub-float v7, v3, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v5, v5, v7

    if-gtz v5, :cond_12

    iget-object v5, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-boolean v5, v5, Lcom/android/systemui/shade/NotificationPanelViewController;->mIgnoreXTouchSlop:Z

    if-eqz v5, :cond_15

    :cond_12
    iget-object v5, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iput-boolean v4, v5, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchSlopExceeded:Z

    iget-boolean v7, v5, Lcom/android/systemui/shade/NotificationPanelViewController;->mGestureWaitForTouchSlop:Z

    if-eqz v7, :cond_15

    invoke-virtual {v5}, Lcom/android/systemui/shade/NotificationPanelViewController;->isTracking()Z

    move-result v5

    if-nez v5, :cond_15

    iget-object v5, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-boolean v7, v5, Lcom/android/systemui/shade/NotificationPanelViewController;->mCollapsedAndHeadsUpOnDown:Z

    if-nez v7, :cond_15

    iget v7, v5, Lcom/android/systemui/shade/NotificationPanelViewController;->mInitialOffsetOnTouch:F

    cmpl-float v7, v7, v6

    if-eqz v7, :cond_13

    iget v1, v5, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedHeight:F

    invoke-static {v5, v3, v0, v2, v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$mstartExpandMotion(Lcom/android/systemui/shade/NotificationPanelViewController;FFZF)V

    move v1, v6

    :cond_13
    iget-object v5, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {v5}, Lcom/android/systemui/shade/NotificationPanelViewController;->cancelHeightAnimator()V

    iget-object v5, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v5, v5, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    const-string v7, "onTouch: move action onTrackingStarted"

    invoke-virtual {v5, p1, v7}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEvent(Landroid/view/MotionEvent;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {p1}, Lcom/android/systemui/shade/NotificationPanelViewController;->onTrackingStarted$2()V

    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object p1, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardPanelViewInjector:Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    invoke-virtual {p1}, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->getKeyguardPanelViewController()Lcom/android/keyguard/panel/KeyguardPanelViewController;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    invoke-virtual {p1}, Lcom/android/keyguard/panel/KeyguardPanelViewController;->needWallPagerBlur()Z

    move-result v7

    if-eqz v7, :cond_15

    iget-object v7, p1, Lcom/android/keyguard/panel/KeyguardPanelViewController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v7, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v5

    if-nez v5, :cond_15

    iget-object v5, p1, Lcom/android/keyguard/panel/KeyguardPanelViewController;->keyguardSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-static {}, Lcom/miui/systemui/utils/UserUtils;->getCurrentUserId()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode(I)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v5

    sget-object v7, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v5, v7, :cond_14

    sget-object v7, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v5, v7, :cond_14

    sget-object v7, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v5, v7, :cond_15

    :cond_14
    const-string v5, "KeyguardPanelViewController"

    const-string v7, "handleTouch boost"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/miui/utils/BoostHelper;->getInstance()Lcom/miui/utils/BoostHelper;

    move-result-object v5

    iget-object p1, p1, Lcom/android/keyguard/panel/KeyguardPanelViewController;->notificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    check-cast p1, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    iget-object p1, p1, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mWindowRootView:Lcom/android/systemui/scene/ui/view/WindowRootView;

    const/16 v7, 0xf

    const-wide/16 v8, 0x64

    invoke-virtual {v5, v8, v9, p1, v7}, Lcom/miui/utils/BoostHelper;->boost(JLandroid/view/View;I)V

    :cond_15
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget p1, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mInitialOffsetOnTouch:F

    add-float/2addr p1, v1

    invoke-static {v6, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget-object v5, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v6}, Ljava/lang/Math;->max(FF)F

    move-result p1

    neg-float v5, v1

    iget-object v7, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v8, v7, Lcom/android/systemui/shade/NotificationPanelViewController;->mPowerInteractor:Lcom/android/systemui/power/domain/interactor/PowerInteractor;

    iget-object v8, v8, Lcom/android/systemui/power/domain/interactor/PowerInteractor;->detailedWakefulness:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v8, v8, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast v8, Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v8}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/power/shared/model/WakefulnessModel;

    invoke-virtual {v8}, Lcom/android/systemui/power/shared/model/WakefulnessModel;->isAwake()Z

    move-result v9

    if-eqz v9, :cond_17

    sget-object v9, Lcom/android/systemui/power/shared/model/WakeSleepReason;->TAP:Lcom/android/systemui/power/shared/model/WakeSleepReason;

    iget-object v8, v8, Lcom/android/systemui/power/shared/model/WakefulnessModel;->lastWakeReason:Lcom/android/systemui/power/shared/model/WakeSleepReason;

    if-eq v8, v9, :cond_16

    sget-object v9, Lcom/android/systemui/power/shared/model/WakeSleepReason;->GESTURE:Lcom/android/systemui/power/shared/model/WakeSleepReason;

    if-ne v8, v9, :cond_17

    :cond_16
    const/high16 v8, 0x3fc00000

    goto :goto_3

    :cond_17
    const/high16 v8, 0x3f800000

    :goto_3
    iget-object v7, v7, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    iget v7, v7, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mFalsingThreshold:I

    int-to-float v7, v7

    mul-float/2addr v7, v8

    float-to-int v7, v7

    int-to-float v7, v7

    cmpl-float v5, v5, v7

    if-ltz v5, :cond_18

    iget-object v5, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iput-boolean v4, v5, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchAboveFalsingThreshold:Z

    invoke-virtual {v5, v3, v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isDirectionUpwards$1(FF)Z

    move-result v0

    iput-boolean v0, v5, Lcom/android/systemui/shade/NotificationPanelViewController;->mUpwardsWhenThresholdReached:Z

    :cond_18
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-boolean v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mGestureWaitForTouchSlop:Z

    if-eqz v3, :cond_19

    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_28

    :cond_19
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-boolean v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mBlockingExpansionForCurrentTouch:Z

    if-nez v3, :cond_28

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    iget-boolean v3, v0, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mConflictingExpansionGesture:Z

    if-eqz v3, :cond_1a

    invoke-virtual {v0}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->getExpanded()Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_9

    :cond_1a
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    cmpg-float v1, v1, v6

    if-gtz v1, :cond_1b

    move v1, v4

    goto :goto_4

    :cond_1b
    move v1, v2

    :goto_4
    if-nez v1, :cond_1c

    iget-boolean v5, v3, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mIsSwipingUp:Z

    if-eqz v5, :cond_1c

    iput-boolean v4, v3, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mIsFlingRequiredAfterLockScreenSwipeUp:Z

    :cond_1c
    iput-boolean v1, v3, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mIsSwipingUp:Z

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotifInjector:Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;

    invoke-virtual {v0, p1}, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->setExpandedHeightInternal$1(F)V

    goto :goto_9

    :cond_1d
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    const-string v5, "onTouch: up/cancel action"

    invoke-virtual {v1, p1, v5}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEvent(Landroid/view/MotionEvent;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-static {v1, p1}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$maddMovement(Lcom/android/systemui/shade/NotificationPanelViewController;Landroid/view/MotionEvent;)V

    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-static {v1, p1, v3, v0, v2}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$mendMotionEvent(Lcom/android/systemui/shade/NotificationPanelViewController;Landroid/view/MotionEvent;FFZ)V

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_28

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v4, :cond_1f

    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object p1, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    iget-object p1, p1, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mInteractionJankMonitorLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/jank/InteractionJankMonitor;

    if-nez p1, :cond_1e

    goto :goto_9

    :cond_1e
    invoke-virtual {p1, v2}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    goto :goto_9

    :cond_1f
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object p1, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    iget-object p1, p1, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mInteractionJankMonitorLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/jank/InteractionJankMonitor;

    if-nez p1, :cond_20

    goto :goto_9

    :cond_20
    invoke-virtual {p1, v2}, Lcom/android/internal/jank/InteractionJankMonitor;->cancel(I)Z

    goto :goto_9

    :cond_21
    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    const-string v5, "onTouch: down action"

    invoke-virtual {v1, p1, v5}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEvent(Landroid/view/MotionEvent;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget v5, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedHeight:F

    invoke-static {v1, v3, v0, v2, v5}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$mstartExpandMotion(Lcom/android/systemui/shade/NotificationPanelViewController;FFZF)V

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelClosedOnDown:Z

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    iget-boolean v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelClosedOnDown:Z

    iget v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedFraction:F

    const-string v5, "handle down touch"

    invoke-virtual {v1, v0, v5, v3}, Lcom/android/systemui/shade/ShadeLogger;->logPanelClosedOnDown(FLjava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iput-boolean v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHasLayoutedSinceDown:Z

    iput-boolean v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMotionAborted:Z

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    check-cast v1, Lcom/android/systemui/util/time/SystemClockImpl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mDownTime:J

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    const-wide/16 v5, -0x1

    iput-wide v5, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarLongPressDowntime:J

    iput-boolean v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchAboveFalsingThreshold:Z

    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    move-result v1

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpManager:Lcom/android/systemui/statusbar/notification/headsup/HeadsUpManager;

    check-cast v1, Lcom/android/systemui/statusbar/notification/headsup/HeadsUpManagerImpl;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/notification/headsup/HeadsUpManagerImpl;->mHasPinnedNotification:Z

    if-eqz v1, :cond_22

    move v1, v4

    goto :goto_5

    :cond_22
    move v1, v2

    :goto_5
    iput-boolean v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mCollapsedAndHeadsUpOnDown:Z

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-static {v0, p1}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$maddMovement(Lcom/android/systemui/shade/NotificationPanelViewController;Landroid/view/MotionEvent;)V

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_23

    iget-boolean v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsSpringBackAnimation:Z

    if-nez v1, :cond_23

    move v1, v4

    goto :goto_6

    :cond_23
    move v1, v2

    :goto_6
    iget-boolean v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mGestureWaitForTouchSlop:Z

    if-eqz v3, :cond_24

    if-eqz v1, :cond_27

    :cond_24
    if-nez v1, :cond_26

    iget-boolean v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchSlopExceededBeforeDown:Z

    if-eqz v1, :cond_25

    goto :goto_7

    :cond_25
    move v1, v2

    goto :goto_8

    :cond_26
    :goto_7
    move v1, v4

    :goto_8
    iput-boolean v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchSlopExceeded:Z

    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->cancelHeightAnimator()V

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    const-string v1, "onTouch: down action onTrackingStarted"

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEvent(Landroid/view/MotionEvent;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->onTrackingStarted$2()V

    :cond_27
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpManager:Lcom/android/systemui/statusbar/notification/headsup/HeadsUpManager;

    check-cast v1, Lcom/android/systemui/statusbar/notification/headsup/HeadsUpManagerImpl;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/notification/headsup/HeadsUpManagerImpl;->mHasPinnedNotification:Z

    if-nez v1, :cond_28

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBouncerShowing:Z

    if-nez v1, :cond_28

    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->updateExpansionAndVisibility()V

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v5, v5

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    div-float/2addr v6, v5

    const/high16 v5, 0x42c80000

    mul-float/2addr v6, v5

    float-to-int v6, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    div-float/2addr p1, v3

    mul-float/2addr p1, v5

    float-to-int p1, p1

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance v3, Landroid/metrics/LogMaker;

    const/16 v5, 0x530

    invoke-direct {v3, v5}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x52e

    invoke-virtual {v3, v6, v5}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v5, 0x52f

    invoke-virtual {v3, v5, p1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0x531

    invoke-virtual {p1, v3, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    sget-object p1, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;->LOCKSCREEN_UNLOCKED_NOTIFICATION_PANEL_EXPAND:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;

    new-instance v0, Lcom/android/internal/logging/UiEventLoggerImpl;

    invoke-direct {v0}, Lcom/android/internal/logging/UiEventLoggerImpl;-><init>()V

    invoke-virtual {v0, p1}, Lcom/android/internal/logging/UiEventLoggerImpl;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    :cond_28
    :goto_9
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-boolean p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mGestureWaitForTouchSlop:Z

    if-eqz p1, :cond_2a

    invoke-virtual {p0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isTracking()Z

    move-result p0

    if-eqz p0, :cond_29

    goto :goto_a

    :cond_29
    return v2

    :cond_2a
    :goto_a
    return v4
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v2, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchHandlerInjector:Lcom/android/systemui/shade/PanelViewTouchHandlerInjector;

    iget-object v2, v2, Lcom/android/systemui/shade/PanelViewTouchHandlerInjector;->notifTouchHandler:Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    iput-boolean v4, v2, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->controlCenterExpanding:Z

    :cond_0
    iget-object v3, v2, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->commandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/CommandQueue;->panelsEnabled()Z

    move-result v3

    iget-object v5, v2, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->shadeLog:Lcom/android/systemui/shade/ShadeLogger;

    const/4 v6, 0x1

    const-string v7, "NPVCInjector"

    const/4 v9, 0x2

    if-nez v3, :cond_1

    iget-boolean v3, v2, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->screenPinningActive:Z

    if-eqz v3, :cond_1

    const-string v2, "NPVC not intercepting touch, app locking"

    invoke-virtual {v5, v1, v2}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEvent(Landroid/view/MotionEvent;Ljava/lang/String;)V

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    iget-object v3, v2, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->controlCenterContainerController:Lcom/miui/systemui/controlcenter/container/ControlCenterContainerController;

    iget-object v3, v3, Lcom/miui/systemui/controlcenter/container/ControlCenterContainerController;->expandState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v3, v3, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast v3, Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v3

    sget-object v10, Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterContent$ExpandState;->EXPANDING:Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterContent$ExpandState;

    if-ne v3, v10, :cond_2

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v9, :cond_2

    iput-boolean v6, v2, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->controlCenterExpanding:Z

    const-string v2, "NPVC intercept, control center expanding"

    invoke-virtual {v5, v1, v2}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEvent(Landroid/view/MotionEvent;Ljava/lang/String;)V

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->isOnKeyguard$2()Z

    move-result v3

    if-nez v3, :cond_3

    iget-boolean v3, v2, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->isDownOnKeyguard:Z

    if-nez v3, :cond_3

    iget-boolean v3, v2, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->handlingExternalTouch:Z

    if-eqz v3, :cond_3

    iget-boolean v2, v2, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->currentTouchExternal:Z

    if-nez v2, :cond_3

    const-string v2, "force intercept all internal touch when handling external touch."

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_3
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v2, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardPanelViewInjector:Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    iget-object v2, v2, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->keyguardMoveHelper:Lcom/android/keyguard/panel/KeyguardMoveHelper;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/android/keyguard/panel/KeyguardMoveHelper;->isInCenterScreen()Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_6
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v2, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    const-string v3, "NPVC onInterceptTouchEvent"

    invoke-virtual {v2, v1, v3}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEvent(Landroid/view/MotionEvent;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v2, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    iget-object v2, v2, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v2, :cond_7

    invoke-interface {v2}, Lcom/android/systemui/plugins/qs/QS;->disallowPanelTouches()Z

    move-result v2

    goto :goto_1

    :cond_7
    move v2, v4

    :goto_1
    if-eqz v2, :cond_8

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    const-string v2, "NPVC not intercepting touch, panel touches disallowed"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEvent(Landroid/view/MotionEvent;Ljava/lang/String;)V

    return v4

    :cond_8
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-static {v2, v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$minitDownStates(Lcom/android/systemui/shade/NotificationPanelViewController;Landroid/view/MotionEvent;)V

    iget-object v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v3, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBouncerShowing:Z

    if-eqz v3, :cond_9

    const-string v0, "NotificationPanelViewController MotionEvent intercepted: bouncer is showing"

    iget-object v1, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    invoke-virtual {v1, v0}, Lcom/android/systemui/shade/ShadeLogger;->v(Ljava/lang/String;)V

    return v6

    :cond_9
    iget-object v2, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/CommandQueue;->panelsEnabled()Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v3, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mLongPressedView:Landroid/view/View;

    if-eqz v3, :cond_a

    move v3, v6

    goto :goto_2

    :cond_a
    move v3, v4

    :goto_2
    if-nez v3, :cond_c

    iget-object v2, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/notification/headsup/HeadsUpTouchHelper;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/notification/headsup/HeadsUpTouchHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const-string v2, "panel_open"

    invoke-virtual {v1, v2, v6}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const-string v2, "panel_open_peek"

    invoke-virtual {v1, v2, v6}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    const-string v2, "NotificationPanelViewController MotionEvent intercepted: HeadsUpTouchHelper"

    invoke-virtual {v1, v2}, Lcom/android/systemui/shade/ShadeLogger;->v(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/notification/headsup/HeadsUpTouchHelper;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/headsup/HeadsUpTouchHelper;->mInjector:Lcom/android/systemui/statusbar/notification/HeadsUpTouchHelperInjectorImpl;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/notification/HeadsUpTouchHelperInjectorImpl;->appMiniWindowIntercept:Z

    if-nez v1, :cond_b

    iput-boolean v6, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpIntercept:Z

    :cond_b
    return v6

    :cond_c
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v3, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    iget v5, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mDownX:F

    iget v2, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mDownY:F

    const/4 v10, 0x0

    invoke-virtual {v3, v5, v2, v10}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->shouldQuickSettingsIntercept(FFF)Z

    move-result v2

    if-nez v2, :cond_d

    iget-object v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v2, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    const-string v1, "NotificationPanelViewController MotionEvent intercepted: PulseExpansionHandler"

    invoke-virtual {v0, v1}, Lcom/android/systemui/shade/ShadeLogger;->v(Ljava/lang/String;)V

    return v6

    :cond_d
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v2, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchHandlerInjector:Lcom/android/systemui/shade/PanelViewTouchHandlerInjector;

    iget-object v3, v2, Lcom/android/systemui/shade/PanelViewTouchHandlerInjector;->notifTouchHandler:Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    if-nez v5, :cond_11

    invoke-virtual {v3}, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->getPanelViewController()Lcom/android/systemui/shade/NotificationPanelViewController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    move-result v5

    invoke-virtual {v3}, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->getPanelViewController()Lcom/android/systemui/shade/NotificationPanelViewController;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/systemui/shade/NotificationPanelViewController;->isShadeFullyExpanded()Z

    move-result v10

    iget-boolean v11, v3, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->hidePanelPending:Z

    const-string v12, "onMiuiIntercept fullCollapse="

    const-string v13, " fullExp="

    const-string v14, " hidePanelPending="

    invoke-static {v12, v13, v14, v5, v10}, Lcom/android/keyguard/clock/animation/eastern/EasterArtACClockBaseAnimation$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->getPanelViewController()Lcom/android/systemui/shade/NotificationPanelViewController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    move-result v5

    if-nez v5, :cond_f

    iget-boolean v5, v3, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->hidePanelPending:Z

    if-eqz v5, :cond_e

    goto :goto_3

    :cond_e
    move v5, v4

    goto :goto_4

    :cond_f
    :goto_3
    move v5, v6

    :goto_4
    iput-boolean v5, v3, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->isFullyCollapsedOnDown:Z

    invoke-virtual {v3}, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->getPanelViewController()Lcom/android/systemui/shade/NotificationPanelViewController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/shade/NotificationPanelViewController;->isShadeFullyExpanded()Z

    move-result v5

    if-eqz v5, :cond_10

    iget-boolean v5, v3, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->hidePanelPending:Z

    if-nez v5, :cond_10

    move v5, v6

    goto :goto_5

    :cond_10
    move v5, v4

    :goto_5
    iput-boolean v5, v3, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->isFullyExpandedOnDown:Z

    invoke-virtual {v3}, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->isKeyguardAway()Z

    move-result v5

    iput-boolean v5, v3, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->isKeyguardAwayWhenDown:Z

    iget-boolean v5, v3, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->hidePanelPending:Z

    iput-boolean v5, v3, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->hidePanelPendingWhenIntercept:Z

    invoke-virtual {v3, v4}, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->setHidePanelPending(Z)V

    iput-boolean v4, v3, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->allowParentInterceptSwitchEvent:Z

    invoke-virtual {v3}, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->cancelFlingSpring()V

    :cond_11
    invoke-virtual {v3}, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->isOnKeyguard$2()Z

    move-result v5

    iget-object v10, v2, Lcom/android/systemui/shade/PanelViewTouchHandlerInjector;->shadeLog:Lcom/android/systemui/shade/ShadeLogger;

    const/4 v11, 0x6

    const/4 v12, 0x3

    if-nez v5, :cond_1c

    iget-object v5, v3, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->modalController:Lcom/android/systemui/statusbar/notification/modal/IModalController;

    check-cast v5, Lcom/android/systemui/statusbar/notification/modal/ModalControllerImpl;

    invoke-virtual {v5, v1}, Lcom/android/systemui/statusbar/notification/modal/ModalControllerImpl;->maybeDispatchMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    iget-object v13, v3, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->shadeLog:Lcom/android/systemui/shade/ShadeLogger;

    if-eqz v5, :cond_12

    const-string v0, "MiuiNotificationPanelViewController MotionEvent onMiuiIntercept: ModalController"

    invoke-virtual {v13, v0}, Lcom/android/systemui/shade/ShadeLogger;->v(Ljava/lang/String;)V

    goto :goto_9

    :cond_12
    iget-object v5, v3, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->nsslController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mNsslControllerInjector:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutControllerInjectorImpl;

    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutControllerInjectorImpl;->notifSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationSwipeHelper;

    if-nez v5, :cond_13

    const/4 v5, 0x0

    :cond_13
    iget-boolean v5, v5, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    iget v14, v3, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->trackingPointer:I

    invoke-virtual {v1, v14}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v14

    if-gez v14, :cond_14

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v14

    iput v14, v3, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->trackingPointer:I

    move v14, v4

    :cond_14
    invoke-virtual {v1, v14}, Landroid/view/MotionEvent;->getX(I)F

    move-result v15

    invoke-virtual {v1, v14}, Landroid/view/MotionEvent;->getY(I)F

    move-result v14

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    if-eqz v8, :cond_1b

    if-eq v8, v6, :cond_1a

    if-eq v8, v9, :cond_16

    if-eq v8, v12, :cond_1a

    if-eq v8, v11, :cond_15

    goto :goto_8

    :cond_15
    invoke-virtual {v3, v1}, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->handlePointerUp(Landroid/view/MotionEvent;)V

    goto :goto_8

    :cond_16
    iget v8, v3, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->initialTouchX:F

    sub-float/2addr v15, v8

    iget v8, v3, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->initialTouchY:F

    sub-float v8, v14, v8

    invoke-virtual {v3, v8, v15, v1}, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->handleStretchState(FFLandroid/view/MotionEvent;)Z

    move-result v11

    invoke-virtual {v3, v11}, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->setPanelStretching(Z)V

    iget v11, v3, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->initialTouchY:F

    invoke-virtual {v3, v8, v15, v11}, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->handleCollapseState(FFF)Z

    move-result v11

    iput-boolean v11, v3, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->panelCollapsing:Z

    iget-boolean v11, v3, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->nssCoveringQs:Z

    if-nez v11, :cond_17

    invoke-virtual {v3, v8, v15}, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->handleSlideState(FF)Z

    move-result v8

    iput-boolean v8, v3, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->nssCoveringQs:Z

    :cond_17
    iget-object v8, v3, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->ambientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget-boolean v8, v8, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->panelStretching:Z

    if-nez v8, :cond_19

    iget-boolean v11, v3, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->panelCollapsing:Z

    if-nez v11, :cond_19

    iget-boolean v11, v3, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->nssCoveringQs:Z

    if-eqz v11, :cond_18

    goto :goto_6

    :cond_18
    move v11, v4

    goto :goto_7

    :cond_19
    :goto_6
    move v11, v6

    :goto_7
    iput-boolean v11, v3, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->panelIntercepting:Z

    iget-boolean v11, v3, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->panelCollapsing:Z

    const-string v15, "MNPVC intercept Stretching="

    const-string v12, " collapsing="

    invoke-static {v15, v12, v7, v8, v11}, Lcom/android/keyguard/MiuiTinyKeyguardCameraView$MiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_8

    :cond_1a
    iput-boolean v4, v3, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->panelCollapsing:Z

    invoke-virtual {v3, v4}, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->setPanelStretching(Z)V

    iput-boolean v4, v3, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->panelIntercepting:Z

    goto :goto_8

    :cond_1b
    iput v15, v3, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->initialTouchX:F

    iput v14, v3, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->initialTouchY:F

    iput v14, v3, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->lastTouchY:F

    iput-boolean v4, v3, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->panelOpening:Z

    invoke-virtual {v3, v4}, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->setPanelStretching(Z)V

    iput-boolean v4, v3, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->panelCollapsing:Z

    iput-boolean v4, v3, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->panelIntercepting:Z

    iput-boolean v4, v3, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->allowParentInterceptSwitchEvent:Z

    :goto_8
    iput v14, v3, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->lastTouchY:F

    iget-boolean v3, v3, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->panelIntercepting:Z

    if-eqz v3, :cond_1c

    if-nez v5, :cond_1c

    const-string v0, "MiuiNotificationPanelViewController MotionEvent onMiuiIntercept: onPanelIntercept"

    invoke-virtual {v13, v0}, Lcom/android/systemui/shade/ShadeLogger;->v(Ljava/lang/String;)V

    :goto_9
    const-string v0, "NotificationPanelViewController MotionEvent intercepted: PanelViewTouchHandlerInjector Notification miui intercept"

    invoke-virtual {v10, v0}, Lcom/android/systemui/shade/ShadeLogger;->v(Ljava/lang/String;)V

    return v6

    :cond_1c
    iget-object v2, v2, Lcom/android/systemui/shade/PanelViewTouchHandlerInjector;->keyguardPanelViewTouchHandlerInjector:Lcom/android/keyguard/injector/KeyguardPanelViewTouchHandlerInjector;

    iget v3, v2, Lcom/android/keyguard/injector/KeyguardPanelViewTouchHandlerInjector;->barState:I

    if-ne v3, v6, :cond_1d

    move v3, v6

    goto :goto_a

    :cond_1d
    move v3, v4

    :goto_a
    if-eqz v3, :cond_2a

    iget-object v3, v2, Lcom/android/keyguard/injector/KeyguardPanelViewTouchHandlerInjector;->qsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    invoke-virtual {v3}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->getExpanded()Z

    move-result v3

    if-nez v3, :cond_2a

    iget-object v2, v2, Lcom/android/keyguard/injector/KeyguardPanelViewTouchHandlerInjector;->keyguardPanelViewInjector:Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    invoke-virtual {v2}, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->isShowEditLoading$1()Z

    move-result v3

    if-eqz v3, :cond_1e

    goto :goto_d

    :cond_1e
    iget-object v3, v2, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->keyguardBottomAreaInjector$delegate:Lkotlin/Lazy;

    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;

    iget-object v5, v3, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->keyguardEditor:Lcom/miui/interfaces/keyguard/IKeyguardEditor;

    check-cast v5, Lcom/android/keyguard/editor/KeyguardEditorHelper;

    invoke-virtual {v5}, Lcom/android/keyguard/editor/KeyguardEditorHelper;->isInEnterAndExitEditorMode()Z

    move-result v5

    if-eqz v5, :cond_1f

    goto :goto_d

    :cond_1f
    iget-object v5, v3, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mKeyguardBottomAreaView:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    if-eqz v5, :cond_25

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    if-nez v5, :cond_23

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, v3, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mTouchDownX:F

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, v3, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mTouchDownY:F

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget-object v7, v3, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mLeftAffordanceViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getTop()I

    move-result v7

    iget-object v8, v3, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mRightAffordanceViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getTop()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    if-gtz v7, :cond_21

    iget-object v7, v3, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mIndicationTextBottom:Landroid/widget/TextView;

    if-eqz v7, :cond_20

    invoke-virtual {v7}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    goto :goto_b

    :cond_20
    const/4 v7, 0x0

    :goto_b
    check-cast v7, Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    :cond_21
    int-to-float v7, v7

    cmpl-float v5, v5, v7

    if-ltz v5, :cond_22

    iget-object v5, v3, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mKeyguardBottomAreaView:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v5

    if-nez v5, :cond_22

    iget-object v5, v3, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mKeyguardBottomAreaView:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v5

    const/high16 v7, 0x3f800000

    cmpg-float v5, v5, v7

    if-nez v5, :cond_22

    move v5, v6

    goto :goto_c

    :cond_22
    move v5, v4

    :goto_c
    iput-boolean v5, v3, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mTouchAtKeyguardBottomArea:Z

    :cond_23
    iget-boolean v5, v3, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mTouchAtKeyguardBottomArea:Z

    if-eqz v5, :cond_25

    iget-object v5, v3, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v5

    iget-boolean v7, v3, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mTouchAtKeyguardBottomArea:Z

    if-eqz v7, :cond_25

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iget v8, v3, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mTouchDownX:F

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    int-to-float v5, v5

    cmpl-float v7, v7, v5

    if-gez v7, :cond_24

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iget v3, v3, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mTouchDownY:F

    sub-float/2addr v7, v3

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_25

    :cond_24
    :goto_d
    const-string v0, "NotificationPanelViewController MotionEvent intercepted: PanelViewTouchHandlerInjector Keyguard miui intercept"

    invoke-virtual {v10, v0}, Lcom/android/systemui/shade/ShadeLogger;->v(Ljava/lang/String;)V

    return v6

    :cond_25
    iget-object v3, v2, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->keyguardMoveHelper:Lcom/android/keyguard/panel/KeyguardMoveHelper;

    if-eqz v3, :cond_29

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    if-nez v5, :cond_29

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iput v7, v3, Lcom/android/keyguard/panel/KeyguardMoveHelper;->mInitialTouchX:F

    iput v5, v3, Lcom/android/keyguard/panel/KeyguardMoveHelper;->mInitialTouchY:F

    iget-object v5, v3, Lcom/android/keyguard/panel/KeyguardMoveHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v5, :cond_26

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->recycle()V

    :cond_26
    invoke-static {v4}, Landroid/view/VelocityTracker;->obtain(I)Landroid/view/VelocityTracker;

    move-result-object v5

    iput-object v5, v3, Lcom/android/keyguard/panel/KeyguardMoveHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v5, :cond_27

    invoke-virtual {v5, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_27
    iput-boolean v4, v3, Lcom/android/keyguard/panel/KeyguardMoveHelper;->mMotionCancelled:Z

    iget-object v5, v3, Lcom/android/keyguard/panel/KeyguardMoveHelper;->mMiuiShortcutController:Lcom/miui/interfaces/keyguard/IMiuiShortcutController;

    check-cast v5, Lcom/android/keyguard/shortcut/MiuiShortcutController;

    iget-object v5, v5, Lcom/android/keyguard/shortcut/MiuiShortcutController;->miuiShortcutPlugin:Lcom/android/systemui/plugins/miui/keyguard/MiuiShortcutPlugin;

    if-eqz v5, :cond_28

    invoke-interface {v5, v1}, Lcom/android/systemui/plugins/miui/keyguard/MiuiShortcutPlugin;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    goto :goto_e

    :cond_28
    move v5, v4

    :goto_e
    iput-boolean v5, v3, Lcom/android/keyguard/panel/KeyguardMoveHelper;->mIsTouchShortcutIcon:Z

    :cond_29
    iget-object v2, v2, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->safemodeKeyguardEditor:Lcom/android/keyguard/injector/SafemodeKeyguardEditorInjector;

    invoke-virtual {v2}, Lcom/android/keyguard/injector/SafemodeKeyguardEditorInjector;->getEditor()Lcom/miui/interfaces/keyguard/IKeyguardEditor;

    move-result-object v2

    if-eqz v2, :cond_2a

    check-cast v2, Lcom/android/keyguard/editor/KeyguardEditorHelper;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-nez v3, :cond_2a

    const-class v3, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;

    invoke-static {v3}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;

    invoke-virtual {v3}, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->isCustomLockscreenButtonShowing()Z

    move-result v3

    iput-boolean v3, v2, Lcom/android/keyguard/editor/KeyguardEditorHelper;->mNeedHideCustomButtonWhenCancel:Z

    :cond_2a
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v2, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchHandlerInjector:Lcom/android/systemui/shade/PanelViewTouchHandlerInjector;

    iget-object v3, v2, Lcom/android/systemui/shade/PanelViewTouchHandlerInjector;->notifTouchHandler:Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;

    iget-object v5, v3, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->notificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getScrollRange()I

    move-result v5

    if-lez v5, :cond_2c

    invoke-virtual {v3}, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->getPanelViewController()Lcom/android/systemui/shade/NotificationPanelViewController;

    move-result-object v5

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {v5, v7, v8}, Lcom/android/systemui/shade/NotificationPanelViewController;->isInContentBounds$2(FF)Z

    move-result v5

    if-nez v5, :cond_2c

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget-object v3, v3, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->dismissViewController:Lcom/android/systemui/shade/NotificationDismissViewController;

    iget-object v7, v3, Lcom/android/systemui/shade/NotificationDismissViewController;->dismissView:Lcom/miui/systemui/widget/CircleAndTickAnimView;

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_2b

    iget-object v3, v3, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v6, :cond_2b

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v3

    goto :goto_f

    :cond_2b
    move v3, v4

    :goto_f
    int-to-float v3, v3

    cmpg-float v3, v5, v3

    if-gez v3, :cond_2c

    move v3, v6

    goto :goto_10

    :cond_2c
    move v3, v4

    :goto_10
    iget-object v2, v2, Lcom/android/systemui/shade/PanelViewTouchHandlerInjector;->keyguardPanelViewTouchHandlerInjector:Lcom/android/keyguard/injector/KeyguardPanelViewTouchHandlerInjector;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    if-ne v5, v9, :cond_2d

    iget-object v5, v2, Lcom/android/keyguard/injector/KeyguardPanelViewTouchHandlerInjector;->keyguardPanelViewInjector:Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    invoke-virtual {v5}, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->getKeyguardPanelViewController()Lcom/android/keyguard/panel/KeyguardPanelViewController;

    move-result-object v5

    iget-boolean v5, v5, Lcom/android/keyguard/panel/KeyguardPanelViewController;->isDefaultTheme:Z

    if-nez v5, :cond_2d

    iget-object v2, v2, Lcom/android/keyguard/injector/KeyguardPanelViewTouchHandlerInjector;->qsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    invoke-virtual {v2}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->getExpanded()Z

    move-result v2

    if-nez v2, :cond_2d

    move v2, v6

    goto :goto_11

    :cond_2d
    move v2, v4

    :goto_11
    if-nez v3, :cond_2e

    if-eqz v2, :cond_2f

    :cond_2e
    move/from16 v17, v4

    goto :goto_21

    :cond_2f
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v3, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotifInjector:Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;

    iget-object v3, v3, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->foldManager:Lcom/android/systemui/statusbar/notification/history/IFoldNotifManager;

    check-cast v3, Lcom/android/systemui/statusbar/notification/history/FoldNotifManagerImpl;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/notification/history/FoldNotifManagerImpl;->isShowingFold:Z

    const-string v5, "systemui.shade"

    if-nez v3, :cond_3c

    invoke-virtual {v2}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    move-result v2

    if-nez v2, :cond_3c

    iget-object v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v2, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    iget v3, v2, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mTrackingPointer:I

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    if-gez v3, :cond_30

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, v2, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mTrackingPointer:I

    move v3, v4

    :cond_30
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    iget-object v10, v2, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object v11, v2, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    if-eqz v8, :cond_39

    if-eq v8, v6, :cond_33

    if-eq v8, v9, :cond_34

    const/4 v12, 0x3

    if-eq v8, v12, :cond_33

    const/4 v3, 0x6

    if-eq v8, v3, :cond_31

    goto :goto_17

    :cond_31
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iget v7, v2, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mTrackingPointer:I

    if-ne v7, v3, :cond_3c

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    if-eq v7, v3, :cond_32

    move v3, v4

    goto :goto_12

    :cond_32
    move v3, v6

    :goto_12
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, v2, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mTrackingPointer:I

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    iput v7, v2, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mInitialTouchX:F

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iput v3, v2, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mInitialTouchY:F

    goto :goto_17

    :cond_33
    move/from16 v16, v6

    goto :goto_15

    :cond_34
    iget v8, v2, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mInitialTouchY:F

    sub-float v8, v3, v8

    invoke-virtual {v2, v1}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->trackMovement$1(Landroid/view/MotionEvent;)V

    invoke-virtual {v2}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->isTracking()Z

    move-result v12

    if-eqz v12, :cond_35

    iget v3, v2, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mInitialHeightOnTouch:F

    add-float/2addr v8, v3

    invoke-virtual {v2, v8}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->setExpansionHeight(F)V

    invoke-virtual {v2, v1}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->trackMovement$1(Landroid/view/MotionEvent;)V

    :goto_13
    move/from16 v16, v6

    goto :goto_16

    :cond_35
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getClassification()I

    move-result v12

    if-ne v12, v6, :cond_36

    iget v12, v2, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mTouchSlop:I

    int-to-float v12, v12

    iget v13, v2, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mSlopMultiplier:F

    mul-float/2addr v12, v13

    goto :goto_14

    :cond_36
    iget v12, v2, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mTouchSlop:I

    int-to-float v12, v12

    :goto_14
    cmpl-float v13, v8, v12

    iget-object v14, v2, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mPanelViewControllerLazy:Ldagger/Lazy;

    if-gtz v13, :cond_37

    neg-float v13, v12

    cmpg-float v13, v8, v13

    if-gez v13, :cond_38

    invoke-virtual {v2}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->getExpanded()Z

    move-result v13

    if-eqz v13, :cond_38

    :cond_37
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v13

    iget v15, v2, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mInitialTouchX:F

    sub-float v15, v7, v15

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    cmpl-float v13, v13, v15

    if-lez v13, :cond_38

    iget v13, v2, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mInitialTouchX:F

    iget v15, v2, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mInitialTouchY:F

    invoke-virtual {v2, v13, v15, v8}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->shouldQuickSettingsIntercept(FFF)Z

    move-result v13

    if-eqz v13, :cond_38

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/log/core/LogLevel;->VERBOSE:Lcom/android/systemui/log/core/LogLevel;

    new-instance v9, Lcom/android/systemui/shade/ShadeLogger$$ExternalSyntheticLambda0;

    const/4 v12, 0x7

    invoke-direct {v9, v12}, Lcom/android/systemui/shade/ShadeLogger$$ExternalSyntheticLambda0;-><init>(I)V

    iget-object v11, v11, Lcom/android/systemui/shade/ShadeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const/4 v12, 0x0

    invoke-virtual {v11, v5, v1, v9, v12}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v1

    float-to-double v8, v8

    move-object v5, v1

    check-cast v5, Lcom/android/systemui/log/LogMessageImpl;

    iput-wide v8, v5, Lcom/android/systemui/log/LogMessageImpl;->double1:D

    invoke-virtual {v11, v1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    invoke-virtual {v2, v6}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->setTracking(Z)V

    invoke-virtual {v2, v6, v4}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->traceQsJank(ZZ)V

    invoke-virtual {v2}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->onExpansionStarted()V

    invoke-interface {v14}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->notifyExpandingFinished()V

    iget v1, v2, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mExpansionHeight:F

    iput v1, v2, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mInitialHeightOnTouch:F

    iput v3, v2, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mInitialTouchY:F

    iput v7, v2, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mInitialTouchX:F

    iget-object v1, v10, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->cancelLongPress()V

    goto :goto_13

    :cond_38
    iget v7, v2, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mInitialTouchY:F

    invoke-virtual {v2}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->getExpanded()Z

    move-result v10

    invoke-interface {v14}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {v13}, Lcom/android/systemui/shade/NotificationPanelViewController;->isKeyguardShowing$1()Z

    move-result v13

    invoke-virtual {v2}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->isExpansionEnabled()Z

    move-result v2

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v14

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Lcom/android/systemui/log/core/LogLevel;->VERBOSE:Lcom/android/systemui/log/core/LogLevel;

    move/from16 v16, v6

    new-instance v6, Lcom/android/systemui/shade/ShadeLogger$$ExternalSyntheticLambda0;

    const/4 v4, 0x3

    invoke-direct {v6, v4}, Lcom/android/systemui/shade/ShadeLogger$$ExternalSyntheticLambda0;-><init>(I)V

    iget-object v4, v11, Lcom/android/systemui/shade/ShadeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const/4 v11, 0x0

    invoke-virtual {v4, v5, v9, v6, v11}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v6

    float-to-int v7, v7

    move-object v9, v6

    check-cast v9, Lcom/android/systemui/log/LogMessageImpl;

    iput v7, v9, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    float-to-int v3, v3

    iput v3, v9, Lcom/android/systemui/log/LogMessageImpl;->int2:I

    float-to-long v7, v8

    iput-wide v7, v9, Lcom/android/systemui/log/LogMessageImpl;->long1:J

    float-to-double v7, v12

    iput-wide v7, v9, Lcom/android/systemui/log/LogMessageImpl;->double1:D

    iput-boolean v10, v9, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    iput-boolean v13, v9, Lcom/android/systemui/log/LogMessageImpl;->bool2:Z

    iput-boolean v2, v9, Lcom/android/systemui/log/LogMessageImpl;->bool3:Z

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    goto :goto_17

    :goto_15
    invoke-virtual {v2, v1}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->trackMovement$1(Landroid/view/MotionEvent;)V

    const-string v3, "onQsIntercept: up action, QS tracking disabled"

    invoke-virtual {v11, v1, v3}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEvent(Landroid/view/MotionEvent;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->setTracking(Z)V

    goto :goto_17

    :cond_39
    move/from16 v16, v6

    iput v3, v2, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mInitialTouchY:F

    iput v7, v2, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mInitialTouchX:F

    iget-object v3, v2, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_3a

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->recycle()V

    :cond_3a
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, v2, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v1}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->trackMovement$1(Landroid/view/MotionEvent;)V

    invoke-virtual {v2}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->computeExpansionFraction()F

    move-result v3

    iget-boolean v4, v2, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mSplitShadeEnabled:Z

    if-nez v4, :cond_3b

    float-to-double v3, v3

    const-wide/16 v6, 0x0

    cmpl-double v6, v3, v6

    if-lez v6, :cond_3b

    const-wide/high16 v6, 0x3ff0000000000000L

    cmpg-double v3, v3, v6

    if-gez v3, :cond_3b

    const-string v2, "onQsIntercept: down action, QS partially expanded/collapsed"

    invoke-virtual {v11, v1, v2}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEvent(Landroid/view/MotionEvent;Ljava/lang/String;)V

    :goto_16
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    const-string v1, "NotificationPanelViewController MotionEvent intercepted: QsIntercept"

    invoke-virtual {v0, v1}, Lcom/android/systemui/shade/ShadeLogger;->v(Ljava/lang/String;)V

    return v16

    :cond_3b
    iget-object v3, v2, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mExpansionAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_3c

    iget v3, v2, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mExpansionHeight:F

    iput v3, v2, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mInitialHeightOnTouch:F

    const-string v3, "onQsIntercept: down action, QS tracking enabled"

    invoke-virtual {v11, v1, v3}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEvent(Landroid/view/MotionEvent;Ljava/lang/String;)V

    move/from16 v3, v16

    invoke-virtual {v2, v3}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->setTracking(Z)V

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->traceQsJank(ZZ)V

    iget-object v2, v10, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->cancelLongPress()V

    :cond_3c
    :goto_17
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-boolean v3, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mInstantExpanding:Z

    iget-boolean v4, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationsDragEnabled:Z

    if-nez v3, :cond_3d

    if-eqz v4, :cond_3d

    iget-boolean v6, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchDisabled:Z

    if-eqz v6, :cond_3e

    :cond_3d
    const/16 v16, 0x1

    goto :goto_20

    :cond_3e
    iget-boolean v2, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mMotionAborted:Z

    if-eqz v2, :cond_3f

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-eqz v2, :cond_3f

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    const-string v3, "NPVC MotionEvent not intercepted: non-down action, motion was aborted"

    invoke-virtual {v2, v1, v0, v3}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEventStatusBarState(Landroid/view/MotionEvent;ILjava/lang/String;)V

    const/4 v3, 0x0

    return v3

    :cond_3f
    const/4 v3, 0x0

    iget-object v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget v2, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mTrackingPointer:I

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    if-gez v2, :cond_40

    iget-object v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mTrackingPointer:I

    const/4 v2, 0x0

    :cond_40
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    iget-object v4, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {v4}, Lcom/android/systemui/shade/NotificationPanelViewController;->canCollapsePanelOnTouch()Z

    move-result v4

    invoke-static {v1}, Lcom/android/systemui/navigationbar/gestural/Utilities;->isTrackpadThreeFingerSwipe(Landroid/view/MotionEvent;)Z

    move-result v5

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    if-eqz v6, :cond_4c

    const/4 v7, 0x1

    if-eq v6, v7, :cond_4b

    const/4 v7, 0x2

    if-eq v6, v7, :cond_46

    const/4 v12, 0x3

    if-eq v6, v12, :cond_4b

    const/4 v2, 0x5

    if-eq v6, v2, :cond_45

    const/4 v3, 0x6

    if-eq v6, v3, :cond_42

    :cond_41
    :goto_18
    const/16 v17, 0x0

    goto :goto_21

    :cond_42
    if-eqz v5, :cond_43

    goto :goto_18

    :cond_43
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iget-object v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget v3, v3, Lcom/android/systemui/shade/NotificationPanelViewController;->mTrackingPointer:I

    if-ne v3, v2, :cond_41

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    if-eq v4, v2, :cond_44

    const/4 v6, 0x0

    goto :goto_19

    :cond_44
    const/4 v6, 0x1

    :goto_19
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mTrackingPointer:I

    iget-object v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mInitialExpandX:F

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iput v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mInitialExpandY:F

    :goto_1a
    const/16 v17, 0x0

    return v17

    :cond_45
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v3, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    iget-object v2, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v2

    const-string v4, "onInterceptTouchEvent: pointer down action"

    invoke-virtual {v3, v1, v2, v4}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEventStatusBarState(Landroid/view/MotionEvent;ILjava/lang/String;)V

    if-nez v5, :cond_41

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_41

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iput-boolean v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMotionAborted:Z

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_1a

    :cond_46
    iget-object v5, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget v6, v5, Lcom/android/systemui/shade/NotificationPanelViewController;->mInitialExpandY:F

    sub-float v6, v2, v6

    invoke-static {v5, v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$maddMovement(Lcom/android/systemui/shade/NotificationPanelViewController;Landroid/view/MotionEvent;)V

    iget-object v5, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-boolean v7, v5, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelClosedOnDown:Z

    if-eqz v7, :cond_47

    iget-boolean v7, v5, Lcom/android/systemui/shade/NotificationPanelViewController;->mCollapsedAndHeadsUpOnDown:Z

    if-nez v7, :cond_47

    const/4 v7, 0x1

    goto :goto_1b

    :cond_47
    const/4 v7, 0x0

    :goto_1b
    if-nez v4, :cond_48

    iget-boolean v4, v5, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchStartedInEmptyArea:Z

    if-nez v4, :cond_48

    iget-boolean v4, v5, Lcom/android/systemui/shade/NotificationPanelViewController;->mAnimatingOnDown:Z

    if-nez v4, :cond_48

    if-eqz v7, :cond_41

    :cond_48
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget-object v5, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {v5, v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->getTouchSlop$2(Landroid/view/MotionEvent;)F

    move-result v1

    neg-float v5, v1

    cmpg-float v5, v6, v5

    if-ltz v5, :cond_4a

    if-nez v7, :cond_49

    iget-object v5, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-boolean v5, v5, Lcom/android/systemui/shade/NotificationPanelViewController;->mAnimatingOnDown:Z

    if-eqz v5, :cond_41

    :cond_49
    cmpl-float v1, v4, v1

    if-lez v1, :cond_41

    :cond_4a
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mInitialExpandX:F

    sub-float v1, v3, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v4, v1

    if-lez v1, :cond_41

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->cancelHeightAnimator()V

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget v4, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedHeight:F

    const/4 v7, 0x1

    invoke-static {v1, v3, v2, v7, v4}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$mstartExpandMotion(Lcom/android/systemui/shade/NotificationPanelViewController;FFZF)V

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    const-string v1, "NotificationPanelViewController MotionEvent intercepted: startExpandMotion"

    invoke-virtual {v0, v1}, Lcom/android/systemui/shade/ShadeLogger;->v(Ljava/lang/String;)V

    return v7

    :cond_4b
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_1a

    :cond_4c
    iget-object v4, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v5, v4, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v5, :cond_4d

    iget-boolean v5, v4, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsSpringBackAnimation:Z

    if-nez v5, :cond_4d

    const/4 v5, 0x1

    goto :goto_1c

    :cond_4d
    const/4 v5, 0x0

    :goto_1c
    iput-boolean v5, v4, Lcom/android/systemui/shade/NotificationPanelViewController;->mAnimatingOnDown:Z

    iget-object v5, v4, Lcom/android/systemui/shade/NotificationPanelViewController;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    check-cast v5, Lcom/android/systemui/util/time/SystemClockImpl;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/android/systemui/shade/NotificationPanelViewController;->mDownTime:J

    iget-object v4, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-boolean v5, v4, Lcom/android/systemui/shade/NotificationPanelViewController;->mAnimatingOnDown:Z

    if-eqz v5, :cond_4e

    invoke-virtual {v4}, Lcom/android/systemui/shade/NotificationPanelViewController;->isClosing()Z

    move-result v4

    if-eqz v4, :cond_4e

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->cancelHeightAnimator()V

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchSlopExceeded:Z

    const-string v1, "NotificationPanelViewController MotionEvent intercepted: mAnimatingOnDown: true, isClosing(): true"

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shade/ShadeLogger;->v(Ljava/lang/String;)V

    return v3

    :cond_4e
    iget-object v4, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {v4}, Lcom/android/systemui/shade/NotificationPanelViewController;->isTracking()Z

    move-result v4

    if-eqz v4, :cond_50

    iget-object v4, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {v4}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    move-result v4

    if-eqz v4, :cond_4f

    goto :goto_1d

    :cond_4f
    iget-object v4, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v4, v4, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    const-string v5, "not setting mInitialExpandY in onInterceptTouch"

    invoke-virtual {v4, v5}, Lcom/android/systemui/shade/ShadeLogger;->d(Ljava/lang/String;)V

    goto :goto_1e

    :cond_50
    :goto_1d
    iget-object v4, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iput v2, v4, Lcom/android/systemui/shade/NotificationPanelViewController;->mInitialExpandY:F

    iput v3, v4, Lcom/android/systemui/shade/NotificationPanelViewController;->mInitialExpandX:F

    :goto_1e
    iget-object v4, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {v4, v3, v2}, Lcom/android/systemui/shade/NotificationPanelViewController;->isInContentBounds$2(FF)Z

    move-result v5

    const/16 v16, 0x1

    xor-int/lit8 v5, v5, 0x1

    iput-boolean v5, v4, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchStartedInEmptyArea:Z

    iget-object v4, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v4, v4, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotifInjector:Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;

    iget-object v5, v4, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->topPaddingController:Lcom/android/systemui/shade/NotificationTopPaddingControllerImpl;

    invoke-virtual {v5}, Lcom/android/systemui/shade/NotificationTopPaddingControllerImpl;->getTopPadding()F

    move-result v5

    cmpg-float v5, v2, v5

    if-gez v5, :cond_51

    const/4 v6, 0x1

    goto :goto_1f

    :cond_51
    const/4 v6, 0x0

    :goto_1f
    iput-boolean v6, v4, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->touchHeaderArea:Z

    invoke-virtual {v4, v3, v2}, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->isInDismissViewBounds(FF)Z

    move-result v2

    iput-boolean v2, v4, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->dismissViewArea:Z

    iget-object v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-boolean v3, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchSlopExceededBeforeDown:Z

    iput-boolean v3, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchSlopExceeded:Z

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mMotionAborted:Z

    invoke-virtual {v2}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    move-result v3

    iput-boolean v3, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelClosedOnDown:Z

    iget-object v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v3, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    iget-boolean v4, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mPanelClosedOnDown:Z

    iget v2, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mExpandedFraction:F

    const-string v5, "intercept down touch"

    invoke-virtual {v3, v2, v5, v4}, Lcom/android/systemui/shade/ShadeLogger;->logPanelClosedOnDown(FLjava/lang/String;Z)V

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mCollapsedAndHeadsUpOnDown:Z

    iput-boolean v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHasLayoutedSinceDown:Z

    iput-boolean v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchAboveFalsingThreshold:Z

    iput-boolean v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpIntercept:Z

    invoke-static {v0, v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$maddMovement(Lcom/android/systemui/shade/NotificationPanelViewController;Landroid/view/MotionEvent;)V

    return v3

    :goto_20
    xor-int/lit8 v0, v4, 0x1

    iget-boolean v1, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchDisabled:Z

    iget-object v2, v2, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/android/systemui/log/core/LogLevel;->VERBOSE:Lcom/android/systemui/log/core/LogLevel;

    new-instance v6, Lcom/android/systemui/shade/ShadeLogger$$ExternalSyntheticLambda0;

    const/4 v7, 0x6

    invoke-direct {v6, v7}, Lcom/android/systemui/shade/ShadeLogger$$ExternalSyntheticLambda0;-><init>(I)V

    iget-object v2, v2, Lcom/android/systemui/shade/ShadeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const/4 v11, 0x0

    invoke-virtual {v2, v5, v4, v6, v11}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/android/systemui/log/LogMessageImpl;

    iput-boolean v3, v5, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    iput-boolean v0, v5, Lcom/android/systemui/log/LogMessageImpl;->bool2:Z

    iput-boolean v1, v5, Lcom/android/systemui/log/LogMessageImpl;->bool3:Z

    invoke-virtual {v2, v4}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    goto :goto_1a

    :goto_21
    return v17
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6

    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object p1, p1, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchHandlerInjector:Lcom/android/systemui/shade/PanelViewTouchHandlerInjector;

    iget-object p1, p1, Lcom/android/systemui/shade/PanelViewTouchHandlerInjector;->notifTouchHandler:Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    iget-object v0, p1, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->panelView:Lcom/android/systemui/shade/NotificationPanelView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/utils/configs/MiuiConfigs;->isTinyScreenLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget p1, p1, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->lastTouchY:F

    sub-float/2addr v0, p1

    const/4 p1, 0x0

    cmpl-float p1, v0, p1

    if-lez p1, :cond_2

    if-nez v1, :cond_2

    const-string p1, "NPVCInjector"

    const-string v0, "isTinyScreenLandscape and drop down, ignore touch"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_3
    invoke-virtual {p0, p2}, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 34

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x2

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchHandlerInjector:Lcom/android/systemui/shade/PanelViewTouchHandlerInjector;

    iget-object v1, v1, Lcom/android/systemui/shade/PanelViewTouchHandlerInjector;->notifTouchHandler:Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    iput-boolean v10, v1, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->controlCenterExpanding:Z

    invoke-virtual {v1}, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->isKeyguardAway()Z

    move-result v3

    iput-boolean v3, v1, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->isKeyguardAwayWhenDown:Z

    iput-boolean v10, v1, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->cancelByDirectDispatch:Z

    :cond_0
    iget-object v3, v1, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->shadeSwitchController:Lcom/android/systemui/plugins/miui/shade/ShadeSwitchController;

    invoke-interface {v3}, Lcom/android/systemui/plugins/miui/shade/ShadeSwitchController;->getSwitching()Z

    move-result v3

    const-string v13, "NPVCInjector"

    if-nez v3, :cond_1

    iget-object v3, v1, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->expandHelper:Lcom/android/systemui/shade/NotificationPanelExpandController;

    iget-boolean v3, v3, Lcom/android/systemui/shade/NotificationPanelExpandController;->visible:Z

    if-nez v3, :cond_1

    iget-object v3, v1, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->panelInteractiveManager:Lcom/miui/systemui/shade/PanelInteractiveManager;

    iget-object v3, v3, Lcom/miui/systemui/shade/PanelInteractiveManager;->controlCenterInteractive:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v3, v3, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast v3, Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v1, "controlCenterInteractive, not excepted notification panel expand."

    invoke-static {v13, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    iget-boolean v3, v1, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->isKeyguardAwayWhenDown:Z

    if-eqz v3, :cond_2

    const-string v1, "KeyguardAwayWhenDown, ignore touch"

    invoke-static {v13, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    iget-boolean v3, v1, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->controlCenterExpanding:Z

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v11, :cond_3

    const-string v1, "controlCenterExpanding, ignore subsequent move events"

    invoke-static {v13, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->isOnKeyguard$2()Z

    move-result v3

    if-nez v3, :cond_4

    iget-boolean v3, v1, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->isDownOnKeyguard:Z

    if-nez v3, :cond_4

    iget-boolean v3, v1, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->handlingExternalTouch:Z

    if-eqz v3, :cond_4

    iget-boolean v1, v1, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->currentTouchExternal:Z

    if-nez v1, :cond_4

    const-string v1, "consume all internal touch when handling external touch."

    invoke-static {v13, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_5

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    const-string v3, "onTouchEvent: miuiHandleOnTouchEvent"

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEvent(Landroid/view/MotionEvent;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_5
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mAlternateBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;

    invoke-virtual {v1}, Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;->isVisibleState()Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_1
    move/from16 v19, v10

    goto :goto_3a

    :cond_6
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v3

    iget-wide v5, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->mLastTouchDownTime:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_7

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    const-string v1, "onTouch: duplicate down event detected... ignoring"

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEvent(Landroid/view/MotionEvent;Ljava/lang/String;)V

    return v9

    :cond_7
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->mLastTouchDownTime:J

    :cond_8
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->isQsFragmentCreated()Z

    move-result v3

    if-eqz v3, :cond_a

    iget-boolean v3, v1, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mFullyExpanded:Z

    if-eqz v3, :cond_a

    iget-object v1, v1, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v1, :cond_9

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QS;->disallowPanelTouches()Z

    move-result v1

    goto :goto_2

    :cond_9
    move v1, v10

    :goto_2
    if-eqz v1, :cond_a

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    const-string v1, "onTouch: ignore touch, panel touches disallowed and qs fully expanded"

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEvent(Landroid/view/MotionEvent;Ljava/lang/String;)V

    return v10

    :cond_a
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    iget-boolean v3, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mBouncerShowing:Z

    if-eqz v3, :cond_b

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->primaryBouncerNeedsScrimming()Z

    move-result v1

    if-eqz v1, :cond_b

    move v1, v9

    goto :goto_3

    :cond_b
    move v1, v10

    :goto_3
    if-eqz v1, :cond_c

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    const-string v1, "onTouch: ignore touch, bouncer scrimmed or showing over dream"

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEvent(Landroid/view/MotionEvent;Ljava/lang/String;)V

    return v10

    :cond_c
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v14, 0x3

    if-eq v1, v9, :cond_d

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v14, :cond_e

    :cond_d
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iput-boolean v10, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mBlockingExpansionForCurrentTouch:Z

    :cond_e
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-boolean v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mLastEventSynthesizedDown:Z

    if-eqz v1, :cond_f

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v9, :cond_f

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {v1, v9}, Lcom/android/systemui/shade/NotificationPanelViewController;->expand(Z)V

    :cond_f
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-static {v1, v2}, Lcom/android/systemui/shade/NotificationPanelViewController;->-$$Nest$minitDownStates(Lcom/android/systemui/shade/NotificationPanelViewController;Landroid/view/MotionEvent;)V

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-boolean v3, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsExpandingOrCollapsing:Z

    const/4 v15, 0x0

    if-nez v3, :cond_10

    iget v3, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mDownX:F

    iget v4, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mDownY:F

    iget-object v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    invoke-virtual {v1, v3, v4, v15}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->shouldQuickSettingsIntercept(FFF)Z

    move-result v1

    if-eqz v1, :cond_11

    :cond_10
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/PulseExpansionHandler;->isExpanding:Z

    if-eqz v1, :cond_12

    :cond_11
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    const-string v1, "onTouch: PulseExpansionHandler handled event"

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEvent(Landroid/view/MotionEvent;Ljava/lang/String;)V

    return v9

    :cond_12
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-boolean v3, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mPulsing:Z

    if-eqz v3, :cond_13

    const-string v0, "onTouch: eat touch, device pulsing"

    iget-object v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEvent(Landroid/view/MotionEvent;Ljava/lang/String;)V

    return v9

    :cond_13
    iget-boolean v3, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mListenForHeadsUp:Z

    if-eqz v3, :cond_15

    iget-object v3, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/notification/headsup/HeadsUpTouchHelper;

    iget-boolean v4, v3, Lcom/android/systemui/statusbar/notification/headsup/HeadsUpTouchHelper;->mTrackingHeadsUp:Z

    if-nez v4, :cond_15

    iget-object v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mLongPressedView:Landroid/view/View;

    if-eqz v1, :cond_14

    move v1, v9

    goto :goto_4

    :cond_14
    move v1, v10

    :goto_4
    if-nez v1, :cond_15

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/notification/headsup/HeadsUpTouchHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const-string v3, "panel_open_peek"

    invoke-virtual {v1, v3, v9}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V

    :cond_15
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v3, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/notification/headsup/HeadsUpTouchHelper;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/notification/headsup/HeadsUpTouchHelper;->mTrackingHeadsUp:Z

    if-eqz v3, :cond_16

    iget-boolean v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpIntercept:Z

    if-eqz v1, :cond_17

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-ne v1, v14, :cond_17

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotifInjector:Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;

    iget-boolean v1, v1, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->cancelByDirectDispatch:Z

    if-nez v1, :cond_17

    goto :goto_1

    :cond_16
    iput-boolean v10, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpIntercept:Z

    :cond_17
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/notification/headsup/HeadsUpTouchHelper;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/notification/headsup/HeadsUpTouchHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v16

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchHandlerInjector:Lcom/android/systemui/shade/PanelViewTouchHandlerInjector;

    iget-object v3, v1, Lcom/android/systemui/shade/PanelViewTouchHandlerInjector;->keyguardPanelViewTouchHandlerInjector:Lcom/android/keyguard/injector/KeyguardPanelViewTouchHandlerInjector;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_18

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    iput v4, v3, Lcom/android/keyguard/injector/KeyguardPanelViewTouchHandlerInjector;->initialTouchX:F

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iput v4, v3, Lcom/android/keyguard/injector/KeyguardPanelViewTouchHandlerInjector;->initialTouchY:F

    :cond_18
    iget-object v4, v3, Lcom/android/keyguard/injector/KeyguardPanelViewTouchHandlerInjector;->keyguardPanelViewInjector:Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    if-nez v5, :cond_1a

    invoke-virtual {v4}, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->getKeyguardPanelViewController()Lcom/android/keyguard/panel/KeyguardPanelViewController;

    move-result-object v5

    iget-object v5, v5, Lcom/android/keyguard/panel/KeyguardPanelViewController;->unlockAlphaAndScaleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v5, :cond_19

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v5

    goto :goto_5

    :cond_19
    move v5, v10

    :goto_5
    if-nez v5, :cond_1a

    invoke-virtual {v4}, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->getKeyguardPanelViewController()Lcom/android/keyguard/panel/KeyguardPanelViewController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/keyguard/panel/KeyguardPanelViewController;->resetInterceptInvisible()V

    :cond_1a
    iget v5, v3, Lcom/android/keyguard/injector/KeyguardPanelViewTouchHandlerInjector;->barState:I

    if-ne v5, v9, :cond_1b

    move v5, v9

    goto :goto_6

    :cond_1b
    move v5, v10

    :goto_6
    iget-object v6, v1, Lcom/android/systemui/shade/PanelViewTouchHandlerInjector;->shadeLog:Lcom/android/systemui/shade/ShadeLogger;

    iget-object v7, v3, Lcom/android/keyguard/injector/KeyguardPanelViewTouchHandlerInjector;->qsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    iget-object v8, v3, Lcom/android/keyguard/injector/KeyguardPanelViewTouchHandlerInjector;->notificationPanelViewControllerInjector:Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;

    if-eqz v5, :cond_29

    invoke-virtual {v4}, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->isShowEditLoading$1()Z

    move-result v5

    iget-object v15, v3, Lcom/android/keyguard/injector/KeyguardPanelViewTouchHandlerInjector;->shadeLog:Lcom/android/systemui/shade/ShadeLogger;

    if-nez v5, :cond_1c

    iget-object v5, v3, Lcom/android/keyguard/injector/KeyguardPanelViewTouchHandlerInjector;->keyguardEditorHelper:Lcom/android/keyguard/editor/KeyguardEditorHelper;

    invoke-virtual {v5}, Lcom/android/keyguard/editor/KeyguardEditorHelper;->isInExitEditorMode()Z

    move-result v5

    if-eqz v5, :cond_1d

    :cond_1c
    move-object/from16 v21, v6

    goto :goto_a

    :cond_1d
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_1e

    iput-boolean v9, v3, Lcom/android/keyguard/injector/KeyguardPanelViewTouchHandlerInjector;->isDownOnKeyguard:Z

    goto :goto_7

    :cond_1e
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-eq v4, v9, :cond_1f

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v14, :cond_20

    :cond_1f
    iput-boolean v10, v3, Lcom/android/keyguard/injector/KeyguardPanelViewTouchHandlerInjector;->isDownOnKeyguard:Z

    :cond_20
    :goto_7
    iget v4, v3, Lcom/android/keyguard/injector/KeyguardPanelViewTouchHandlerInjector;->barState:I

    move v5, v4

    iget v4, v3, Lcom/android/keyguard/injector/KeyguardPanelViewTouchHandlerInjector;->initialTouchX:F

    move/from16 v18, v5

    iget v5, v3, Lcom/android/keyguard/injector/KeyguardPanelViewTouchHandlerInjector;->initialTouchY:F

    invoke-virtual {v8}, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->getPanelViewController()Lcom/android/systemui/shade/NotificationPanelViewController;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/shade/NotificationPanelViewController;->isExpandingOrCollapsing()Z

    move-result v8

    invoke-virtual {v7}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->getExpanded()Z

    move-result v7

    move-object/from16 v19, v6

    move v6, v8

    iget-boolean v8, v3, Lcom/android/keyguard/injector/KeyguardPanelViewTouchHandlerInjector;->dozing:Z

    move-object/from16 v20, v1

    iget-object v1, v3, Lcom/android/keyguard/injector/KeyguardPanelViewTouchHandlerInjector;->keyguardPanelViewInjector:Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    move-object v11, v3

    move/from16 v3, v18

    move-object/from16 v21, v19

    move-object/from16 v12, v20

    invoke-virtual/range {v1 .. v8}, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->onTouchEvent(Landroid/view/MotionEvent;IFFZZZ)Z

    move-result v1

    if-eqz v1, :cond_21

    const-string v1, "KeyguardPanelViewTouchHandlerInjector KeyguardPanelViewInjector onTouchEvent handled"

    invoke-virtual {v15, v1}, Lcom/android/systemui/shade/ShadeLogger;->v(Ljava/lang/String;)V

    goto :goto_c

    :cond_21
    iget-boolean v1, v11, Lcom/android/keyguard/injector/KeyguardPanelViewTouchHandlerInjector;->isDownOnKeyguard:Z

    if-eqz v1, :cond_24

    iget v1, v11, Lcom/android/keyguard/injector/KeyguardPanelViewTouchHandlerInjector;->barState:I

    iget-object v3, v11, Lcom/android/keyguard/injector/KeyguardPanelViewTouchHandlerInjector;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    if-nez v1, :cond_22

    goto :goto_8

    :cond_22
    move-object v1, v3

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardGoingAway:Z

    if-eqz v1, :cond_23

    goto :goto_9

    :cond_23
    :goto_8
    check-cast v3, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v1, v3, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardFadingAway:Z

    if-nez v1, :cond_25

    iget-boolean v1, v3, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mMiKeyguardFadingAway:Z

    if-eqz v1, :cond_24

    goto :goto_9

    :cond_24
    move-object/from16 v15, v21

    goto :goto_d

    :cond_25
    :goto_9
    const-string v1, "NotificationPanelView"

    const-string v3, "isKeyguardAway, ignore touch"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :goto_a
    iget-object v1, v4, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->keyguardMoveHelper:Lcom/android/keyguard/panel/KeyguardMoveHelper;

    if-eqz v1, :cond_28

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-eqz v3, :cond_27

    if-eq v3, v9, :cond_26

    if-eq v3, v14, :cond_26

    goto :goto_b

    :cond_26
    iput-boolean v10, v1, Lcom/android/keyguard/panel/KeyguardMoveHelper;->mMotionCancelled:Z

    goto :goto_b

    :cond_27
    iput-boolean v9, v1, Lcom/android/keyguard/panel/KeyguardMoveHelper;->mMotionCancelled:Z

    :cond_28
    :goto_b
    const-string v1, "KeyguardPanelViewTouchHandlerInjector isShowEditLoading or InExitEditorMode , ignore touch"

    invoke-virtual {v15, v1}, Lcom/android/systemui/shade/ShadeLogger;->v(Ljava/lang/String;)V

    :goto_c
    const-string v1, "onTouch: mTouchHandlerInjector Keyguard miui touch intercepted "

    move-object/from16 v15, v21

    invoke-virtual {v15, v2, v1}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEvent(Landroid/view/MotionEvent;Ljava/lang/String;)V

    goto :goto_37

    :cond_29
    move-object v12, v1

    move-object v11, v3

    move-object v15, v6

    iget-boolean v1, v11, Lcom/android/keyguard/injector/KeyguardPanelViewTouchHandlerInjector;->isDownOnKeyguard:Z

    if-eqz v1, :cond_2b

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eq v1, v9, :cond_2a

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v14, :cond_2b

    :cond_2a
    iput-boolean v10, v11, Lcom/android/keyguard/injector/KeyguardPanelViewTouchHandlerInjector;->isDownOnKeyguard:Z

    iget v3, v11, Lcom/android/keyguard/injector/KeyguardPanelViewTouchHandlerInjector;->barState:I

    iget v4, v11, Lcom/android/keyguard/injector/KeyguardPanelViewTouchHandlerInjector;->initialTouchX:F

    iget v5, v11, Lcom/android/keyguard/injector/KeyguardPanelViewTouchHandlerInjector;->initialTouchY:F

    invoke-virtual {v8}, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->getPanelViewController()Lcom/android/systemui/shade/NotificationPanelViewController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->isExpandingOrCollapsing()Z

    move-result v6

    invoke-virtual {v7}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->getExpanded()Z

    move-result v7

    iget-boolean v8, v11, Lcom/android/keyguard/injector/KeyguardPanelViewTouchHandlerInjector;->dozing:Z

    iget-object v1, v11, Lcom/android/keyguard/injector/KeyguardPanelViewTouchHandlerInjector;->keyguardPanelViewInjector:Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    invoke-virtual/range {v1 .. v8}, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->onTouchEvent(Landroid/view/MotionEvent;IFFZZZ)Z

    :cond_2b
    :goto_d
    iget-object v1, v12, Lcom/android/systemui/shade/PanelViewTouchHandlerInjector;->notifTouchHandler:Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const-string v4, " "

    if-nez v3, :cond_31

    iget-boolean v3, v1, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->hidePanelPendingWhenIntercept:Z

    if-nez v3, :cond_2d

    iget-boolean v3, v1, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->hidePanelPending:Z

    if-eqz v3, :cond_2c

    goto :goto_e

    :cond_2c
    move v3, v10

    goto :goto_f

    :cond_2d
    :goto_e
    move v3, v9

    :goto_f
    invoke-virtual {v1}, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->getPanelViewController()Lcom/android/systemui/shade/NotificationPanelViewController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    move-result v5

    invoke-virtual {v1}, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->getPanelViewController()Lcom/android/systemui/shade/NotificationPanelViewController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/shade/NotificationPanelViewController;->isShadeFullyExpanded()Z

    move-result v6

    const-string v7, "handleMiuiTouch fullyCollapsed="

    const-string v8, " fullExp="

    const-string v11, " hidePanelPending="

    invoke-static {v7, v8, v11, v5, v6}, Lcom/android/keyguard/clock/animation/eastern/EasterArtACClockBaseAnimation$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->getPanelViewController()Lcom/android/systemui/shade/NotificationPanelViewController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    move-result v5

    if-nez v5, :cond_2f

    if-eqz v3, :cond_2e

    goto :goto_10

    :cond_2e
    move v5, v10

    goto :goto_11

    :cond_2f
    :goto_10
    move v5, v9

    :goto_11
    iput-boolean v5, v1, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->isFullyCollapsedOnDown:Z

    invoke-virtual {v1}, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->getPanelViewController()Lcom/android/systemui/shade/NotificationPanelViewController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/shade/NotificationPanelViewController;->isShadeFullyExpanded()Z

    move-result v5

    if-eqz v5, :cond_30

    if-nez v3, :cond_30

    move v3, v9

    goto :goto_12

    :cond_30
    move v3, v10

    :goto_12
    iput-boolean v3, v1, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->isFullyExpandedOnDown:Z

    iput-boolean v10, v1, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->hidePanelPendingWhenIntercept:Z

    invoke-virtual {v1, v10}, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->setHidePanelPending(Z)V

    invoke-virtual {v1}, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->isOnKeyguard$2()Z

    move-result v3

    iput-boolean v3, v1, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->isDownOnKeyguard:Z

    invoke-virtual {v1}, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->cancelFlingSpring()V

    :cond_31
    iget-object v3, v1, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->modalController:Lcom/android/systemui/statusbar/notification/modal/IModalController;

    check-cast v3, Lcom/android/systemui/statusbar/notification/modal/ModalControllerImpl;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/notification/modal/ModalControllerImpl;->maybeDispatchMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_32

    :goto_13
    move-object/from16 v24, v15

    goto :goto_36

    :cond_32
    invoke-virtual {v1}, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->getPanelViewController()Lcom/android/systemui/shade/NotificationPanelViewController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/shade/NotificationPanelViewController;->isClosing()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-virtual {v1}, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->resetPanelTouchState()V

    move v9, v10

    goto :goto_13

    :cond_33
    invoke-virtual {v1}, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->isOnKeyguard$2()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eq v3, v9, :cond_34

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v14, :cond_35

    :cond_34
    iput-boolean v10, v1, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->isDownOnKeyguard:Z

    invoke-virtual {v1}, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->resetPanelTouchState()V

    :cond_35
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eq v3, v14, :cond_36

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    :cond_36
    iget-boolean v3, v1, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->isDownOnKeyguard:Z

    if-eqz v3, :cond_39

    invoke-virtual {v1}, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->isKeyguardAway()Z

    move-result v3

    if-eqz v3, :cond_39

    const-string v1, "handleMiuiTouch isKeyguardAway, ignore touch"

    invoke-static {v13, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    :cond_37
    iget-boolean v3, v1, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->isDownOnKeyguard:Z

    if-eqz v3, :cond_39

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eq v3, v9, :cond_38

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v14, :cond_39

    :cond_38
    const-string v3, "handleMiuiTouch: UP/Cancel event and isDownOnKeyguard true and current not in keyguard"

    invoke-static {v13, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v10, v1, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->isDownOnKeyguard:Z

    invoke-virtual {v1}, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->resetPanelTouchState()V

    :cond_39
    iget-boolean v3, v1, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->trackingMiniWindowHeadsUp:Z

    invoke-virtual {v1}, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->getPanelViewController()Lcom/android/systemui/shade/NotificationPanelViewController;

    move-result-object v5

    iget-object v5, v5, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/notification/headsup/HeadsUpTouchHelper;

    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/headsup/HeadsUpTouchHelper;->mInjector:Lcom/android/systemui/statusbar/notification/HeadsUpTouchHelperInjectorImpl;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/notification/HeadsUpTouchHelperInjectorImpl;->trackingMiniWindowHeadsUp:Z

    iput-boolean v5, v1, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->trackingMiniWindowHeadsUp:Z

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    if-eq v5, v9, :cond_3a

    if-eq v5, v14, :cond_3a

    iget-boolean v3, v1, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->trackingMiniWindowHeadsUp:Z

    :cond_3a
    if-eqz v3, :cond_3b

    goto :goto_13

    :cond_3b
    invoke-virtual {v1}, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->isOnKeyguard$2()Z

    move-result v3

    if-nez v3, :cond_7a

    iget-boolean v3, v1, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->isDownOnKeyguard:Z

    if-nez v3, :cond_3c

    invoke-virtual {v1}, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->inUnoccludedExpand()Z

    move-result v3

    if-eqz v3, :cond_3d

    :cond_3c
    invoke-virtual {v1}, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->isOnShade()Z

    move-result v3

    if-eqz v3, :cond_3d

    iget-boolean v3, v1, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->isDownOnKeyguard:Z

    invoke-virtual {v1}, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->inUnoccludedExpand()Z

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "handleMiuiTouch downOnKeyguard "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " notifUnoccluded: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", ignore touch"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    :cond_3d
    iget-boolean v3, v1, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->isFullyCollapsedOnDown:Z

    if-nez v3, :cond_3f

    iget-boolean v3, v1, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->isFullyExpandedOnDown:Z

    if-eqz v3, :cond_3e

    goto :goto_14

    :cond_3e
    move-object/from16 v24, v15

    goto :goto_35

    :cond_3f
    :goto_14
    iget v3, v1, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->trackingPointer:I

    invoke-virtual {v2, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    if-gez v3, :cond_40

    invoke-virtual {v2, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, v1, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->trackingPointer:I

    move v3, v10

    :cond_40
    invoke-virtual {v2, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual {v2, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    if-eqz v6, :cond_79

    const-string v7, " mHidePanelPending="

    const-string v8, " fullExpOnDown="

    const-string v11, " fullCollapsedOnDown="

    const-string v12, " mPanelOpening="

    const-string v10, " mPanelCollapsing="

    const-string v14, " mPanelStretching="

    iget-object v9, v1, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->expandHelper:Lcom/android/systemui/shade/NotificationPanelExpandController;

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->panelView:Lcom/android/systemui/shade/NotificationPanelView;

    move-object/from16 v22, v0

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->qsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    move-object/from16 v23, v0

    iget-object v0, v1, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->ambientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    move-object/from16 v24, v15

    const/4 v15, 0x1

    if-eq v6, v15, :cond_42

    const/4 v15, 0x2

    if-eq v6, v15, :cond_43

    const/4 v15, 0x3

    if-eq v6, v15, :cond_42

    const/4 v0, 0x6

    if-eq v6, v0, :cond_41

    :goto_15
    move-object v0, v1

    move v1, v3

    goto :goto_34

    :cond_41
    invoke-virtual {v1, v2}, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->handlePointerUp(Landroid/view/MotionEvent;)V

    goto :goto_15

    :cond_42
    move/from16 v25, v3

    move-object v5, v7

    move-object v4, v8

    move-object v7, v12

    move-object v3, v13

    goto :goto_2c

    :cond_43
    iget v6, v1, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->initialTouchX:F

    sub-float/2addr v5, v6

    iget v6, v1, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->initialTouchY:F

    sub-float v6, v3, v6

    invoke-virtual {v1}, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->getPanelViewController()Lcom/android/systemui/shade/NotificationPanelViewController;

    move-result-object v15

    iget-object v15, v15, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/notification/headsup/HeadsUpTouchHelper;

    iget-boolean v15, v15, Lcom/android/systemui/statusbar/notification/headsup/HeadsUpTouchHelper;->mTrackingHeadsUp:Z

    if-eqz v15, :cond_47

    invoke-virtual {v1}, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->getPanelViewController()Lcom/android/systemui/shade/NotificationPanelViewController;

    move-result-object v15

    iget-object v15, v15, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/notification/headsup/HeadsUpTouchHelper;

    iget-object v15, v15, Lcom/android/systemui/statusbar/notification/headsup/HeadsUpTouchHelper;->mInjector:Lcom/android/systemui/statusbar/notification/HeadsUpTouchHelperInjectorImpl;

    iget-boolean v15, v15, Lcom/android/systemui/statusbar/notification/HeadsUpTouchHelperInjectorImpl;->trackingMiniWindowHeadsUp:Z

    if-nez v15, :cond_47

    iget v15, v1, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->mHUNStretchToDisappearThreshold:F

    cmpl-float v15, v6, v15

    if-lez v15, :cond_47

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getTrackedHeadsUpRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v15

    if-eqz v15, :cond_47

    move/from16 v25, v3

    invoke-virtual {v15}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v3

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mInjector:Lcom/android/systemui/statusbar/notification/stack/ViewStateInjectorImpl;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/notification/stack/ViewStateInjectorImpl;->hasCalledHUNDragDownDisappear:Z

    if-nez v3, :cond_46

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->setExpandingFromHeadsUp(Z)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->setExpandingVisibleFromHeadsUp(Z)V

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mTrackedHeadsUpRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v15}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getInjector()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowInjector;

    move-result-object v3

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableViewInjector;->folme:Lmiuix/animation/IStateStyle;

    if-eqz v3, :cond_44

    move-object/from16 v26, v13

    sget-object v13, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowInjector;->FOLME_NOTIF_TOUCH_SCALE_Y:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowInjector$Companion$FOLME_NOTIF_TOUCH_ALPHA$1;

    move-object/from16 v27, v7

    sget-object v7, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowInjector;->FOLME_NOTIF_TOUCH_ALPHA:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowInjector$Companion$FOLME_NOTIF_TOUCH_ALPHA$1;

    move-object/from16 v28, v8

    sget-object v8, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowInjector;->FOLME_NOTIF_TOUCH_SCALE_X:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowInjector$Companion$FOLME_NOTIF_TOUCH_ALPHA$1;

    filled-new-array {v8, v13, v7}, [Lmiuix/animation/property/FloatProperty;

    move-result-object v7

    invoke-interface {v3, v7}, Lmiuix/animation/ICancelableStyle;->cancel([Lmiuix/animation/property/FloatProperty;)V

    goto :goto_16

    :cond_44
    move-object/from16 v27, v7

    move-object/from16 v28, v8

    move-object/from16 v26, v13

    :goto_16
    sget-object v3, Lcom/android/systemui/statusbar/notification/stack/MiuiHUNDragDownDisappearAnimation;->FOLME_NOTIF_SCALE_X:Lcom/android/systemui/statusbar/notification/stack/MiuiHUNDragDownDisappearAnimation$FOLME_NOTIF_ALPHA$1;

    invoke-virtual {v15}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v3

    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mInjector:Lcom/android/systemui/statusbar/notification/stack/ViewStateInjectorImpl;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/notification/stack/ViewStateInjectorImpl;->hasCalledHUNDragDownDisappear:Z

    if-eqz v3, :cond_45

    move-object/from16 v30, v10

    move-object/from16 v29, v11

    move-object/from16 v31, v12

    goto :goto_18

    :cond_45
    new-instance v3, Lmiuix/animation/controller/AnimState;

    const-string v7, "hun_drag_down_disappear"

    invoke-direct {v3, v7}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    const/4 v7, 0x0

    new-array v8, v7, [J

    sget-object v13, Lcom/android/systemui/statusbar/notification/stack/MiuiHUNDragDownDisappearAnimation;->FOLME_NOTIF_ALPHA:Lcom/android/systemui/statusbar/notification/stack/MiuiHUNDragDownDisappearAnimation$FOLME_NOTIF_ALPHA$1;

    move-object/from16 v29, v11

    const/4 v11, 0x0

    invoke-virtual {v3, v13, v11, v8}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/FloatProperty;F[J)Lmiuix/animation/controller/AnimState;

    move-result-object v3

    new-array v8, v7, [J

    sget-object v11, Lcom/android/systemui/statusbar/notification/stack/MiuiHUNDragDownDisappearAnimation;->FOLME_NOTIF_SCALE_X:Lcom/android/systemui/statusbar/notification/stack/MiuiHUNDragDownDisappearAnimation$FOLME_NOTIF_ALPHA$1;

    move-object/from16 v30, v10

    const v10, 0x3f4ccccd

    invoke-virtual {v3, v11, v10, v8}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/FloatProperty;F[J)Lmiuix/animation/controller/AnimState;

    move-result-object v3

    new-array v8, v7, [J

    sget-object v7, Lcom/android/systemui/statusbar/notification/stack/MiuiHUNDragDownDisappearAnimation;->FOLME_NOTIF_SCALE_Y:Lcom/android/systemui/statusbar/notification/stack/MiuiHUNDragDownDisappearAnimation$FOLME_NOTIF_ALPHA$1;

    invoke-virtual {v3, v7, v10, v8}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/FloatProperty;F[J)Lmiuix/animation/controller/AnimState;

    move-result-object v3

    new-instance v8, Lmiuix/animation/base/AnimSpecialConfig;

    invoke-direct {v8}, Lmiuix/animation/base/AnimSpecialConfig;-><init>()V

    move-object/from16 v31, v12

    const/4 v10, 0x2

    new-array v12, v10, [F

    fill-array-data v12, :array_0

    const/4 v10, -0x2

    invoke-virtual {v8, v10, v12}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v8

    check-cast v8, Lmiuix/animation/base/AnimSpecialConfig;

    new-instance v10, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v10}, Lmiuix/animation/base/AnimConfig;-><init>()V

    invoke-virtual {v10, v11, v8}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    move-result-object v10

    invoke-virtual {v10, v7, v8}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    move-result-object v7

    invoke-virtual {v7, v13, v8}, Lmiuix/animation/base/AnimConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;Lmiuix/animation/base/AnimSpecialConfig;)Lmiuix/animation/base/AnimConfig;

    move-result-object v7

    new-instance v8, Lcom/android/systemui/statusbar/notification/stack/MiuiHUNDragDownDisappearAnimation$doDisappearAnimation$notificationDisappearConfig$1;

    invoke-direct {v8, v15}, Lcom/android/systemui/statusbar/notification/stack/MiuiHUNDragDownDisappearAnimation$doDisappearAnimation$notificationDisappearConfig$1;-><init>(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    filled-new-array {v8}, [Lmiuix/animation/listener/TransitionListener;

    move-result-object v8

    invoke-virtual {v7, v8}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object v7

    invoke-virtual {v15}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v8

    iget-object v8, v8, Lcom/android/systemui/statusbar/notification/stack/ViewState;->mInjector:Lcom/android/systemui/statusbar/notification/stack/ViewStateInjectorImpl;

    const/4 v10, 0x1

    iput-boolean v10, v8, Lcom/android/systemui/statusbar/notification/stack/ViewStateInjectorImpl;->hasCalledHUNDragDownDisappear:Z

    invoke-static {v15}, Lmiuix/animation/Folme;->use(Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v8

    filled-new-array {v7}, [Lmiuix/animation/base/AnimConfig;

    move-result-object v7

    invoke-interface {v8, v3, v7}, Lmiuix/animation/FolmeStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_18

    :cond_46
    :goto_17
    move-object/from16 v27, v7

    move-object/from16 v28, v8

    move-object/from16 v30, v10

    move-object/from16 v29, v11

    move-object/from16 v31, v12

    move-object/from16 v26, v13

    goto :goto_18

    :cond_47
    move/from16 v25, v3

    goto :goto_17

    :goto_18
    invoke-virtual {v1, v6, v5, v2}, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->handleStretchState(FFLandroid/view/MotionEvent;)Z

    move-result v3

    iget v7, v1, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->initialTouchY:F

    invoke-virtual {v1, v6, v5, v7}, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->handleCollapseState(FFF)Z

    move-result v7

    invoke-virtual {v1, v6, v5}, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->handleSlideState(FF)Z

    move-result v8

    iget-boolean v10, v1, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->expandingFromHeadsUp:Z

    if-nez v10, :cond_48

    iget-boolean v10, v1, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->panelIntercepting:Z

    if-eqz v10, :cond_49

    :cond_48
    const/4 v5, 0x0

    goto :goto_19

    :cond_49
    iget-boolean v10, v1, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->touchHeaderArea:Z

    if-nez v10, :cond_4a

    invoke-virtual {v1}, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->getPanelViewController()Lcom/android/systemui/shade/NotificationPanelViewController;

    move-result-object v10

    iget-boolean v10, v10, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchStartedInEmptyArea:Z

    if-nez v10, :cond_4a

    iget-boolean v10, v1, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->dismissViewArea:Z

    if-eqz v10, :cond_4b

    :cond_4a
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v10, v1, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->touchSlop:I

    int-to-float v10, v10

    cmpl-float v10, v5, v10

    if-lez v10, :cond_4b

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v10

    cmpl-float v5, v5, v10

    if-lez v5, :cond_4b

    const/4 v15, 0x1

    iput-boolean v15, v1, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->allowParentInterceptSwitchEvent:Z

    goto :goto_1a

    :goto_19
    iput-boolean v5, v1, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->allowParentInterceptSwitchEvent:Z

    :cond_4b
    :goto_1a
    iget-boolean v5, v1, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->panelIntercepting:Z

    if-nez v5, :cond_4e

    if-nez v3, :cond_4d

    if-nez v7, :cond_4d

    if-eqz v8, :cond_4c

    goto :goto_1b

    :cond_4c
    const/4 v5, 0x0

    goto :goto_1c

    :cond_4d
    :goto_1b
    const/4 v5, 0x1

    :goto_1c
    iput-boolean v5, v1, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->panelIntercepting:Z

    :cond_4e
    iget-boolean v5, v1, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->isFullyCollapsedOnDown:Z

    if-eqz v5, :cond_50

    iget-boolean v5, v1, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->panelOpening:Z

    if-nez v5, :cond_4f

    move v5, v3

    goto :goto_1d

    :cond_4f
    const/4 v5, 0x1

    :goto_1d
    iput-boolean v5, v1, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->panelOpening:Z

    goto :goto_1f

    :cond_50
    iget-boolean v5, v1, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->isFullyExpandedOnDown:Z

    if-eqz v5, :cond_52

    iget-boolean v5, v1, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->nssCoveringQs:Z

    if-nez v5, :cond_51

    goto :goto_1e

    :cond_51
    const/4 v8, 0x1

    :goto_1e
    iput-boolean v8, v1, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->nssCoveringQs:Z

    :cond_52
    :goto_1f
    iget-boolean v5, v1, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->panelIntercepting:Z

    if-eqz v5, :cond_54

    iget-boolean v5, v1, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->nssCoveringQs:Z

    if-nez v5, :cond_54

    iget-boolean v5, v1, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->nssCoveredQs:Z

    if-nez v5, :cond_54

    const/16 v17, 0x0

    cmpl-float v5, v6, v17

    if-lez v5, :cond_53

    const/4 v5, 0x1

    goto :goto_20

    :cond_53
    const/4 v5, 0x0

    :goto_20
    invoke-virtual {v1, v5}, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->setPanelStretching(Z)V

    iget-boolean v5, v0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->panelStretching:Z

    const/16 v21, 0x1

    xor-int/lit8 v5, v5, 0x1

    iput-boolean v5, v1, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->panelCollapsing:Z

    goto :goto_21

    :cond_54
    invoke-virtual {v1, v3}, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->setPanelStretching(Z)V

    iput-boolean v7, v1, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->panelCollapsing:Z

    :goto_21
    iget-boolean v5, v1, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->nssCoveringQs:Z

    if-eqz v5, :cond_5b

    iget-object v4, v1, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->qsTopPaddingAnimator:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_55

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_55

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_55
    iget-object v4, v1, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v4, :cond_57

    if-eqz v4, :cond_56

    invoke-virtual {v4}, Landroid/view/VelocityTracker;->recycle()V

    :cond_56
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, v1, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->velocityTracker:Landroid/view/VelocityTracker;

    :cond_57
    iget-object v4, v1, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v4, :cond_58

    invoke-virtual {v4, v2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_58
    iget v4, v1, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->lastTouchY:F

    sub-float v4, v25, v4

    invoke-virtual/range {v23 .. v23}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->getExpanded()Z

    move-result v5

    if-eqz v5, :cond_59

    goto :goto_2a

    :cond_59
    invoke-virtual/range {v23 .. v23}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->getHeaderHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1}, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->calculateQsNotificationsTopPadding()F

    move-result v6

    cmpg-float v8, v5, v6

    if-gtz v8, :cond_5a

    iget v8, v1, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->qsTopPadding:F

    add-float/2addr v8, v4

    invoke-static {v8, v5, v6}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v4

    goto :goto_22

    :cond_5a
    iget v8, v1, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->qsTopPadding:F

    add-float/2addr v8, v4

    invoke-static {v8, v6, v5}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v4

    :goto_22
    invoke-virtual {v1, v4}, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->updateScrollerTopPadding(F)V

    goto :goto_2a

    :cond_5b
    iget-boolean v5, v1, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->panelIntercepting:Z

    if-eqz v5, :cond_68

    iget-boolean v5, v1, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->expandingFromHeadsUp:Z

    if-nez v5, :cond_68

    invoke-virtual/range {v22 .. v22}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/miui/utils/configs/MiuiConfigs;->isTinyScreenLandscape(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_68

    iget-object v5, v1, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->commandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/CommandQueue;->panelsEnabled()Z

    move-result v5

    if-eqz v5, :cond_68

    iget-object v5, v1, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->controlCenterController:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    invoke-virtual {v5}, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->isUseControlCenter()Z

    move-result v5

    if-nez v5, :cond_5c

    iget-boolean v5, v1, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->isKeyguardLocked:Z

    if-eqz v5, :cond_5c

    iget-object v5, v1, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->mKeyguardCommonSettingObserver:Lcom/miui/keyguard/KeyguardCommonSettingObserver;

    invoke-virtual {v5}, Lcom/miui/keyguard/KeyguardCommonSettingObserver;->getExpandableStatusBarUnderKeyguard()Z

    move-result v5

    if-nez v5, :cond_5c

    goto :goto_2a

    :cond_5c
    iget v5, v1, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->lastTouchY:F

    sub-float v5, v25, v5

    iget-object v6, v1, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->notificationStackScroller:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getNsslInjector()Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutInjector;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutInjector;->isScrolledToTop()Z

    move-result v6

    sget-boolean v8, Lcom/android/systemui/shade/NotificationPanelExpandController;->DEBUG:Z

    if-eqz v8, :cond_5d

    iget v8, v9, Lcom/android/systemui/shade/NotificationPanelExpandController;->expandHeight:F

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "onExpandChange "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v8, "NotificationPanelExpandController"

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5d
    iget-object v4, v9, Lcom/android/systemui/shade/NotificationPanelExpandController;->shadeTouchHandler:Ldagger/Lazy;

    invoke-interface {v4}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/systemui/shade/MiuiShadeTouchHandlerImpl;

    iget-boolean v8, v4, Lcom/miui/systemui/shade/MiuiShadeTouchHandlerImpl;->dispatchedToCtrl:Z

    if-eqz v8, :cond_5e

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    const/4 v15, 0x2

    if-ne v8, v15, :cond_5e

    iget-object v8, v4, Lcom/miui/systemui/shade/MiuiShadeTouchHandlerImpl;->startable:Lcom/miui/systemui/shade/ShadeStartable;

    iget-object v8, v8, Lcom/miui/systemui/shade/ShadeStartable;->controlCenter:Lcom/miui/interfaces/shade/ShadeWrapper;

    invoke-interface {v8}, Lcom/miui/interfaces/shade/ShadeWrapper;->getExpandController()Lcom/miui/interfaces/shade/PanelExpandControllerExt;

    move-result-object v8

    invoke-interface {v8}, Lcom/miui/interfaces/shade/PanelExpandControllerExt;->getAppearance()Z

    move-result v8

    if-nez v8, :cond_5e

    invoke-static {v2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v8

    const/4 v15, 0x3

    invoke-virtual {v8, v15}, Landroid/view/MotionEvent;->setAction(I)V

    iget-object v10, v4, Lcom/miui/systemui/shade/MiuiShadeTouchHandlerImpl;->controlCenterEventHandlerImpl:Lcom/miui/systemui/controlcenter/container/ControlCenterEventHandlerImpl;

    const-string v11, "notif_shade"

    invoke-virtual {v10, v8, v11}, Lcom/miui/systemui/controlcenter/container/ControlCenterEventHandlerImpl;->handleExpandEvent(Landroid/view/MotionEvent;Ljava/lang/String;)Z

    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    const/4 v8, 0x0

    iput-boolean v8, v4, Lcom/miui/systemui/shade/MiuiShadeTouchHandlerImpl;->dispatchedToCtrl:Z

    const/4 v15, 0x1

    iput-boolean v15, v4, Lcom/miui/systemui/shade/MiuiShadeTouchHandlerImpl;->forceInterruptControlCenterEvent:Z

    const-string v4, "MiuiShadeTouchHandler"

    const-string v8, "cancel control center event"

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5e
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v8, v9, Lcom/android/systemui/shade/NotificationPanelExpandController;->trackingInternal:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v10, 0x0

    invoke-virtual {v8, v10, v4}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget v4, v9, Lcom/android/systemui/shade/NotificationPanelExpandController;->expandHeight:F

    add-float/2addr v4, v5

    invoke-virtual {v9, v4}, Lcom/android/systemui/shade/NotificationPanelExpandController;->setExpandHeight(F)V

    iget v4, v9, Lcom/android/systemui/shade/NotificationPanelExpandController;->expandHeight:F

    iget v8, v9, Lcom/android/systemui/shade/NotificationPanelExpandController;->expandThresh:F

    cmpl-float v4, v4, v8

    if-ltz v4, :cond_5f

    const/4 v4, 0x1

    goto :goto_23

    :cond_5f
    const/4 v4, 0x0

    :goto_23
    iget-boolean v10, v9, Lcom/android/systemui/shade/NotificationPanelExpandController;->appearance:Z

    iget-object v11, v9, Lcom/android/systemui/shade/NotificationPanelExpandController;->panelAnimator:Lcom/android/systemui/shade/MiuiNotificationPanelAnimControllerImpl;

    iget-object v12, v9, Lcom/android/systemui/shade/NotificationPanelExpandController;->fakeFocusNotifController:Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;

    if-eq v10, v4, :cond_61

    invoke-virtual {v9, v4}, Lcom/android/systemui/shade/NotificationPanelExpandController;->setAppearance(Z)V

    iget-object v10, v9, Lcom/android/systemui/shade/NotificationPanelExpandController;->ambientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget-boolean v10, v10, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->expandingVisibleFromHeadsUp:Z

    if-eqz v10, :cond_60

    if-eqz v4, :cond_60

    iget-object v10, v9, Lcom/android/systemui/shade/NotificationPanelExpandController;->pipelineChoreographer:Lcom/android/systemui/statusbar/notification/collection/NotifPipelineChoreographerImpl;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/collection/NotifPipelineChoreographerImpl;->schedule()V

    :cond_60
    const/4 v15, 0x1

    invoke-virtual {v11, v4, v15, v15}, Lcom/android/systemui/shade/MiuiNotificationPanelAnimControllerImpl;->startPanelVisibleAnimation(ZZZ)V

    invoke-virtual {v12, v4, v15}, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->startVisibleAnimation(ZZ)V

    iget-boolean v4, v9, Lcom/android/systemui/shade/NotificationPanelExpandController;->appearance:Z

    invoke-virtual {v9, v4, v15}, Lcom/android/systemui/shade/NotificationPanelExpandController;->notifyAppearanceChanged(ZZ)V

    const/4 v4, 0x1

    goto :goto_24

    :cond_61
    const/4 v4, 0x0

    :goto_24
    iget v10, v9, Lcom/android/systemui/shade/NotificationPanelExpandController;->expandHeight:F

    const/4 v13, 0x0

    invoke-static {v10, v13, v8}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result v10

    div-float/2addr v10, v8

    sget v13, Lcom/android/systemui/shade/NotificationPanelExpansionAnimator;->$r8$clinit:I

    iget-object v13, v9, Lcom/android/systemui/shade/NotificationPanelExpandController;->headerExpansionAnimator:Lcom/android/systemui/shade/NotificationPanelExpansionAnimator;

    const/4 v15, 0x1

    invoke-virtual {v13, v10, v15}, Lcom/android/systemui/shade/NotificationPanelExpansionAnimator;->updateExpansion$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core(FZ)V

    const/high16 v13, 0x3f800000

    cmpl-float v10, v10, v13

    if-ltz v10, :cond_63

    if-eqz v6, :cond_62

    goto :goto_25

    :cond_62
    const/4 v15, 0x1

    goto :goto_26

    :cond_63
    :goto_25
    iget v6, v9, Lcom/android/systemui/shade/NotificationPanelExpandController;->expandHeight:F

    iget-object v10, v9, Lcom/android/systemui/shade/NotificationPanelExpandController;->headerStretchAnimator:Lcom/android/systemui/shade/NotificationPanelStretchAnimator;

    const/4 v13, 0x0

    const/4 v15, 0x1

    invoke-virtual {v10, v6, v8, v15, v13}, Lcom/android/systemui/shade/NotificationPanelStretchAnimator;->updateStretch$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core(FFZZ)V

    :goto_26
    invoke-virtual {v9}, Lcom/android/systemui/shade/NotificationPanelExpandController;->getCalculateBlurRatio()F

    move-result v6

    sget v10, Lcom/android/systemui/shade/NotificationPanelBlurAnimator;->$r8$clinit:I

    iget-object v10, v9, Lcom/android/systemui/shade/NotificationPanelExpandController;->blurAnimator:Lcom/android/systemui/shade/NotificationPanelBlurAnimator;

    invoke-virtual {v10, v6, v15}, Lcom/android/systemui/shade/NotificationPanelBlurAnimator;->updateBlurRatio$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core(FZ)V

    iget v6, v9, Lcom/android/systemui/shade/NotificationPanelExpandController;->expandHeight:F

    invoke-virtual {v9, v6, v8, v15, v15}, Lcom/android/systemui/shade/NotificationPanelExpandController;->notifyExpandHeightChanged(FFZZ)V

    if-eqz v4, :cond_64

    goto :goto_2a

    :cond_64
    iget v4, v9, Lcom/android/systemui/shade/NotificationPanelExpandController;->frameCount:I

    move v8, v5

    const-wide/16 v5, 0x1000

    const-string v10, "mPanelFrameCount"

    invoke-static {v5, v6, v10, v4}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    iget v4, v9, Lcom/android/systemui/shade/NotificationPanelExpandController;->frameCount:I

    iget v5, v9, Lcom/android/systemui/shade/NotificationPanelExpandController;->frameSampleRate:I

    rem-int/2addr v4, v5

    if-nez v4, :cond_66

    const/16 v17, 0x0

    cmpl-float v4, v8, v17

    if-lez v4, :cond_65

    const/4 v4, 0x1

    goto :goto_27

    :cond_65
    const/4 v4, 0x0

    :goto_27
    iget v5, v9, Lcom/android/systemui/shade/NotificationPanelExpandController;->expandHeight:F

    const/16 v6, 0x10

    const/4 v15, 0x1

    invoke-static {v11, v4, v5, v15, v6}, Lcom/android/systemui/shade/MiuiNotificationPanelAnimControllerImpl;->startPanelExpandAnimation$default(Lcom/android/systemui/shade/MiuiNotificationPanelAnimControllerImpl;ZFZI)V

    goto :goto_28

    :cond_66
    const/4 v15, 0x1

    :goto_28
    iget v4, v9, Lcom/android/systemui/shade/NotificationPanelExpandController;->frameCount:I

    add-int/2addr v4, v15

    iput v4, v9, Lcom/android/systemui/shade/NotificationPanelExpandController;->frameCount:I

    const/16 v17, 0x0

    cmpl-float v4, v8, v17

    if-lez v4, :cond_67

    const/4 v4, 0x1

    goto :goto_29

    :cond_67
    const/4 v4, 0x0

    :goto_29
    iget v5, v9, Lcom/android/systemui/shade/NotificationPanelExpandController;->expandHeight:F

    invoke-virtual {v12, v5, v4}, Lcom/android/systemui/statusbar/notification/policy/FakeFocusNotifControllerImpl;->startExpandAnimation(FZ)V

    :cond_68
    :goto_2a
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->panelStretching:Z

    iget-boolean v4, v1, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->panelCollapsing:Z

    iget-boolean v5, v1, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->panelOpening:Z

    iget-boolean v6, v1, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->isFullyCollapsedOnDown:Z

    iget-boolean v8, v1, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->isFullyExpandedOnDown:Z

    iget-boolean v9, v1, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->hidePanelPending:Z

    const-string v10, "MNPVC touch: stretching="

    const-string v11, " collapsing="

    invoke-static {v10, v11, v14, v3, v7}, Lcom/android/keyguard/clock/animation/eastern/EasterArtACClockBaseAnimation$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v10, v30

    move-object/from16 v7, v31

    invoke-static {v3, v0, v10, v4, v7}, Lcom/android/keyguard/MiuiBleUnlockHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    move-object/from16 v4, v28

    move-object/from16 v11, v29

    invoke-static {v3, v5, v11, v6, v4}, Lcom/android/keyguard/MiuiBleUnlockHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-object/from16 v5, v27

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v3, v26

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    :cond_69
    :goto_2b
    move/from16 v1, v25

    goto :goto_34

    :goto_2c
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    iget-boolean v8, v1, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->panelIntercepting:Z

    iget-boolean v12, v0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->panelStretching:Z

    iget-boolean v13, v1, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->panelCollapsing:Z

    iget-boolean v15, v1, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->panelOpening:Z

    move-object/from16 v26, v9

    iget-boolean v9, v1, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->isFullyCollapsedOnDown:Z

    iget-boolean v2, v1, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->isFullyExpandedOnDown:Z

    move-object/from16 v27, v0

    iget-boolean v0, v1, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->hidePanelPending:Z

    move-object/from16 v28, v1

    const-string v1, "MNPVC touch: "

    move-object/from16 v29, v3

    const-string v3, " mPanelIntercepting="

    invoke-static {v1, v6, v3, v8, v14}, Lcom/android/keyguard/ext/KeyguardUnlockAnimationControllerExtKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v1, v12, v10, v13, v7}, Lcom/android/keyguard/MiuiBleUnlockHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-static {v1, v15, v11, v9, v4}, Lcom/android/keyguard/MiuiBleUnlockHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v3, v29

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v27

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isDynamicIslandExpand:Z

    if-eqz v1, :cond_6b

    invoke-virtual/range {v28 .. v28}, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->getPanelViewController()Lcom/android/systemui/shade/NotificationPanelViewController;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/notification/headsup/HeadsUpTouchHelper;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/headsup/HeadsUpTouchHelper;->mInjector:Lcom/android/systemui/statusbar/notification/HeadsUpTouchHelperInjectorImpl;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/notification/HeadsUpTouchHelperInjectorImpl;->trackingMiniWindowHeadsUp:Z

    if-nez v1, :cond_6b

    invoke-virtual/range {v28 .. v28}, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->getPanelViewController()Lcom/android/systemui/shade/NotificationPanelViewController;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/notification/headsup/HeadsUpTouchHelper;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/notification/headsup/HeadsUpTouchHelper;->mCollapseSnoozes:Z

    if-eqz v1, :cond_6b

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getTrackedHeadsUpRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v0

    if-eqz v0, :cond_6b

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getInjector()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowInjector;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableViewInjector;->folme:Lmiuix/animation/IStateStyle;

    if-eqz v1, :cond_6a

    sget-object v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowInjector;->FOLME_NOTIF_TOUCH_SCALE_Y:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowInjector$Companion$FOLME_NOTIF_TOUCH_ALPHA$1;

    sget-object v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowInjector;->FOLME_NOTIF_TOUCH_ALPHA:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowInjector$Companion$FOLME_NOTIF_TOUCH_ALPHA$1;

    sget-object v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowInjector;->FOLME_NOTIF_TOUCH_SCALE_X:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRowInjector$Companion$FOLME_NOTIF_TOUCH_ALPHA$1;

    filled-new-array {v4, v2, v3}, [Lmiuix/animation/property/FloatProperty;

    move-result-object v2

    invoke-interface {v1, v2}, Lmiuix/animation/ICancelableStyle;->cancel([Lmiuix/animation/property/FloatProperty;)V

    :cond_6a
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationHeadsUpWithDynamicIslandAnimation;->headsUpDisappear(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    :cond_6b
    move-object/from16 v0, v28

    iget-boolean v1, v0, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->nssCoveringQs:Z

    if-eqz v1, :cond_76

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_6c

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_2d

    :cond_6c
    move-object/from16 v2, p1

    :goto_2d
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_6d

    const/16 v3, 0x3e8

    invoke-virtual {v1, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    :cond_6d
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_6e

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v11

    move v7, v11

    goto :goto_2e

    :cond_6e
    const/4 v7, 0x0

    :goto_2e
    invoke-virtual/range {v23 .. v23}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->getHeaderHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->calculateQsNotificationsTopPadding()F

    move-result v3

    iget v5, v0, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->qsTopPadding:F

    cmpg-float v4, v5, v1

    if-nez v4, :cond_6f

    goto :goto_2f

    :cond_6f
    const/16 v17, 0x0

    cmpg-float v4, v7, v17

    if-gez v4, :cond_70

    :goto_2f
    const/4 v9, 0x1

    goto :goto_30

    :cond_70
    const/4 v9, 0x0

    :goto_30
    if-eqz v9, :cond_71

    move v6, v1

    :goto_31
    const/4 v15, 0x2

    goto :goto_32

    :cond_71
    move v6, v3

    goto :goto_31

    :goto_32
    new-array v1, v15, [F

    const/16 v19, 0x0

    aput v5, v1, v19

    const/16 v21, 0x1

    aput v6, v1, v21

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->qsTopPaddingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->getPanelViewController()Lcom/android/systemui/shade/NotificationPanelViewController;

    move-result-object v1

    iget-object v3, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mFlingAnimationUtils:Lcom/android/wm/shell/animation/FlingAnimationUtils;

    iget-object v4, v0, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->qsTopPaddingAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sub-float v1, v6, v5

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-virtual/range {v3 .. v8}, Lcom/android/wm/shell/animation/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFFF)V

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->qsTopPaddingAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_72

    new-instance v3, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector$endNssCoveringQsMotion$1;

    invoke-direct {v3, v0}, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector$endNssCoveringQsMotion$1;-><init>(Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_72
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->qsTopPaddingAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_73

    new-instance v3, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector$endNssCoveringQsMotion$2;

    invoke-direct {v3, v0, v9}, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector$endNssCoveringQsMotion$2;-><init>(Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;Z)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_73
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->qsTopPaddingAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_74

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    :cond_74
    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_75

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    :cond_75
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->velocityTracker:Landroid/view/VelocityTracker;

    goto :goto_33

    :cond_76
    move-object/from16 v2, p1

    :goto_33
    iget-boolean v1, v0, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->panelIntercepting:Z

    if-eqz v1, :cond_77

    invoke-virtual/range {v22 .. v22}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/utils/configs/MiuiConfigs;->isTinyScreenLandscape(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_77

    invoke-virtual/range {v26 .. v26}, Lcom/android/systemui/shade/NotificationPanelExpandController;->onExpandFinish()V

    :cond_77
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->panelOpening:Z

    invoke-virtual {v0, v3}, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->setPanelStretching(Z)V

    iput-boolean v3, v0, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->panelCollapsing:Z

    iput-boolean v3, v0, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->panelIntercepting:Z

    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->getPanelViewController()Lcom/android/systemui/shade/NotificationPanelViewController;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mUseExternalTouch:Z

    if-nez v1, :cond_78

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v15, 0x3

    if-eq v1, v15, :cond_69

    :cond_78
    iput-boolean v3, v0, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->isFullyCollapsedOnDown:Z

    iput-boolean v3, v0, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->isFullyExpandedOnDown:Z

    goto :goto_2b

    :cond_79
    move-object v0, v1

    move/from16 v25, v3

    move v3, v10

    move-object/from16 v24, v15

    iput v5, v0, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->initialTouchX:F

    move/from16 v1, v25

    iput v1, v0, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->initialTouchY:F

    iput v1, v0, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->lastTouchY:F

    iput-boolean v3, v0, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->panelOpening:Z

    invoke-virtual {v0, v3}, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->setPanelStretching(Z)V

    iput-boolean v3, v0, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->panelCollapsing:Z

    iput-boolean v3, v0, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->panelIntercepting:Z

    iput-boolean v3, v0, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->allowParentInterceptSwitchEvent:Z

    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->getPanelViewController()Lcom/android/systemui/shade/NotificationPanelViewController;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->getPanelViewController()Lcom/android/systemui/shade/NotificationPanelViewController;

    move-result-object v4

    invoke-virtual {v4, v5, v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->isInContentBounds$2(FF)Z

    move-result v4

    const/16 v21, 0x1

    xor-int/lit8 v4, v4, 0x1

    iput-boolean v4, v3, Lcom/android/systemui/shade/NotificationPanelViewController;->mTouchStartedInEmptyArea:Z

    :goto_34
    iput v1, v0, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->lastTouchY:F

    iget-boolean v0, v0, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->panelIntercepting:Z

    if-eqz v0, :cond_7b

    const/4 v9, 0x1

    goto :goto_36

    :cond_7a
    move-object v0, v1

    move-object/from16 v24, v15

    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->resetPanelTouchState()V

    :cond_7b
    :goto_35
    const/4 v9, 0x0

    :goto_36
    if-eqz v9, :cond_7c

    const-string v0, "onTouch: mTouchHandlerInjector Notification miui touch intercepted "

    move-object/from16 v15, v24

    invoke-virtual {v15, v2, v0}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEvent(Landroid/view/MotionEvent;Ljava/lang/String;)V

    const/4 v9, 0x1

    goto :goto_37

    :cond_7c
    const/4 v9, 0x0

    :goto_37
    if-eqz v9, :cond_7e

    :cond_7d
    :goto_38
    const/16 v21, 0x1

    goto :goto_3b

    :cond_7e
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_7f

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    move-object/from16 v3, p0

    iget-object v4, v3, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-wide v5, v4, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarLongPressDowntime:J

    cmp-long v0, v0, v5

    if-nez v0, :cond_80

    const-string v0, "Touch has same down time as Status Bar long press. Ignoring."

    iget-object v1, v4, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    invoke-virtual {v1, v0}, Lcom/android/systemui/shade/ShadeLogger;->d(Ljava/lang/String;)V

    const/16 v19, 0x0

    return v19

    :cond_7f
    move-object/from16 v3, p0

    :cond_80
    iget-object v0, v3, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotifInjector:Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;

    iget-object v1, v1, Lcom/android/systemui/shade/NotificationPanelViewControllerInjector;->foldManager:Lcom/android/systemui/statusbar/notification/history/IFoldNotifManager;

    check-cast v1, Lcom/android/systemui/statusbar/notification/history/FoldNotifManagerImpl;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/notification/history/FoldNotifManagerImpl;->isShowingFold:Z

    if-nez v1, :cond_82

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/notification/headsup/HeadsUpTouchHelper;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/notification/headsup/HeadsUpTouchHelper;->mTrackingHeadsUp:Z

    if-nez v1, :cond_82

    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    move-result v1

    iget-object v4, v3, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v5, v4, Lcom/android/systemui/shade/NotificationPanelViewController;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v5, :cond_81

    iget-boolean v4, v4, Lcom/android/systemui/shade/NotificationPanelViewController;->mIsSpringBackAnimation:Z

    if-nez v4, :cond_81

    const/4 v4, 0x1

    goto :goto_39

    :cond_81
    const/4 v4, 0x0

    :goto_39
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mQsController:Lcom/android/systemui/shade/QuickSettingsControllerImpl;

    invoke-virtual {v0, v2, v1, v4}, Lcom/android/systemui/shade/QuickSettingsControllerImpl;->handleTouch(Landroid/view/MotionEvent;ZZ)Z

    move-result v0

    if-eqz v0, :cond_82

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v15, 0x2

    if-eq v0, v15, :cond_7d

    iget-object v0, v3, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mShadeLog:Lcom/android/systemui/shade/ShadeLogger;

    const-string v1, "onTouch: handleQsTouch handled event"

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/shade/ShadeLogger;->logMotionEvent(Landroid/view/MotionEvent;Ljava/lang/String;)V

    const/16 v21, 0x1

    return v21

    :cond_82
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_83

    iget-object v0, v3, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    move-result v0

    if-eqz v0, :cond_83

    iget-object v0, v3, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const-string v1, "panel_open"

    const/4 v15, 0x1

    invoke-virtual {v0, v1, v15}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V

    const/16 v16, 0x1

    :cond_83
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->handleTouch$1(Landroid/view/MotionEvent;)Z

    move-result v0

    or-int v0, v16, v0

    iget-object v1, v3, Lcom/android/systemui/shade/NotificationPanelViewController$TouchHandler;->this$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-boolean v1, v1, Lcom/android/systemui/shade/NotificationPanelViewController;->mDozing:Z

    if-eqz v1, :cond_7d

    if-eqz v0, :cond_84

    goto :goto_38

    :cond_84
    const/16 v19, 0x0

    :goto_3a
    return v19

    :goto_3b
    return v21

    :array_0
    .array-data 4
        0x3f733333
        0x3e3851ec
    .end array-data
.end method

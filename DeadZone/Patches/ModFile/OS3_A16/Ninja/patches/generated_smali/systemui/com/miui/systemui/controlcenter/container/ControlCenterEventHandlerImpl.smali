.class public final Lcom/miui/systemui/controlcenter/container/ControlCenterEventHandlerImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/miui/interfaces/controlcenter/ControlCenterEventHandler;


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final container:Ldagger/Lazy;

.field public final contentController:Lcom/miui/systemui/controlcenter/container/ControlCenterContentController;

.field public final context:Landroid/content/Context;

.field public final controlCenterSettingsController:Lcom/miui/systemui/controller/ControlCenterSettingsController;

.field public final expandDelegate:Lcom/miui/systemui/controlcenter/container/ControlCenterExpandControllerDelegate;

.field public handlingExpand:Z

.field public final interactiveManager:Lcom/miui/systemui/shade/PanelInteractiveManager;

.field public interactiveOnDown:Z

.field public final isFlipDevice:Z

.field public final keyguardUpdateMonitor:Lcom/android/keyguard/stub/MiuiKeyguardUpdateMonitorStub;

.field public receivedSelfEvent:Z

.field public final shadeStartable:Lcom/miui/systemui/shade/ShadeStartable;

.field public final shadeSwitchController:Lcom/miui/systemui/shade/ShadeSwitchControllerImpl;

.field public final startable:Lcom/miui/systemui/controlcenter/ControlCenterImpl;

.field public final statusBarDelegate:Lcom/android/systemui/statusbar/policy/StatusBarDelegateImpl;

.field public final statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-boolean v0, Lcom/miui/utils/configs/MiuiDebugConfig;->DEBUG_CONTROL_CENTER:Z

    sput-boolean v0, Lcom/miui/systemui/controlcenter/container/ControlCenterEventHandlerImpl;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Ldagger/Lazy;Landroid/content/Context;Lcom/miui/systemui/controlcenter/ControlCenterImpl;Lcom/miui/systemui/controlcenter/container/ControlCenterContentController;Lcom/miui/systemui/controller/ControlCenterSettingsController;Lcom/miui/systemui/controlcenter/container/ControlCenterExpandControllerDelegate;Lcom/miui/systemui/shade/PanelInteractiveManager;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/policy/StatusBarDelegateImpl;Lcom/android/keyguard/stub/MiuiKeyguardUpdateMonitorStub;Lcom/miui/systemui/shade/ShadeStartable;Lcom/miui/systemui/shade/ShadeSwitchControllerImpl;)V
    .registers 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/systemui/controlcenter/container/ControlCenterEventHandlerImpl;->container:Ldagger/Lazy;

    iput-object p2, p0, Lcom/miui/systemui/controlcenter/container/ControlCenterEventHandlerImpl;->context:Landroid/content/Context;

    iput-object p3, p0, Lcom/miui/systemui/controlcenter/container/ControlCenterEventHandlerImpl;->startable:Lcom/miui/systemui/controlcenter/ControlCenterImpl;

    iput-object p4, p0, Lcom/miui/systemui/controlcenter/container/ControlCenterEventHandlerImpl;->contentController:Lcom/miui/systemui/controlcenter/container/ControlCenterContentController;

    iput-object p5, p0, Lcom/miui/systemui/controlcenter/container/ControlCenterEventHandlerImpl;->controlCenterSettingsController:Lcom/miui/systemui/controller/ControlCenterSettingsController;

    iput-object p6, p0, Lcom/miui/systemui/controlcenter/container/ControlCenterEventHandlerImpl;->expandDelegate:Lcom/miui/systemui/controlcenter/container/ControlCenterExpandControllerDelegate;

    iput-object p7, p0, Lcom/miui/systemui/controlcenter/container/ControlCenterEventHandlerImpl;->interactiveManager:Lcom/miui/systemui/shade/PanelInteractiveManager;

    iput-object p8, p0, Lcom/miui/systemui/controlcenter/container/ControlCenterEventHandlerImpl;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iput-object p9, p0, Lcom/miui/systemui/controlcenter/container/ControlCenterEventHandlerImpl;->statusBarDelegate:Lcom/android/systemui/statusbar/policy/StatusBarDelegateImpl;

    iput-object p10, p0, Lcom/miui/systemui/controlcenter/container/ControlCenterEventHandlerImpl;->keyguardUpdateMonitor:Lcom/android/keyguard/stub/MiuiKeyguardUpdateMonitorStub;

    iput-object p11, p0, Lcom/miui/systemui/controlcenter/container/ControlCenterEventHandlerImpl;->shadeStartable:Lcom/miui/systemui/shade/ShadeStartable;

    iput-object p12, p0, Lcom/miui/systemui/controlcenter/container/ControlCenterEventHandlerImpl;->shadeSwitchController:Lcom/miui/systemui/shade/ShadeSwitchControllerImpl;

    sget-object p1, Lcom/miui/utils/configs/MiuiConfigs;->CUSTOMIZED_REGION:Ljava/lang/String;

    invoke-static {}, Lmiui/util/MiuiMultiDisplayTypeInfo;->isFlipDevice()Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/systemui/controlcenter/container/ControlCenterEventHandlerImpl;->isFlipDevice:Z

    return-void
.end method


# virtual methods
.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)V
    .registers 3

    iget-object v0, p0, Lcom/miui/systemui/controlcenter/container/ControlCenterEventHandlerImpl;->contentController:Lcom/miui/systemui/controlcenter/container/ControlCenterContentController;

    iget-object v0, v0, Lcom/miui/systemui/controlcenter/container/ControlCenterContentController;->content:Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterContent;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean p0, p0, Lcom/miui/systemui/controlcenter/container/ControlCenterEventHandlerImpl;->interactiveOnDown:Z

    if-eqz p0, :cond_1

    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterContent;->handleExpandTouchEvent(Landroid/view/MotionEvent;)Z

    return-void

    :cond_1
    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterContent;->handleExternalTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public final handleExpandEvent(Landroid/view/MotionEvent;Ljava/lang/String;)Z
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Lcom/miui/systemui/controlcenter/container/ControlCenterEventHandlerImpl;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    iget-object v3, v0, Lcom/miui/systemui/controlcenter/container/ControlCenterEventHandlerImpl;->container:Ldagger/Lazy;

    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/systemui/controlcenter/container/ControlCenterContainer;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-object v4, v0, Lcom/miui/systemui/controlcenter/container/ControlCenterEventHandlerImpl;->contentController:Lcom/miui/systemui/controlcenter/container/ControlCenterContentController;

    iget-object v4, v4, Lcom/miui/systemui/controlcenter/container/ControlCenterContentController;->content:Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterContent;

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    iget-object v7, v0, Lcom/miui/systemui/controlcenter/container/ControlCenterEventHandlerImpl;->controlCenterSettingsController:Lcom/miui/systemui/controller/ControlCenterSettingsController;

    check-cast v7, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    invoke-virtual {v7}, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->isUseControlCenter()Z

    move-result v8

    invoke-virtual {v7}, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->isPanelEnabled()Z

    move-result v7

    iget-object v9, v0, Lcom/miui/systemui/controlcenter/container/ControlCenterEventHandlerImpl;->startable:Lcom/miui/systemui/controlcenter/ControlCenterImpl;

    const-string v10, "ControlCenterEventHandler"

    sget-boolean v11, Lcom/miui/systemui/controlcenter/container/ControlCenterEventHandlerImpl;->DEBUG:Z

    if-eqz v11, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v12

    invoke-virtual {v9}, Lcom/miui/systemui/controlcenter/ControlCenterImpl;->getExpanded()Z

    move-result v13

    iget-boolean v14, v0, Lcom/miui/systemui/controlcenter/container/ControlCenterEventHandlerImpl;->handlingExpand:Z

    const-string v15, "handleExpandTouchEvent "

    const-string v6, " expanded: "

    const-string v5, " handlingExpand: "

    invoke-static {v15, v12, v6, v13, v5}, Lcom/android/keyguard/ext/KeyguardUnlockAnimationControllerExtKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", useControlCenter: "

    const-string v12, ", panelEnabled: "

    invoke-static {v5, v14, v6, v8, v12}, Lcom/android/keyguard/MiuiBleUnlockHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-static {v5, v10, v7}, Lcom/android/keyguard/BaseMiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    :cond_2
    if-eqz v4, :cond_3

    if-eqz v8, :cond_3

    if-nez v7, :cond_4

    :cond_3
    const/4 v7, 0x0

    goto :goto_d

    :cond_4
    iget-boolean v4, v0, Lcom/miui/systemui/controlcenter/container/ControlCenterEventHandlerImpl;->handlingExpand:Z

    if-nez v4, :cond_11

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    if-nez v4, :cond_11

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v5

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    :goto_2
    int-to-float v5, v5

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v3

    goto :goto_3

    :cond_6
    const/4 v3, 0x0

    :goto_3
    int-to-float v3, v3

    iget-boolean v6, v0, Lcom/miui/systemui/controlcenter/container/ControlCenterEventHandlerImpl;->isFlipDevice:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_7

    iget-object v8, v0, Lcom/miui/systemui/controlcenter/container/ControlCenterEventHandlerImpl;->context:Landroid/content/Context;

    invoke-static {v8}, Lcom/miui/utils/configs/MiuiConfigs;->isTinyScreen(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_8

    :cond_7
    move v3, v7

    move v5, v3

    :cond_8
    sub-float v8, v2, v5

    sub-float/2addr v8, v3

    iget-object v12, v0, Lcom/miui/systemui/controlcenter/container/ControlCenterEventHandlerImpl;->context:Landroid/content/Context;

    invoke-static {v12}, Landroidx/appcompat/widget/MenuPopupWindow$MenuDropDownListView$$ExternalSyntheticOutline0;->m(Landroid/content/Context;)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_9

    const/4 v12, 0x1

    goto :goto_4

    :cond_9
    const/4 v12, 0x0

    :goto_4
    iget-object v13, v0, Lcom/miui/systemui/controlcenter/container/ControlCenterEventHandlerImpl;->controlCenterSettingsController:Lcom/miui/systemui/controller/ControlCenterSettingsController;

    check-cast v13, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    invoke-virtual {v13}, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->isControlPanelSwitchSide()Z

    move-result v13

    xor-int/2addr v12, v13

    const/4 v13, 0x2

    if-eqz v12, :cond_a

    move v14, v5

    goto :goto_5

    :cond_a
    int-to-float v14, v13

    div-float v14, v8, v14

    add-float/2addr v14, v5

    :goto_5
    if-eqz v12, :cond_b

    int-to-float v13, v13

    div-float/2addr v8, v13

    add-float/2addr v8, v5

    goto :goto_6

    :cond_b
    add-float/2addr v8, v5

    :goto_6
    if-eqz v6, :cond_d

    iget-object v6, v0, Lcom/miui/systemui/controlcenter/container/ControlCenterEventHandlerImpl;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/miui/utils/configs/MiuiConfigs;->isCutoutRight(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_d

    iget-object v6, v0, Lcom/miui/systemui/controlcenter/container/ControlCenterEventHandlerImpl;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/miui/utils/configs/MiuiConfigs;->isTinyScreen(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_d

    if-eqz v12, :cond_c

    goto :goto_7

    :cond_c
    move v7, v3

    :goto_7
    add-float/2addr v8, v7

    :cond_d
    cmpl-float v6, v4, v14

    if-lez v6, :cond_e

    cmpg-float v6, v4, v8

    if-gez v6, :cond_e

    const/4 v6, 0x1

    goto :goto_8

    :cond_e
    const/4 v6, 0x0

    :goto_8
    iput-boolean v6, v0, Lcom/miui/systemui/controlcenter/container/ControlCenterEventHandlerImpl;->handlingExpand:Z

    invoke-virtual {v9}, Lcom/miui/systemui/controlcenter/ControlCenterImpl;->getExpanded()Z

    move-result v6

    if-eqz v6, :cond_10

    iget-object v6, v0, Lcom/miui/systemui/controlcenter/container/ControlCenterEventHandlerImpl;->interactiveManager:Lcom/miui/systemui/shade/PanelInteractiveManager;

    iget-object v6, v6, Lcom/miui/systemui/shade/PanelInteractiveManager;->controlCenterInteractive:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object v6, v6, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->$$delegate_0:Lkotlinx/coroutines/flow/MutableStateFlow;

    check-cast v6, Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v6}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_f

    goto :goto_9

    :cond_f
    const/4 v6, 0x0

    goto :goto_a

    :cond_10
    :goto_9
    const/4 v6, 0x1

    :goto_a
    iput-boolean v6, v0, Lcom/miui/systemui/controlcenter/container/ControlCenterEventHandlerImpl;->interactiveOnDown:Z

    const/4 v7, 0x0

    iput-boolean v7, v0, Lcom/miui/systemui/controlcenter/container/ControlCenterEventHandlerImpl;->receivedSelfEvent:Z

    if-eqz v11, :cond_11

    iget-boolean v7, v0, Lcom/miui/systemui/controlcenter/container/ControlCenterEventHandlerImpl;->handlingExpand:Z

    const-string v9, "handling down expand event, downX "

    const-string v11, ", start "

    const-string v13, ", end "

    invoke-static {v9, v4, v11, v14, v13}, Landroidx/compose/animation/core/CubicBezierEasing$$ExternalSyntheticOutline0;->m(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ", handlingExpand "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " interactiveOnDown "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " width "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " left "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " right "

    const-string v6, " rtl "

    invoke-static {v4, v5, v2, v3, v6}, Landroidx/compose/animation/core/CubicBezierEasing$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;FLjava/lang/String;)V

    invoke-static {v4, v10, v12}, Lcom/android/keyguard/BaseMiuiKeyguardCameraViewInternal$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    :cond_11
    iget-boolean v2, v0, Lcom/miui/systemui/controlcenter/container/ControlCenterEventHandlerImpl;->handlingExpand:Z

    if-eqz v2, :cond_17

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v13, 0x1

    if-eq v2, v13, :cond_14

    const/4 v1, 0x3

    if-eq v2, v1, :cond_12

    invoke-virtual/range {p0 .. p1}, Lcom/miui/systemui/controlcenter/container/ControlCenterEventHandlerImpl;->dispatchTouchEvent(Landroid/view/MotionEvent;)V

    return v13

    :cond_12
    iget-boolean v1, v0, Lcom/miui/systemui/controlcenter/container/ControlCenterEventHandlerImpl;->receivedSelfEvent:Z

    const-string v2, "cancel handling expand event receivedSelfEvent "

    invoke-static {v2, v10, v1}, Lcom/android/keyguard/clock/animation/TinyBubbleClockAnimation$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-boolean v1, v0, Lcom/miui/systemui/controlcenter/container/ControlCenterEventHandlerImpl;->receivedSelfEvent:Z

    if-nez v1, :cond_13

    invoke-virtual/range {p0 .. p1}, Lcom/miui/systemui/controlcenter/container/ControlCenterEventHandlerImpl;->dispatchTouchEvent(Landroid/view/MotionEvent;)V

    const/4 v7, 0x0

    iput-boolean v7, v0, Lcom/miui/systemui/controlcenter/container/ControlCenterEventHandlerImpl;->handlingExpand:Z

    :cond_13
    return v13

    :cond_14
    iget-boolean v2, v0, Lcom/miui/systemui/controlcenter/container/ControlCenterEventHandlerImpl;->receivedSelfEvent:Z

    if-eqz v2, :cond_15

    const-string v2, "overview_proxy"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    const-string v2, "status_bar"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_b

    :cond_15
    const/16 v16, 0x1

    goto :goto_c

    :cond_16
    :goto_b
    const-string v0, "ignore ACTION_UP once received self event."

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v16, 0x1

    return v16

    :goto_c
    invoke-virtual/range {p0 .. p1}, Lcom/miui/systemui/controlcenter/container/ControlCenterEventHandlerImpl;->dispatchTouchEvent(Landroid/view/MotionEvent;)V

    const/4 v7, 0x0

    iput-boolean v7, v0, Lcom/miui/systemui/controlcenter/container/ControlCenterEventHandlerImpl;->handlingExpand:Z

    return v16

    :cond_17
    const/4 v7, 0x0

    return v7

    :goto_d
    iput-boolean v7, v0, Lcom/miui/systemui/controlcenter/container/ControlCenterEventHandlerImpl;->handlingExpand:Z

    return v7
.end method

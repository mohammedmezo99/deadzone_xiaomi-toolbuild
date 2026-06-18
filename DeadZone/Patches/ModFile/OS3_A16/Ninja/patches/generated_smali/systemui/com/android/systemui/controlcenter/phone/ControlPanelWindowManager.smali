.class public final Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;
.implements Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterWindowView$OnExpandChangeListener;
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/plugins/miui/controlcenter/FakeStatusBarViewController$StatusBarViewsListener;


# instance fields
.field public added:Z

.field public final applyLayout:Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager$applyLayout$1;

.field public final blurUtils:Lcom/android/systemui/statusbar/policy/BlurUtilsExt;

.field public final choreographer:Landroid/view/Choreographer;

.field public final context:Landroid/content/Context;

.field public final controlCenterController:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

.field public downX:F

.field public final headsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

.field public isExpand:Z

.field public lp:Landroid/view/WindowManager$LayoutParams;

.field public lpChanged:Landroid/view/WindowManager$LayoutParams;

.field public final ncSwitchController:Ldagger/Lazy;

.field public final notifyListeners:Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager$applyLayout$1;

.field public final onWindowChangeListeners:Landroid/util/ArraySet;

.field public pendingApplyLayout:Z

.field public pendingNotifyListeners:Z

.field public final statusBar:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

.field public statusIcons:Landroid/view/View;

.field public final statusIconsOnDrawListener:Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager$windowViewOnDrawListener$1;

.field public themeBg:Landroid/view/View;

.field public transToControlPanel:Z

.field public visibility:I

.field public final windowManager:Landroid/view/WindowManager;

.field public windowView:Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterWindowView;

.field public final windowViewOnDrawListener:Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager$windowViewOnDrawListener$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/CentralSurfaces;Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/statusbar/policy/BlurUtilsExt;Ldagger/Lazy;Landroid/view/Choreographer;Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->statusBar:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    iput-object p3, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->controlCenterController:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    iput-object p4, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->headsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    iput-object p5, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->blurUtils:Lcom/android/systemui/statusbar/policy/BlurUtilsExt;

    iput-object p6, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->ncSwitchController:Ldagger/Lazy;

    iput-object p7, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->choreographer:Landroid/view/Choreographer;

    const-string p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->windowManager:Landroid/view/WindowManager;

    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->onWindowChangeListeners:Landroid/util/ArraySet;

    const/16 p1, 0x8

    iput p1, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->visibility:I

    new-instance p1, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager$windowViewOnDrawListener$1;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager$windowViewOnDrawListener$1;-><init>(Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;I)V

    iput-object p1, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->statusIconsOnDrawListener:Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager$windowViewOnDrawListener$1;

    new-instance p1, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager$windowViewOnDrawListener$1;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p3}, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager$windowViewOnDrawListener$1;-><init>(Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;I)V

    iput-object p1, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->windowViewOnDrawListener:Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager$windowViewOnDrawListener$1;

    new-instance p1, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager$applyLayout$1;

    invoke-direct {p1, p0, p3}, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager$applyLayout$1;-><init>(Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;I)V

    iput-object p1, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->applyLayout:Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager$applyLayout$1;

    new-instance p1, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager$applyLayout$1;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager$applyLayout$1;-><init>(Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;I)V

    iput-object p1, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->notifyListeners:Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager$applyLayout$1;

    invoke-virtual {p8, p0}, Lcom/android/systemui/statusbar/policy/FakeStatusBarViewControllerImpl;->addStatusBarViewsListener(Lcom/android/systemui/plugins/miui/controlcenter/FakeStatusBarViewController$StatusBarViewsListener;)V

    return-void
.end method


# virtual methods
.method public final dispatchToControlPanel(Landroid/view/MotionEvent;F)Z
    .registers 6

    iget-boolean v0, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->added:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->controlCenterController:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->useControlCenter:Z

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->downX:F

    :cond_1
    iget v0, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->downX:F

    const/high16 v2, 0x40000000

    div-float/2addr p2, v2

    cmpl-float p2, v0, p2

    iget-object v0, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->controlCenterController:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->controlPanelSwitchSide:Z

    if-eqz v0, :cond_2

    mul-int/lit8 p2, p2, -0x1

    :cond_2
    if-lez p2, :cond_4

    iget-object p0, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->windowView:Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterWindowView;

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    if-eqz p0, :cond_4

    const/4 p2, 0x1

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterWindowView;->handleMotionEvent(Landroid/view/MotionEvent;Z)Z

    move-result v1

    :cond_4
    :goto_0
    return v1
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 3

    const-string p2, "ControlPanelWindowManager state:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->added:Z

    const-string p2, "  added="

    invoke-static {p2, p0, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    return-void
.end method

.method public final onExpandChange(Z)V
    .registers 9

    iget-boolean v0, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->isExpand:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onExpandChange: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ControlPanelWindowManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->windowView:Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterWindowView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterWindowView;->asView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    const-wide/16 v2, 0x0

    const/4 v0, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_4

    iget-boolean v5, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->isExpand:Z

    if-nez v5, :cond_4

    iput-boolean v0, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->isExpand:Z

    iput v4, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->visibility:I

    iget-object p1, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->lpChanged:Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_2

    const/4 v1, -0x1

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x9

    const/high16 v5, 0x20000

    or-int/2addr v1, v5

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->lp:Landroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_3

    invoke-virtual {v1, p1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    move-result p1

    if-nez p1, :cond_3

    move v4, v0

    :cond_3
    if-nez v4, :cond_c

    iget-object p1, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->applyLayout:Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager$applyLayout$1;

    invoke-virtual {p1, v2, v3}, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager$applyLayout$1;->doFrame(J)V

    iput-boolean v0, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->pendingNotifyListeners:Z

    goto :goto_4

    :cond_4
    if-nez p1, :cond_c

    iget-boolean p1, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->isExpand:Z

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->windowView:Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterWindowView;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterWindowView;->goneWhenCollapsed()Z

    move-result p1

    if-ne p1, v0, :cond_5

    move p1, v0

    goto :goto_1

    :cond_5
    move p1, v4

    :goto_1
    iput-boolean v4, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->isExpand:Z

    const/16 v5, 0x8

    if-eqz p1, :cond_6

    move v6, v5

    goto :goto_2

    :cond_6
    const/4 v6, 0x4

    :goto_2
    iput v6, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->visibility:I

    iget-object v6, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->lpChanged:Landroid/view/WindowManager$LayoutParams;

    if-eqz v6, :cond_8

    if-eqz p1, :cond_7

    iput v4, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    :cond_7
    iget p1, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr p1, v5

    const v5, -0x20001

    and-int/2addr p1, v5

    iput p1, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_8
    iget-object p1, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->lp:Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_9

    invoke-virtual {p1, v6}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    move-result p1

    if-nez p1, :cond_9

    move v4, v0

    :cond_9
    if-nez v4, :cond_c

    iget-object p1, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->statusIcons:Landroid/view/View;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/view/View;->isVisibleToUser()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_3

    :cond_a
    move-object p1, v1

    :goto_3
    iget-object v4, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->notifyListeners:Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager$applyLayout$1;

    invoke-virtual {v4, v2, v3}, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager$applyLayout$1;->doFrame(J)V

    iput-boolean v0, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->pendingApplyLayout:Z

    iget-object v0, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->statusIcons:Landroid/view/View;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/view/View;->isVisibleToUser()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :cond_b
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p0, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->statusIconsOnDrawListener:Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager$windowViewOnDrawListener$1;

    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager$windowViewOnDrawListener$1;->onDraw()V

    :cond_c
    :goto_4
    return-void
.end method

.method public final onExpandChanged(I)V
    .registers 3

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->onExpandChange(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->onExpandChange(Z)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->statusBar:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->getNavigationBarView()Lcom/android/systemui/navigationbar/NavigationBarView;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateSlippery()V

    :cond_3
    :goto_0
    return-void
.end method

.method public final onHeadsUpStateChanged(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
    .registers 3

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isRowPinned()Z

    return-void
.end method

.method public final onPromptIconChanged(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public final onStatusIconsChanged(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->statusIcons:Landroid/view/View;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->statusIcons:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->statusIconsOnDrawListener:Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager$windowViewOnDrawListener$1;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    :cond_1
    iput-object p1, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->statusIcons:Landroid/view/View;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0, v1}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final setBlurRatio(FZ)V
    .registers 10

    const-class v0, Lcom/android/systemui/plugins/controllers/PanelsHeightController;

    invoke-static {v0}, Lcom/android/systemui/plugins/ControllerStorage;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/controllers/PanelsHeightController;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/plugins/controllers/PanelsHeightController;->onPanelControlStretchChanged(FZ)V

    iget-object v0, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->windowView:Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterWindowView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterWindowView;->asView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->themeBg:Landroid/view/View;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1, p1}, Landroid/view/View;->setAlpha(F)V

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->controlCenterController:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    iget-boolean v2, v1, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->ncSwitching:Z

    iget-object v3, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->ncSwitchController:Ldagger/Lazy;

    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/controlcenter/policy/NCSwitchController;

    iget-boolean v4, v4, Lcom/android/systemui/controlcenter/policy/NCSwitchController;->switchedToControl:Z

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "cc setBlurRatio="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", switching="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", fromNc="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", switchedToCC="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "NCSwitchController"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, v1, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->ncSwitching:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    if-eqz p2, :cond_5

    :cond_3
    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/controlcenter/policy/NCSwitchController;

    iget-boolean p2, p2, Lcom/android/systemui/controlcenter/policy/NCSwitchController;->switchedToControl:Z

    if-eqz p2, :cond_4

    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/controlcenter/policy/NCSwitchController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/controlcenter/policy/NCSwitchController;->changePanelState(F)V

    goto :goto_2

    :cond_4
    sget-object p2, Lcom/android/systemui/statusbar/policy/BlurUtilsExt;->URI_DISABLE_WINDOW_BLURS:Landroid/net/Uri;

    iget-object p0, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->blurUtils:Lcom/android/systemui/statusbar/policy/BlurUtilsExt;

    invoke-virtual {p0, v0, p1, v2}, Lcom/android/systemui/statusbar/policy/BlurUtilsExt;->applyBlur(Landroid/view/View;FZ)V

    :cond_5
    :goto_2
    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/controlcenter/policy/NCSwitchController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p2, 0x0

    cmpg-float p1, p1, p2

    if-nez p1, :cond_6

    const/4 p1, 0x1

    goto :goto_3

    :cond_6
    move p1, v2

    :goto_3
    if-eqz p1, :cond_a

    sget-boolean p1, Lcom/android/systemui/controlcenter/utils/Constants;->DEBUG:Z

    if-eqz p1, :cond_7

    const-string p1, "ccWindowChangedListener - reset and switchedToControl to false"

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-boolean p1, p0, Lcom/android/systemui/controlcenter/policy/NCSwitchController;->switchedToControl:Z

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/policy/NCSwitchController;->getPanelViewController()Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/shade/NotificationPanelViewController;->isFullyCollapsed()Z

    move-result p1

    if-nez p1, :cond_8

    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/policy/NCSwitchController;->getPanelViewController()Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mNCSwitching:Z

    if-eqz p1, :cond_9

    :cond_8
    invoke-virtual {p0, p2}, Lcom/android/systemui/controlcenter/policy/NCSwitchController;->changePanelState(F)V

    :cond_9
    invoke-virtual {p0, v2}, Lcom/android/systemui/controlcenter/policy/NCSwitchController;->setSwitchedToControl(Z)V

    :cond_a
    return-void
.end method

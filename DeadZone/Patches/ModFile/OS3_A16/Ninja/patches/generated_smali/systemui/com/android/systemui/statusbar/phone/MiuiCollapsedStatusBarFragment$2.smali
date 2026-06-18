.class public final Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/systemui/statusbar/OnIslandStatusChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$2;->this$0:Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;

    return-void
.end method


# virtual methods
.method public final onIslandStatusChanged(ZZZ)V
    .registers 9

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment$2;->this$0:Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mIslandShowing:Z

    sget-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->IS_PAD:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mSelectedUserInteractor:Lcom/miui/systemui/user/domain/SelectedUserInteractorDelegate;

    iget-object v2, v2, Lcom/miui/systemui/user/domain/SelectedUserInteractorDelegate;->selectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v2}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId()I

    move-result v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->lastUserId:I

    if-eq v2, v3, :cond_0

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mSelectedUserInteractor:Lcom/miui/systemui/user/domain/SelectedUserInteractorDelegate;

    iget-object p2, p2, Lcom/miui/systemui/user/domain/SelectedUserInteractorDelegate;->selectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {p2}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId()I

    move-result p2

    iput p2, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->lastUserId:I

    move p2, v1

    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragment;->mOperatorNameViewController:Lcom/android/systemui/statusbar/OperatorNameViewController;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->shouldShowOperatorName()Z

    move-result v3

    iget-boolean v4, v2, Lcom/android/systemui/statusbar/OperatorNameViewController;->mShowOperatorNameOnStatusBar:Z

    if-eq v4, v3, :cond_2

    iput-boolean v3, v2, Lcom/android/systemui/statusbar/OperatorNameViewController;->mShowOperatorNameOnStatusBar:Z

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/OperatorNameViewController;->update$3$1()V

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->isSupportAnimForWindow()Z

    move-result v2

    if-nez v2, :cond_3

    move p2, v1

    :cond_3
    const v2, 0x0

    const/4 v3, 0x1

    if-eqz v2, :cond_6

    if-eqz p2, :cond_5

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mNotificationPanelExpand:Z

    if-eqz v4, :cond_4

    if-eqz v0, :cond_5

    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mKeyguardGoneIslandAnimationBlock:Z

    if-nez v0, :cond_5

    move v0, v3

    goto :goto_0

    :cond_5
    move v0, v1

    :goto_0
    invoke-virtual {v2, p1, p3, v0}, Lcom/android/systemui/statusbar/phone/IslandStretchAnimation;->onIslandStatusChanged(ZZZ)V

    :cond_6
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mKeyguardGoneIslandAnimationBlock:Z

    iget p1, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mOriginDisable1:I

    iget v0, p0, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->mOriginDisable2:I

    sget-boolean v2, Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;->MINIMAL_ANIMATION_ENABLED:Z

    if-nez v2, :cond_7

    if-eqz p2, :cond_7

    if-eqz p3, :cond_7

    goto :goto_1

    :cond_7
    move v3, v1

    :goto_1
    invoke-virtual {p0, v1, p1, v0, v3}, Lcom/android/systemui/statusbar/phone/MiuiCollapsedStatusBarFragment;->disable(IIIZ)V

    return-void
.end method

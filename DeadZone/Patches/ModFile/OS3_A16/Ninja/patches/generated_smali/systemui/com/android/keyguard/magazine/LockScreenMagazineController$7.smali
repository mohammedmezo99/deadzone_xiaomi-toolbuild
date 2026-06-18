.class public final Lcom/android/keyguard/magazine/LockScreenMagazineController$7;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/magazine/LockScreenMagazineController;

.field public final synthetic val$showMagazine:Z


# direct methods
.method public constructor <init>(Lcom/android/keyguard/magazine/LockScreenMagazineController;Z)V
    .registers 3

    iput-object p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController$7;->this$0:Lcom/android/keyguard/magazine/LockScreenMagazineController;

    iput-boolean p2, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController$7;->val$showMagazine:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController$7;->this$0:Lcom/android/keyguard/magazine/LockScreenMagazineController;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsSwitchAnimating:Z

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController$7;->this$0:Lcom/android/keyguard/magazine/LockScreenMagazineController;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsSwitchAnimating:Z

    sget-boolean v1, Lcom/android/keyguard/magazine/utils/LockScreenMagazineUtils;->USE_GLOBAL_LOCK_SCREEN_MAGAZINE:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p1, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsSupportLockScreenMagazineLeft:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/miui/utils/configs/MiuiConfigs;->GXZW_SENSOR:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const/4 v2, 0x4

    if-eqz v1, :cond_2

    iget-object p1, p1, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mLockScreenMagazinePre:Lcom/android/keyguard/magazine/LockScreenMagazinePreView;

    iget-boolean v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController$7;->val$showMagazine:Z

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    invoke-virtual {p1, v1}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->setMainLayoutVisible(I)V

    :cond_2
    iget-object p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController$7;->this$0:Lcom/android/keyguard/magazine/LockScreenMagazineController;

    iget-object p1, p1, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mLockScreenMagazinePre:Lcom/android/keyguard/magazine/LockScreenMagazinePreView;

    iget-boolean v1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController$7;->val$showMagazine:Z

    if-eqz v1, :cond_3

    move v1, v0

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    invoke-virtual {p1, v1}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->setFullScreenLayoutVisible(I)V

    iget-object p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController$7;->this$0:Lcom/android/keyguard/magazine/LockScreenMagazineController;

    iget-object p1, p1, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    if-eqz p1, :cond_5

    iget-boolean p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController$7;->val$showMagazine:Z

    if-eqz p0, :cond_4

    move v0, v2

    :cond_4
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_5
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController$7;->this$0:Lcom/android/keyguard/magazine/LockScreenMagazineController;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsSwitchAnimating:Z

    sget-boolean v1, Lcom/android/keyguard/magazine/utils/LockScreenMagazineUtils;->USE_GLOBAL_LOCK_SCREEN_MAGAZINE:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, p1, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsSupportLockScreenMagazineLeft:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/miui/utils/configs/MiuiConfigs;->GXZW_SENSOR:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mLockScreenMagazinePre:Lcom/android/keyguard/magazine/LockScreenMagazinePreView;

    invoke-virtual {p1, v2}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->setMainLayoutVisible(I)V

    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController$7;->this$0:Lcom/android/keyguard/magazine/LockScreenMagazineController;

    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mLockScreenMagazinePre:Lcom/android/keyguard/magazine/LockScreenMagazinePreView;

    invoke-virtual {p0, v2}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->setFullScreenLayoutVisible(I)V

    return-void
.end method

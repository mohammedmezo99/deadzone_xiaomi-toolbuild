.class public final Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/systemui/plugins/miui/statusbar/MiuiPrivacyController$MiuiPrivacyCallback;


# instance fields
.field public final mAnimatorController:Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController;

.field public mBatteryContainer:Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;

.field public mBatteryFolme:Lmiuix/animation/IFolme;

.field public mBatteryMeterView:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;

.field public final mContext:Landroid/content/Context;

.field public mControlPanelExpand:Z

.field public mDotFolme:Lmiuix/animation/IFolme;

.field public mDotView:Landroid/widget/ImageView;

.field public final mDotViewLocation:[I

.field public mFirstUseLocationPrompt:Z

.field public final mHandler:Landroid/os/Handler;

.field public mIsNewMiuiPromptInfo:Z

.field public mIsWindowHidden:Z

.field public mLastMiuiPromptInfo:I

.field public mLessLocationTip:I

.field public mMiniStateContainer:Lcom/android/systemui/statusbar/views/LimitedSizeFrameLayout;

.field public final mMiniStateContainerLocation:[I

.field public mMiniStateFolme:Lmiuix/animation/IFolme;

.field public mOnlyUpdateLocation:Z

.field public mPrivacyChip:Landroid/widget/ImageView;

.field public mPrivacyChipFolme:Lmiuix/animation/IFolme;

.field public final mPrivacyController:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;

.field public mPrivacyState:Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController$PrivacyState;

.field public mReducePromptInfo:Z

.field public mSettingPrivacy:Z

.field public mShowPrivacy:Z

.field public final mStatusBarIconObserver:Lcom/android/systemui/statusbar/policy/StatusBarIconObserver;

.field public mToken:Lcom/miui/systemui/statusbar/StatusBarToken;

.field public final runnable:Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController$$ExternalSyntheticLambda0;

.field public final runnable1:Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController$$ExternalSyntheticLambda0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;Lcom/android/systemui/statusbar/policy/StatusBarIconObserver;Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->runnable:Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->runnable1:Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController$$ExternalSyntheticLambda0;

    sget-object v0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController$PrivacyState;->COMPLETE_HIDE_PRIVACY:Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController$PrivacyState;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mPrivacyState:Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController$PrivacyState;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mSettingPrivacy:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mControlPanelExpand:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mIsWindowHidden:Z

    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mMiniStateContainerLocation:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mDotViewLocation:[I

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->initFolme$2()V

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mPrivacyController:Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mStatusBarIconObserver:Lcom/android/systemui/statusbar/policy/StatusBarIconObserver;

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mAnimatorController:Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController;

    invoke-virtual {p3, p0}, Lcom/android/systemui/statusbar/privacy/MiuiPrivacyControllerImpl;->addPrivacyCallback(Lcom/android/systemui/plugins/miui/statusbar/MiuiPrivacyController$MiuiPrivacyCallback;)V

    return-void
.end method

.method public static getAnimConfig$1()Lmiuix/animation/base/AnimConfig;
    .registers 4

    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v1, -0x2

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-virtual {v0, v1, v2}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    const/4 v2, 0x0

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lmiuix/animation/base/AnimConfig;->setDelay(J)Lmiuix/animation/base/AnimConfig;

    return-object v0

    :array_0
    .array-data 4
        0x3f733333
        0x3eb33333
    .end array-data
.end method

.method public static getAnimState$1(I)Lmiuix/animation/controller/AnimState;
    .registers 5

    new-instance v0, Lmiuix/animation/controller/AnimState;

    const-string v1, "miui_battery_state"

    invoke-direct {v0, v1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-boolean v1, Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController;->isHighDevice:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/systemui/statusbar/anim/FolmeAnimatableProperty;->Companion:Lcom/android/systemui/statusbar/anim/FolmeAnimatableProperty$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/statusbar/anim/FolmeAnimatableProperty$Companion;->BLUR_PROPERTY:Lcom/android/systemui/statusbar/anim/FolmeAnimatableProperty$Companion$BLUR_PROPERTY$1;

    int-to-double v2, p0

    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final cancelFolme$1()V
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mMiniStateFolme:Lmiuix/animation/IFolme;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/ICancelableStyle;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mMiniStateFolme:Lmiuix/animation/IFolme;

    invoke-interface {v0}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/ICancelableStyle;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mPrivacyChipFolme:Lmiuix/animation/IFolme;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/ICancelableStyle;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mPrivacyChipFolme:Lmiuix/animation/IFolme;

    invoke-interface {v0}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/ICancelableStyle;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mBatteryFolme:Lmiuix/animation/IFolme;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/ICancelableStyle;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mBatteryFolme:Lmiuix/animation/IFolme;

    invoke-interface {v0}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/ICancelableStyle;->cancel()V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mDotFolme:Lmiuix/animation/IFolme;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/ICancelableStyle;->cancel()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mDotFolme:Lmiuix/animation/IFolme;

    invoke-interface {p0}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    move-result-object p0

    invoke-interface {p0}, Lmiuix/animation/ICancelableStyle;->cancel()V

    :cond_3
    return-void
.end method

.method public final destroyFolme$2()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->cancelFolme$1()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mMiniStateFolme:Lmiuix/animation/IFolme;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/FolmeStyle;->clean()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mPrivacyChipFolme:Lmiuix/animation/IFolme;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/FolmeStyle;->clean()V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mBatteryFolme:Lmiuix/animation/IFolme;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/FolmeStyle;->clean()V

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mDotFolme:Lmiuix/animation/IFolme;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p0

    invoke-interface {p0}, Lmiuix/animation/FolmeStyle;->clean()V

    :cond_3
    return-void
.end method

.method public final hidePrivacyNotAnimate()V
    .registers 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mDotView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mMiniStateContainer:Lcom/android/systemui/statusbar/views/LimitedSizeFrameLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mBatteryMeterView:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mBatteryContainer:Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->cancelFolme$1()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->runnable:Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController$$ExternalSyntheticLambda0;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mDotView:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mDotView:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mBatteryMeterView:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->getIsAddBatteryIsland()Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mBatteryMeterView:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->updateHomeBlock(Z)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mBatteryMeterView:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->updateHomeBlock(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mBatteryMeterView:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mBatteryMeterView:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mBatteryMeterView:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setScaleY(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mBatteryMeterView:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mBatteryMeterView:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->setBlurRadius(I)V

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mMiniStateContainer:Lcom/android/systemui/statusbar/views/LimitedSizeFrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mMiniStateContainer:Lcom/android/systemui/statusbar/views/LimitedSizeFrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mMiniStateContainer:Lcom/android/systemui/statusbar/views/LimitedSizeFrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setScaleY(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mMiniStateContainer:Lcom/android/systemui/statusbar/views/LimitedSizeFrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mMiniStateContainer:Lcom/android/systemui/statusbar/views/LimitedSizeFrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    sget-object v0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController$PrivacyState;->COMPLETE_HIDE_PRIVACY:Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController$PrivacyState;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mPrivacyState:Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController$PrivacyState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mBatteryContainer:Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;->setPrivacyState(Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController$PrivacyState;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mPrivacyChip:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mPrivacyChip:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mPrivacyChip:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleY(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mPrivacyChip:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setTranslationX(F)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mPrivacyChip:Landroid/widget/ImageView;

    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setTranslationY(F)V

    return-void
.end method

.method public final initFolme$2()V
    .registers 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mPrivacyChip:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mMiniStateContainer:Lcom/android/systemui/statusbar/views/LimitedSizeFrameLayout;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mDotView:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mBatteryMeterView:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    new-array v2, v1, [Landroid/view/View;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mMiniStateFolme:Lmiuix/animation/IFolme;

    new-array v0, v1, [Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mPrivacyChip:Landroid/widget/ImageView;

    aput-object v2, v0, v3

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mPrivacyChipFolme:Lmiuix/animation/IFolme;

    new-array v0, v1, [Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mDotView:Landroid/widget/ImageView;

    aput-object v2, v0, v3

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mDotFolme:Lmiuix/animation/IFolme;

    new-array v0, v1, [Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mBatteryMeterView:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;

    aput-object v1, v0, v3

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mBatteryFolme:Lmiuix/animation/IFolme;

    return-void

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->destroyFolme$2()V

    return-void
.end method

.method public final onPromptInfoChanged(Lcom/android/systemui/plugins/miui/statusbar/MiuiPrivacyController$MiuiPromptInfo;Lcom/android/systemui/plugins/miui/statusbar/MiuiPrivacyController$AndroidPromptInfo;)V
    .registers 9

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/systemui/plugins/miui/statusbar/MiuiPrivacyController$MiuiPromptInfo;->getMiuiType()[I

    move-result-object p2

    if-eqz p2, :cond_b

    invoke-interface {p1}, Lcom/android/systemui/plugins/miui/statusbar/MiuiPrivacyController$MiuiPromptInfo;->getHomeRemoteViews()Landroid/widget/RemoteViews;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_4

    :cond_0
    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/android/systemui/plugins/miui/statusbar/MiuiPrivacyController$MiuiPromptInfo;->getMiuiType()[I

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Lcom/android/systemui/plugins/miui/statusbar/MiuiPrivacyController$MiuiPromptInfo;->getHomeRemoteViews()Landroid/widget/RemoteViews;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v4, "dont_STEAL_my_STUFF"

    const-string v4, "privacy_elite_dot"

    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/preference/SettingsEliteHelper;->getIntofSettings(Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mShowPrivacy:Z

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mShowPrivacy:Z

    :goto_0
    invoke-interface {p1}, Lcom/android/systemui/plugins/miui/statusbar/MiuiPrivacyController$MiuiPromptInfo;->getMiuiType()[I

    move-result-object v1

    invoke-interface {p1}, Lcom/android/systemui/plugins/miui/statusbar/MiuiPrivacyController$MiuiPromptInfo;->getFirstUseLocationPrompt()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mFirstUseLocationPrompt:Z

    move p1, p2

    move v2, p1

    :goto_1
    array-length v3, v1

    if-ge p1, v3, :cond_5

    aget v3, v1, p1

    if-ne v3, v0, :cond_2

    sget-object v3, Lcom/android/systemui/statusbar/util/StatusBarUtils;->PRIVACY_TYPE:[I

    aget v3, v3, p1

    xor-int/2addr v2, v3

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    if-nez p1, :cond_4

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mShowPrivacy:Z

    :cond_4
    move v2, p2

    :cond_5
    iget p1, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mLastMiuiPromptInfo:I

    if-eq v2, p1, :cond_6

    move v1, v0

    goto :goto_2

    :cond_6
    move v1, p2

    :goto_2
    const-string v4, "dont_STEAL_my_STUFF"

    const-string v4, "privacy_elite_dot"

    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/preference/SettingsEliteHelper;->getIntofSettings(Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_7

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mIsNewMiuiPromptInfo:Z

    goto :goto_3

    :cond_7
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mIsNewMiuiPromptInfo:Z

    :goto_3
    invoke-static {v2, p1}, Lcom/android/systemui/statusbar/util/StatusBarUtils;->getOnlyUpdateLocation(II)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mOnlyUpdateLocation:Z

    iget p1, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mLastMiuiPromptInfo:I

    or-int v1, v2, p1

    if-ne v1, p1, :cond_8

    sub-int p1, v2, p1

    if-gez p1, :cond_8

    move p2, v0

    :cond_8
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mReducePromptInfo:Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/statusbar/util/StatusBarUtils;->getLessLocationTip(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mLessLocationTip:I

    const-string p1, "onPromptInfoChanged: newMiuiPromptInfo="

    const-string p2, ", mLastMiuiPromptInfo="

    invoke-static {v2, p1, p2}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mLastMiuiPromptInfo:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", mShowPrivacy="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mShowPrivacy:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", mIsNewMiuiPromptInfo="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mIsNewMiuiPromptInfo:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", mFirstUseLocationPrompt="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mFirstUseLocationPrompt:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", mReducePromptInfo="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mReducePromptInfo:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", mOnlyUpdateLocation="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mOnlyUpdateLocation:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", mLessLocationTip="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mLessLocationTip:I

    const-string v0, "MiuiHomePrivacyController"

    invoke-static {p2, v0, p1}, Lcom/android/keyguard/fullaod/MiuiFullAodManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    iput v2, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mLastMiuiPromptInfo:I

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mPrivacyChip:Landroid/widget/ImageView;

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mMiniStateContainer:Lcom/android/systemui/statusbar/views/LimitedSizeFrameLayout;

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mDotView:Landroid/widget/ImageView;

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mBatteryContainer:Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mBatteryMeterView:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;

    if-eqz p1, :cond_b

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mIsNewMiuiPromptInfo:Z

    if-eqz p1, :cond_b

    iget p1, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mLessLocationTip:I

    if-lez p1, :cond_9

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->updateStatusBarHomePrivacyVisibility()V

    return-void

    :cond_9
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->runnable1:Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController$$ExternalSyntheticLambda0;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_a
    const-wide/16 v0, 0xc8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_b
    :goto_4
    return-void
.end method

.method public final setContainer(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;)V
    .registers 5

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mBatteryMeterView:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mBatteryContainer:Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;

    const p3, 0x7f0b075c

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/statusbar/views/LimitedSizeFrameLayout;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mMiniStateContainer:Lcom/android/systemui/statusbar/views/LimitedSizeFrameLayout;

    const p3, 0x7f0b0960

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mPrivacyChip:Landroid/widget/ImageView;

    const/4 p3, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mPrivacyChip:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setScaleY(F)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mPrivacyChip:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mPrivacyChip:Landroid/widget/ImageView;

    const/4 p4, 0x0

    invoke-virtual {p1, p4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mMiniStateContainer:Lcom/android/systemui/statusbar/views/LimitedSizeFrameLayout;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setScaleX(F)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mMiniStateContainer:Lcom/android/systemui/statusbar/views/LimitedSizeFrameLayout;

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setScaleY(F)V

    :cond_2
    const p1, 0x7f0b0972

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mDotView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->initFolme$2()V

    return-void

    :cond_3
    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mMiniStateContainer:Lcom/android/systemui/statusbar/views/LimitedSizeFrameLayout;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mPrivacyChip:Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mDotView:Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mBatteryMeterView:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mBatteryContainer:Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;

    return-void
.end method

.method public final showPrivacyNotAnimate()V
    .registers 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mDotView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mMiniStateContainer:Lcom/android/systemui/statusbar/views/LimitedSizeFrameLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mBatteryMeterView:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mBatteryContainer:Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->cancelFolme$1()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->runnable:Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController$$ExternalSyntheticLambda0;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    sget-object v0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController$PrivacyState;->COMPLETE_HOME_TO_DOT:Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController$PrivacyState;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mPrivacyState:Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController$PrivacyState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mBatteryContainer:Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;->setPrivacyState(Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController$PrivacyState;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mDotView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mMiniStateContainer:Lcom/android/systemui/statusbar/views/LimitedSizeFrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mPrivacyChip:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mBatteryMeterView:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->getIsAddBatteryIsland()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mBatteryMeterView:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->updateHomeBlock(Z)V

    goto :goto_1

    :cond_2
    sget-boolean v0, Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController;->isHighDevice:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mBatteryMeterView:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->setBlurRadius(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mBatteryMeterView:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;

    const/high16 v3, 0x3f800000

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mBatteryMeterView:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mBatteryMeterView:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setScaleY(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mBatteryMeterView:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mBatteryMeterView:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->updateHomeBlock(Z)V

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mMiniStateContainer:Lcom/android/systemui/statusbar/views/LimitedSizeFrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mMiniStateContainer:Lcom/android/systemui/statusbar/views/LimitedSizeFrameLayout;

    new-instance v1, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController$$ExternalSyntheticLambda0;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;I)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final updatePrivacyNotAnimate()V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mPrivacyState:Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController$PrivacyState;

    sget-object v1, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController$PrivacyState;->START_SHOW_PRIVACY:Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController$PrivacyState;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController$PrivacyState;->COMPLETE_SHOW_PRIVACY:Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController$PrivacyState;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController$PrivacyState;->START_HOME_TO_DOT:Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController$PrivacyState;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController$PrivacyState;->START_HIDE_PRIVACY:Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController$PrivacyState;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->hidePrivacyNotAnimate()V

    :cond_1
    return-void

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->showPrivacyNotAnimate()V

    return-void
.end method

.method public final updateStatusBarDotViewVisibility()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mShowPrivacy:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mDotView:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    const-string v0, "MiuiHomePrivacyController"

    const-string v1, "updateStatusBarDotViewVisibility: showDot"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mPrivacyState:Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController$PrivacyState;

    sget-object v1, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController$PrivacyState;->COMPLETE_HIDE_PRIVACY:Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController$PrivacyState;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mDotFolme:Lmiuix/animation/IFolme;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/ICancelableStyle;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mDotFolme:Lmiuix/animation/IFolme;

    invoke-interface {v0}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/ICancelableStyle;->cancel()V

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mDotView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final updateStatusBarHomePrivacyVisibility()V
    .registers 16

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mShowPrivacy:Z

    sget-object v1, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController$PrivacyState;->COMPLETE_HOME_TO_DOT:Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController$PrivacyState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->runnable:Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController$$ExternalSyntheticLambda0;

    const-string v4, "privacy_chip_state"

    const-wide/16 v5, 0x0

    const-wide/high16 v7, 0x3ff0000000000000L

    const-string v9, "mini_state_container"

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mAnimatorController:Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController;

    const-string v11, "MiuiHomePrivacyController"

    const/4 v12, 0x0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mFirstUseLocationPrompt:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mOnlyUpdateLocation:Z

    if-eqz v0, :cond_0

    const/4 v12, 0x1

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mLessLocationTip:I

    if-lez v0, :cond_1

    if-nez v12, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mReducePromptInfo:Z

    if-nez v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mSettingPrivacy:Z

    if-eqz v0, :cond_3

    :cond_2
    const-string v0, "updateStatusBarHomePrivacyVisibilities: showDot"

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->updateStatusBarDotViewVisibility()V

    return-void

    :cond_3
    const-string v0, "updateStatusBarHomePrivacyVisibilities: show"

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mControlPanelExpand:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mToken:Lcom/miui/systemui/statusbar/StatusBarToken;

    if-eqz v0, :cond_4

    iget-object v10, v10, Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController;->showingStatusBarToken:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v10}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mIsWindowHidden:Z

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_6
    const-wide/16 v10, 0x3e8

    invoke-virtual {v2, v3, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mPrivacyState:Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController$PrivacyState;

    sget-object v2, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController$PrivacyState;->COMPLETE_SHOW_PRIVACY:Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController$PrivacyState;

    if-ne v0, v2, :cond_7

    return-void

    :cond_7
    sget-object v2, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController$PrivacyState;->START_HOME_TO_DOT:Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController$PrivacyState;

    if-eq v0, v2, :cond_8

    if-ne v0, v1, :cond_9

    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mMiniStateContainer:Lcom/android/systemui/statusbar/views/LimitedSizeFrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mDotView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mMiniStateContainer:Lcom/android/systemui/statusbar/views/LimitedSizeFrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_0

    :cond_9
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mMiniStateFolme:Lmiuix/animation/IFolme;

    invoke-interface {v1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v1

    new-instance v2, Lmiuix/animation/controller/AnimState;

    invoke-direct {v2, v9}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v3, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {v2, v3, v7, v8}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v2

    sget-object v9, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {v2, v9, v7, v8}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v2

    sget-object v10, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {v2, v10, v5, v6}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v2

    sget-object v11, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {v2, v11, v5, v6}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v2

    invoke-static {}, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->getAnimConfig$1()Lmiuix/animation/base/AnimConfig;

    move-result-object v12

    new-instance v13, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController$5;

    const/4 v14, 0x2

    invoke-direct {v13, p0, v0, v14}, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController$5;-><init>(Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;FI)V

    filled-new-array {v13}, [Lmiuix/animation/listener/TransitionListener;

    move-result-object v13

    invoke-virtual {v12, v13}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object v12

    filled-new-array {v12}, [Lmiuix/animation/base/AnimConfig;

    move-result-object v12

    invoke-interface {v1, v2, v12}, Lmiuix/animation/FolmeStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mPrivacyChip:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mMiniStateContainer:Lcom/android/systemui/statusbar/views/LimitedSizeFrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mPrivacyChip:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    goto :goto_1

    :cond_a
    const/high16 v1, 0x3f800000

    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mPrivacyChipFolme:Lmiuix/animation/IFolme;

    invoke-interface {v2}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v2

    new-instance v12, Lmiuix/animation/controller/AnimState;

    invoke-direct {v12, v4}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    float-to-double v13, v1

    invoke-virtual {v12, v3, v13, v14}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    invoke-virtual {v1, v9, v7, v8}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    invoke-virtual {v1, v10, v5, v6}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    invoke-virtual {v1, v11, v5, v6}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    invoke-static {}, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->getAnimConfig$1()Lmiuix/animation/base/AnimConfig;

    move-result-object v4

    new-instance v7, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController$5;

    const/4 v8, 0x3

    invoke-direct {v7, p0, v0, v8}, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController$5;-><init>(Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;FI)V

    filled-new-array {v7}, [Lmiuix/animation/listener/TransitionListener;

    move-result-object v0

    invoke-virtual {v4, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    filled-new-array {v0}, [Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lmiuix/animation/FolmeStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mBatteryFolme:Lmiuix/animation/IFolme;

    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    const/16 v1, 0x1e

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->getAnimState$1(I)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    const-wide v7, 0x3fd999999999999aL

    invoke-virtual {v1, v3, v7, v8}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    invoke-virtual {v1, v9, v7, v8}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    sget-object v2, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {v1, v2, v5, v6}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    invoke-static {}, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->getAnimConfig$1()Lmiuix/animation/base/AnimConfig;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController$1;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController$1;-><init>(Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;I)V

    filled-new-array {v3}, [Lmiuix/animation/listener/TransitionListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object v2

    filled-new-array {v2}, [Lmiuix/animation/base/AnimConfig;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lmiuix/animation/FolmeStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mDotView:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_b
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->showPrivacyNotAnimate()V

    return-void

    :cond_c
    const-string v0, "updateStatusBarHomePrivacyVisibilities: hide"

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mControlPanelExpand:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mToken:Lcom/miui/systemui/statusbar/StatusBarToken;

    if-eqz v0, :cond_d

    iget-object v10, v10, Lcom/android/systemui/statusbar/anim/MiuiStatusBarIconAnimatorController;->showingStatusBarToken:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v10}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_d
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mIsWindowHidden:Z

    if-eqz v0, :cond_e

    goto :goto_4

    :cond_e
    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_f
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mDotFolme:Lmiuix/animation/IFolme;

    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    new-instance v2, Lmiuix/animation/controller/AnimState;

    const-string v3, "privacy_dot_set"

    invoke-direct {v2, v3}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v3, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {v2, v3, v7, v8}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v2

    invoke-interface {v0, v2}, Lmiuix/animation/FolmeStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    const-string v2, "privacy_dot_to"

    invoke-static {v2, v3, v5, v6}, Lcom/android/keyguard/clock/KeyguardClockContainer$carrierTextCallback$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lmiuix/animation/property/ViewProperty;D)Lmiuix/animation/controller/AnimState;

    move-result-object v2

    invoke-static {}, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->getAnimConfig$1()Lmiuix/animation/base/AnimConfig;

    move-result-object v10

    new-instance v11, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController$1;

    const/4 v13, 0x0

    invoke-direct {v11, p0, v13}, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController$1;-><init>(Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;I)V

    filled-new-array {v11}, [Lmiuix/animation/listener/TransitionListener;

    move-result-object v11

    invoke-virtual {v10, v11}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object v10

    filled-new-array {v10}, [Lmiuix/animation/base/AnimConfig;

    move-result-object v10

    invoke-interface {v0, v2, v10}, Lmiuix/animation/FolmeStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mPrivacyState:Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController$PrivacyState;

    if-eq v0, v1, :cond_11

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mBatteryMeterView:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->getIsAddBatteryIsland()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mBatteryMeterView:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;

    invoke-virtual {v0, v12}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->updateHomeBlock(Z)V

    goto :goto_3

    :cond_10
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mBatteryFolme:Lmiuix/animation/IFolme;

    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    invoke-static {v12}, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->getAnimState$1(I)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    sget-object v2, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {v1, v2, v7, v8}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    sget-object v2, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {v1, v2, v7, v8}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    invoke-virtual {v1, v3, v7, v8}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    invoke-static {}, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->getAnimConfig$1()Lmiuix/animation/base/AnimConfig;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController$1;

    const/4 v7, 0x2

    invoke-direct {v3, p0, v7}, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController$1;-><init>(Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;I)V

    filled-new-array {v3}, [Lmiuix/animation/listener/TransitionListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object v2

    filled-new-array {v2}, [Lmiuix/animation/base/AnimConfig;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lmiuix/animation/FolmeStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    :cond_11
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mMiniStateFolme:Lmiuix/animation/IFolme;

    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    new-instance v1, Lmiuix/animation/controller/AnimState;

    invoke-direct {v1, v9}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v2, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {v1, v2, v5, v6}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    sget-object v3, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    invoke-virtual {v1, v3, v5, v6}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    invoke-static {}, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->getAnimConfig$1()Lmiuix/animation/base/AnimConfig;

    move-result-object v7

    new-instance v8, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController$1;

    const/4 v9, 0x3

    invoke-direct {v8, p0, v9}, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController$1;-><init>(Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;I)V

    filled-new-array {v8}, [Lmiuix/animation/listener/TransitionListener;

    move-result-object v8

    invoke-virtual {v7, v8}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object v7

    filled-new-array {v7}, [Lmiuix/animation/base/AnimConfig;

    move-result-object v7

    invoke-interface {v0, v1, v7}, Lmiuix/animation/FolmeStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->mPrivacyChipFolme:Lmiuix/animation/IFolme;

    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    invoke-static {v4, v2, v5, v6}, Lcom/android/keyguard/clock/KeyguardClockContainer$carrierTextCallback$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lmiuix/animation/property/ViewProperty;D)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    invoke-virtual {v1, v3, v5, v6}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    invoke-static {}, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->getAnimConfig$1()Lmiuix/animation/base/AnimConfig;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController$1;

    const/4 v4, 0x4

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController$1;-><init>(Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;I)V

    filled-new-array {v3}, [Lmiuix/animation/listener/TransitionListener;

    move-result-object p0

    invoke-virtual {v2, p0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    filled-new-array {p0}, [Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lmiuix/animation/FolmeStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    return-void

    :cond_12
    :goto_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController;->hidePrivacyNotAnimate()V

    return-void
.end method

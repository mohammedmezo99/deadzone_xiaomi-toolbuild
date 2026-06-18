.class public Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public mBatteryCharging:Z

.field public mBatteryView:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;

.field public mClipRect:Landroid/graphics/Rect;

.field public mCutoutSideNudge:I

.field public mCutoutSpace:Landroid/view/View;

.field public mDarkChange:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public mDisplayCutout:Landroid/view/DisplayCutout;

.field public mIsPrivacyDotEnabled:Z

.field public mKeyguardUserAvatarEnabled:Z

.field public mKeyguardUserSwitcherEnabled:Z

.field public mLayoutState:I

.field public mMinDotWidth:I

.field public mMultiUserAvatar:Landroid/widget/ImageView;

.field public mPadding:Landroid/graphics/Insets;

.field public mPreviousInsets:Landroid/view/WindowInsets;

.field public mStatusIconArea:Landroid/view/ViewGroup;

.field public mStatusIconContainer:Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;

.field public mSystemIconsContainer:Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;

.field public mSystemIconsSwitcherHiddenExpandedMargin:I

.field public mTopClipping:I

.field public mUserSwitcherContainer:Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherContainer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    sget-object p1, Lcom/android/systemui/statusbar/phone/SysuiDarkIconDispatcher$DarkChange;->EMPTY:Lcom/android/systemui/statusbar/phone/SysuiDarkIconDispatcher$DarkChange;

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mDarkChange:Lkotlinx/coroutines/flow/StateFlowImpl;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mLayoutState:I

    iput p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCutoutSideNudge:I

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mPreviousInsets:Landroid/view/WindowInsets;

    invoke-static {p1, p1, p1, p1}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mPadding:Landroid/graphics/Insets;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, p1, p1, p1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mClipRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isKeyguardUserAvatarEnabled()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mKeyguardUserAvatarEnabled:Z

    return p0
.end method

.method public loadDimens()V
    .registers 4

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f071a16

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsSwitcherHiddenExpandedMargin:I

    const v1, 0x7f0718b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    const v1, 0x7f07151c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMinDotWidth:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0703e7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCutoutSideNudge:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110059

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    iget-object p0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/miui/utils/configs/MiuiConfigs;->isFlipTinyScreen(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f071779

    goto :goto_0

    :cond_0
    const p0, 0x7f07173a

    :goto_0
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->loadDimens()V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserAvatar:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f071381

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateSystemIconsLayoutParams()V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mStatusIconArea:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0718b5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mStatusIconArea:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mStatusIconArea:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateKeyguardStatusBarHeight()V

    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->loadDimens()V

    return-void
.end method

.method public onFinishInflate()V
    .registers 3

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0b0be8

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsContainer:Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;

    const v0, 0x7f0b0833

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserAvatar:Landroid/widget/ImageView;

    const v0, 0x7f0b05fb

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsContainer:Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;

    const v1, 0x7f0b0180

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mBatteryView:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;

    const v0, 0x7f0b0354

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCutoutSpace:Landroid/view/View;

    const v0, 0x7f0b0b79

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mStatusIconArea:Landroid/view/ViewGroup;

    const v0, 0x7f0b0b66

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mStatusIconContainer:Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;

    const v0, 0x7f0b0d37

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherContainer;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mUserSwitcherContainer:Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserSwitcherContainer;

    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050035

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mIsPrivacyDotEnabled:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->loadDimens()V

    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 6

    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mClipRect:Landroid/graphics/Rect;

    iget p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mTopClipping:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result p3

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p4

    const/4 p5, 0x0

    invoke-virtual {p1, p5, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setClipBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onMeasure(II)V
    .registers 4

    const-string v0, "KeyguardStatusBarView#onMeasure"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onThemeChanged()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateIconsAndTextColors()V

    return-void
.end method

.method public setDisplayCutout(Landroid/view/DisplayCutout;Lcom/android/systemui/statusbar/layout/StatusBarContentInsetsProvider;)Z
    .registers 3

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateKeyguardStatusBarHeight()V

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updatePadding(Lcom/android/systemui/statusbar/layout/StatusBarContentInsetsProvider;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mDisplayCutout:Landroid/view/DisplayCutout;

    if-eqz p1, :cond_1

    check-cast p2, Lcom/android/systemui/statusbar/layout/StatusBarContentInsetsProviderImpl;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/layout/StatusBarContentInsetsProviderImpl;->currentRotationHasCornerCutout()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateLayoutParamsForCutout()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateLayoutParamsNoCutout()Z

    move-result p0

    return p0
.end method

.method public setKeyguardUserSwitcherEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mKeyguardUserSwitcherEnabled:Z

    return-void
.end method

.method public setUserSwitcherEnabled(Z)V
    .registers 2

    return-void
.end method

.method public setVisibility(I)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsContainer:Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsContainer:Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setTranslationX(F)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserAvatar:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserAvatar:Landroid/widget/ImageView;

    const/high16 p1, 0x3f800000

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateSystemIconsLayoutParams()V

    return-void
.end method

.method public updateIconsAndTextColors()V
    .registers 1

    return-void
.end method

.method public updateKeyguardStatusBarHeight()V
    .registers 3

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/util/Utils;->getStatusBarHeaderHeightKeyguard(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public updateLayoutParamsForCutout()Z
    .registers 7

    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mLayoutState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    iput v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mLayoutState:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCutoutSpace:Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateLayoutParamsNoCutout()Z

    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mDisplayCutout:Landroid/view/DisplayCutout;

    const/16 v4, 0x30

    invoke-static {v4, v0, v3}, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;->boundsFromDirection(ILandroid/graphics/Rect;Landroid/view/DisplayCutout;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCutoutSpace:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCutoutSpace:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCutoutSideNudge:I

    add-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    iput v4, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/16 v0, 0xd

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mStatusIconArea:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v0, 0x11

    const v3, 0x7f0b0354

    invoke-virtual {p0, v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    return v2
.end method

.method public updateLayoutParamsNoCutout()Z
    .registers 3

    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mLayoutState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iput v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mLayoutState:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mCutoutSpace:Landroid/view/View;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mStatusIconArea:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v0, 0x11

    const v1, 0x7f0b062a

    invoke-virtual {p0, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 p0, 0x1

    return p0
.end method

.method public updatePadding(Lcom/android/systemui/statusbar/layout/StatusBarContentInsetsProvider;)V
    .registers 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mDisplayCutout:Landroid/view/DisplayCutout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getWaterfallInsets()Landroid/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Insets;->top:I

    :goto_0
    check-cast p1, Lcom/android/systemui/statusbar/layout/StatusBarContentInsetsProviderImpl;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/layout/StatusBarContentInsetsProviderImpl;->getStatusBarContentInsetsForCurrentRotation()Landroid/graphics/Insets;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mPadding:Landroid/graphics/Insets;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->isLayoutRtl()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mIsPrivacyDotEnabled:Z

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMinDotWidth:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mPadding:Landroid/graphics/Insets;

    iget v2, v2, Landroid/graphics/Insets;->left:I

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mPadding:Landroid/graphics/Insets;

    iget p1, p1, Landroid/graphics/Insets;->left:I

    :goto_1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->isLayoutRtl()Z

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mIsPrivacyDotEnabled:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMinDotWidth:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mPadding:Landroid/graphics/Insets;

    iget v3, v3, Landroid/graphics/Insets;->right:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mPadding:Landroid/graphics/Insets;

    iget v2, v2, Landroid/graphics/Insets;->right:I

    :goto_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mPadding:Landroid/graphics/Insets;

    iget v3, v3, Landroid/graphics/Insets;->top:I

    add-int/2addr v0, v3

    invoke-virtual {p0, p1, v0, v2, v1}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    return-void
.end method

.method public updateSystemIconsLayoutParams()V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsContainer:Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mKeyguardUserSwitcherEnabled:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsSwitcherHiddenExpandedMargin:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout$LayoutParams;->getMarginEnd()I

    move-result v2

    if-eq v1, v2, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsContainer:Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public updateWindowInsets(Landroid/view/WindowInsets;Lcom/android/systemui/statusbar/layout/StatusBarContentInsetsProvider;)Landroid/view/WindowInsets;
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mPreviousInsets:Landroid/view/WindowInsets;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mLayoutState:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setDisplayCutout(Landroid/view/DisplayCutout;Lcom/android/systemui/statusbar/layout/StatusBarContentInsetsProvider;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    :cond_0
    new-instance p2, Landroid/view/WindowInsets;

    invoke-direct {p2, p1}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mPreviousInsets:Landroid/view/WindowInsets;

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

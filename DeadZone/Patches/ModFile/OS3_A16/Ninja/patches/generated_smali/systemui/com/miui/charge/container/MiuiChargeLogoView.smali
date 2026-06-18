.class public Lcom/miui/charge/container/MiuiChargeLogoView;
.super Landroid/widget/RelativeLayout;


# instance fields
.field public mAnimatorSet:Landroid/animation/AnimatorSet;

.field public mChargeSpeed:I

.field public mChargeTipTranslateSmall:I

.field public final mChargeTurboView:Lcom/miui/charge/view/MiuiChargeTurboView;

.field public final mCubicInterpolator:Lcom/miui/maml/animation/interpolater/CubicEaseOutInterpolater;

.field public mCutoutPosition:I

.field public mIsFloatNumber:Z

.field public final mIsFoldChargeVideo:Z

.field public mIsOneHundredPercent:Z

.field public final mIsPadChargeVideo:Z

.field public final mPadTipTopMargin:I

.field public final mScreenSize:Landroid/graphics/Point;

.field public mSpeedTipTextSizePx:I

.field public final mStateTip:Lcom/miui/charge/container/MiuiChargeLogoView$AccessibilityDisableTextView;

.field public mStateTipAlpha:I

.field public final mStateTipMarginTop:[I

.field public mStateTipTranslationY:I

.field public final mTinyTemplateId:Ljava/lang/String;

.field public mTipTopMargin:I

.field public mTurboViewAlpha:I

.field public mTurboViewTranslationY:I

.field public final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/charge/container/MiuiChargeLogoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/charge/container/MiuiChargeLogoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Lcom/miui/maml/animation/interpolater/CubicEaseOutInterpolater;

    invoke-direct {p2}, Lcom/miui/maml/animation/interpolater/CubicEaseOutInterpolater;-><init>()V

    iput-object p2, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mCubicInterpolator:Lcom/miui/maml/animation/interpolater/CubicEaseOutInterpolater;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mIsFoldChargeVideo:Z

    iput-boolean p2, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mIsPadChargeVideo:Z

    iput p2, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mCutoutPosition:I

    iput-boolean p2, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mIsOneHundredPercent:Z

    iput-boolean p2, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mIsFloatNumber:Z

    iput p2, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mChargeSpeed:I

    sget-boolean p3, Lcom/miui/utils/configs/MiuiConfigs;->IS_PAD:Z

    iput-boolean p3, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mIsPadChargeVideo:Z

    invoke-static {}, Lcom/miui/utils/configs/MiuiConfigs;->isFoldableDevice()Z

    move-result p3

    iput-boolean p3, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mIsFoldChargeVideo:Z

    invoke-static {}, Lcom/miui/systemui/utils/UserUtils;->getCurrentUserId()I

    move-result p3

    sget-boolean v0, Lcom/miui/charge/ChargeUtils;->sChargeAnimationDisabled:Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "current_tiny_keyguard_info"

    invoke-static {v0, v1, p3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/miui/charge/ChargeUtils;->getTemplateIdFromJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mTinyTemplateId:Ljava/lang/String;

    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->setLayoutDirection(I)V

    const-string p3, "window"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/WindowManager;

    iput-object p3, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mWindowManager:Landroid/view/WindowManager;

    invoke-static {}, Lcom/miui/systemui/util/CutoutUtils;->updateCutoutPosition()V

    sget p3, Lcom/miui/systemui/util/CutoutUtils;->mCutoutPosition:I

    if-nez p3, :cond_0

    iput p2, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mCutoutPosition:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    const/4 p3, 0x1

    iput p3, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mCutoutPosition:I

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f07060f

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070610

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07060e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    filled-new-array {p3, v0, v1}, [I

    move-result-object p3

    iput-object p3, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mStateTipMarginTop:[I

    new-instance p3, Landroid/graphics/Point;

    invoke-direct {p3}, Landroid/graphics/Point;-><init>()V

    iput-object p3, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mScreenSize:Landroid/graphics/Point;

    iget-object p3, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p3

    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mScreenSize:Landroid/graphics/Point;

    invoke-virtual {p3, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    invoke-virtual {p0}, Lcom/miui/charge/container/MiuiChargeLogoView;->updateSizeForScreenSizeChange()V

    new-instance p3, Lcom/miui/charge/container/MiuiChargeLogoView$AccessibilityDisableTextView;

    invoke-direct {p3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mStateTip:Lcom/miui/charge/container/MiuiChargeLogoView$AccessibilityDisableTextView;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object p3, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mStateTip:Lcom/miui/charge/container/MiuiChargeLogoView$AccessibilityDisableTextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    iget-object p3, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mStateTip:Lcom/miui/charge/container/MiuiChargeLogoView$AccessibilityDisableTextView;

    const/16 v0, 0x11

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setGravity(I)V

    iget-boolean p3, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mIsPadChargeVideo:Z

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mStateTip:Lcom/miui/charge/container/MiuiChargeLogoView$AccessibilityDisableTextView;

    const v0, 0x3ecccccd

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setLetterSpacing(F)V

    :cond_2
    iget-object p3, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mStateTip:Lcom/miui/charge/container/MiuiChargeLogoView$AccessibilityDisableTextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f140d17

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p3, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xe

    invoke-virtual {p3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07155c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mPadTipTopMargin:I

    iget-object v2, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mTinyTemplateId:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/miui/charge/ChargeUtils;->isUseInteractivePetsCharge(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mStateTip:Lcom/miui/charge/container/MiuiChargeLogoView$AccessibilityDisableTextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070611

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, p2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p2, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mStateTip:Lcom/miui/charge/container/MiuiChargeLogoView$AccessibilityDisableTextView;

    const-string v2, "#80FFFFFF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p2, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mStateTipMarginTop:[I

    iget v2, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mCutoutPosition:I

    aget p2, p2, v2

    iput p2, p3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mStateTip:Lcom/miui/charge/container/MiuiChargeLogoView$AccessibilityDisableTextView;

    iget v3, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mSpeedTipTextSizePx:I

    int-to-float v3, v3

    invoke-virtual {v2, p2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object p2, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mStateTip:Lcom/miui/charge/container/MiuiChargeLogoView$AccessibilityDisableTextView;

    const-string v2, "#8CFFFFFF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-boolean p2, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mIsPadChargeVideo:Z

    if-eqz p2, :cond_4

    iget p2, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mPadTipTopMargin:I

    goto :goto_1

    :cond_4
    iget p2, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mTipTopMargin:I

    :goto_1
    iput p2, p3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    :goto_2
    iget-object p2, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mStateTip:Lcom/miui/charge/container/MiuiChargeLogoView$AccessibilityDisableTextView;

    invoke-virtual {p0, p2, p3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mTinyTemplateId:Ljava/lang/String;

    invoke-static {p2, p3}, Lcom/miui/charge/ChargeUtils;->isUseInteractivePetsCharge(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    new-instance p2, Lcom/miui/charge/view/InteractivePetsTurboView;

    invoke-direct {p2, p1}, Lcom/miui/charge/view/InteractivePetsTurboView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mChargeTurboView:Lcom/miui/charge/view/MiuiChargeTurboView;

    goto :goto_3

    :cond_5
    new-instance p2, Lcom/miui/charge/view/MiuiChargeTurboView;

    invoke-direct {p2, p1}, Lcom/miui/charge/view/MiuiChargeTurboView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mChargeTurboView:Lcom/miui/charge/view/MiuiChargeTurboView;

    :goto_3
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object p2, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mTinyTemplateId:Ljava/lang/String;

    invoke-static {p2, p3}, Lcom/miui/charge/ChargeUtils;->isUseInteractivePetsCharge(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_6

    iget p2, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mTipTopMargin:I

    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    :cond_6
    iget-object p2, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mChargeTurboView:Lcom/miui/charge/view/MiuiChargeTurboView;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p2, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mChargeTurboView:Lcom/miui/charge/view/MiuiChargeTurboView;

    invoke-virtual {p2}, Lcom/miui/charge/view/MiuiChargeTurboView;->setViewInitState()V

    iget-object p2, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mChargeTurboView:Lcom/miui/charge/view/MiuiChargeTurboView;

    invoke-virtual {p0, p2, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public final checkScreenSize()V
    .registers 5

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iget-object v1, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget-object v1, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mScreenSize:Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->equals(II)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mScreenSize:Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Point;->set(II)V

    invoke-virtual {p0}, Lcom/miui/charge/container/MiuiChargeLogoView;->updateSizeForScreenSizeChange()V

    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mStateTip:Lcom/miui/charge/container/MiuiChargeLogoView$AccessibilityDisableTextView;

    iget v1, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mSpeedTipTextSizePx:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mStateTip:Lcom/miui/charge/container/MiuiChargeLogoView$AccessibilityDisableTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-boolean v1, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mIsPadChargeVideo:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mPadTipTopMargin:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mTipTopMargin:I

    :goto_0
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mStateTip:Lcom/miui/charge/container/MiuiChargeLogoView$AccessibilityDisableTextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mChargeTurboView:Lcom/miui/charge/view/MiuiChargeTurboView;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mTipTopMargin:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object p0, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mChargeTurboView:Lcom/miui/charge/view/MiuiChargeTurboView;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public final onAttachedToWindow()V
    .registers 4

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mStateTip:Lcom/miui/charge/container/MiuiChargeLogoView$AccessibilityDisableTextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f140d17

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/miui/charge/container/MiuiChargeLogoView;->checkScreenSize()V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/miui/charge/container/MiuiChargeLogoView;->checkScreenSize()V

    invoke-static {}, Lcom/miui/systemui/util/CutoutUtils;->updateCutoutPosition()V

    sget p1, Lcom/miui/systemui/util/CutoutUtils;->mCutoutPosition:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mCutoutPosition:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    iput p1, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mCutoutPosition:I

    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mIsOneHundredPercent:Z

    invoke-virtual {p0, p1}, Lcom/miui/charge/container/MiuiChargeLogoView;->updateLayout(Z)V

    return-void
.end method

.method public setNumber(ZZ)V
    .registers 3

    iput-boolean p1, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mIsOneHundredPercent:Z

    iput-boolean p2, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mIsFloatNumber:Z

    invoke-virtual {p0, p1}, Lcom/miui/charge/container/MiuiChargeLogoView;->updateLayout(Z)V

    iget-object p2, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mChargeTurboView:Lcom/miui/charge/view/MiuiChargeTurboView;

    iget-boolean p0, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mIsFloatNumber:Z

    invoke-virtual {p2, p1, p0}, Lcom/miui/charge/view/MiuiChargeTurboView;->setNumber(ZZ)V

    return-void
.end method

.method public final startLogoAnimation(Z)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "startLogoAnimation: mChargeSpeed="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mChargeSpeed:I

    const-string v2, "MiuiChargeLogoView"

    invoke-static {v1, v2, v0}, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    sget-object v0, Lcom/miui/charge/ChargeUtils;->sBatteryStatus:Lcom/miui/systemui/charge/BatteryStatus;

    iget v0, v0, Lcom/miui/systemui/charge/BatteryStatus;->wireState:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "resetLogoViewState: mChargeSpeed="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mChargeSpeed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",clickShow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mChargeSpeed:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    const/4 v3, 0x1

    if-eq v0, v3, :cond_4

    const/4 v1, 0x2

    const/4 v3, 0x0

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mStateTip:Lcom/miui/charge/container/MiuiChargeLogoView$AccessibilityDisableTextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mStateTip:Lcom/miui/charge/container/MiuiChargeLogoView$AccessibilityDisableTextView;

    iget v1, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mChargeTipTranslateSmall:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mChargeTurboView:Lcom/miui/charge/view/MiuiChargeTurboView;

    invoke-virtual {v0}, Lcom/miui/charge/view/MiuiChargeTurboView;->setStrongViewInitState()V

    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mChargeTurboView:Lcom/miui/charge/view/MiuiChargeTurboView;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mChargeTurboView:Lcom/miui/charge/view/MiuiChargeTurboView;

    invoke-virtual {p0}, Lcom/miui/charge/view/MiuiChargeTurboView;->setStrongViewShowState()V

    return-void

    :cond_1
    iget-object p0, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mChargeTurboView:Lcom/miui/charge/view/MiuiChargeTurboView;

    invoke-virtual {p0}, Lcom/miui/charge/view/MiuiChargeTurboView;->setStrongViewInitState()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mStateTip:Lcom/miui/charge/container/MiuiChargeLogoView$AccessibilityDisableTextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mStateTip:Lcom/miui/charge/container/MiuiChargeLogoView$AccessibilityDisableTextView;

    iget v1, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mChargeTipTranslateSmall:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mChargeTurboView:Lcom/miui/charge/view/MiuiChargeTurboView;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mChargeTurboView:Lcom/miui/charge/view/MiuiChargeTurboView;

    invoke-virtual {p0}, Lcom/miui/charge/view/MiuiChargeTurboView;->setViewShowState()V

    return-void

    :cond_3
    iget-object p0, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mChargeTurboView:Lcom/miui/charge/view/MiuiChargeTurboView;

    invoke-virtual {p0}, Lcom/miui/charge/view/MiuiChargeTurboView;->setViewInitState()V

    return-void

    :cond_4
    invoke-static {}, Lcom/miui/charge/ChargeUtils;->supportWaveChargeAnimation()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mStateTip:Lcom/miui/charge/container/MiuiChargeLogoView$AccessibilityDisableTextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mStateTip:Lcom/miui/charge/container/MiuiChargeLogoView$AccessibilityDisableTextView;

    const/high16 v2, 0x3f800000

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    :goto_0
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/utils/configs/MiuiConfigs;->isFlipTinyScreen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mChargeTurboView:Lcom/miui/charge/view/MiuiChargeTurboView;

    invoke-virtual {p1}, Lcom/miui/charge/view/MiuiChargeTurboView;->setViewShowState()V

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mChargeTurboView:Lcom/miui/charge/view/MiuiChargeTurboView;

    invoke-virtual {p1}, Lcom/miui/charge/view/MiuiChargeTurboView;->setViewInitState()V

    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mStateTip:Lcom/miui/charge/container/MiuiChargeLogoView$AccessibilityDisableTextView;

    iget v0, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mChargeTipTranslateSmall:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTranslationY(F)V

    iget-object p1, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mChargeTurboView:Lcom/miui/charge/view/MiuiChargeTurboView;

    invoke-virtual {p1}, Lcom/miui/charge/view/MiuiChargeTurboView;->setViewInitState()V

    iget-object p0, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mChargeTurboView:Lcom/miui/charge/view/MiuiChargeTurboView;

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void

    :cond_8
    iget-object p1, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mStateTip:Lcom/miui/charge/container/MiuiChargeLogoView$AccessibilityDisableTextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object p1, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mStateTip:Lcom/miui/charge/container/MiuiChargeLogoView$AccessibilityDisableTextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTranslationY(F)V

    iget-object p1, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mChargeTurboView:Lcom/miui/charge/view/MiuiChargeTurboView;

    invoke-virtual {p1}, Lcom/miui/charge/view/MiuiChargeTurboView;->setViewInitState()V

    iget-object p0, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mChargeTurboView:Lcom/miui/charge/view/MiuiChargeTurboView;

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public final updateLayout(Z)V
    .registers 4

    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mTinyTemplateId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/charge/ChargeUtils;->isUseInteractivePetsCharge(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mCutoutPosition:I

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mStateTipMarginTop:[I

    const/4 v1, 0x2

    aget p1, p1, v1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mStateTipMarginTop:[I

    iget v1, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mCutoutPosition:I

    aget p1, p1, v1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    :goto_0
    iget-object p0, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mStateTip:Lcom/miui/charge/container/MiuiChargeLogoView$AccessibilityDisableTextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public final updateSizeForScreenSizeChange()V
    .registers 6

    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mScreenSize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000

    mul-float v2, v0, v1

    const/high16 v3, 0x44870000

    div-float/2addr v2, v3

    iget-boolean v4, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mIsFoldChargeVideo:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mIsPadChargeVideo:Z

    if-eqz v4, :cond_1

    :cond_0
    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    :cond_1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    sget-boolean v1, Lcom/miui/utils/configs/MiuiConfigs;->IS_PAD:Z

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/miui/utils/configs/MiuiConfigs;->isLowEndDevice()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x3f19999a

    mul-float/2addr v0, v1

    div-float v2, v0, v3

    :cond_2
    iget-boolean v0, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mIsPadChargeVideo:Z

    if-eqz v0, :cond_3

    const/high16 v0, 0x42800000

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mTipTopMargin:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07155d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mSpeedTipTextSizePx:I

    goto :goto_0

    :cond_3
    const v0, 0x4209f0a4

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mSpeedTipTextSizePx:I

    const/high16 v0, 0x430b0000

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mTipTopMargin:I

    :goto_0
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/utils/configs/MiuiConfigs;->isFlipTinyScreen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mTipTopMargin:I

    int-to-double v0, v0

    const-wide v3, 0x3ff199999999999aL

    mul-double/2addr v0, v3

    double-to-int v0, v0

    iput v0, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mTipTopMargin:I

    iget v0, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mSpeedTipTextSizePx:I

    int-to-double v0, v0

    const-wide v3, 0x3ff999999999999aL

    mul-double/2addr v0, v3

    double-to-int v0, v0

    iput v0, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mSpeedTipTextSizePx:I

    :cond_4
    const/4 v0, 0x0

    mul-float/2addr v2, v0

    float-to-int v0, v2

    iput v0, p0, Lcom/miui/charge/container/MiuiChargeLogoView;->mChargeTipTranslateSmall:I

    return-void
.end method

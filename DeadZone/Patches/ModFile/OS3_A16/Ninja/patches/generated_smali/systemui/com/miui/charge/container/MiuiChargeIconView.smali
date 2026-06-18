.class public Lcom/miui/charge/container/MiuiChargeIconView;
.super Landroid/widget/RelativeLayout;


# instance fields
.field public mCarIconAlpha:I

.field public mCarIconDrawable:Landroid/graphics/drawable/Drawable;

.field public mCarIconHeight:I

.field public mCarIconScaleXY:I

.field public mCarIconWidth:I

.field public final mCarModeIcon:Landroid/widget/ImageView;

.field public mChargeSpeed:I

.field public final mCubicInterpolator:Lcom/miui/maml/animation/interpolater/CubicEaseOutInterpolater;

.field public mDoubleAlpha:I

.field public mDoubleLightningDrawable:Landroid/graphics/drawable/Drawable;

.field public final mDoubleLightningIcon:Landroid/widget/ImageView;

.field public mDoubleLightningIconHeight:I

.field public mDoubleLightningIconWidth:I

.field public mDoubleScaleXY:I

.field public final mFlipTinyScreenSupplementHeight:I

.field public mIconPaddingTop:I

.field public mIsCarMode:Z

.field public final mIsFoldChargeVideo:Z

.field public final mIsPadChargeVideo:Z

.field public mPivotX:I

.field public final mScreenSize:Landroid/graphics/Point;

.field public mSingleAlpha:I

.field public mSingleLightningDrawable:Landroid/graphics/drawable/Drawable;

.field public final mSingleLightningIcon:Landroid/widget/ImageView;

.field public mSingleLightningIconHeight:I

.field public mSingleLightningIconWidth:I

.field public mSingleScaleXY:I

.field public mSpecialDoubleLightningDrawable:Landroid/graphics/drawable/Drawable;

.field public final mSpecialDoubleLightningIcon:Landroid/widget/ImageView;

.field public mSpecialDoubleLightningIconHeight:I

.field public mSpecialDoubleLightningIconWidth:I

.field public mSwitchAnimator:Landroid/animation/AnimatorSet;

.field public final mTinyTemplateId:Ljava/lang/String;

.field public final mWindowManager:Landroid/view/WindowManager;

.field public mYellowDoubleAlpha:I

.field public mYellowDoubleScaleXY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/charge/container/MiuiChargeIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/charge/container/MiuiChargeIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 12

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Lcom/miui/maml/animation/interpolater/CubicEaseOutInterpolater;

    invoke-direct {p2}, Lcom/miui/maml/animation/interpolater/CubicEaseOutInterpolater;-><init>()V

    iput-object p2, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mCubicInterpolator:Lcom/miui/maml/animation/interpolater/CubicEaseOutInterpolater;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mIsFoldChargeVideo:Z

    iput-boolean p2, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mIsPadChargeVideo:Z

    iput p2, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mChargeSpeed:I

    sget-boolean p3, Lcom/miui/utils/configs/MiuiConfigs;->IS_PAD:Z

    iput-boolean p3, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mIsPadChargeVideo:Z

    sget-boolean p3, Lcom/miui/utils/configs/MiuiConfigs;->IS_FOLD:Z

    iput-boolean p3, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mIsFoldChargeVideo:Z

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

    iput-object p3, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mTinyTemplateId:Ljava/lang/String;

    iget-object p3, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-static {p3}, Lcom/miui/utils/configs/MiuiConfigs;->isFlipTinyScreen(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f0704eb

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mFlipTinyScreenSupplementHeight:I

    :cond_0
    invoke-virtual {p0}, Lcom/miui/charge/container/MiuiChargeIconView;->initChargeIconDrawables()V

    const-string p3, "window"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/WindowManager;

    iput-object p3, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mWindowManager:Landroid/view/WindowManager;

    new-instance p3, Landroid/graphics/Point;

    invoke-direct {p3}, Landroid/graphics/Point;-><init>()V

    iput-object p3, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mScreenSize:Landroid/graphics/Point;

    iget-object p3, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p3

    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mScreenSize:Landroid/graphics/Point;

    invoke-virtual {p3, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    invoke-virtual {p0}, Lcom/miui/charge/container/MiuiChargeIconView;->updateSizeForScreenSizeChange()V

    new-instance p3, Landroid/widget/ImageView;

    invoke-direct {p3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSingleLightningIcon:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object p3, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSingleLightningIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSingleLightningDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p3, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mTinyTemplateId:Ljava/lang/String;

    invoke-static {p3, v1}, Lcom/miui/charge/ChargeUtils;->isUseInteractivePetsCharge(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p3

    const/16 v1, 0xd

    const/16 v2, 0xb

    const v3, 0x7f0705eb

    const v4, 0x7f0705f9

    if-eqz p3, :cond_1

    new-instance p3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-direct {p3, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    :cond_1
    new-instance p3, Landroid/widget/RelativeLayout$LayoutParams;

    iget v5, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSingleLightningIconWidth:I

    iget v6, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSingleLightningIconHeight:I

    iget v7, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mIconPaddingTop:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mFlipTinyScreenSupplementHeight:I

    add-int/2addr v6, v7

    invoke-direct {p3, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v5, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSingleLightningIcon:Landroid/widget/ImageView;

    iget v6, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mIconPaddingTop:I

    invoke-virtual {v5, p2, v6, p2, p2}, Landroid/widget/ImageView;->setPadding(IIII)V

    :goto_0
    iget-object v5, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSingleLightningIcon:Landroid/widget/ImageView;

    iget v6, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mPivotX:I

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setPivotX(F)V

    iget-object v5, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSingleLightningIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v5, p3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p3, Landroid/widget/ImageView;

    invoke-direct {p3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mDoubleLightningIcon:Landroid/widget/ImageView;

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object p3, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mDoubleLightningIcon:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mDoubleLightningDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p3, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mTinyTemplateId:Ljava/lang/String;

    invoke-static {p3, v5}, Lcom/miui/charge/ChargeUtils;->isUseInteractivePetsCharge(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    new-instance p3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-direct {p3, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    :cond_2
    new-instance p3, Landroid/widget/RelativeLayout$LayoutParams;

    iget v5, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mDoubleLightningIconWidth:I

    iget v6, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mDoubleLightningIconHeight:I

    iget v7, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mIconPaddingTop:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mFlipTinyScreenSupplementHeight:I

    add-int/2addr v6, v7

    invoke-direct {p3, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v5, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mDoubleLightningIcon:Landroid/widget/ImageView;

    iget v6, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mIconPaddingTop:I

    invoke-virtual {v5, p2, v6, p2, p2}, Landroid/widget/ImageView;->setPadding(IIII)V

    :goto_1
    iget-object v5, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mDoubleLightningIcon:Landroid/widget/ImageView;

    iget v6, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mPivotX:I

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setPivotX(F)V

    iget-object v5, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mDoubleLightningIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v5, p3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p3, Landroid/widget/ImageView;

    invoke-direct {p3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSpecialDoubleLightningIcon:Landroid/widget/ImageView;

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-static {}, Lcom/miui/charge/container/MiuiChargeIconView;->isDoubleChargeShow()Z

    move-result p3

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSpecialDoubleLightningIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mDoubleLightningDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_3
    iget-object p3, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSpecialDoubleLightningIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSpecialDoubleLightningDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    iget-object p3, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mTinyTemplateId:Ljava/lang/String;

    invoke-static {p3, v0}, Lcom/miui/charge/ChargeUtils;->isUseInteractivePetsCharge(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_4

    new-instance p3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-direct {p3, v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_3

    :cond_4
    new-instance p3, Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSpecialDoubleLightningIconWidth:I

    iget v5, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSpecialDoubleLightningIconHeight:I

    iget v6, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mIconPaddingTop:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mFlipTinyScreenSupplementHeight:I

    add-int/2addr v5, v6

    invoke-direct {p3, v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSpecialDoubleLightningIcon:Landroid/widget/ImageView;

    iget v5, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mIconPaddingTop:I

    invoke-virtual {v0, p2, v5, p2, p2}, Landroid/widget/ImageView;->setPadding(IIII)V

    :goto_3
    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSpecialDoubleLightningIcon:Landroid/widget/ImageView;

    iget v5, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mPivotX:I

    int-to-float v5, v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setPivotX(F)V

    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSpecialDoubleLightningIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p3, Landroid/widget/ImageView;

    invoke-direct {p3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mCarModeIcon:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object p3, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mCarModeIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mCarIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p3, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mTinyTemplateId:Ljava/lang/String;

    invoke-static {p3, v0}, Lcom/miui/charge/ChargeUtils;->isUseInteractivePetsCharge(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_5

    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-direct {p2, p3, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_4

    :cond_5
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    iget p3, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mCarIconWidth:I

    iget v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mCarIconHeight:I

    iget v2, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mIconPaddingTop:I

    add-int/2addr v0, v2

    invoke-direct {p1, p3, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object p3, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mCarModeIcon:Landroid/widget/ImageView;

    iget v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mIconPaddingTop:I

    invoke-virtual {p3, p2, v0, p2, p2}, Landroid/widget/ImageView;->setPadding(IIII)V

    move-object p2, p1

    :goto_4
    iget-object p1, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mCarModeIcon:Landroid/widget/ImageView;

    iget p3, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mPivotX:I

    int-to-float p3, p3

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setPivotX(F)V

    iget-object p1, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mCarModeIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, p1, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static isDoubleChargeShow()Z
    .registers 3

    sget-boolean v0, Lcom/miui/charge/ChargeUtils;->SUPPORT_DOUBLE_CHARGE:Z

    const-class v1, Lcom/miui/charge/MiuiChargeController;

    invoke-static {v1}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/charge/MiuiChargeController;

    iget-boolean v2, v2, Lcom/miui/charge/MiuiChargeController;->mIsFastCharge:Z

    invoke-static {v1}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/charge/MiuiChargeController;

    iget-boolean v1, v1, Lcom/miui/charge/MiuiChargeController;->mWirelessCharging:Z

    if-eqz v0, :cond_0

    if-nez v2, :cond_0

    if-nez v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final checkScreenSize()V
    .registers 6

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iget-object v1, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget-object v1, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mScreenSize:Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->equals(II)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/miui/charge/container/MiuiChargeIconView;->initChargeIconDrawables()V

    iget-object v1, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mScreenSize:Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Point;->set(II)V

    invoke-virtual {p0}, Lcom/miui/charge/container/MiuiChargeIconView;->updateSizeForScreenSizeChange()V

    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSingleLightningIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSingleLightningIconWidth:I

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget v2, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSingleLightningIconHeight:I

    iget v3, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mIconPaddingTop:I

    add-int/2addr v2, v3

    iget v4, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mFlipTinyScreenSupplementHeight:I

    add-int/2addr v2, v4

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v2, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSingleLightningIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v1, v3, v1, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    iget-object v2, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSingleLightningIcon:Landroid/widget/ImageView;

    iget v3, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mPivotX:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setPivotX(F)V

    iget-object v2, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSingleLightningIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mDoubleLightningIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mDoubleLightningIconWidth:I

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget v2, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mDoubleLightningIconHeight:I

    iget v3, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mIconPaddingTop:I

    add-int/2addr v2, v3

    iget v4, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mFlipTinyScreenSupplementHeight:I

    add-int/2addr v2, v4

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v2, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mDoubleLightningIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v1, v3, v1, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    iget-object v2, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mDoubleLightningIcon:Landroid/widget/ImageView;

    iget v3, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mPivotX:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setPivotX(F)V

    iget-object v2, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mDoubleLightningIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSpecialDoubleLightningIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSpecialDoubleLightningIconWidth:I

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget v2, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSpecialDoubleLightningIconHeight:I

    iget v3, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mIconPaddingTop:I

    add-int/2addr v2, v3

    iget v4, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mFlipTinyScreenSupplementHeight:I

    add-int/2addr v2, v4

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v2, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSpecialDoubleLightningIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v1, v3, v1, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    iget-object v2, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSpecialDoubleLightningIcon:Landroid/widget/ImageView;

    iget v3, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mPivotX:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setPivotX(F)V

    iget-object v2, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSpecialDoubleLightningIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mCarModeIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mCarIconWidth:I

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget v2, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mCarIconHeight:I

    iget v3, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mIconPaddingTop:I

    add-int/2addr v2, v3

    iget v4, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mFlipTinyScreenSupplementHeight:I

    add-int/2addr v2, v4

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v2, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mCarModeIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v1, v3, v1, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    iget-object v1, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mCarModeIcon:Landroid/widget/ImageView;

    iget v2, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mPivotX:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setPivotX(F)V

    iget-object v1, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mCarModeIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    :cond_4
    return-void
.end method

.method public final initChargeIconDrawables()V
    .registers 3

    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/utils/configs/MiuiConfigs;->isFlipTinyScreen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mTinyTemplateId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/charge/ChargeUtils;->isUseInteractivePetsCharge(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    const v1, 0x7f080c7d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSingleLightningDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    const v1, 0x7f080c7e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mDoubleLightningDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSpecialDoubleLightningDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    const v1, 0x7f080c81

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSingleLightningDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    const v1, 0x7f080c85

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mDoubleLightningDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    const v1, 0x7f080c83

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSpecialDoubleLightningDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    const v1, 0x7f080c77

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mCarIconDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    const v1, 0x7f080c80

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSingleLightningDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    const v1, 0x7f080c84

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mDoubleLightningDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    const v1, 0x7f080c82

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSpecialDoubleLightningDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    const v1, 0x7f080c78

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mCarIconDrawable:Landroid/graphics/drawable/Drawable;

    :goto_1
    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSingleLightningIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mDoubleLightningIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSpecialDoubleLightningIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mCarModeIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSingleLightningDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mDoubleLightningIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mDoubleLightningDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/miui/charge/container/MiuiChargeIconView;->isDoubleChargeShow()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSpecialDoubleLightningIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mDoubleLightningDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSpecialDoubleLightningIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSpecialDoubleLightningDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mCarModeIcon:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mCarIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void
.end method

.method public final onAttachedToWindow()V
    .registers 1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/miui/charge/container/MiuiChargeIconView;->checkScreenSize()V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/miui/charge/container/MiuiChargeIconView;->checkScreenSize()V

    return-void
.end method

.method public setIconSize(II)V
    .registers 5

    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSingleLightningIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSingleLightningIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mDoubleLightningIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mDoubleLightningIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSpecialDoubleLightningIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSpecialDoubleLightningIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mCarModeIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object p0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mCarModeIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-void
.end method

.method public final updateSizeForScreenSizeChange()V
    .registers 6

    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mScreenSize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000

    mul-float v2, v0, v1

    const/high16 v3, 0x44870000

    div-float/2addr v2, v3

    iget-boolean v4, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mIsFoldChargeVideo:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mIsPadChargeVideo:Z

    if-eqz v4, :cond_2

    :cond_0
    cmpl-float v4, v2, v1

    if-lez v4, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    move v2, v1

    :cond_2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    sget-boolean v1, Lcom/miui/utils/configs/MiuiConfigs;->IS_PAD:Z

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/miui/utils/configs/MiuiConfigs;->isLowEndDevice()Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x3f19999a

    mul-float/2addr v0, v1

    div-float v2, v0, v3

    :cond_3
    iget-boolean v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mIsPadChargeVideo:Z

    if-eqz v0, :cond_4

    const/high16 v0, 0x43410000

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mIconPaddingTop:I

    goto :goto_1

    :cond_4
    const v0, 0x43898000

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mIconPaddingTop:I

    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/utils/configs/MiuiConfigs;->isFlipTinyScreen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mIconPaddingTop:I

    int-to-double v0, v0

    const-wide v3, 0x3ff999999999999aL

    mul-double/2addr v0, v3

    double-to-int v0, v0

    iput v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mIconPaddingTop:I

    :cond_5
    :goto_1
    const/high16 v0, 0x42c80000

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mPivotX:I

    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSingleLightningDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSingleLightningIconWidth:I

    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSingleLightningDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSingleLightningIconHeight:I

    :cond_6
    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mDoubleLightningDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mDoubleLightningIconWidth:I

    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mDoubleLightningDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mDoubleLightningIconHeight:I

    :cond_7
    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSpecialDoubleLightningDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSpecialDoubleLightningIconWidth:I

    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSpecialDoubleLightningDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSpecialDoubleLightningIconHeight:I

    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/utils/configs/MiuiConfigs;->isFlipTinyScreen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSpecialDoubleLightningIconWidth:I

    int-to-double v0, v0

    const-wide v3, 0x3ff3333333333333L

    mul-double/2addr v0, v3

    double-to-int v0, v0

    iput v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSpecialDoubleLightningIconWidth:I

    iget v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSpecialDoubleLightningIconHeight:I

    int-to-double v0, v0

    mul-double/2addr v0, v3

    double-to-int v0, v0

    iput v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mSpecialDoubleLightningIconHeight:I

    :cond_8
    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mCarIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mCarIconWidth:I

    iget-object v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mCarIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v2, v0

    float-to-int v0, v2

    iput v0, p0, Lcom/miui/charge/container/MiuiChargeIconView;->mCarIconHeight:I

    :cond_9
    return-void
.end method

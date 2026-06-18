.class public Lcom/miui/charge/view/MiuiChargePercentCountView;
.super Landroid/widget/LinearLayout;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mChargeNumberChangedCallback:Lcom/miui/charge/container/MiuiChargeAnimationView$ChargeNumberChangedCallback;

.field public mChargeNumberTranslateInit:I

.field public mChargeNumberTranslateSmall:I

.field public mChargeSpeed:I

.field public mContentSwitchAnimator:Landroid/animation/AnimatorSet;

.field public final mCubicInterpolator:Lcom/miui/maml/animation/interpolater/CubicEaseOutInterpolater;

.field public mCurrentProgress:I

.field public final mIntegerTv:Lcom/miui/charge/view/NumberDrawView;

.field public final mIsFold:Z

.field public final mIsPad:Z

.field public mLargeTextSizePx:I

.field public mPercentTextSizePx:I

.field public final mQuartOutInterpolator:Lcom/miui/maml/animation/interpolater/QuartEaseOutInterpolater;

.field public final mScreenSize:Landroid/graphics/Point;

.field public mSmallTextSizePx:I

.field public final mTinyTemplateId:Ljava/lang/String;

.field public mValueAnimator:Landroid/animation/ValueAnimator;

.field public final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/charge/view/MiuiChargePercentCountView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/charge/view/MiuiChargePercentCountView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Lcom/miui/maml/animation/interpolater/CubicEaseOutInterpolater;

    invoke-direct {p2}, Lcom/miui/maml/animation/interpolater/CubicEaseOutInterpolater;-><init>()V

    iput-object p2, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mCubicInterpolator:Lcom/miui/maml/animation/interpolater/CubicEaseOutInterpolater;

    new-instance p2, Lcom/miui/maml/animation/interpolater/QuartEaseOutInterpolater;

    invoke-direct {p2}, Lcom/miui/maml/animation/interpolater/QuartEaseOutInterpolater;-><init>()V

    iput-object p2, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mQuartOutInterpolator:Lcom/miui/maml/animation/interpolater/QuartEaseOutInterpolater;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mIsFold:Z

    iput-boolean p2, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mIsPad:Z

    iput p2, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mChargeSpeed:I

    sget-boolean p3, Lcom/miui/utils/configs/MiuiConfigs;->IS_PAD:Z

    iput-boolean p3, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mIsPad:Z

    invoke-static {}, Lcom/miui/utils/configs/MiuiConfigs;->isFoldableDevice()Z

    move-result p3

    iput-boolean p3, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mIsFold:Z

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    const-string p3, "window"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/WindowManager;

    iput-object p3, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mWindowManager:Landroid/view/WindowManager;

    new-instance p3, Landroid/graphics/Point;

    invoke-direct {p3}, Landroid/graphics/Point;-><init>()V

    iput-object p3, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mScreenSize:Landroid/graphics/Point;

    iget-object p3, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p3

    iget-object v0, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mScreenSize:Landroid/graphics/Point;

    invoke-virtual {p3, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    invoke-virtual {p0}, Lcom/miui/charge/view/MiuiChargePercentCountView;->updateSizeForScreenSizeChange()V

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

    iput-object p3, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mTinyTemplateId:Ljava/lang/String;

    const p3, 0x7f090001

    invoke-static {p3, p1}, Landroidx/core/content/res/ResourcesCompat;->getFont(ILandroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object p3

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput p2, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mCurrentProgress:I

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mTinyTemplateId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/miui/charge/ChargeUtils;->isUseInteractivePetsCharge(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/miui/charge/view/InteractivePetsNumberView;

    invoke-direct {v1, p1}, Lcom/miui/charge/view/InteractivePetsNumberView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mIntegerTv:Lcom/miui/charge/view/NumberDrawView;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/miui/charge/view/NumberDrawView;

    invoke-direct {v1, p1}, Lcom/miui/charge/view/NumberDrawView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mIntegerTv:Lcom/miui/charge/view/NumberDrawView;

    :goto_0
    iget-object p1, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mIntegerTv:Lcom/miui/charge/view/NumberDrawView;

    iget v1, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mLargeTextSizePx:I

    iget v2, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mSmallTextSizePx:I

    iget v3, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mPercentTextSizePx:I

    invoke-virtual {p1, v1, v2, v3}, Lcom/miui/charge/view/NumberDrawView;->setSize(III)V

    iget-object p1, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mIntegerTv:Lcom/miui/charge/view/NumberDrawView;

    const-string v1, "#FFFFFF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mTinyTemplateId:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/miui/charge/ChargeUtils;->isUseInteractivePetsCharge(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x10

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_1

    :cond_1
    const/16 p1, 0x51

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    :goto_1
    if-eqz p3, :cond_2

    iget-object p1, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mIntegerTv:Lcom/miui/charge/view/NumberDrawView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_2
    iget-object p1, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mIntegerTv:Lcom/miui/charge/view/NumberDrawView;

    invoke-virtual {p0, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, p2}, Lcom/miui/charge/view/MiuiChargePercentCountView;->setProgress(I)V

    return-void
.end method


# virtual methods
.method public final checkScreenSize()V
    .registers 5

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iget-object v1, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget-object v1, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mScreenSize:Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->equals(II)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mScreenSize:Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Point;->set(II)V

    invoke-virtual {p0}, Lcom/miui/charge/view/MiuiChargePercentCountView;->updateSizeForScreenSizeChange()V

    iget-object v0, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mIntegerTv:Lcom/miui/charge/view/NumberDrawView;

    iget v1, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mLargeTextSizePx:I

    iget v2, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mSmallTextSizePx:I

    iget v3, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mPercentTextSizePx:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/charge/view/NumberDrawView;->setSize(III)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public final onAttachedToWindow()V
    .registers 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/miui/charge/view/MiuiChargePercentCountView;->checkScreenSize()V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/miui/charge/view/MiuiChargePercentCountView;->checkScreenSize()V

    return-void
.end method

.method public setChargeLevelAnimationListener(Lcom/miui/charge/view/MiuiChargePercentCountView$ChargeLevelAnimationListener;)V
    .registers 2

    return-void
.end method

.method public setListener(Lcom/miui/charge/container/MiuiChargeAnimationView$ChargeNumberChangedCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mChargeNumberChangedCallback:Lcom/miui/charge/container/MiuiChargeAnimationView$ChargeNumberChangedCallback;

    return-void
.end method

.method public setProgress(I)V
    .registers 4

    if-ltz p1, :cond_2

    const/16 v0, 0x64

    if-gt p1, v0, :cond_2

    if-eq p1, v0, :cond_0

    iget-object v1, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iput p1, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mCurrentProgress:I

    iget-object p0, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mIntegerTv:Lcom/miui/charge/view/NumberDrawView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "%d"

    invoke-static {v0, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/charge/view/NumberDrawView;->setLevelText(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final startPercentViewAnimation(Z)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "startPercentViewAnimation: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mChargeSpeed:I

    const-string v2, "MiuiChargePercentCountView"

    invoke-static {v1, v2, v0}, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mTinyTemplateId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/charge/ChargeUtils;->isUseInteractivePetsCharge(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "resetViewState: chargeSpeed= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mChargeSpeed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",clickShow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mChargeSpeed:I

    if-nez v0, :cond_1

    const/high16 v0, 0x3f800000

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setScaleX(F)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setScaleY(F)V

    iget v0, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mChargeNumberTranslateInit:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    goto :goto_0

    :cond_1
    const v0, 0x3f59999a

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setScaleX(F)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setScaleY(F)V

    iget v0, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mChargeNumberTranslateSmall:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    :goto_0
    invoke-static {}, Lcom/miui/charge/ChargeUtils;->supportWaveChargeAnimation()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mIntegerTv:Lcom/miui/charge/view/NumberDrawView;

    const/16 v1, 0x109

    const/16 v2, 0x66

    invoke-virtual {v0, v1, v2, v2}, Lcom/miui/charge/view/NumberDrawView;->setSize(III)V

    if-eqz p1, :cond_2

    const/high16 p1, -0x3d380000

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    return-void

    :cond_2
    const/high16 p1, -0x3d600000

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    return-void

    :cond_3
    iget p1, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mLargeTextSizePx:I

    iget v0, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mSmallTextSizePx:I

    iget v1, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mPercentTextSizePx:I

    iget-object p0, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mIntegerTv:Lcom/miui/charge/view/NumberDrawView;

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/charge/view/NumberDrawView;->setSize(III)V

    return-void
.end method

.method public final switchAnimation()V
    .registers 12

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mTinyTemplateId:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/miui/charge/ChargeUtils;->isUseInteractivePetsCharge(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "switchAnimation: chargeSpeed="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mChargeSpeed:I

    const-string v5, "MiuiChargePercentCountView"

    invoke-static {v4, v5, v3}, Lcom/android/keyguard/clock/animation/classic/ClassicPlusClockAnimation$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v3, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mContentSwitchAnimator:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    invoke-static {}, Lcom/miui/charge/ChargeUtils;->supportWaveChargeAnimation()Z

    move-result v3

    const/4 v4, 0x3

    if-eqz v3, :cond_2

    const/high16 v3, 0x3f400000

    const/high16 v5, -0x3d380000

    goto :goto_2

    :cond_2
    const-class v3, Lcom/android/systemui/plugins/miui/settings/IUserTracker;

    invoke-static {v3}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/plugins/miui/settings/IUserTracker;

    invoke-interface {v3}, Lcom/android/systemui/plugins/miui/settings/IUserTracker;->getUserContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0c008a

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    if-ne v3, v4, :cond_3

    move v3, v1

    goto :goto_0

    :cond_3
    move v3, v2

    :goto_0
    const v5, 0x3f59999a

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mChargeNumberTranslateSmall:I

    :goto_1
    int-to-float v3, v3

    move v10, v5

    move v5, v3

    move v3, v10

    goto :goto_2

    :cond_4
    iget v3, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mChargeSpeed:I

    const/high16 v6, 0x3f800000

    if-nez v3, :cond_5

    invoke-virtual {p0, v6}, Landroid/widget/LinearLayout;->setScaleX(F)V

    invoke-virtual {p0, v6}, Landroid/widget/LinearLayout;->setScaleY(F)V

    iget v3, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mChargeNumberTranslateInit:I

    int-to-float v3, v3

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    iget v3, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mChargeNumberTranslateInit:I

    int-to-float v5, v3

    move v3, v6

    goto :goto_2

    :cond_5
    if-ne v3, v1, :cond_6

    invoke-virtual {p0, v6}, Landroid/widget/LinearLayout;->setScaleX(F)V

    invoke-virtual {p0, v6}, Landroid/widget/LinearLayout;->setScaleY(F)V

    iget v3, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mChargeNumberTranslateInit:I

    int-to-float v3, v3

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    iget v3, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mChargeNumberTranslateSmall:I

    goto :goto_1

    :cond_6
    iget v3, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mChargeNumberTranslateSmall:I

    goto :goto_1

    :goto_2
    sget-object v6, Landroid/widget/LinearLayout;->SCALE_X:Landroid/util/Property;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScaleX()F

    move-result v7

    new-array v8, v0, [F

    aput v7, v8, v2

    aput v3, v8, v1

    invoke-static {v6, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    sget-object v7, Landroid/widget/LinearLayout;->SCALE_Y:Landroid/util/Property;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScaleY()F

    move-result v8

    new-array v9, v0, [F

    aput v8, v9, v2

    aput v3, v9, v1

    invoke-static {v7, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    sget-object v7, Landroid/widget/LinearLayout;->TRANSLATION_Y:Landroid/util/Property;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTranslationY()F

    move-result v8

    new-array v9, v0, [F

    aput v8, v9, v2

    aput v5, v9, v1

    invoke-static {v7, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v6, v4, v2

    aput-object v3, v4, v1

    aput-object v5, v4, v0

    invoke-static {p0, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mContentSwitchAnimator:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mCubicInterpolator:Lcom/miui/maml/animation/interpolater/CubicEaseOutInterpolater;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mContentSwitchAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object p0, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mContentSwitchAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public final updateSizeForScreenSizeChange()V
    .registers 7

    iget-object v0, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mScreenSize:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000

    mul-float v2, v0, v1

    const/high16 v3, 0x44870000

    div-float/2addr v2, v3

    iget-boolean v4, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mIsFold:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mIsPad:Z

    if-eqz v4, :cond_3

    :cond_0
    cmpl-float v4, v2, v1

    if-lez v4, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iget-object v2, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/utils/configs/MiuiConfigs;->isFlipTinyScreen(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    float-to-double v1, v1

    const-wide/high16 v4, 0x3ff8000000000000L

    mul-double/2addr v1, v4

    double-to-float v2, v1

    goto :goto_1

    :cond_2
    move v2, v1

    :cond_3
    :goto_1
    iget-boolean v1, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mIsPad:Z

    const/high16 v4, -0x3ee00000

    const/high16 v5, -0x3d740000

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/miui/utils/configs/MiuiConfigs;->isLowEndDevice()Z

    move-result v1

    if-eqz v1, :cond_4

    const v1, 0x3f19999a

    mul-float/2addr v0, v1

    div-float v2, v0, v3

    :cond_4
    const/high16 v0, 0x43100000

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mLargeTextSizePx:I

    const/high16 v0, 0x42960000

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mSmallTextSizePx:I

    const/high16 v0, 0x427c0000

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mPercentTextSizePx:I

    mul-float/2addr v5, v2

    float-to-int v0, v5

    iput v0, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mChargeNumberTranslateSmall:I

    mul-float/2addr v2, v4

    float-to-int v0, v2

    iput v0, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mChargeNumberTranslateInit:I

    return-void

    :cond_5
    const/high16 v0, 0x433c0000

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mLargeTextSizePx:I

    const/high16 v0, 0x42c80000

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mSmallTextSizePx:I

    const/high16 v0, 0x42800000

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mPercentTextSizePx:I

    mul-float/2addr v5, v2

    float-to-int v0, v5

    iput v0, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mChargeNumberTranslateSmall:I

    mul-float/2addr v2, v4

    float-to-int v0, v2

    iput v0, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mChargeNumberTranslateInit:I

    const-class v0, Lcom/android/systemui/plugins/miui/settings/IUserTracker;

    invoke-static {v0}, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/miui/settings/IUserTracker;

    invoke-interface {v0}, Lcom/android/systemui/plugins/miui/settings/IUserTracker;->getUserContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    iget v0, p0, Lcom/miui/charge/view/MiuiChargePercentCountView;->mChargeNumberTranslateSmall:I

    neg-int v0, v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_6
    return-void
.end method

.class public Lcom/miui/charge/view/NumberDrawView;
.super Landroid/widget/TextView;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDot:Ljava/lang/String;

.field public mDotWidth:I

.field public mFontMetrics:Landroid/graphics/Paint$FontMetrics;

.field public mLargeMaxNumWidth:I

.field public final mLargeTextPaint:Landroid/text/TextPaint;

.field public mLargeTextSizePx:I

.field public mLevel:Ljava/lang/String;

.field public mLocaleName:Ljava/lang/String;

.field public final mNormalTypeface:Landroid/graphics/Typeface;

.field public final mPercentTextPaint:Landroid/text/TextPaint;

.field public mPercentTextSizePx:I

.field public mPercentWidth:I

.field public final mRegularTypeface:Landroid/graphics/Typeface;

.field public mResources:Landroid/content/res/Resources;

.field public final mScreenSize:Landroid/graphics/Point;

.field public mShowLevel:Ljava/lang/String;

.field public mSmallMaxNumWidth:I

.field public final mSmallTextPaint:Landroid/text/TextPaint;

.field public mSmallTextSizePx:I

.field public mStrHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/charge/view/NumberDrawView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/charge/view/NumberDrawView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p2, ""

    iput-object p2, p0, Lcom/miui/charge/view/NumberDrawView;->mLevel:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/charge/view/NumberDrawView;->mShowLevel:Ljava/lang/String;

    const-string p3, "."

    iput-object p3, p0, Lcom/miui/charge/view/NumberDrawView;->mDot:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/charge/view/NumberDrawView;->mLocaleName:Ljava/lang/String;

    iput-object p1, p0, Lcom/miui/charge/view/NumberDrawView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/charge/view/NumberDrawView;->mResources:Landroid/content/res/Resources;

    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    iput-object p2, p0, Lcom/miui/charge/view/NumberDrawView;->mScreenSize:Landroid/graphics/Point;

    const-string p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    iget-object p3, p0, Lcom/miui/charge/view/NumberDrawView;->mScreenSize:Landroid/graphics/Point;

    invoke-virtual {p2, p3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    const p2, 0x7f090002

    invoke-static {p2, p1}, Landroidx/core/content/res/ResourcesCompat;->getFont(ILandroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/charge/view/NumberDrawView;->mRegularTypeface:Landroid/graphics/Typeface;

    const p2, 0x7f090001

    invoke-static {p2, p1}, Landroidx/core/content/res/ResourcesCompat;->getFont(ILandroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/charge/view/NumberDrawView;->mNormalTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    new-instance p1, Landroid/text/TextPaint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lcom/miui/charge/view/NumberDrawView;->mLargeTextPaint:Landroid/text/TextPaint;

    const/4 p3, -0x1

    invoke-virtual {p1, p3}, Landroid/text/TextPaint;->setColor(I)V

    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1, p2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lcom/miui/charge/view/NumberDrawView;->mSmallTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, p3}, Landroid/text/TextPaint;->setColor(I)V

    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1, p2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lcom/miui/charge/view/NumberDrawView;->mPercentTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, p3}, Landroid/text/TextPaint;->setColor(I)V

    invoke-virtual {p0}, Lcom/miui/charge/view/NumberDrawView;->updateTextPaint()V

    return-void
.end method

.method private getShowWidth()I
    .registers 1

    iget-object p0, p0, Lcom/miui/charge/view/NumberDrawView;->mScreenSize:Landroid/graphics/Point;

    if-eqz p0, :cond_0

    iget p0, p0, Landroid/graphics/Point;->x:I

    return p0

    :cond_0
    const/16 p0, 0x438

    return p0
.end method


# virtual methods
.method public final doUpdateDrawParams()V
    .registers 4

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/charge/view/NumberDrawView;->mLargeMaxNumWidth:I

    iput v0, p0, Lcom/miui/charge/view/NumberDrawView;->mSmallMaxNumWidth:I

    invoke-virtual {p0}, Lcom/miui/charge/view/NumberDrawView;->measureLargeNumWidth()V

    invoke-virtual {p0}, Lcom/miui/charge/view/NumberDrawView;->measureSmallNumWidth()V

    iget-object v0, p0, Lcom/miui/charge/view/NumberDrawView;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/miui/charge/view/NumberDrawView;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcom/miui/charge/view/NumberDrawView;->mStrHeight:I

    iget-object v0, p0, Lcom/miui/charge/view/NumberDrawView;->mPercentTextPaint:Landroid/text/TextPaint;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/charge/view/NumberDrawView;->mPercentWidth:I

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const v1, 0x410e147b

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%1.2f"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/charge/view/NumberDrawView;->mDot:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/charge/view/NumberDrawView;->mPercentTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/charge/view/NumberDrawView;->mDotWidth:I

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/charge/view/NumberDrawView;->mLocaleName:Ljava/lang/String;

    return-void
.end method

.method public final measureLargeNumWidth()V
    .registers 7

    iget v0, p0, Lcom/miui/charge/view/NumberDrawView;->mLargeMaxNumWidth:I

    if-lez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/charge/view/NumberDrawView;->mLargeTextPaint:Landroid/text/TextPaint;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%d"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x9

    if-gt v1, v2, :cond_2

    iget-object v2, p0, Lcom/miui/charge/view/NumberDrawView;->mLargeTextPaint:Landroid/text/TextPaint;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    if-le v2, v0, :cond_1

    move v0, v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iput v0, p0, Lcom/miui/charge/view/NumberDrawView;->mLargeMaxNumWidth:I

    return-void
.end method

.method public final measureSmallNumWidth()V
    .registers 7

    iget v0, p0, Lcom/miui/charge/view/NumberDrawView;->mSmallMaxNumWidth:I

    if-lez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/charge/view/NumberDrawView;->mSmallTextPaint:Landroid/text/TextPaint;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%d"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x9

    if-gt v1, v2, :cond_2

    iget-object v2, p0, Lcom/miui/charge/view/NumberDrawView;->mSmallTextPaint:Landroid/text/TextPaint;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    if-le v2, v0, :cond_1

    move v0, v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iput v0, p0, Lcom/miui/charge/view/NumberDrawView;->mSmallMaxNumWidth:I

    return-void
.end method

.method public final onAttachedToWindow()V
    .registers 3

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/miui/charge/view/NumberDrawView;->mLocaleName:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/charge/view/NumberDrawView;->doUpdateDrawParams()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lcom/miui/charge/view/NumberDrawView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/charge/view/NumberDrawView;->mResources:Landroid/content/res/Resources;

    invoke-static {}, Lcom/miui/systemui/util/CutoutUtils;->updateCutoutPosition()V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    const-string v0, ""

    iput-object v0, p0, Lcom/miui/charge/view/NumberDrawView;->mLevel:Ljava/lang/String;

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 12

    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/miui/charge/view/NumberDrawView;->mShowLevel:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/charge/view/NumberDrawView;->mDot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/miui/charge/view/NumberDrawView;->mShowLevel:Ljava/lang/String;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/charge/view/NumberDrawView;->measureLargeNumWidth()V

    invoke-virtual {p0}, Lcom/miui/charge/view/NumberDrawView;->measureSmallNumWidth()V

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/miui/charge/view/NumberDrawView;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v5, v4, Landroid/graphics/Paint$FontMetrics;->ascent:F

    iget v4, v4, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v5, v4

    sub-float/2addr v3, v5

    const/high16 v4, 0x3f000000

    mul-float/2addr v3, v4

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lcom/miui/charge/view/NumberDrawView;->mShowLevel:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    iget v6, p0, Lcom/miui/charge/view/NumberDrawView;->mLargeMaxNumWidth:I

    mul-int/2addr v6, v0

    iget v7, p0, Lcom/miui/charge/view/NumberDrawView;->mPercentWidth:I

    add-int/2addr v6, v7

    sub-int/2addr v4, v6

    div-int/lit8 v4, v4, 0x2

    if-nez v1, :cond_0

    int-to-float v1, v4

    iget-object v6, p0, Lcom/miui/charge/view/NumberDrawView;->mPercentTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v1, v3, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget v1, p0, Lcom/miui/charge/view/NumberDrawView;->mPercentWidth:I

    add-int/2addr v4, v1

    :goto_0
    if-ge v5, v0, :cond_4

    iget-object v1, p0, Lcom/miui/charge/view/NumberDrawView;->mShowLevel:Ljava/lang/String;

    add-int/lit8 v2, v5, 0x1

    add-int/lit8 v6, v5, 0x2

    invoke-virtual {v1, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iget v6, p0, Lcom/miui/charge/view/NumberDrawView;->mLargeMaxNumWidth:I

    mul-int/2addr v5, v6

    add-int/2addr v5, v4

    int-to-float v5, v5

    iget-object v6, p0, Lcom/miui/charge/view/NumberDrawView;->mLargeTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v5, v3, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move v5, v2

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v5, v0, :cond_1

    iget-object v6, p0, Lcom/miui/charge/view/NumberDrawView;->mShowLevel:Ljava/lang/String;

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v6, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    iget v8, p0, Lcom/miui/charge/view/NumberDrawView;->mLargeMaxNumWidth:I

    mul-int/2addr v5, v8

    add-int/2addr v5, v4

    int-to-float v5, v5

    iget-object v8, p0, Lcom/miui/charge/view/NumberDrawView;->mLargeTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v6, v5, v3, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move v5, v7

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/miui/charge/view/NumberDrawView;->mLargeMaxNumWidth:I

    mul-int/2addr v1, v0

    add-int/2addr v1, v4

    int-to-float v0, v1

    iget-object p0, p0, Lcom/miui/charge/view/NumberDrawView;->mPercentTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v0, v3, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void

    :cond_2
    if-nez v1, :cond_5

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    add-int/lit8 v4, v0, -0x1

    iget v5, p0, Lcom/miui/charge/view/NumberDrawView;->mLargeMaxNumWidth:I

    mul-int/2addr v5, v4

    iget-object v7, p0, Lcom/miui/charge/view/NumberDrawView;->mShowLevel:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v4

    add-int/lit8 v7, v7, -0x2

    iget v8, p0, Lcom/miui/charge/view/NumberDrawView;->mSmallMaxNumWidth:I

    mul-int/2addr v7, v8

    add-int/2addr v7, v5

    iget v5, p0, Lcom/miui/charge/view/NumberDrawView;->mPercentWidth:I

    add-int/2addr v7, v5

    iget v5, p0, Lcom/miui/charge/view/NumberDrawView;->mDotWidth:I

    add-int/2addr v7, v5

    sub-int/2addr v1, v7

    div-int/lit8 v1, v1, 0x2

    int-to-float v5, v1

    iget-object v7, p0, Lcom/miui/charge/view/NumberDrawView;->mPercentTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v5, v3, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget v2, p0, Lcom/miui/charge/view/NumberDrawView;->mPercentWidth:I

    add-int/2addr v1, v2

    move v2, v6

    :goto_2
    if-ge v2, v0, :cond_3

    iget-object v5, p0, Lcom/miui/charge/view/NumberDrawView;->mShowLevel:Ljava/lang/String;

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v5, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v2, v2, -0x1

    iget v8, p0, Lcom/miui/charge/view/NumberDrawView;->mLargeMaxNumWidth:I

    mul-int/2addr v2, v8

    add-int/2addr v2, v1

    int-to-float v2, v2

    iget-object v8, p0, Lcom/miui/charge/view/NumberDrawView;->mLargeTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v5, v2, v3, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move v2, v7

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/miui/charge/view/NumberDrawView;->mDot:Ljava/lang/String;

    iget v5, p0, Lcom/miui/charge/view/NumberDrawView;->mLargeMaxNumWidth:I

    mul-int/2addr v5, v4

    add-int/2addr v5, v1

    int-to-float v5, v5

    iget-object v7, p0, Lcom/miui/charge/view/NumberDrawView;->mPercentTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v5, v3, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget v2, p0, Lcom/miui/charge/view/NumberDrawView;->mDotWidth:I

    add-int/2addr v1, v2

    add-int/lit8 v2, v0, 0x1

    :goto_3
    iget-object v5, p0, Lcom/miui/charge/view/NumberDrawView;->mShowLevel:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_4

    iget-object v5, p0, Lcom/miui/charge/view/NumberDrawView;->mShowLevel:Ljava/lang/String;

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v5, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iget v8, p0, Lcom/miui/charge/view/NumberDrawView;->mLargeMaxNumWidth:I

    mul-int/2addr v8, v4

    add-int/2addr v8, v1

    sub-int/2addr v2, v0

    sub-int/2addr v2, v6

    iget v9, p0, Lcom/miui/charge/view/NumberDrawView;->mSmallMaxNumWidth:I

    mul-int/2addr v2, v9

    add-int/2addr v2, v8

    int-to-float v2, v2

    iget-object v8, p0, Lcom/miui/charge/view/NumberDrawView;->mSmallTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v5, v2, v3, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move v2, v7

    goto :goto_3

    :cond_4
    return-void

    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    iget v4, p0, Lcom/miui/charge/view/NumberDrawView;->mLargeMaxNumWidth:I

    mul-int/2addr v4, v0

    iget-object v7, p0, Lcom/miui/charge/view/NumberDrawView;->mShowLevel:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v0

    add-int/lit8 v7, v7, -0x2

    iget v8, p0, Lcom/miui/charge/view/NumberDrawView;->mSmallMaxNumWidth:I

    mul-int/2addr v7, v8

    add-int/2addr v7, v4

    iget v4, p0, Lcom/miui/charge/view/NumberDrawView;->mPercentWidth:I

    add-int/2addr v7, v4

    iget v4, p0, Lcom/miui/charge/view/NumberDrawView;->mDotWidth:I

    add-int/2addr v7, v4

    sub-int/2addr v1, v7

    div-int/lit8 v1, v1, 0x2

    :goto_4
    if-ge v5, v0, :cond_6

    iget-object v4, p0, Lcom/miui/charge/view/NumberDrawView;->mShowLevel:Ljava/lang/String;

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iget v8, p0, Lcom/miui/charge/view/NumberDrawView;->mLargeMaxNumWidth:I

    mul-int/2addr v5, v8

    add-int/2addr v5, v1

    int-to-float v5, v5

    iget-object v8, p0, Lcom/miui/charge/view/NumberDrawView;->mLargeTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v4, v5, v3, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move v5, v7

    goto :goto_4

    :cond_6
    iget-object v4, p0, Lcom/miui/charge/view/NumberDrawView;->mDot:Ljava/lang/String;

    iget v5, p0, Lcom/miui/charge/view/NumberDrawView;->mLargeMaxNumWidth:I

    mul-int/2addr v5, v0

    add-int/2addr v5, v1

    int-to-float v5, v5

    iget-object v7, p0, Lcom/miui/charge/view/NumberDrawView;->mPercentTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v4, v5, v3, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget v4, p0, Lcom/miui/charge/view/NumberDrawView;->mDotWidth:I

    add-int/2addr v1, v4

    iget v4, p0, Lcom/miui/charge/view/NumberDrawView;->mLargeMaxNumWidth:I

    mul-int/2addr v4, v0

    add-int/2addr v4, v1

    add-int/lit8 v1, v0, 0x1

    :goto_5
    iget-object v5, p0, Lcom/miui/charge/view/NumberDrawView;->mShowLevel:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v6

    if-ge v1, v5, :cond_7

    iget-object v5, p0, Lcom/miui/charge/view/NumberDrawView;->mShowLevel:Ljava/lang/String;

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v5, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    sub-int/2addr v1, v0

    sub-int/2addr v1, v6

    iget v8, p0, Lcom/miui/charge/view/NumberDrawView;->mSmallMaxNumWidth:I

    mul-int/2addr v1, v8

    add-int/2addr v1, v4

    int-to-float v1, v1

    iget-object v8, p0, Lcom/miui/charge/view/NumberDrawView;->mSmallTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v5, v1, v3, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move v1, v7

    goto :goto_5

    :cond_7
    iget-object v1, p0, Lcom/miui/charge/view/NumberDrawView;->mShowLevel:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x2

    iget v0, p0, Lcom/miui/charge/view/NumberDrawView;->mSmallMaxNumWidth:I

    mul-int/2addr v1, v0

    add-int/2addr v1, v4

    int-to-float v0, v1

    iget-object p0, p0, Lcom/miui/charge/view/NumberDrawView;->mPercentTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v0, v3, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onMeasure(II)V
    .registers 3

    invoke-direct {p0}, Lcom/miui/charge/view/NumberDrawView;->getShowWidth()I

    move-result p1

    iget p2, p0, Lcom/miui/charge/view/NumberDrawView;->mStrHeight:I

    add-int/lit8 p2, p2, 0x3

    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setLevelText(Ljava/lang/String;)V
    .registers 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/miui/charge/view/NumberDrawView;->mLevel:Ljava/lang/String;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/charge/view/NumberDrawView;->mLevel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x5

    if-le v0, v2, :cond_2

    const-string p1, "100"

    :cond_2
    iput-object p1, p0, Lcom/miui/charge/view/NumberDrawView;->mLevel:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/charge/view/NumberDrawView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f140733

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/charge/view/NumberDrawView;->mShowLevel:Ljava/lang/String;

    const-string v0, " "

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/charge/view/NumberDrawView;->mShowLevel:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    return-void
.end method

.method public setSize(III)V
    .registers 6

    int-to-float p1, p1

    iget-object v0, p0, Lcom/miui/charge/view/NumberDrawView;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/miui/charge/view/NumberDrawView;->mLargeTextSizePx:I

    int-to-float p1, p2

    iget-object p2, p0, Lcom/miui/charge/view/NumberDrawView;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    invoke-static {v1, p1, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/miui/charge/view/NumberDrawView;->mSmallTextSizePx:I

    int-to-float p1, p3

    iget-object p2, p0, Lcom/miui/charge/view/NumberDrawView;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    invoke-static {v1, p1, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/miui/charge/view/NumberDrawView;->mPercentTextSizePx:I

    iget p1, p0, Lcom/miui/charge/view/NumberDrawView;->mLargeTextSizePx:I

    int-to-float p1, p1

    invoke-virtual {p0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {p0}, Lcom/miui/charge/view/NumberDrawView;->updateTextPaint()V

    invoke-virtual {p0}, Lcom/miui/charge/view/NumberDrawView;->doUpdateDrawParams()V

    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    return-void
.end method

.method public final updateTextPaint()V
    .registers 3

    iget-object v0, p0, Lcom/miui/charge/view/NumberDrawView;->mLargeTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/miui/charge/view/NumberDrawView;->mNormalTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/miui/charge/view/NumberDrawView;->mLargeTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/miui/charge/view/NumberDrawView;->mLargeTextSizePx:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v0, p0, Lcom/miui/charge/view/NumberDrawView;->mLargeTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/charge/view/NumberDrawView;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget-object v0, p0, Lcom/miui/charge/view/NumberDrawView;->mSmallTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/miui/charge/view/NumberDrawView;->mRegularTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/miui/charge/view/NumberDrawView;->mSmallTextPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/miui/charge/view/NumberDrawView;->mSmallTextSizePx:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v0, p0, Lcom/miui/charge/view/NumberDrawView;->mPercentTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/miui/charge/view/NumberDrawView;->mRegularTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/miui/charge/view/NumberDrawView;->mPercentTextPaint:Landroid/text/TextPaint;

    iget p0, p0, Lcom/miui/charge/view/NumberDrawView;->mPercentTextSizePx:I

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/text/TextPaint;->setTextSize(F)V

    return-void
.end method

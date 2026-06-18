.class public abstract Lcom/android/systemui/newstatusbar/views/ext/ExtTextView;
.super Landroid/widget/TextView;


# instance fields
.field private isAttach:Z

.field protected isCustColor:Z

.field private mColorSet:I

.field private paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/views/ext/ExtTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "use_config_color_size_element"

    invoke-static {v0, v1}, Landroid/Utils/Utils;->BoolToID(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/newstatusbar/views/ext/ExtTextView;->isCustColor:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/views/ext/ExtTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "use_config_color_size_element"

    invoke-static {v0, v1}, Landroid/Utils/Utils;->BoolToID(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/newstatusbar/views/ext/ExtTextView;->isCustColor:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/views/ext/ExtTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "use_config_color_size_element"

    invoke-static {v0, v1}, Landroid/Utils/Utils;->BoolToID(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/newstatusbar/views/ext/ExtTextView;->isCustColor:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 7

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/views/ext/ExtTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "use_config_color_size_element"

    invoke-static {v0, v1}, Landroid/Utils/Utils;->BoolToID(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/newstatusbar/views/ext/ExtTextView;->isCustColor:Z

    return-void
.end method

.method private getTypeFace(Ljava/lang/String;)Landroid/graphics/Typeface;
    .registers 6

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getTypeFase : fonts not found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0
.end method

.method private updateDefault()V
    .registers 4

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/views/ext/ExtTextView;->getData()Lcom/android/systemui/newstatusbar/data/TextData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/views/ext/ExtTextView;->getCurrentTextColor()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/newstatusbar/data/TextData;->defColor:I

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/views/ext/ExtTextView;->getTextSize()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/views/ext/ExtTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/newstatusbar/data/TextData;->defSize:F

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/views/ext/ExtTextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/newstatusbar/data/TextData;->defTypefase:Landroid/graphics/Typeface;

    :cond_0
    return-void
.end method

.method private updateTyperface()V
    .registers 5

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/views/ext/ExtTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/newstatusbar/views/ext/ExtTextView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/views/ext/ExtTextView;->getData()Lcom/android/systemui/newstatusbar/data/TextData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/newstatusbar/data/TextData;->getTypeFace()Landroid/graphics/Typeface;

    move-result-object v1

    iget v2, v0, Lcom/android/systemui/newstatusbar/data/TextData;->typeFaseStyle:I

    invoke-super {p0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    iget-object v2, p0, Lcom/android/systemui/newstatusbar/views/ext/ExtTextView;->paint:Landroid/graphics/Paint;

    iget v3, v0, Lcom/android/systemui/newstatusbar/data/TextData;->typeFaseStyle:I

    invoke-static {v1, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract getData()Lcom/android/systemui/newstatusbar/data/TextData;
.end method

.method protected abstract onAttached()V
.end method

.method protected onAttachedToWindow()V
    .registers 2

    goto :goto_1

    nop

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/newstatusbar/views/ext/ExtTextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_6

    nop

    :goto_1
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    goto :goto_5

    nop

    :goto_2
    invoke-direct {v0, p0}, Lcom/android/systemui/newstatusbar/views/ext/ExtTextView$1;-><init>(Lcom/android/systemui/newstatusbar/views/ext/ExtTextView;)V

    goto :goto_0

    nop

    :goto_3
    if-eqz v0, :cond_0

    goto :goto_8

    :cond_0
    goto :goto_9

    nop

    :goto_4
    iput-boolean v0, p0, Lcom/android/systemui/newstatusbar/views/ext/ExtTextView;->isAttach:Z

    goto :goto_7

    nop

    :goto_5
    iget-boolean v0, p0, Lcom/android/systemui/newstatusbar/views/ext/ExtTextView;->isAttach:Z

    goto :goto_3

    nop

    :goto_6
    return-void

    :goto_7
    invoke-direct {p0}, Lcom/android/systemui/newstatusbar/views/ext/ExtTextView;->updateDefault()V

    :goto_8
    goto :goto_b

    nop

    :goto_9
    const/4 v0, 0x1

    goto :goto_4

    nop

    :goto_a
    new-instance v0, Lcom/android/systemui/newstatusbar/views/ext/ExtTextView$1;

    goto :goto_2

    nop

    :goto_b
    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/views/ext/ExtTextView;->onAttached()V

    goto :goto_a

    nop
.end method

.method protected abstract onDetached()V
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    goto :goto_0

    nop

    :goto_0
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    goto :goto_2

    nop

    :goto_1
    return-void

    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/views/ext/ExtTextView;->onDetached()V

    goto :goto_1

    nop
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 8

    goto :goto_8

    nop

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_28

    nop

    :goto_1
    if-eqz v0, :cond_0

    goto :goto_a

    :cond_0
    goto :goto_21

    nop

    :goto_2
    int-to-float v4, v4

    goto :goto_3

    nop

    :goto_3
    iget-object v5, p0, Lcom/android/systemui/newstatusbar/views/ext/ExtTextView;->paint:Landroid/graphics/Paint;

    goto :goto_17

    nop

    :goto_4
    int-to-float v1, v1

    goto :goto_5

    nop

    :goto_5
    const/high16 v2, 0x41200000

    goto :goto_23

    nop

    :goto_6
    sub-float/2addr v2, v3

    goto :goto_13

    nop

    :goto_7
    if-nez v0, :cond_1

    goto :goto_19

    :cond_1
    goto :goto_1d

    nop

    :goto_8
    iget-boolean v0, p0, Lcom/android/systemui/newstatusbar/views/ext/ExtTextView;->isCustColor:Z

    goto :goto_7

    nop

    :goto_9
    iput-object v0, p0, Lcom/android/systemui/newstatusbar/views/ext/ExtTextView;->paint:Landroid/graphics/Paint;

    :goto_a
    goto :goto_26

    nop

    :goto_b
    if-eqz v2, :cond_2

    goto :goto_e

    :cond_2
    goto :goto_1a

    nop

    :goto_c
    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/views/ext/ExtTextView;->getHeight()I

    move-result v2

    goto :goto_24

    nop

    :goto_d
    goto :goto_12

    :goto_e
    goto :goto_11

    nop

    :goto_f
    div-float/2addr v3, v1

    goto :goto_6

    nop

    :goto_10
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1c

    nop

    :goto_11
    invoke-virtual {v0}, Lcom/android/systemui/newstatusbar/data/TextData;->getColor()I

    move-result v2

    :goto_12
    goto :goto_20

    nop

    :goto_13
    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/views/ext/ExtTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_10

    nop

    :goto_14
    iget-object v4, p0, Lcom/android/systemui/newstatusbar/views/ext/ExtTextView;->paint:Landroid/graphics/Paint;

    goto :goto_1f

    nop

    :goto_15
    div-float/2addr v2, v3

    goto :goto_1e

    nop

    :goto_16
    iget v1, v0, Lcom/android/systemui/newstatusbar/data/TextData;->division:I

    goto :goto_4

    nop

    :goto_17
    invoke-virtual {p1, v3, v4, v2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_18

    nop

    :goto_18
    return-void

    :goto_19
    goto :goto_0

    nop

    :goto_1a
    iget v2, p0, Lcom/android/systemui/newstatusbar/views/ext/ExtTextView;->mColorSet:I

    goto :goto_d

    nop

    :goto_1b
    iget v2, v0, Lcom/android/systemui/newstatusbar/data/TextData;->color:I

    goto :goto_b

    nop

    :goto_1c
    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/views/ext/ExtTextView;->getPaddingStart()I

    move-result v4

    goto :goto_2

    nop

    :goto_1d
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/views/ext/ExtTextView;->paint:Landroid/graphics/Paint;

    goto :goto_1

    nop

    :goto_1e
    iget-object v3, p0, Lcom/android/systemui/newstatusbar/views/ext/ExtTextView;->paint:Landroid/graphics/Paint;

    goto :goto_22

    nop

    :goto_1f
    invoke-virtual {v4}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    goto :goto_27

    nop

    :goto_20
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_16

    nop

    :goto_21
    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/views/ext/ExtTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    goto :goto_9

    nop

    :goto_22
    invoke-virtual {v3}, Landroid/graphics/Paint;->descent()F

    move-result v3

    goto :goto_14

    nop

    :goto_23
    div-float/2addr v1, v2

    goto :goto_c

    nop

    :goto_24
    int-to-float v2, v2

    goto :goto_25

    nop

    :goto_25
    const/high16 v3, 0x40000000

    goto :goto_15

    nop

    :goto_26
    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/views/ext/ExtTextView;->getData()Lcom/android/systemui/newstatusbar/data/TextData;

    move-result-object v0

    goto :goto_29

    nop

    :goto_27
    add-float/2addr v3, v4

    goto :goto_f

    nop

    :goto_28
    return-void

    :goto_29
    iget-object v1, p0, Lcom/android/systemui/newstatusbar/views/ext/ExtTextView;->paint:Landroid/graphics/Paint;

    goto :goto_1b

    nop
.end method

.method protected onMeasure(II)V
    .registers 6

    goto :goto_e

    nop

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/newstatusbar/views/ext/ExtTextView;->setMeasuredDimension(II)V

    :goto_1
    goto :goto_15

    nop

    :goto_2
    iget-boolean v0, p0, Lcom/android/systemui/newstatusbar/views/ext/ExtTextView;->isCustColor:Z

    goto :goto_a

    nop

    :goto_3
    add-int/2addr v0, v1

    goto :goto_5

    nop

    :goto_4
    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/views/ext/ExtTextView;->getMeasuredHeight()I

    move-result v1

    goto :goto_0

    nop

    :goto_5
    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/views/ext/ExtTextView;->getData()Lcom/android/systemui/newstatusbar/data/TextData;

    move-result-object v1

    goto :goto_14

    nop

    :goto_6
    const/4 v2, 0x0

    :goto_7
    goto :goto_9

    nop

    :goto_8
    const/4 v2, 0x1

    goto :goto_11

    nop

    :goto_9
    invoke-static {p0, v2}, Lcom/android/systemui/newstatusbar/util/TextUtil;->measureText(Landroid/widget/TextView;Z)I

    move-result v1

    goto :goto_13

    nop

    :goto_a
    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    nop

    goto :goto_d

    nop

    :goto_b
    goto :goto_7

    :goto_c
    goto :goto_6

    nop

    :goto_d
    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/views/ext/ExtTextView;->getPaddingRight()I

    move-result v0

    goto :goto_16

    nop

    :goto_e
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    goto :goto_2

    nop

    :goto_f
    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/views/ext/ExtTextView;->getPaddingEnd()I

    move-result v1

    goto :goto_3

    nop

    :goto_10
    add-int/2addr v0, v1

    goto :goto_17

    nop

    :goto_11
    if-gt v1, v2, :cond_1

    goto :goto_c

    :cond_1
    goto :goto_b

    nop

    :goto_12
    add-int/2addr v0, v1

    goto :goto_f

    nop

    :goto_13
    add-int/2addr v0, v1

    goto :goto_4

    nop

    :goto_14
    iget v1, v1, Lcom/android/systemui/newstatusbar/data/TextData;->typeFaseStyle:I

    goto :goto_8

    nop

    :goto_15
    return-void

    :goto_16
    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/views/ext/ExtTextView;->getPaddingStart()I

    move-result v1

    goto :goto_10

    nop

    :goto_17
    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/views/ext/ExtTextView;->getPaddingLeft()I

    move-result v1

    goto :goto_12

    nop
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v0, p0, Lcom/android/systemui/newstatusbar/views/ext/ExtTextView;->isCustColor:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/newstatusbar/views/ext/ExtTextView;->setTextSize(F)V

    :cond_0
    return-void
.end method

.method public setTextAppearance(I)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    invoke-direct {p0}, Lcom/android/systemui/newstatusbar/views/ext/ExtTextView;->updateDefault()V

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/views/ext/ExtTextView;->update()V

    return-void
.end method

.method public setTextColor()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/newstatusbar/views/ext/ExtTextView;->isCustColor:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/views/ext/ExtTextView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setTextColor(I)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/systemui/newstatusbar/views/ext/ExtTextView;->isCustColor:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz p1, :cond_1

    iput p1, p0, Lcom/android/systemui/newstatusbar/views/ext/ExtTextView;->mColorSet:I

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/views/ext/ExtTextView;->setTextColor()V

    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/systemui/newstatusbar/views/ext/ExtTextView;->isCustColor:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    if-eqz v0, :cond_1

    iput v0, p0, Lcom/android/systemui/newstatusbar/views/ext/ExtTextView;->mColorSet:I

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/views/ext/ExtTextView;->setTextColor()V

    return-void
.end method

.method public setTextSize(F)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/systemui/newstatusbar/views/ext/ExtTextView;->isCustColor:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/views/ext/ExtTextView;->getData()Lcom/android/systemui/newstatusbar/data/TextData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/newstatusbar/data/TextData;->getSize()F

    move-result v0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    invoke-super {p0, v0}, Landroid/widget/TextView;->setTextSize(F)V

    return-void
.end method

.method public setTextSize(IF)V
    .registers 5

    iget-boolean v0, p0, Lcom/android/systemui/newstatusbar/views/ext/ExtTextView;->isCustColor:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/views/ext/ExtTextView;->getData()Lcom/android/systemui/newstatusbar/data/TextData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/newstatusbar/data/TextData;->getSize()F

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/systemui/newstatusbar/views/ext/ExtTextView;->isCustColor:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/systemui/newstatusbar/views/ext/ExtTextView;->isCustColor:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_0
    return-void
.end method

.method public update()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/newstatusbar/views/ext/ExtTextView;->isCustColor:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/views/ext/ExtTextView;->setTextColor()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/newstatusbar/views/ext/ExtTextView;->setTextSize(F)V

    invoke-direct {p0}, Lcom/android/systemui/newstatusbar/views/ext/ExtTextView;->updateTyperface()V

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/views/ext/ExtTextView;->invalidate()V

    :cond_0
    return-void
.end method

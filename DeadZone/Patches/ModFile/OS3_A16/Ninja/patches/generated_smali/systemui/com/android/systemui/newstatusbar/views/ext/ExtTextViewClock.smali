.class public abstract Lcom/android/systemui/newstatusbar/views/ext/ExtTextViewClock;
.super Landroid/widget/TextView;


# instance fields
.field private mColorSet:I

.field private paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method protected abstract getData()Lcom/android/systemui/newstatusbar/data/TextData;
.end method

.method protected abstract onAttached()V
.end method

.method protected onAttachedToWindow()V
    .registers 1

    goto :goto_0

    nop

    :goto_0
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    goto :goto_2

    nop

    :goto_1
    return-void

    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/views/ext/ExtTextViewClock;->onAttached()V

    goto :goto_1

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

    goto :goto_1

    nop

    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/views/ext/ExtTextViewClock;->onDetached()V

    goto :goto_2

    nop

    :goto_2
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/views/ext/ExtTextViewClock;->getData()Lcom/android/systemui/newstatusbar/data/TextData;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/systemui/newstatusbar/data/TextData;->key:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/newstatusbar/views/ext/ExtTextViewClock;->setTextSize(F)V

    :cond_0
    return-void
.end method

.method public setTextAppearance(I)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/views/ext/ExtTextViewClock;->update()V

    return-void
.end method

.method public setTextColor()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/views/ext/ExtTextViewClock;->getData()Lcom/android/systemui/newstatusbar/data/TextData;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/systemui/newstatusbar/data/TextData;->key:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, v0, Lcom/android/systemui/newstatusbar/data/TextData;->color:I

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/systemui/newstatusbar/views/ext/ExtTextViewClock;->mColorSet:I

    goto :goto_0

    :cond_0
    iget v1, v0, Lcom/android/systemui/newstatusbar/data/TextData;->color:I

    :goto_0
    invoke-super {p0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/views/ext/ExtTextViewClock;->invalidate()V

    :cond_1
    return-void
.end method

.method public setTextColor(I)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/views/ext/ExtTextViewClock;->getData()Lcom/android/systemui/newstatusbar/data/TextData;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/systemui/newstatusbar/data/TextData;->key:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_0

    iput p1, p0, Lcom/android/systemui/newstatusbar/views/ext/ExtTextViewClock;->mColorSet:I

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/views/ext/ExtTextViewClock;->setTextColor()V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method

.method public setTextSize(F)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/views/ext/ExtTextViewClock;->getData()Lcom/android/systemui/newstatusbar/data/TextData;

    move-result-object v0

    iget-object v1, v0, Lcom/android/systemui/newstatusbar/data/TextData;->key:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, p1

    goto :goto_0

    :cond_0
    iget v1, v0, Lcom/android/systemui/newstatusbar/data/TextData;->zoom:I

    int-to-float v1, v1

    :goto_0
    move p1, v1

    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    return-void
.end method

.method public setTextSize(IF)V
    .registers 5

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/views/ext/ExtTextViewClock;->getData()Lcom/android/systemui/newstatusbar/data/TextData;

    move-result-object v0

    iget-object v1, v0, Lcom/android/systemui/newstatusbar/data/TextData;->key:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, p2

    goto :goto_0

    :cond_0
    iget v1, v0, Lcom/android/systemui/newstatusbar/data/TextData;->zoom:I

    int-to-float v1, v1

    :goto_0
    move p2, v1

    const/4 v1, 0x2

    invoke-super {p0, v1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public update()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/views/ext/ExtTextViewClock;->getData()Lcom/android/systemui/newstatusbar/data/TextData;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/systemui/newstatusbar/data/TextData;->key:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/views/ext/ExtTextViewClock;->setTextColor()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/newstatusbar/views/ext/ExtTextViewClock;->setTextSize(F)V

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/views/ext/ExtTextViewClock;->invalidate()V

    :cond_0
    return-void
.end method

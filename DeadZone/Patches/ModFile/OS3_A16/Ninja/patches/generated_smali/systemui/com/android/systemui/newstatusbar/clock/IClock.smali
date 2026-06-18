.class public interface abstract Lcom/android/systemui/newstatusbar/clock/IClock;
.super Ljava/lang/Object;


# virtual methods
.method public abstract fullInvalidate()V
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getTextHeight()F
.end method

.method public abstract getTextSize()F
.end method

.method public abstract onTextChanged(Ljava/lang/CharSequence;)V
.end method

.method public setText(Ljava/lang/String;Z)V
    .registers 3

    return-void
.end method

.method public abstract setTextSize(F)V
.end method

.method public abstract setTextSizeWidthAnimation(F)V
.end method

.method public abstract setVisibility(I)V
.end method

.method public updateSettings()V
    .registers 1

    return-void
.end method

.method public abstract updateTypeface(Landroid/graphics/Typeface;I)V
.end method

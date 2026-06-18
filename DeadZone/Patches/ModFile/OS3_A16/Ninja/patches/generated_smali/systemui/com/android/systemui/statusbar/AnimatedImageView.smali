.class public Lcom/android/systemui/statusbar/AnimatedImageView;
.super Landroid/widget/ImageView;


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# instance fields
.field public mAllowAnimation:Z

.field public mAnim:Landroid/graphics/drawable/AnimationDrawable;

.field public mAttached:Z

.field public mDrawableId:I

.field public mHasOverlappingRendering:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/AnimatedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mAllowAnimation:Z

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v1, Lcom/android/systemui/res/R$styleable;->AnimatedImageView:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    :try_start_0
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mHasOverlappingRendering:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mHasOverlappingRendering:Z

    return p0
.end method

.method public onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mAttached:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/AnimatedImageView;->updateAnim()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mAnim:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mAttached:Z

    return-void
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .registers 3

    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onVisibilityChanged(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mAnim:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/ImageView;->isShown()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mAllowAnimation:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_1
    return-void
.end method

.method public setAllowAnimation(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mAllowAnimation:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mAllowAnimation:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/AnimatedImageView;->updateAnim()V

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mAllowAnimation:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mAnim:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getVisibility()I

    move-result p0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0, v0}, Landroid/graphics/drawable/AnimationDrawable;->setVisible(ZZ)Z

    :cond_1
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mDrawableId:I

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mDrawableId:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mDrawableId:I

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/AnimatedImageView;->updateAnim()V

    return-void
.end method

.method public setImageResource(I)V
    .registers 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget v0, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mDrawableId:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mDrawableId:I

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/AnimatedImageView;->updateAnim()V

    return-void
.end method

.method public updateAnim()V
    .registers 3

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mAttached:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mAnim:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_0
    instance-of v1, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Landroid/widget/ImageView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mAllowAnimation:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/AnimatedImageView;->mAnim:Landroid/graphics/drawable/AnimationDrawable;

    return-void
.end method

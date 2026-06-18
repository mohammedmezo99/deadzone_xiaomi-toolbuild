.class public abstract Lcom/android/systemui/newstatusbar/views/ext/ExtIconAlphaNew;
.super Lcom/android/systemui/statusbar/AlphaOptimizedImageView;


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field protected curHeight:I

.field protected curWidth:I

.field protected final isCustColor:Z

.field private isIconAdded:Z

.field protected mIconSize:I

.field protected naturalHeight:I

.field protected naturalWidth:I

.field paint:Landroid/graphics/Paint;

.field private final tmpCanvas:Landroid/graphics/Canvas;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/newstatusbar/views/ext/ExtIconAlphaNew;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/newstatusbar/views/ext/ExtIconAlphaNew;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/newstatusbar/views/ext/ExtIconAlphaNew;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 9

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/AlphaOptimizedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/newstatusbar/views/ext/ExtIconAlphaNew;->naturalWidth:I

    iput v0, p0, Lcom/android/systemui/newstatusbar/views/ext/ExtIconAlphaNew;->naturalHeight:I

    iput-boolean v0, p0, Lcom/android/systemui/newstatusbar/views/ext/ExtIconAlphaNew;->isIconAdded:Z

    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/systemui/newstatusbar/views/ext/ExtIconAlphaNew;->paint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/newstatusbar/views/ext/ExtIconAlphaNew;->tmpCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v3, "status_bar_icon_height"

    invoke-static {p1, v3}, Landroid/Utils/Utils;->DimenToID(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/newstatusbar/views/ext/ExtIconAlphaNew;->mIconSize:I

    const-string v1, "use_config_color_size_element"

    invoke-static {p1, v1}, Landroid/Utils/Utils;->BoolToID(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v0, v2

    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui/newstatusbar/views/ext/ExtIconAlphaNew;->isCustColor:Z

    return-void
.end method

.method private drawInternal(Landroid/graphics/Canvas;Lcom/android/systemui/newstatusbar/data/IconData;)V
    .registers 7

    iget v0, p2, Lcom/android/systemui/newstatusbar/data/IconData;->color:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/views/ext/ExtIconAlphaNew;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/views/ext/ExtIconAlphaNew;->paint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget v2, p2, Lcom/android/systemui/newstatusbar/data/IconData;->color:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/views/ext/ExtIconAlphaNew;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    const/high16 v2, 0x41200000

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/views/ext/ExtIconAlphaNew;->bitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/systemui/newstatusbar/views/ext/ExtIconAlphaNew;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawShadow(Landroid/graphics/Canvas;Lcom/android/systemui/newstatusbar/data/IconData;)V
    .registers 8

    iget-boolean v0, p2, Lcom/android/systemui/newstatusbar/data/IconData;->shadow_enable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/views/ext/ExtIconAlphaNew;->paint:Landroid/graphics/Paint;

    sget v1, Lcom/android/systemui/newstatusbar/data/Data;->ShadowRadius:F

    sget v2, Lcom/android/systemui/newstatusbar/data/Data;->ShadowToX:F

    sget v3, Lcom/android/systemui/newstatusbar/data/Data;->ShadowToY:F

    iget v4, p2, Lcom/android/systemui/newstatusbar/data/IconData;->shadow_color:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/views/ext/ExtIconAlphaNew;->paint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    iget v2, p2, Lcom/android/systemui/newstatusbar/data/IconData;->shadow_color:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/views/ext/ExtIconAlphaNew;->bitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/systemui/newstatusbar/views/ext/ExtIconAlphaNew;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private isZero()Z
    .registers 2

    iget v0, p0, Lcom/android/systemui/newstatusbar/views/ext/ExtIconAlphaNew;->naturalHeight:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/newstatusbar/views/ext/ExtIconAlphaNew;->naturalWidth:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private updateBitmapIfNeeded(II)V
    .registers 4

    if-lez p1, :cond_2

    if-lez p2, :cond_2

    iget v0, p0, Lcom/android/systemui/newstatusbar/views/ext/ExtIconAlphaNew;->curWidth:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/systemui/newstatusbar/views/ext/ExtIconAlphaNew;->curHeight:I

    if-eq p2, v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/views/ext/ExtIconAlphaNew;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/newstatusbar/views/ext/ExtIconAlphaNew;->bitmap:Landroid/graphics/Bitmap;

    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/newstatusbar/views/ext/ExtIconAlphaNew;->bitmap:Landroid/graphics/Bitmap;

    :cond_2
    return-void
.end method

.method private updateScale(Landroid/graphics/Canvas;Lcom/android/systemui/newstatusbar/data/IconData;)V
    .registers 9

    iget v0, p2, Lcom/android/systemui/newstatusbar/data/IconData;->zoom:I

    int-to-float v0, v0

    const/high16 v1, 0x42c80000

    div-float v0, v1, v0

    const/high16 v2, 0x3f800000

    sub-float/2addr v0, v2

    const/high16 v2, 0x40800000

    mul-float/2addr v0, v2

    iget v2, p2, Lcom/android/systemui/newstatusbar/data/IconData;->division:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget v2, p2, Lcom/android/systemui/newstatusbar/data/IconData;->scale:I

    int-to-float v2, v2

    div-float/2addr v2, v1

    iget v3, p2, Lcom/android/systemui/newstatusbar/data/IconData;->scale:I

    int-to-float v3, v3

    div-float/2addr v3, v1

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/views/ext/ExtIconAlphaNew;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v4, 0x40000000

    div-float/2addr v1, v4

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/views/ext/ExtIconAlphaNew;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    invoke-virtual {p1, v2, v3, v1, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    return-void
.end method

.method private updateZoom()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/views/ext/ExtIconAlphaNew;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/systemui/newstatusbar/views/ext/ExtIconAlphaNew;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public abstract getData()Lcom/android/systemui/newstatusbar/data/IconData;
.end method

.method protected abstract onAttached()V
.end method

.method protected onAttachedToWindow()V
    .registers 1

    goto :goto_2

    nop

    :goto_0
    return-void

    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/views/ext/ExtIconAlphaNew;->onAttached()V

    goto :goto_0

    nop

    :goto_2
    invoke-super {p0}, Lcom/android/systemui/statusbar/AlphaOptimizedImageView;->onAttachedToWindow()V

    goto :goto_1

    nop
.end method

.method protected abstract onDetached()V
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    goto :goto_1

    nop

    :goto_0
    return-void

    :goto_1
    invoke-super {p0}, Lcom/android/systemui/statusbar/AlphaOptimizedImageView;->onDetachedFromWindow()V

    goto :goto_2

    nop

    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/views/ext/ExtIconAlphaNew;->onDetached()V

    goto :goto_0

    nop
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 6

    goto :goto_f

    nop

    :goto_0
    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_14

    nop

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/newstatusbar/views/ext/ExtIconAlphaNew;->tmpCanvas:Landroid/graphics/Canvas;

    goto :goto_a

    nop

    :goto_2
    const/4 v2, 0x0

    goto :goto_15

    nop

    :goto_3
    iget-object v2, p0, Lcom/android/systemui/newstatusbar/views/ext/ExtIconAlphaNew;->tmpCanvas:Landroid/graphics/Canvas;

    goto :goto_0

    nop

    :goto_4
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/AlphaOptimizedImageView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_12

    nop

    :goto_5
    iget-boolean v1, p0, Lcom/android/systemui/newstatusbar/views/ext/ExtIconAlphaNew;->isIconAdded:Z

    goto :goto_d

    nop

    :goto_6
    return-void

    :goto_7
    goto :goto_4

    nop

    :goto_8
    iget-object v1, p0, Lcom/android/systemui/newstatusbar/views/ext/ExtIconAlphaNew;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_16

    nop

    :goto_9
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/newstatusbar/views/ext/ExtIconAlphaNew;->drawInternal(Landroid/graphics/Canvas;Lcom/android/systemui/newstatusbar/data/IconData;)V

    goto :goto_6

    nop

    :goto_a
    invoke-super {p0, v1}, Lcom/android/systemui/statusbar/AlphaOptimizedImageView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_11

    nop

    :goto_b
    if-nez v0, :cond_0

    goto :goto_7

    :cond_0
    goto :goto_c

    nop

    :goto_c
    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/views/ext/ExtIconAlphaNew;->getData()Lcom/android/systemui/newstatusbar/data/IconData;

    move-result-object v0

    goto :goto_5

    nop

    :goto_d
    if-nez v1, :cond_1

    goto :goto_7

    :cond_1
    goto :goto_10

    nop

    :goto_e
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    nop

    :goto_f
    iget-boolean v0, p0, Lcom/android/systemui/newstatusbar/views/ext/ExtIconAlphaNew;->isCustColor:Z

    goto :goto_b

    nop

    :goto_10
    if-nez v0, :cond_2

    goto :goto_7

    :cond_2
    goto :goto_13

    nop

    :goto_11
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/newstatusbar/views/ext/ExtIconAlphaNew;->drawShadow(Landroid/graphics/Canvas;Lcom/android/systemui/newstatusbar/data/IconData;)V

    goto :goto_9

    nop

    :goto_12
    return-void

    :goto_13
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/newstatusbar/views/ext/ExtIconAlphaNew;->updateScale(Landroid/graphics/Canvas;Lcom/android/systemui/newstatusbar/data/IconData;)V

    goto :goto_8

    nop

    :goto_14
    iget-object v1, p0, Lcom/android/systemui/newstatusbar/views/ext/ExtIconAlphaNew;->tmpCanvas:Landroid/graphics/Canvas;

    goto :goto_2

    nop

    :goto_15
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    goto :goto_e

    nop

    :goto_16
    if-nez v1, :cond_3

    goto :goto_7

    :cond_3
    goto :goto_3

    nop
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/systemui/newstatusbar/views/ext/ExtIconAlphaNew;->isCustColor:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/newstatusbar/views/ext/ExtIconAlphaNew;->isZero()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/newstatusbar/views/ext/ExtIconAlphaNew;->isIconAdded:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/newstatusbar/views/ext/ExtIconAlphaNew;->naturalHeight:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/newstatusbar/views/ext/ExtIconAlphaNew;->naturalWidth:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/newstatusbar/views/ext/ExtIconAlphaNew;->isIconAdded:Z

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/views/ext/ExtIconAlphaNew;->update()V

    :cond_1
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/AlphaOptimizedImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageResource(I)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/systemui/newstatusbar/views/ext/ExtIconAlphaNew;->isCustColor:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/newstatusbar/views/ext/ExtIconAlphaNew;->isZero()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/newstatusbar/views/ext/ExtIconAlphaNew;->isIconAdded:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/views/ext/ExtIconAlphaNew;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/views/ext/ExtIconAlphaNew;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/newstatusbar/views/ext/ExtIconAlphaNew;->naturalHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/newstatusbar/views/ext/ExtIconAlphaNew;->naturalWidth:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/newstatusbar/views/ext/ExtIconAlphaNew;->isIconAdded:Z

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/views/ext/ExtIconAlphaNew;->update()V

    :cond_1
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/AlphaOptimizedImageView;->setImageResource(I)V

    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 8

    iget-boolean v0, p0, Lcom/android/systemui/newstatusbar/views/ext/ExtIconAlphaNew;->isCustColor:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/views/ext/ExtIconAlphaNew;->getData()Lcom/android/systemui/newstatusbar/data/IconData;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/newstatusbar/views/ext/ExtIconAlphaNew;->isIconAdded:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget v1, v0, Lcom/android/systemui/newstatusbar/data/IconData;->zoom:I

    iget v2, p0, Lcom/android/systemui/newstatusbar/views/ext/ExtIconAlphaNew;->naturalWidth:I

    if-lez v2, :cond_0

    iget v3, p0, Lcom/android/systemui/newstatusbar/views/ext/ExtIconAlphaNew;->naturalHeight:I

    if-lez v3, :cond_0

    int-to-float v4, v1

    iget v5, p0, Lcom/android/systemui/newstatusbar/views/ext/ExtIconAlphaNew;->mIconSize:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    const/high16 v5, 0x42c80000

    div-float/2addr v4, v5

    float-to-int v4, v4

    int-to-float v5, v4

    int-to-float v2, v2

    mul-float/2addr v5, v2

    int-to-float v2, v3

    div-float/2addr v5, v2

    float-to-int v2, v5

    invoke-direct {p0, v2, v4}, Lcom/android/systemui/newstatusbar/views/ext/ExtIconAlphaNew;->updateBitmapIfNeeded(II)V

    iput v4, p0, Lcom/android/systemui/newstatusbar/views/ext/ExtIconAlphaNew;->curHeight:I

    iput v2, p0, Lcom/android/systemui/newstatusbar/views/ext/ExtIconAlphaNew;->curWidth:I

    iput v2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v4, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/AlphaOptimizedImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/systemui/newstatusbar/views/ext/ExtIconAlphaNew;->isCustColor:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/AlphaOptimizedImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_0
    return-void
.end method

.method public update()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/newstatusbar/views/ext/ExtIconAlphaNew;->isIconAdded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/newstatusbar/views/ext/ExtIconAlphaNew;->isCustColor:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/newstatusbar/views/ext/ExtIconAlphaNew;->updateZoom()V

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/views/ext/ExtIconAlphaNew;->invalidate()V

    :cond_0
    return-void
.end method

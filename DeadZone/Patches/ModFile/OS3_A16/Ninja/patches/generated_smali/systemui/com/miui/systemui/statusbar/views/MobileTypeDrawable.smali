.class public Lcom/miui/systemui/statusbar/views/MobileTypeDrawable;
.super Landroid/graphics/drawable/Drawable;


# static fields
.field public static final sMiproTypeface:Landroid/graphics/Typeface;


# instance fields
.field protected controller:Lcom/android/systemui/newstatusbar/controllers/MobileIconColorSizeController;

.field public mExtraWidth:I

.field public mHeight:I

.field public mMobileType:Ljava/lang/String;

.field public mMobileTypeColor:I

.field public final mMobileTypePlusPaint:Landroid/graphics/Paint;

.field public mMobileTypeSize:I

.field public final mMobileTypeTextPaint:Landroid/graphics/Paint;

.field public mShowMobileTypeDoublePlus:Z

.field public mShowSpecial5GIcon:Z

.field public mWidth:I

.field private parent:Lcom/android/systemui/newstatusbar/sim/MobileTypeImageView;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/graphics/Typeface$Builder;

    sget-object v1, Lcom/miui/utils/configs/MiuiConfigs;->FONT_MIPRO_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/graphics/Typeface$Builder;-><init>(Ljava/lang/String;)V

    const-string v1, "\'wght\' 660"

    invoke-virtual {v0, v1}, Landroid/graphics/Typeface$Builder;->setFontVariationSettings(Ljava/lang/String;)Landroid/graphics/Typeface$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Typeface$Builder;->build()Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/miui/systemui/statusbar/views/MobileTypeDrawable;->sMiproTypeface:Landroid/graphics/Typeface;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/miui/systemui/statusbar/views/MobileTypeDrawable;->mMobileType:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/systemui/statusbar/views/MobileTypeDrawable;->mShowMobileTypeDoublePlus:Z

    iput-boolean v0, p0, Lcom/miui/systemui/statusbar/views/MobileTypeDrawable;->mShowSpecial5GIcon:Z

    const-class v1, Lcom/android/systemui/newstatusbar/controllers/MobileIconColorSizeController;

    invoke-static {v1}, Lcom/android/systemui/plugins/ControllerStorage;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/newstatusbar/controllers/MobileIconColorSizeController;

    iput-object v1, p0, Lcom/miui/systemui/statusbar/views/MobileTypeDrawable;->controller:Lcom/android/systemui/newstatusbar/controllers/MobileIconColorSizeController;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/miui/systemui/statusbar/views/MobileTypeDrawable;->mMobileTypeTextPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/miui/systemui/statusbar/views/MobileTypeDrawable;->mMobileTypePlusPaint:Landroid/graphics/Paint;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/graphics/Paint;

    aput-object v1, v3, v0

    const/4 v0, 0x1

    aput-object v2, v3, v0

    invoke-static {v3}, Lcom/miui/systemui/statusbar/views/MobileTypeDrawable;->setMiuiStatusBarTypeface([Landroid/graphics/Paint;)V

    return-void
.end method

.method private getData()Lcom/android/systemui/newstatusbar/data/TextData;
    .registers 2

    iget-object v0, p0, Lcom/miui/systemui/statusbar/views/MobileTypeDrawable;->controller:Lcom/android/systemui/newstatusbar/controllers/MobileIconColorSizeController;

    invoke-virtual {v0}, Lcom/android/systemui/newstatusbar/controllers/MobileIconColorSizeController;->getSimTypeData()Lcom/android/systemui/newstatusbar/data/TextData;

    move-result-object v0

    return-object v0
.end method

.method public static varargs setMiuiStatusBarTypeface([Landroid/graphics/Paint;)V
    .registers 8

    const-string v0, "mipro-bold"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    const/4 v2, 0x0

    :try_start_0
    const-class v3, Landroid/graphics/Typeface;

    const-string v4, "familyName"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    check-cast v4, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    nop

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_0

    goto :goto_1

    :cond_0
    aget-object v5, v3, v2

    const-string v6, "mipro"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object v0, Lcom/miui/systemui/statusbar/views/MobileTypeDrawable;->sMiproTypeface:Landroid/graphics/Typeface;

    nop

    :goto_1
    array-length v5, p0

    :goto_2
    if-ge v1, v5, :cond_2

    aget-object v6, p0, v1

    if-eqz v6, :cond_1

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    return-void
.end method

.method public static updateMobileTypeLayoutParams(Lcom/miui/systemui/statusbar/views/MobileTypeDrawable;Ljava/lang/String;Landroid/widget/ImageView;)V
    .registers 13

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/systemui/statusbar/views/MobileTypeDrawable;->measure()V

    invoke-virtual {p0}, Lcom/miui/systemui/statusbar/views/MobileTypeDrawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/systemui/statusbar/views/MobileTypeDrawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-ne v3, v1, :cond_1

    iget v3, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-eq v3, v0, :cond_2

    :cond_1
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    invoke-virtual {p2}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/newstatusbar/sim/SimTypeContainer;

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lcom/android/systemui/newstatusbar/sim/SimTypeContainer;->getInOut()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/systemui/newstatusbar/sim/SimTypeContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget-boolean v6, v3, Lcom/android/systemui/newstatusbar/sim/SimTypeContainer;->isHorizontal:Z

    if-eqz v6, :cond_3

    const/4 v7, 0x1

    goto :goto_0

    :cond_3
    const/4 v7, 0x2

    :goto_0
    invoke-virtual {p2}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v8

    mul-int/2addr v7, v8

    const/4 v8, 0x0

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    goto :goto_1

    :cond_4
    move v9, v8

    :goto_1
    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    if-nez v6, :cond_5

    iget-object v7, p0, Lcom/miui/systemui/statusbar/views/MobileTypeDrawable;->mMobileTypeTextPaint:Landroid/graphics/Paint;

    const-string v9, "4G+"

    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    float-to-int v1, v7

    :cond_5
    if-eqz v6, :cond_7

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    :cond_6
    add-int/2addr v1, v8

    :cond_7
    if-nez v6, :cond_8

    mul-int/lit8 v0, v0, 0x2

    :cond_8
    iput v0, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v3, v5}, Lcom/android/systemui/newstatusbar/sim/SimTypeContainer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 10

    iget-object v0, p0, Lcom/miui/systemui/statusbar/views/MobileTypeDrawable;->mMobileType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/miui/systemui/statusbar/views/MobileTypeDrawable;->getData()Lcom/android/systemui/newstatusbar/data/TextData;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/systemui/statusbar/views/MobileTypeDrawable;->mMobileTypeTextPaint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/android/systemui/newstatusbar/data/TextData;->color:I

    if-nez v2, :cond_1

    iget v2, p0, Lcom/miui/systemui/statusbar/views/MobileTypeDrawable;->mMobileTypeColor:I

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/newstatusbar/data/TextData;->getColor()I

    move-result v2

    :goto_0
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget v2, v0, Lcom/android/systemui/newstatusbar/data/TextData;->division:I

    int-to-float v2, v2

    const/high16 v3, 0x41200000

    div-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/miui/systemui/statusbar/views/MobileTypeDrawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000

    div-float/2addr v3, v4

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v5

    add-float/2addr v4, v5

    div-float/2addr v4, v2

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/miui/systemui/statusbar/views/MobileTypeDrawable;->mMobileType:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5, v3, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-boolean v4, p0, Lcom/miui/systemui/statusbar/views/MobileTypeDrawable;->mShowMobileTypeDoublePlus:Z

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/miui/systemui/statusbar/views/MobileTypeDrawable;->mWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/miui/systemui/statusbar/views/MobileTypeDrawable;->mHeight:I

    int-to-float v5, v5

    const v6, 0x40266666

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/miui/systemui/statusbar/views/MobileTypeDrawable;->mMobileTypePlusPaint:Landroid/graphics/Paint;

    const-string v7, "+"

    invoke-virtual {p1, v7, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget v4, p0, Lcom/miui/systemui/statusbar/views/MobileTypeDrawable;->mWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/miui/systemui/statusbar/views/MobileTypeDrawable;->mHeight:I

    int-to-float v5, v5

    const v6, 0x41066666

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/miui/systemui/statusbar/views/MobileTypeDrawable;->mMobileTypePlusPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method public final getIntrinsicHeight()I
    .registers 2

    iget v0, p0, Lcom/miui/systemui/statusbar/views/MobileTypeDrawable;->mHeight:I

    return v0
.end method

.method public final getIntrinsicWidth()I
    .registers 3

    iget v0, p0, Lcom/miui/systemui/statusbar/views/MobileTypeDrawable;->mWidth:I

    iget v1, p0, Lcom/miui/systemui/statusbar/views/MobileTypeDrawable;->mExtraWidth:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final getOpacity()I
    .registers 2

    const/4 v0, -0x3

    return v0
.end method

.method public measure()V
    .registers 7

    iget-object v0, p0, Lcom/miui/systemui/statusbar/views/MobileTypeDrawable;->mMobileType:Ljava/lang/String;

    const-string v1, "5G++"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/systemui/statusbar/views/MobileTypeDrawable;->mShowMobileTypeDoublePlus:Z

    const-string v0, "5G"

    iput-object v0, p0, Lcom/miui/systemui/statusbar/views/MobileTypeDrawable;->mMobileType:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/miui/systemui/statusbar/views/MobileTypeDrawable;->mShowMobileTypeDoublePlus:Z

    iput v1, p0, Lcom/miui/systemui/statusbar/views/MobileTypeDrawable;->mExtraWidth:I

    :goto_0
    invoke-direct {p0}, Lcom/miui/systemui/statusbar/views/MobileTypeDrawable;->getData()Lcom/android/systemui/newstatusbar/data/TextData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/systemui/statusbar/views/MobileTypeDrawable;->updateTypefase(Lcom/android/systemui/newstatusbar/data/TextData;)V

    iget v2, v0, Lcom/android/systemui/newstatusbar/data/TextData;->zoom:I

    if-nez v2, :cond_1

    iget v2, p0, Lcom/miui/systemui/statusbar/views/MobileTypeDrawable;->mMobileTypeSize:I

    goto :goto_1

    :cond_1
    iget v2, v0, Lcom/android/systemui/newstatusbar/data/TextData;->zoom:I

    :goto_1
    iput v2, p0, Lcom/miui/systemui/statusbar/views/MobileTypeDrawable;->mMobileTypeSize:I

    iget-object v3, p0, Lcom/miui/systemui/statusbar/views/MobileTypeDrawable;->mMobileTypeTextPaint:Landroid/graphics/Paint;

    int-to-float v2, v2

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v2, p0, Lcom/miui/systemui/statusbar/views/MobileTypeDrawable;->mMobileTypePlusPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/miui/systemui/statusbar/views/MobileTypeDrawable;->mMobileTypeSize:I

    int-to-float v3, v3

    const v4, 0x3f547ae1

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v2, p0, Lcom/miui/systemui/statusbar/views/MobileTypeDrawable;->mMobileTypeTextPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/miui/systemui/statusbar/views/MobileTypeDrawable;->mMobileType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, p0, Lcom/miui/systemui/statusbar/views/MobileTypeDrawable;->mWidth:I

    iget-object v2, p0, Lcom/miui/systemui/statusbar/views/MobileTypeDrawable;->mMobileType:Ljava/lang/String;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget-object v4, p0, Lcom/miui/systemui/statusbar/views/MobileTypeDrawable;->mMobileTypeTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v2, v1, v5, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/miui/systemui/statusbar/views/MobileTypeDrawable;->mHeight:I

    iget-boolean v1, p0, Lcom/miui/systemui/statusbar/views/MobileTypeDrawable;->mShowMobileTypeDoublePlus:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/systemui/statusbar/views/MobileTypeDrawable;->mMobileTypePlusPaint:Landroid/graphics/Paint;

    const-string v4, "+"

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    iput v1, p0, Lcom/miui/systemui/statusbar/views/MobileTypeDrawable;->mExtraWidth:I

    :cond_2
    invoke-virtual {p0}, Lcom/miui/systemui/statusbar/views/MobileTypeDrawable;->invalidateSelf()V

    return-void
.end method

.method public onIconChange()V
    .registers 2

    invoke-virtual {p0}, Lcom/miui/systemui/statusbar/views/MobileTypeDrawable;->measure()V

    iget-object v0, p0, Lcom/miui/systemui/statusbar/views/MobileTypeDrawable;->parent:Lcom/android/systemui/newstatusbar/sim/MobileTypeImageView;

    invoke-virtual {v0}, Lcom/android/systemui/newstatusbar/sim/MobileTypeImageView;->updateMobileTypeLayout()V

    return-void
.end method

.method public final setAlpha(I)V
    .registers 2

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    return-void
.end method

.method public setParent(Lcom/android/systemui/newstatusbar/sim/MobileTypeImageView;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/systemui/statusbar/views/MobileTypeDrawable;->parent:Lcom/android/systemui/newstatusbar/sim/MobileTypeImageView;

    return-void
.end method

.method public updateTypefase(Lcom/android/systemui/newstatusbar/data/TextData;)V
    .registers 4

    invoke-virtual {p1}, Lcom/android/systemui/newstatusbar/data/TextData;->getTypeFace()Landroid/graphics/Typeface;

    move-result-object v0

    iget v1, p1, Lcom/android/systemui/newstatusbar/data/TextData;->typeFaseStyle:I

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/systemui/statusbar/views/MobileTypeDrawable;->mMobileTypeTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v1, p0, Lcom/miui/systemui/statusbar/views/MobileTypeDrawable;->mMobileTypePlusPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method

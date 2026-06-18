.class public Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;
.super Lcom/android/systemui/plugins/qs/QSIconView;


# instance fields
.field public mAnimationEnabled:Z

.field public mAnimator:Landroid/animation/ObjectAnimator;

.field public final mIcon:Landroid/view/View;

.field public mIconBgSizePx:I

.field public mIconColorDisabled:I

.field public mIconColorEnabled:I

.field public mIconColorRestricted:I

.field public mIconColorUnavailable:I

.field public mIconSizePx:I

.field public mIsCustomTile:Z

.field public mState:Lcom/android/systemui/plugins/qs/QSTile$State;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/systemui/plugins/qs/QSIconView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;->mAnimationEnabled:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;->mIsCustomTile:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0716fd

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;->mIconSizePx:I

    const v0, 0x7f0716fc

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;->mIconBgSizePx:I

    const v0, 0x7f071707

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    const v0, 0x7f060bb9

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;->mIconColorEnabled:I

    const v0, 0x7f060bb8

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;->mIconColorDisabled:I

    const v0, 0x7f060bba

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;->mIconColorRestricted:I

    const v0, 0x7f060bbb

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;->mIconColorUnavailable:I

    new-instance p1, Landroid/widget/ImageView;

    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setId(I)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;->mIcon:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public static setTint(Landroid/widget/ImageView;I)V
    .registers 2

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method private updateUserBgColor(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .registers 6

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "QS_bg_color_show"

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    if-ne v1, p2, :cond_0

    const-string v2, "QS_bg_color_enabled"

    const v1, -0xff0100

    goto :goto_0

    :cond_0
    const-string v2, "QS_bg_color_disabled"

    const v1, 0x1a000000

    :goto_0
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_1
    return-object p1
.end method

.method private updateUserFgColor()V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "QS_bg_color_show"

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    const-string v2, "QS_fg_color_enabled"

    const v1, -0x1

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    iput v1, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;->mIconColorEnabled:I

    :cond_0
    const-string v2, "QS_fg_color_disabled"

    const v1, -0xa3a2a2

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    iput v1, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;->mIconColorDisabled:I

    :cond_1
    return-void
.end method


# virtual methods
.method public final disableAnimation()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;->mAnimationEnabled:Z

    return-void
.end method

.method public getIconMeasureMode()I
    .registers 1

    const/high16 p0, 0x40000000

    return p0
.end method

.method public getIconView()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;->mIcon:Landroid/view/View;

    return-object p0
.end method

.method public final onAttachedToWindow()V
    .registers 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;->updateResources()V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;->updateResources()V

    return-void
.end method

.method public final onLayout(ZIIII)V
    .registers 6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;->mIcon:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;->mIcon:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    add-int/2addr p2, p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    const/4 p4, 0x0

    invoke-virtual {p0, p1, p4, p2, p3}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method public final onMeasure(II)V
    .registers 5

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget p2, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;->mIconBgSizePx:I

    const/high16 v0, 0x40000000

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;->mIcon:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;->getIconMeasureMode()I

    move-result v1

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/view/View;->measure(II)V

    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;->mIcon:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public setAnimationEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;->mAnimationEnabled:Z

    return-void
.end method

.method public setIcon(Lcom/android/systemui/plugins/qs/QSTile$State;Z)V
    .registers 5

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;->mIcon:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;->updateIcon(Landroid/widget/ImageView;Lcom/android/systemui/plugins/qs/QSTile$State;ZZ)V

    return-void
.end method

.method public setIsCustomTile(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;->mIsCustomTile:Z

    return-void
.end method

.method public final updateIcon(Landroid/widget/ImageView;Lcom/android/systemui/plugins/qs/QSTile$State;ZZ)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    if-nez v2, :cond_0

    goto :goto_d

    :cond_0
    invoke-direct {v0}, Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;->updateUserFgColor()V

    iget-object v4, v2, Lcom/android/systemui/plugins/qs/QSTile$State;->iconSupplier:Ljava/util/function/Supplier;

    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_0

    :cond_1
    iget-object v4, v2, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    :goto_0
    iget v5, v2, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v6, 0x7f0b09b0

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    const v7, 0x7f0b09b1

    const v8, 0x7f0b09af

    if-eqz v5, :cond_2

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget v5, v2, Lcom/android/systemui/plugins/qs/QSTile$State;->activeBgColor:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz p4, :cond_19

    :cond_2
    invoke-virtual {v1, v7, v4}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    iget-object v9, v0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v9}, Lcom/android/systemui/plugins/qs/QSTile$Icon;->getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_1

    :cond_3
    move-object v4, v5

    :goto_1
    if-nez v4, :cond_4

    goto :goto_d

    :cond_4
    instance-of v9, v4, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v9, :cond_5

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    :cond_5
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    iget v11, v2, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    const/4 v12, 0x3

    const/4 v13, 0x2

    const/4 v14, 0x1

    if-eqz v11, :cond_9

    if-eq v11, v14, :cond_7

    if-eq v11, v13, :cond_6

    move v11, v10

    goto :goto_2

    :cond_6
    iget v11, v0, Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;->mIconColorEnabled:I

    goto :goto_2

    :cond_7
    iget v11, v2, Lcom/android/systemui/plugins/qs/QSTile$State;->activeBgColor:I

    if-ne v11, v12, :cond_8

    iget v11, v0, Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;->mIconColorRestricted:I

    goto :goto_2

    :cond_8
    iget v11, v0, Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;->mIconColorDisabled:I

    goto :goto_2

    :cond_9
    iget v11, v0, Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;->mIconColorUnavailable:I

    :goto_2
    invoke-virtual {v4, v11}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget v11, v2, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-ne v11, v13, :cond_a

    move v11, v14

    goto :goto_3

    :cond_a
    move v11, v10

    :goto_3
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v15

    if-eqz v15, :cond_c

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-ne v15, v13, :cond_b

    move v15, v14

    goto :goto_4

    :cond_b
    move v15, v10

    :goto_4
    move/from16 p4, v10

    goto :goto_5

    :cond_c
    move v15, v11

    goto :goto_4

    :goto_5
    iget v10, v2, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v6, v10}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    iget v6, v2, Lcom/android/systemui/plugins/qs/QSTile$State;->activeBgColor:I

    if-ne v6, v12, :cond_d

    move v6, v14

    goto :goto_6

    :cond_d
    move/from16 v6, p4

    :goto_6
    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_e

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    :goto_7
    move/from16 v16, v14

    goto :goto_8

    :cond_e
    move/from16 v10, p4

    goto :goto_7

    :goto_8
    iget v14, v2, Lcom/android/systemui/plugins/qs/QSTile$State;->activeBgColor:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v8, v14}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    if-eqz p3, :cond_10

    invoke-virtual {v1}, Landroid/widget/ImageView;->isShown()Z

    move-result v8

    if-eqz v8, :cond_10

    iget-boolean v8, v0, Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;->mAnimationEnabled:Z

    if-eqz v8, :cond_10

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_10

    if-ne v15, v11, :cond_f

    if-ne v10, v12, :cond_10

    iget v2, v2, Lcom/android/systemui/plugins/qs/QSTile$State;->activeBgColor:I

    if-eq v10, v2, :cond_10

    :cond_f
    move/from16 v2, v16

    goto :goto_9

    :cond_10
    move/from16 v2, p4

    :goto_9
    if-eqz v6, :cond_11

    move/from16 v2, p4

    :cond_11
    iget-boolean v7, v0, Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;->mIsCustomTile:Z

    if-eqz v7, :cond_12

    iget v7, v0, Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;->mIconSizePx:I

    goto :goto_a

    :cond_12
    if-eqz v9, :cond_13

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    goto :goto_a

    :cond_13
    iget v7, v0, Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;->mIconSizePx:I

    :goto_a
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x7f0812b2

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    const/16 v10, 0x1

    invoke-direct {v0, v8, v10}, Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;->updateUserBgColor(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v14, 0x7f0812b3

    invoke-virtual {v10, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    const/16 v15, 0x2

    invoke-direct {v0, v10, v15}, Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;->updateUserBgColor(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v3, 0x7f0812b4

    invoke-virtual {v15, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v11, :cond_14

    goto :goto_b

    :cond_14
    if-eqz v6, :cond_15

    move-object v10, v3

    goto :goto_b

    :cond_15
    move-object v10, v8

    :goto_b
    const/16 v3, 0x11

    if-eqz v2, :cond_1a

    if-eqz v11, :cond_16

    const/16 v2, 0xff

    goto :goto_c

    :cond_16
    move/from16 v2, p4

    :goto_c
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/16 v14, 0x2

    invoke-direct {v0, v6, v14}, Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;->updateUserBgColor(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    new-instance v10, Landroid/graphics/drawable/LayerDrawable;

    new-array v11, v12, [Landroid/graphics/drawable/Drawable;

    aput-object v8, v11, p4

    aput-object v6, v11, v16

    aput-object v4, v11, v13

    invoke-direct {v10, v11}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v10, v13, v3}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    invoke-virtual {v10, v13, v7, v7}, Landroid/graphics/drawable/LayerDrawable;->setLayerSize(III)V

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v0, Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;->mAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    iget-object v1, v0, Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    iget-object v1, v0, Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->removeAllUpdateListeners()V

    iput-object v5, v0, Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;->mAnimator:Landroid/animation/ObjectAnimator;

    :cond_17
    const/16 v1, 0xff

    rsub-int v3, v2, 0xff

    filled-new-array {v3, v2}, [I

    move-result-object v1

    const-string v2, "alpha"

    invoke-static {v6, v2, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;->mAnimator:Landroid/animation/ObjectAnimator;

    sget-object v2, Lcom/miui/utils/MiuiInterpolators;->EXP_EASE_OUT:Lmiuix/view/animation/ExponentialEaseOutInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, v0, Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    if-eqz v9, :cond_19

    check-cast v4, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/AnimatedVectorDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {v4}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    invoke-virtual {v4}, Landroid/graphics/drawable/AnimatedVectorDrawable;->reset()V

    :cond_18
    invoke-virtual {v4}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    :cond_19
    :goto_d
    return-void

    :cond_1a
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    new-array v2, v13, [Landroid/graphics/drawable/Drawable;

    aput-object v10, v2, p4

    aput-object v4, v2, v16

    invoke-direct {v0, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    move/from16 v2, v16

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    invoke-virtual {v0, v2, v7, v7}, Landroid/graphics/drawable/LayerDrawable;->setLayerSize(III)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final updateResources()V
    .registers 5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0716fd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;->mIconSizePx:I

    const v1, 0x7f0716fc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;->mIconBgSizePx:I

    const v1, 0x7f071707

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    const v1, 0x7f060bb9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;->mIconColorEnabled:I

    const v1, 0x7f060bb8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;->mIconColorDisabled:I

    const v1, 0x7f060bba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;->mIconColorRestricted:I

    const v1, 0x7f060bbb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;->mIconColorUnavailable:I

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;->mIcon:Landroid/view/View;

    if-eqz v0, :cond_0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/systemui/qs/tileimpl/MiuiQSIconViewImpl;->updateIcon(Landroid/widget/ImageView;Lcom/android/systemui/plugins/qs/QSTile$State;ZZ)V

    :cond_0
    return-void
.end method

.class public Lcom/android/systemui/newstatusbar/views/FakeIslandView;
.super Landroid/view/View;

# interfaces
.implements Lcom/android/systemui/newstatusbar/controllers/IslandController$OnIslandChangeListener;


# instance fields
.field height:I

.field width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v1, -0xff0100

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/newstatusbar/views/FakeIslandView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 2

    goto :goto_3

    nop

    :goto_0
    invoke-static {v0}, Lcom/android/systemui/plugins/ControllerStorage;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_4

    nop

    :goto_1
    invoke-virtual {v0, p0}, Lcom/android/systemui/newstatusbar/controllers/IslandController;->addCallBack(Lcom/android/systemui/newstatusbar/controllers/IslandController$OnIslandChangeListener;)V

    goto :goto_2

    nop

    :goto_2
    return-void

    :goto_3
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    goto :goto_5

    nop

    :goto_4
    check-cast v0, Lcom/android/systemui/newstatusbar/controllers/IslandController;

    goto :goto_1

    nop

    :goto_5
    const-class v0, Lcom/android/systemui/newstatusbar/controllers/IslandController;

    goto :goto_0

    nop
.end method

.method public onIslandShowChange(Z)V
    .registers 3

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/newstatusbar/views/FakeIslandView;->setVisibility(I)V

    return-void
.end method

.method public onIslandSizeChange(II)V
    .registers 3

    return-void
.end method

.method public onIslandSizeChange(Landroid/graphics/Rect;)V
    .registers 10

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/views/FakeIslandView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    const/high16 v1, 0x40000000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/newstatusbar/views/FakeIslandView;->measure(II)V

    const-class v0, Lcom/android/systemui/newstatusbar/controllers/ElementController;

    invoke-static {v0}, Lcom/android/systemui/plugins/ControllerStorage;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/newstatusbar/controllers/ElementController;

    iget-object v0, v0, Lcom/android/systemui/newstatusbar/controllers/ElementController;->mainLayout:Lcom/android/systemui/newstatusbar/layouts/MainLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    new-array v2, v1, [I

    invoke-virtual {v0, v2}, Lcom/android/systemui/newstatusbar/layouts/MainLayout;->getLocationOnScreen([I)V

    invoke-virtual {v0}, Lcom/android/systemui/newstatusbar/layouts/MainLayout;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/systemui/newstatusbar/layouts/MainLayout;->getHeight()I

    move-result v4

    div-int/lit8 v5, v4, 0x2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    div-int/2addr v6, v1

    sub-int/2addr v5, v6

    iget v1, p1, Landroid/graphics/Rect;->left:I

    const/4 v6, 0x0

    aget v6, v2, v6

    sub-int/2addr v1, v6

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    add-int/2addr v6, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {p0, v1, v5, v6, v7}, Lcom/android/systemui/newstatusbar/views/FakeIslandView;->layout(IIII)V

    :cond_0
    return-void
.end method

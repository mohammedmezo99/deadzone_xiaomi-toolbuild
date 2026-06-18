.class public Lcom/android/systemui/newstatusbar/views/InOutView;
.super Landroid/widget/FrameLayout;


# instance fields
.field private inOutChild:Landroid/view/View;

.field private mainChild:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .registers 2

    goto :goto_7

    nop

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/newstatusbar/views/InOutView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    nop

    :goto_1
    iput-object v0, p0, Lcom/android/systemui/newstatusbar/views/InOutView;->mainChild:Landroid/view/View;

    goto :goto_3

    nop

    :goto_2
    return-void

    :goto_3
    const/4 v0, 0x1

    goto :goto_5

    nop

    :goto_4
    iput-object v0, p0, Lcom/android/systemui/newstatusbar/views/InOutView;->inOutChild:Landroid/view/View;

    goto :goto_2

    nop

    :goto_5
    invoke-virtual {p0, v0}, Lcom/android/systemui/newstatusbar/views/InOutView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_4

    nop

    :goto_6
    const/4 v0, 0x0

    goto :goto_0

    nop

    :goto_7
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    goto :goto_6

    nop
.end method

.method protected onLayout(ZIIII)V
    .registers 11

    goto :goto_14

    nop

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/newstatusbar/views/InOutView;->mainChild:Landroid/view/View;

    goto :goto_15

    nop

    :goto_1
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    goto :goto_b

    nop

    :goto_2
    iget-object v4, p0, Lcom/android/systemui/newstatusbar/views/InOutView;->inOutChild:Landroid/view/View;

    goto :goto_1

    nop

    :goto_3
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/views/InOutView;->mainChild:Landroid/view/View;

    goto :goto_9

    nop

    :goto_4
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    goto :goto_0

    nop

    :goto_5
    sub-int v3, v0, v3

    goto :goto_2

    nop

    :goto_6
    return-void

    :goto_7
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    goto :goto_12

    nop

    :goto_8
    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_11

    nop

    :goto_9
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    goto :goto_f

    nop

    :goto_a
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    goto :goto_5

    nop

    :goto_b
    sub-int v4, v1, v4

    goto :goto_d

    nop

    :goto_c
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/views/InOutView;->mainChild:Landroid/view/View;

    goto :goto_4

    nop

    :goto_d
    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/view/View;->layout(IIII)V

    :goto_e
    goto :goto_6

    nop

    :goto_f
    if-eqz v0, :cond_0

    goto :goto_e

    :cond_0
    goto :goto_c

    nop

    :goto_10
    if-nez v0, :cond_1

    goto :goto_e

    :cond_1
    goto :goto_7

    nop

    :goto_11
    iget-object v2, p0, Lcom/android/systemui/newstatusbar/views/InOutView;->inOutChild:Landroid/view/View;

    goto :goto_a

    nop

    :goto_12
    if-gtz v0, :cond_2

    goto :goto_e

    :cond_2
    goto :goto_3

    nop

    :goto_13
    const/4 v3, 0x0

    goto :goto_8

    nop

    :goto_14
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/views/InOutView;->mainChild:Landroid/view/View;

    goto :goto_10

    nop

    :goto_15
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    goto :goto_16

    nop

    :goto_16
    iget-object v2, p0, Lcom/android/systemui/newstatusbar/views/InOutView;->mainChild:Landroid/view/View;

    goto :goto_13

    nop
.end method

.method protected onMeasure(II)V
    .registers 6

    goto :goto_1

    nop

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/views/InOutView;->getAlpha()F

    move-result v0

    goto :goto_4

    nop

    :goto_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_1a

    nop

    :goto_2
    const/4 v1, 0x0

    goto :goto_13

    nop

    :goto_3
    if-eqz v0, :cond_0

    goto :goto_a

    :cond_0
    goto :goto_b

    nop

    :goto_4
    const/4 v2, 0x0

    goto :goto_d

    nop

    :goto_5
    invoke-virtual {p0, v1, v1}, Lcom/android/systemui/newstatusbar/views/InOutView;->setMeasuredDimension(II)V

    goto :goto_14

    nop

    :goto_6
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    goto :goto_7

    nop

    :goto_7
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/newstatusbar/views/InOutView;->setMeasuredDimension(II)V

    goto :goto_9

    nop

    :goto_8
    if-nez v0, :cond_1

    goto :goto_a

    :cond_1
    goto :goto_c

    nop

    :goto_9
    goto :goto_f

    :goto_a
    goto :goto_e

    nop

    :goto_b
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/views/InOutView;->mainChild:Landroid/view/View;

    goto :goto_11

    nop

    :goto_c
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/views/InOutView;->mainChild:Landroid/view/View;

    goto :goto_10

    nop

    :goto_d
    cmpl-float v0, v0, v2

    goto :goto_8

    nop

    :goto_e
    invoke-virtual {p0, v1, v1}, Lcom/android/systemui/newstatusbar/views/InOutView;->setMeasuredDimension(II)V

    :goto_f
    goto :goto_17

    nop

    :goto_10
    if-nez v0, :cond_2

    goto :goto_a

    :cond_2
    goto :goto_12

    nop

    :goto_11
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    goto :goto_1b

    nop

    :goto_12
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    goto :goto_18

    nop

    :goto_13
    if-nez v0, :cond_3

    goto :goto_15

    :cond_3
    goto :goto_5

    nop

    :goto_14
    return-void

    :goto_15
    goto :goto_0

    nop

    :goto_16
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    goto :goto_3

    nop

    :goto_17
    return-void

    :goto_18
    if-gtz v0, :cond_4

    goto :goto_a

    :cond_4
    goto :goto_19

    nop

    :goto_19
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/views/InOutView;->mainChild:Landroid/view/View;

    goto :goto_16

    nop

    :goto_1a
    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/views/InOutView;->getVisibility()I

    move-result v0

    goto :goto_2

    nop

    :goto_1b
    iget-object v1, p0, Lcom/android/systemui/newstatusbar/views/InOutView;->mainChild:Landroid/view/View;

    goto :goto_6

    nop
.end method

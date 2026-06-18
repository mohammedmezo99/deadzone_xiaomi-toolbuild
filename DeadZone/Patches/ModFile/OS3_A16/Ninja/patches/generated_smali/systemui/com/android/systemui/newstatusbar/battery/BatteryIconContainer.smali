.class public Lcom/android/systemui/newstatusbar/battery/BatteryIconContainer;
.super Landroid/widget/FrameLayout;


# instance fields
.field private hollow:Landroid/view/View;

.field private icon:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .registers 2

    goto :goto_0

    nop

    :goto_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    goto :goto_3

    nop

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/newstatusbar/battery/BatteryIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_2

    nop

    :goto_2
    iput-object v0, p0, Lcom/android/systemui/newstatusbar/battery/BatteryIconContainer;->icon:Landroid/view/View;

    goto :goto_6

    nop

    :goto_3
    const/4 v0, 0x0

    goto :goto_1

    nop

    :goto_4
    invoke-virtual {p0, v0}, Lcom/android/systemui/newstatusbar/battery/BatteryIconContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_5

    nop

    :goto_5
    iput-object v0, p0, Lcom/android/systemui/newstatusbar/battery/BatteryIconContainer;->hollow:Landroid/view/View;

    goto :goto_7

    nop

    :goto_6
    const/4 v0, 0x1

    goto :goto_4

    nop

    :goto_7
    return-void
.end method

.method protected onMeasure(II)V
    .registers 7

    goto :goto_0

    nop

    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_1a

    nop

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/newstatusbar/battery/BatteryIconContainer;->icon:Landroid/view/View;

    goto :goto_e

    nop

    :goto_2
    if-ne v0, v2, :cond_0

    goto :goto_24

    :cond_0
    goto :goto_5

    nop

    :goto_3
    move v0, v1

    :goto_4
    goto :goto_1

    nop

    :goto_5
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/battery/BatteryIconContainer;->icon:Landroid/view/View;

    :goto_6
    goto :goto_7

    nop

    :goto_7
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    goto :goto_23

    nop

    :goto_8
    goto :goto_1c

    :goto_9
    goto :goto_13

    nop

    :goto_a
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    goto :goto_20

    nop

    :goto_b
    const/16 v2, 0x8

    goto :goto_2

    nop

    :goto_c
    if-ne v3, v2, :cond_1

    goto :goto_1e

    :cond_1
    goto :goto_1b

    nop

    :goto_d
    return-void

    :goto_e
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    goto :goto_c

    nop

    :goto_f
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    goto :goto_22

    nop

    :goto_10
    goto :goto_6

    :goto_11
    goto :goto_3

    nop

    :goto_12
    const/4 v1, 0x0

    goto :goto_b

    nop

    :goto_13
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/newstatusbar/battery/BatteryIconContainer;->setMeasuredDimension(II)V

    :goto_14
    goto :goto_d

    nop

    :goto_15
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    goto :goto_12

    nop

    :goto_16
    iget-object v3, p0, Lcom/android/systemui/newstatusbar/battery/BatteryIconContainer;->hollow:Landroid/view/View;

    goto :goto_a

    nop

    :goto_17
    if-nez v0, :cond_2

    goto :goto_14

    :cond_2
    goto :goto_15

    nop

    :goto_18
    iget-object v1, p0, Lcom/android/systemui/newstatusbar/battery/BatteryIconContainer;->hollow:Landroid/view/View;

    goto :goto_8

    nop

    :goto_19
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    goto :goto_1d

    nop

    :goto_1a
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/battery/BatteryIconContainer;->icon:Landroid/view/View;

    goto :goto_17

    nop

    :goto_1b
    iget-object v1, p0, Lcom/android/systemui/newstatusbar/battery/BatteryIconContainer;->icon:Landroid/view/View;

    :goto_1c
    goto :goto_19

    nop

    :goto_1d
    goto :goto_9

    :goto_1e
    goto :goto_16

    nop

    :goto_1f
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/battery/BatteryIconContainer;->hollow:Landroid/view/View;

    goto :goto_f

    nop

    :goto_20
    if-ne v3, v2, :cond_3

    goto :goto_9

    :cond_3
    goto :goto_18

    nop

    :goto_21
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/battery/BatteryIconContainer;->hollow:Landroid/view/View;

    goto :goto_10

    nop

    :goto_22
    if-ne v0, v2, :cond_4

    goto :goto_11

    :cond_4
    goto :goto_21

    nop

    :goto_23
    goto :goto_4

    :goto_24
    goto :goto_1f

    nop
.end method

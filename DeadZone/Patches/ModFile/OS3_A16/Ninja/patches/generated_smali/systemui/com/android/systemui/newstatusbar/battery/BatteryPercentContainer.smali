.class public Lcom/android/systemui/newstatusbar/battery/BatteryPercentContainer;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Lcom/android/systemui/newstatusbar/controllers/IconController$IconCallBack;


# instance fields
.field private final controller:Lcom/android/systemui/newstatusbar/controllers/BatteryColorSizeController;

.field private isItalicMark:Z

.field private isItalicPercent:Z

.field private mark:Landroid/widget/TextView;

.field private percent:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-class v0, Lcom/android/systemui/newstatusbar/controllers/BatteryColorSizeController;

    invoke-static {v0}, Lcom/android/systemui/plugins/ControllerStorage;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/newstatusbar/controllers/BatteryColorSizeController;

    iput-object v0, p0, Lcom/android/systemui/newstatusbar/battery/BatteryPercentContainer;->controller:Lcom/android/systemui/newstatusbar/controllers/BatteryColorSizeController;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-class v0, Lcom/android/systemui/newstatusbar/controllers/BatteryColorSizeController;

    invoke-static {v0}, Lcom/android/systemui/plugins/ControllerStorage;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/newstatusbar/controllers/BatteryColorSizeController;

    iput-object v0, p0, Lcom/android/systemui/newstatusbar/battery/BatteryPercentContainer;->controller:Lcom/android/systemui/newstatusbar/controllers/BatteryColorSizeController;

    return-void
.end method

.method private getDataMark()Lcom/android/systemui/newstatusbar/data/TextData;
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/battery/BatteryPercentContainer;->controller:Lcom/android/systemui/newstatusbar/controllers/BatteryColorSizeController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/newstatusbar/controllers/BatteryColorSizeController;->getTextData(Z)Lcom/android/systemui/newstatusbar/data/TextData;

    move-result-object v0

    return-object v0
.end method

.method private getDataPercent()Lcom/android/systemui/newstatusbar/data/TextData;
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/battery/BatteryPercentContainer;->controller:Lcom/android/systemui/newstatusbar/controllers/BatteryColorSizeController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/newstatusbar/controllers/BatteryColorSizeController;->getTextData(Z)Lcom/android/systemui/newstatusbar/data/TextData;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 2

    goto :goto_1

    nop

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/battery/BatteryPercentContainer;->controller:Lcom/android/systemui/newstatusbar/controllers/BatteryColorSizeController;

    goto :goto_2

    nop

    :goto_1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    goto :goto_0

    nop

    :goto_2
    invoke-virtual {v0, p0}, Lcom/android/systemui/newstatusbar/controllers/BatteryColorSizeController;->addCallBack(Lcom/android/systemui/newstatusbar/controllers/IconController$IconCallBack;)V

    goto :goto_3

    nop

    :goto_3
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    goto :goto_3

    nop

    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/systemui/newstatusbar/controllers/BatteryColorSizeController;->removeCallBack(Lcom/android/systemui/newstatusbar/controllers/IconController$IconCallBack;)V

    goto :goto_2

    nop

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/battery/BatteryPercentContainer;->controller:Lcom/android/systemui/newstatusbar/controllers/BatteryColorSizeController;

    goto :goto_0

    nop

    :goto_2
    return-void

    :goto_3
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    goto :goto_1

    nop
.end method

.method protected onFinishInflate()V
    .registers 2

    goto :goto_2

    nop

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/newstatusbar/battery/BatteryPercentContainer;->setClipToPadding(Z)V

    goto :goto_6

    nop

    :goto_1
    const/4 v0, 0x0

    goto :goto_8

    nop

    :goto_2
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    goto :goto_1

    nop

    :goto_3
    check-cast v0, Landroid/widget/TextView;

    goto :goto_5

    nop

    :goto_4
    invoke-virtual {p0, v0}, Lcom/android/systemui/newstatusbar/battery/BatteryPercentContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_a

    nop

    :goto_5
    iput-object v0, p0, Lcom/android/systemui/newstatusbar/battery/BatteryPercentContainer;->percent:Landroid/widget/TextView;

    goto :goto_b

    nop

    :goto_6
    invoke-virtual {p0, v0}, Lcom/android/systemui/newstatusbar/battery/BatteryPercentContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_3

    nop

    :goto_7
    iput-object v0, p0, Lcom/android/systemui/newstatusbar/battery/BatteryPercentContainer;->mark:Landroid/widget/TextView;

    goto :goto_9

    nop

    :goto_8
    invoke-virtual {p0, v0}, Lcom/android/systemui/newstatusbar/battery/BatteryPercentContainer;->setClipChildren(Z)V

    goto :goto_0

    nop

    :goto_9
    return-void

    :goto_a
    check-cast v0, Landroid/widget/TextView;

    goto :goto_7

    nop

    :goto_b
    const/4 v0, 0x1

    goto :goto_4

    nop
.end method

.method public onIconChange()V
    .registers 5

    invoke-direct {p0}, Lcom/android/systemui/newstatusbar/battery/BatteryPercentContainer;->getDataMark()Lcom/android/systemui/newstatusbar/data/TextData;

    move-result-object v0

    iget v0, v0, Lcom/android/systemui/newstatusbar/data/TextData;->typeFaseStyle:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-lt v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/newstatusbar/battery/BatteryPercentContainer;->isItalicMark:Z

    invoke-direct {p0}, Lcom/android/systemui/newstatusbar/battery/BatteryPercentContainer;->getDataPercent()Lcom/android/systemui/newstatusbar/data/TextData;

    move-result-object v0

    iget v0, v0, Lcom/android/systemui/newstatusbar/data/TextData;->typeFaseStyle:I

    if-lt v0, v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/newstatusbar/battery/BatteryPercentContainer;->isItalicPercent:Z

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/battery/BatteryPercentContainer;->requestLayout()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 12

    goto :goto_1e

    nop

    :goto_0
    return-void

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/newstatusbar/battery/BatteryPercentContainer;->percent:Landroid/widget/TextView;

    goto :goto_e

    nop

    :goto_2
    return-void

    :goto_3
    goto :goto_5

    nop

    :goto_4
    add-int/2addr v4, v1

    goto :goto_22

    nop

    :goto_5
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/battery/BatteryPercentContainer;->mark:Landroid/widget/TextView;

    goto :goto_1b

    nop

    :goto_6
    invoke-virtual {v5}, Landroid/widget/TextView;->getBottom()I

    move-result v5

    goto :goto_8

    nop

    :goto_7
    invoke-virtual {v2}, Landroid/widget/TextView;->getTop()I

    move-result v3

    goto :goto_21

    nop

    :goto_8
    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/widget/TextView;->layout(IIII)V

    :goto_9
    goto :goto_0

    nop

    :goto_a
    goto :goto_1a

    :goto_b
    goto :goto_19

    nop

    :goto_c
    move v0, v2

    :goto_d
    goto :goto_1d

    nop

    :goto_e
    if-eqz v0, :cond_0

    goto :goto_b

    :cond_0
    goto :goto_10

    nop

    :goto_f
    invoke-static {v4, v5}, Lcom/android/systemui/newstatusbar/util/TextUtil;->measureText(Landroid/widget/TextView;Z)I

    move-result v4

    goto :goto_4

    nop

    :goto_10
    iget-boolean v4, p0, Lcom/android/systemui/newstatusbar/battery/BatteryPercentContainer;->isItalicPercent:Z

    goto :goto_11

    nop

    :goto_11
    if-nez v4, :cond_1

    goto :goto_b

    :cond_1
    goto :goto_a

    nop

    :goto_12
    goto :goto_d

    :goto_13
    goto :goto_c

    nop

    :goto_14
    if-eqz v0, :cond_2

    goto :goto_13

    :cond_2
    goto :goto_1f

    nop

    :goto_15
    invoke-static {v3, v1}, Lcom/android/systemui/newstatusbar/util/TextUtil;->measureText(Landroid/widget/TextView;Z)I

    move-result v1

    goto :goto_16

    nop

    :goto_16
    iget-object v2, p0, Lcom/android/systemui/newstatusbar/battery/BatteryPercentContainer;->mark:Landroid/widget/TextView;

    goto :goto_7

    nop

    :goto_17
    const/4 v2, 0x0

    goto :goto_14

    nop

    :goto_18
    const/4 v1, 0x1

    goto :goto_17

    nop

    :goto_19
    move v1, v2

    :goto_1a
    goto :goto_15

    nop

    :goto_1b
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    goto :goto_18

    nop

    :goto_1c
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/battery/BatteryPercentContainer;->percent:Landroid/widget/TextView;

    goto :goto_20

    nop

    :goto_1d
    if-nez v0, :cond_3

    goto :goto_9

    :cond_3
    goto :goto_1

    nop

    :goto_1e
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    goto :goto_1c

    nop

    :goto_1f
    move v0, v1

    goto :goto_12

    nop

    :goto_20
    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    goto :goto_2

    nop

    :goto_21
    iget-object v4, p0, Lcom/android/systemui/newstatusbar/battery/BatteryPercentContainer;->mark:Landroid/widget/TextView;

    goto :goto_23

    nop

    :goto_22
    iget-object v5, p0, Lcom/android/systemui/newstatusbar/battery/BatteryPercentContainer;->mark:Landroid/widget/TextView;

    goto :goto_6

    nop

    :goto_23
    iget-boolean v5, p0, Lcom/android/systemui/newstatusbar/battery/BatteryPercentContainer;->isItalicMark:Z

    goto :goto_f

    nop
.end method

.method protected onMeasure(II)V
    .registers 8

    goto :goto_9

    nop

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/newstatusbar/battery/BatteryPercentContainer;->mark:Landroid/widget/TextView;

    goto :goto_7

    nop

    :goto_1
    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/newstatusbar/battery/BatteryPercentContainer;->setMeasuredDimension(II)V

    :goto_2
    goto :goto_11

    nop

    :goto_3
    if-eqz v0, :cond_0

    goto :goto_23

    :cond_0
    goto :goto_c

    nop

    :goto_4
    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    goto :goto_0

    nop

    :goto_5
    iget-boolean v3, p0, Lcom/android/systemui/newstatusbar/battery/BatteryPercentContainer;->isItalicMark:Z

    goto :goto_21

    nop

    :goto_6
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/battery/BatteryPercentContainer;->mark:Landroid/widget/TextView;

    goto :goto_1a

    nop

    :goto_7
    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    goto :goto_8

    nop

    :goto_8
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    goto :goto_12

    nop

    :goto_9
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto :goto_a

    nop

    :goto_a
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/battery/BatteryPercentContainer;->percent:Landroid/widget/TextView;

    goto :goto_4

    nop

    :goto_b
    invoke-static {v3, v1}, Lcom/android/systemui/newstatusbar/util/TextUtil;->measureText(Landroid/widget/TextView;Z)I

    move-result v1

    goto :goto_1f

    nop

    :goto_c
    iget-boolean v4, p0, Lcom/android/systemui/newstatusbar/battery/BatteryPercentContainer;->isItalicPercent:Z

    goto :goto_e

    nop

    :goto_d
    iget-object v3, p0, Lcom/android/systemui/newstatusbar/battery/BatteryPercentContainer;->percent:Landroid/widget/TextView;

    goto :goto_3

    nop

    :goto_e
    if-nez v4, :cond_3

    goto :goto_23

    :cond_3
    goto :goto_22

    nop

    :goto_f
    const/4 v2, 0x0

    goto :goto_16

    nop

    :goto_10
    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/battery/BatteryPercentContainer;->getMeasuredHeight()I

    move-result v2

    goto :goto_1

    nop

    :goto_11
    return-void

    :goto_12
    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    goto :goto_6

    nop

    :goto_13
    iget-object v2, p0, Lcom/android/systemui/newstatusbar/battery/BatteryPercentContainer;->mark:Landroid/widget/TextView;

    goto :goto_5

    nop

    :goto_14
    move v0, v2

    :goto_15
    goto :goto_d

    nop

    :goto_16
    if-eqz v0, :cond_5

    goto :goto_19

    :cond_5
    goto :goto_17

    nop

    :goto_17
    move v0, v1

    goto :goto_18

    nop

    :goto_18
    goto :goto_15

    :goto_19
    goto :goto_14

    nop

    :goto_1a
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    goto :goto_20

    nop

    :goto_1b
    move v1, v2

    :goto_1c
    goto :goto_b

    nop

    :goto_1d
    add-int/2addr v1, v2

    :goto_1e
    goto :goto_10

    nop

    :goto_1f
    if-nez v0, :cond_6

    goto :goto_1e

    :cond_6
    goto :goto_13

    nop

    :goto_20
    const/4 v1, 0x1

    goto :goto_f

    nop

    :goto_21
    invoke-static {v2, v3}, Lcom/android/systemui/newstatusbar/util/TextUtil;->measureText(Landroid/widget/TextView;Z)I

    move-result v2

    goto :goto_1d

    nop

    :goto_22
    goto :goto_1c

    :goto_23
    goto :goto_1b

    nop
.end method

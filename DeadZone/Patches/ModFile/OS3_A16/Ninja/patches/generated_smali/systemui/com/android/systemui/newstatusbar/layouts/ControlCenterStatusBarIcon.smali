.class public Lcom/android/systemui/newstatusbar/layouts/ControlCenterStatusBarIcon;
.super Lcom/android/systemui/controlcenter/phone/widget/ControlCenterStatusBarIcon;


# instance fields
.field private child:Landroid/view/ViewGroup;

.field private final controller:Lcom/android/systemui/newstatusbar/controllers/ElementController;

.field private statusIcons:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/controlcenter/phone/widget/ControlCenterStatusBarIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-class v0, Lcom/android/systemui/newstatusbar/controllers/ElementController;

    invoke-static {v0}, Lcom/android/systemui/plugins/ControllerStorage;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/newstatusbar/controllers/ElementController;

    iput-object v0, p0, Lcom/android/systemui/newstatusbar/layouts/ControlCenterStatusBarIcon;->controller:Lcom/android/systemui/newstatusbar/controllers/ElementController;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/newstatusbar/layouts/ControlCenterStatusBarIcon;->setClipChildren(Z)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/newstatusbar/layouts/ControlCenterStatusBarIcon;->setClipToPadding(Z)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .registers 4

    goto :goto_7

    nop

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/layouts/ControlCenterStatusBarIcon;->getContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_d

    nop

    :goto_1
    iput-object v1, p0, Lcom/android/systemui/newstatusbar/layouts/ControlCenterStatusBarIcon;->statusIcons:Landroid/view/ViewGroup;

    goto :goto_11

    nop

    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/systemui/newstatusbar/layouts/ControlCenterStatusBarIcon;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    goto :goto_f

    nop

    :goto_3
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    goto :goto_0

    nop

    :goto_4
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    goto :goto_b

    nop

    :goto_5
    const/4 v0, 0x0

    goto :goto_2

    nop

    :goto_6
    iput-object v1, p0, Lcom/android/systemui/newstatusbar/layouts/ControlCenterStatusBarIcon;->child:Landroid/view/ViewGroup;

    goto :goto_10

    nop

    :goto_7
    invoke-super {p0}, Lcom/android/systemui/controlcenter/phone/widget/ControlCenterStatusBarIcon;->onFinishInflate()V

    goto :goto_5

    nop

    :goto_8
    iget-object v1, p0, Lcom/android/systemui/newstatusbar/layouts/ControlCenterStatusBarIcon;->statusIcons:Landroid/view/ViewGroup;

    goto :goto_4

    nop

    :goto_9
    check-cast v1, Landroid/view/ViewGroup;

    goto :goto_1

    nop

    :goto_a
    invoke-virtual {p0, v1}, Lcom/android/systemui/newstatusbar/layouts/ControlCenterStatusBarIcon;->findViewById(I)Landroid/view/View;

    move-result-object v1

    goto :goto_9

    nop

    :goto_b
    return-void

    :goto_c
    invoke-static {v1, v2}, Landroid/Utils/Utils;->IDtoID(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    goto :goto_a

    nop

    :goto_d
    const-string v2, "statusIcons"

    goto :goto_c

    nop

    :goto_e
    iget-object v1, p0, Lcom/android/systemui/newstatusbar/layouts/ControlCenterStatusBarIcon;->child:Landroid/view/ViewGroup;

    goto :goto_3

    nop

    :goto_f
    check-cast v1, Landroid/view/ViewGroup;

    goto :goto_6

    nop

    :goto_10
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    goto :goto_e

    nop

    :goto_11
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    goto :goto_8

    nop
.end method

.method protected onMeasure(II)V
    .registers 8

    goto :goto_15

    nop

    :goto_0
    invoke-virtual {v1, v3, v4}, Landroid/view/ViewGroup;->measure(II)V

    :goto_1
    goto :goto_6

    nop

    :goto_2
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    goto :goto_0

    nop

    :goto_3
    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/layouts/ControlCenterStatusBarIcon;->getMeasuredWidth()I

    move-result v1

    goto :goto_12

    nop

    :goto_4
    iget v0, v0, Lcom/android/systemui/newstatusbar/controllers/ElementController;->statusBarHeight:I

    goto :goto_8

    nop

    :goto_5
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    goto :goto_f

    nop

    :goto_6
    iget-object v1, p0, Lcom/android/systemui/newstatusbar/layouts/ControlCenterStatusBarIcon;->statusIcons:Landroid/view/ViewGroup;

    goto :goto_7

    nop

    :goto_7
    if-nez v1, :cond_0

    goto :goto_10

    :cond_0
    goto :goto_11

    nop

    :goto_8
    if-gtz v0, :cond_1

    goto :goto_10

    :cond_1
    goto :goto_3

    nop

    :goto_9
    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    goto :goto_b

    nop

    :goto_a
    iget-object v1, p0, Lcom/android/systemui/newstatusbar/layouts/ControlCenterStatusBarIcon;->child:Landroid/view/ViewGroup;

    goto :goto_13

    nop

    :goto_b
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    goto :goto_14

    nop

    :goto_c
    return-void

    :goto_d
    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    goto :goto_5

    nop

    :goto_e
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/layouts/ControlCenterStatusBarIcon;->controller:Lcom/android/systemui/newstatusbar/controllers/ElementController;

    goto :goto_4

    nop

    :goto_f
    invoke-virtual {v1, v3, v2}, Landroid/view/ViewGroup;->measure(II)V

    :goto_10
    goto :goto_c

    nop

    :goto_11
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    goto :goto_d

    nop

    :goto_12
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/newstatusbar/layouts/ControlCenterStatusBarIcon;->setMeasuredDimension(II)V

    goto :goto_a

    nop

    :goto_13
    const/high16 v2, 0x40000000

    goto :goto_9

    nop

    :goto_14
    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    goto :goto_2

    nop

    :goto_15
    invoke-super {p0, p1, p2}, Lcom/android/systemui/controlcenter/phone/widget/ControlCenterStatusBarIcon;->onMeasure(II)V

    goto :goto_e

    nop
.end method

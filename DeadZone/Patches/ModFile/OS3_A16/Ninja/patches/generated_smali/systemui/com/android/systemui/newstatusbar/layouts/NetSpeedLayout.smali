.class public Lcom/android/systemui/newstatusbar/layouts/NetSpeedLayout;
.super Landroid/widget/LinearLayout;


# instance fields
.field TAG:Ljava/lang/String;

.field private bottom:Landroid/widget/TextView;

.field private height:I

.field private top:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/layouts/NetSpeedLayout;->updateHeight()V

    const-string v0, "Elitenetspeedlayout"

    iput-object v0, p0, Lcom/android/systemui/newstatusbar/layouts/NetSpeedLayout;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/layouts/NetSpeedLayout;->updateHeight()V

    const-string v0, "Elitenetspeedlayout"

    iput-object v0, p0, Lcom/android/systemui/newstatusbar/layouts/NetSpeedLayout;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/layouts/NetSpeedLayout;->updateHeight()V

    const-string v0, "Elitenetspeedlayout"

    iput-object v0, p0, Lcom/android/systemui/newstatusbar/layouts/NetSpeedLayout;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/layouts/NetSpeedLayout;->updateHeight()V

    const-string v0, "Elitenetspeedlayout"

    iput-object v0, p0, Lcom/android/systemui/newstatusbar/layouts/NetSpeedLayout;->TAG:Ljava/lang/String;

    return-void
.end method

.method private isValid()Z
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/layouts/NetSpeedLayout;->top:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/layouts/NetSpeedLayout;->bottom:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method protected onFinishInflate()V
    .registers 2

    goto :goto_1

    nop

    :goto_0
    check-cast v0, Landroid/widget/TextView;

    goto :goto_9

    nop

    :goto_1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    goto :goto_7

    nop

    :goto_2
    check-cast v0, Landroid/widget/TextView;

    goto :goto_4

    nop

    :goto_3
    invoke-virtual {p0, v0}, Lcom/android/systemui/newstatusbar/layouts/NetSpeedLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_2

    nop

    :goto_4
    iput-object v0, p0, Lcom/android/systemui/newstatusbar/layouts/NetSpeedLayout;->top:Landroid/widget/TextView;

    goto :goto_5

    nop

    :goto_5
    const/4 v0, 0x1

    goto :goto_6

    nop

    :goto_6
    invoke-virtual {p0, v0}, Lcom/android/systemui/newstatusbar/layouts/NetSpeedLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    nop

    :goto_7
    const/4 v0, 0x0

    goto :goto_3

    nop

    :goto_8
    return-void

    :goto_9
    iput-object v0, p0, Lcom/android/systemui/newstatusbar/layouts/NetSpeedLayout;->bottom:Landroid/widget/TextView;

    goto :goto_8

    nop
.end method

.method protected onMeasure(II)V
    .registers 5

    goto :goto_5

    nop

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_6

    nop

    :goto_1
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    goto :goto_b

    nop

    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/newstatusbar/layouts/NetSpeedLayout;->setMeasuredDimension(II)V

    :goto_3
    goto :goto_8

    nop

    :goto_4
    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    goto :goto_a

    nop

    :goto_5
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto :goto_9

    nop

    :goto_6
    iget v1, p0, Lcom/android/systemui/newstatusbar/layouts/NetSpeedLayout;->height:I

    goto :goto_2

    nop

    :goto_7
    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    goto :goto_0

    nop

    :goto_8
    return-void

    :goto_9
    invoke-direct {p0}, Lcom/android/systemui/newstatusbar/layouts/NetSpeedLayout;->isValid()Z

    move-result v0

    goto :goto_4

    nop

    :goto_a
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/layouts/NetSpeedLayout;->top:Landroid/widget/TextView;

    goto :goto_1

    nop

    :goto_b
    iget-object v1, p0, Lcom/android/systemui/newstatusbar/layouts/NetSpeedLayout;->bottom:Landroid/widget/TextView;

    goto :goto_7

    nop
.end method

.method public updateHeight()V
    .registers 4

    const-string v0, "net_speed_height"

    const v1, 0x28

    invoke-static {v0, v1}, Landroid/preference/SettingsEliteHelper;->getIntofSettings(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/newstatusbar/layouts/NetSpeedLayout;->height:I

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/layouts/NetSpeedLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v2, p0, Lcom/android/systemui/newstatusbar/layouts/NetSpeedLayout;->height:I

    if-eq v1, v2, :cond_0

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/newstatusbar/layouts/NetSpeedLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

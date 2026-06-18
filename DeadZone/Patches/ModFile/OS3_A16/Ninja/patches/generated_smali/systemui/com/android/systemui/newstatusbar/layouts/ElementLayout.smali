.class public abstract Lcom/android/systemui/newstatusbar/layouts/ElementLayout;
.super Lcom/android/systemui/newstatusbar/layouts/SingleLayout;


# instance fields
.field private isNeedOvewflowLayout:Z

.field private overflowLayout:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/android/systemui/newstatusbar/layouts/ElementLayout;->createView()V

    return-void
.end method

.method private createView()V
    .registers 4

    invoke-direct {p0}, Lcom/android/systemui/newstatusbar/layouts/ElementLayout;->isNotif()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/newstatusbar/layouts/ElementLayout;->isStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/newstatusbar/layouts/ElementLayout;->isNeedOvewflowLayout:Z

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/layouts/ElementLayout;->getView()Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/newstatusbar/layouts/ElementLayout;->isNeedOvewflowLayout:Z

    if-eqz v1, :cond_2

    new-instance v1, Lcom/android/systemui/newstatusbar/layouts/OverflowLayout;

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/layouts/ElementLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/systemui/newstatusbar/layouts/OverflowLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/newstatusbar/layouts/ElementLayout;->overflowLayout:Landroid/view/ViewGroup;

    :cond_2
    if-eqz v0, :cond_5

    iget-boolean v1, p0, Lcom/android/systemui/newstatusbar/layouts/ElementLayout;->isNeedOvewflowLayout:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/newstatusbar/layouts/ElementLayout;->overflowLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/layouts/ElementLayout;->getViewLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/layouts/ElementLayout;->overflowLayout:Landroid/view/ViewGroup;

    :cond_3
    const/4 v1, -0x1

    iget-boolean v2, p0, Lcom/android/systemui/newstatusbar/layouts/ElementLayout;->isNeedOvewflowLayout:Z

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/layouts/ElementLayout;->getContainerLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/layouts/ElementLayout;->getViewLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    :goto_2
    invoke-super {p0, v0, v1, v2}, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    return-void
.end method

.method private isNotif()Z
    .registers 4

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/layouts/ElementLayout;->getId()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/layouts/ElementLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "fullscreen_notification_icon_area"

    invoke-static {v1, v2}, Landroid/Utils/Utils;->IDtoID(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isStatus()Z
    .registers 4

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/layouts/ElementLayout;->getId()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/layouts/ElementLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "elem_status"

    invoke-static {v1, v2}, Landroid/Utils/Utils;->IDtoID(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 5

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/layouts/ElementLayout;->overflowLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method getContainerLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    goto :goto_6

    nop

    :goto_0
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_3

    nop

    :goto_1
    const/16 v1, 0x10

    goto :goto_0

    nop

    :goto_2
    const/4 v1, -0x2

    goto :goto_4

    nop

    :goto_3
    return-object v0

    :goto_4
    const/4 v2, -0x1

    goto :goto_5

    nop

    :goto_5
    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_1

    nop

    :goto_6
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    goto :goto_2

    nop
.end method

.method abstract getView()Landroid/view/View;
.end method

.method getViewLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    goto :goto_7

    nop

    :goto_0
    const/16 v1, 0x10

    goto :goto_1

    nop

    :goto_1
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_8

    nop

    :goto_2
    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_5

    nop

    :goto_3
    const/4 v1, -0x2

    goto :goto_2

    nop

    :goto_4
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    nop

    :goto_5
    const/4 v1, 0x3

    goto :goto_6

    nop

    :goto_6
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_4

    nop

    :goto_7
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    goto :goto_3

    nop

    :goto_8
    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .registers 7

    goto :goto_6

    nop

    :goto_0
    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    goto :goto_e

    nop

    :goto_1
    invoke-super {p0, v0}, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->setVisibility(I)V

    goto :goto_2

    nop

    :goto_2
    goto :goto_9

    :goto_3
    goto :goto_8

    nop

    :goto_4
    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/layouts/ElementLayout;->isVisibleByPlaceCalculation()Z

    move-result v0

    goto :goto_0

    nop

    :goto_5
    if-nez v0, :cond_1

    goto :goto_3

    :cond_1
    goto :goto_7

    nop

    :goto_6
    invoke-super/range {p0 .. p5}, Lcom/android/systemui/newstatusbar/layouts/SingleLayout;->onLayout(ZIIII)V

    goto :goto_c

    nop

    :goto_7
    const/4 v0, 0x4

    goto :goto_1

    nop

    :goto_8
    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/layouts/ElementLayout;->updateVisibility()V

    :goto_9
    goto :goto_10

    nop

    :goto_a
    if-eqz v0, :cond_2

    goto :goto_3

    :cond_2
    :goto_b
    goto :goto_4

    nop

    :goto_c
    sub-int v0, p5, p3

    goto :goto_d

    nop

    :goto_d
    if-nez v0, :cond_3

    goto :goto_b

    :cond_3
    goto :goto_f

    nop

    :goto_e
    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/layouts/ElementLayout;->getPosition()I

    move-result v0

    goto :goto_5

    nop

    :goto_f
    sub-int v0, p4, p2

    goto :goto_a

    nop

    :goto_10
    return-void
.end method

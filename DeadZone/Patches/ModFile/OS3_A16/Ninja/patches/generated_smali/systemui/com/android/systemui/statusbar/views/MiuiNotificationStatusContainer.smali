.class public Lcom/android/systemui/statusbar/views/MiuiNotificationStatusContainer;
.super Landroid/view/ViewGroup;


# instance fields
.field public mDotView:Landroid/view/View;

.field public mNotificationIcons:Landroid/view/ViewGroup;

.field public mPrivacyContainer:Landroid/view/View;

.field public mStatusIcons:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private getPrivacyContainerMarginStart()I
    .registers 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/views/MiuiNotificationStatusContainer;->mPrivacyContainer:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result p0

    return p0
.end method


# virtual methods
.method public generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    new-instance p0, Lcom/android/systemui/statusbar/views/MiuiNotificationStatusContainer$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    new-instance v0, Lcom/android/systemui/statusbar/views/MiuiNotificationStatusContainer$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    new-instance p0, Lcom/android/systemui/statusbar/views/MiuiNotificationStatusContainer$LayoutParams;

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public onFinishInflate()V
    .registers 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    const v0, 0x7f0b0be7

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiNotificationStatusContainer;->mStatusIcons:Landroid/view/View;

    const v0, 0x7f0b04f2

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiNotificationStatusContainer;->mNotificationIcons:Landroid/view/ViewGroup;

    const v0, 0x7f0b0962

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiNotificationStatusContainer;->mPrivacyContainer:Landroid/view/View;

    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 13

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    move-result p1

    sub-int/2addr p5, p3

    sub-int/2addr p4, p2

    iget-object p2, p0, Lcom/android/systemui/statusbar/views/MiuiNotificationStatusContainer;->mDotView:Landroid/view/View;

    const/16 p3, 0x8

    const/4 v0, 0x0

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-eq p2, p3, :cond_5

    iget-object p2, p0, Lcom/android/systemui/statusbar/views/MiuiNotificationStatusContainer;->mPrivacyContainer:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiNotificationStatusContainer;->mPrivacyContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/views/MiuiNotificationStatusContainer;->getPrivacyContainerMarginStart()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/views/MiuiNotificationStatusContainer;->mPrivacyContainer:Landroid/view/View;

    if-eqz p1, :cond_0

    move v4, v0

    goto :goto_0

    :cond_0
    sub-int v4, p4, p2

    :goto_0
    if-le v1, p5, :cond_1

    move v5, v0

    goto :goto_1

    :cond_1
    sub-int v5, p5, v1

    div-int/lit8 v5, v5, 0x2

    :goto_1
    if-eqz p1, :cond_2

    move v6, p2

    goto :goto_2

    :cond_2
    move v6, p4

    :goto_2
    if-le v1, p5, :cond_3

    move v1, p5

    goto :goto_3

    :cond_3
    add-int/2addr v1, p5

    div-int/lit8 v1, v1, 0x2

    :goto_3
    invoke-virtual {v3, v4, v5, v6, v1}, Landroid/view/View;->layout(IIII)V

    if-eqz p1, :cond_4

    add-int/2addr p2, v2

    goto :goto_4

    :cond_4
    add-int/2addr p2, v2

    sub-int/2addr p4, p2

    :cond_5
    move p2, v0

    :goto_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiNotificationStatusContainer;->mStatusIcons:Landroid/view/View;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, p3, :cond_b

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiNotificationStatusContainer;->mStatusIcons:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiNotificationStatusContainer;->mStatusIcons:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/views/MiuiNotificationStatusContainer;->mStatusIcons:Landroid/view/View;

    if-eqz p1, :cond_6

    move v4, p2

    goto :goto_5

    :cond_6
    sub-int v4, p4, v1

    :goto_5
    if-le v2, p5, :cond_7

    move v5, v0

    goto :goto_6

    :cond_7
    sub-int v5, p5, v2

    div-int/lit8 v5, v5, 0x2

    :goto_6
    if-eqz p1, :cond_8

    add-int v6, p2, v1

    goto :goto_7

    :cond_8
    move v6, p4

    :goto_7
    if-le v2, p5, :cond_9

    move v2, p5

    goto :goto_8

    :cond_9
    add-int/2addr v2, p5

    div-int/lit8 v2, v2, 0x2

    :goto_8
    invoke-virtual {v3, v4, v5, v6, v2}, Landroid/view/View;->layout(IIII)V

    if-eqz p1, :cond_a

    add-int/2addr p2, v1

    goto :goto_9

    :cond_a
    sub-int/2addr p4, v1

    :cond_b
    :goto_9
    iget-object p1, p0, Lcom/android/systemui/statusbar/views/MiuiNotificationStatusContainer;->mStatusIcons:Landroid/view/View;

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/android/systemui/statusbar/views/MiuiNotificationStatusContainer;->mNotificationIcons:Landroid/view/ViewGroup;

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-eq p1, p3, :cond_e

    iget-object p1, p0, Lcom/android/systemui/statusbar/views/MiuiNotificationStatusContainer;->mStatusIcons:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/views/MiuiNotificationStatusContainer;->mNotificationIcons:Landroid/view/ViewGroup;

    if-le p1, p5, :cond_c

    goto :goto_a

    :cond_c
    sub-int p3, p5, p1

    div-int/lit8 v0, p3, 0x2

    :goto_a
    if-le p1, p5, :cond_d

    goto :goto_b

    :cond_d
    add-int/2addr p5, p1

    div-int/lit8 p5, p5, 0x2

    :goto_b
    invoke-virtual {p0, p2, v0, p4, p5}, Landroid/view/ViewGroup;->layout(IIII)V

    :cond_e
    return-void
.end method

.method public onMeasure(II)V
    .registers 16

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiNotificationStatusContainer;->mPrivacyContainer:Landroid/view/View;

    if-eqz v1, :cond_0

    const v2, 0x7f0b0972

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiNotificationStatusContainer;->mDotView:Landroid/view/View;

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiNotificationStatusContainer;->mDotView:Landroid/view/View;

    const/16 v10, 0x8

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v11, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v10, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiNotificationStatusContainer;->mPrivacyContainer:Landroid/view/View;

    move-object v0, p0

    move v2, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiNotificationStatusContainer;->mPrivacyContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/views/MiuiNotificationStatusContainer;->getPrivacyContainerMarginStart()I

    move-result v2

    add-int v3, v1, v2

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiNotificationStatusContainer;->mPrivacyContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    :cond_1
    move v12, v11

    move v11, v3

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiNotificationStatusContainer;->mStatusIcons:Landroid/view/View;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v10, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiNotificationStatusContainer;->mNotificationIcons:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_2

    div-int/lit8 v1, v8, 0x2

    sub-int/2addr v1, v11

    move v3, v1

    goto :goto_0

    :cond_2
    move v3, v11

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiNotificationStatusContainer;->mStatusIcons:Landroid/view/View;

    move-object v0, p0

    move v2, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiNotificationStatusContainer;->mStatusIcons:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v11, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiNotificationStatusContainer;->mStatusIcons:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    :cond_3
    move v3, v11

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiNotificationStatusContainer;->mNotificationIcons:Landroid/view/ViewGroup;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-eq v1, v10, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiNotificationStatusContainer;->mNotificationIcons:Landroid/view/ViewGroup;

    move-object v0, p0

    move v2, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiNotificationStatusContainer;->mNotificationIcons:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v3, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiNotificationStatusContainer;->mNotificationIcons:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    :cond_4
    const/high16 v1, -0x80000000

    const/high16 v2, 0x40000000

    if-ne v6, v2, :cond_5

    goto :goto_1

    :cond_5
    if-ne v6, v1, :cond_6

    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    goto :goto_1

    :cond_6
    move v8, v3

    :goto_1
    if-ne v7, v2, :cond_7

    goto :goto_2

    :cond_7
    if-ne v7, v1, :cond_8

    invoke-static {v12, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    goto :goto_2

    :cond_8
    move v9, v12

    :goto_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v1

    add-int/2addr v1, v8

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    add-int/2addr v1, v9

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p0, v2, v3}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.class public Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;
.super Landroid/view/ViewGroup;


# instance fields
.field public mBattery:Landroid/view/View;

.field public mBatteryChanged:Z

.field public mHomePrivacyContainer:Landroid/view/View;

.field public mIsHideBattery:Z

.field public mPrivacyState:Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController$PrivacyState;

.field public mStatusIcon:Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;->mBatteryChanged:Z

    sget-object p1, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController$PrivacyState;->COMPLETE_HIDE_PRIVACY:Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController$PrivacyState;

    iput-object p1, p0, Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;->mPrivacyState:Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController$PrivacyState;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;->mBatteryChanged:Z

    sget-object p1, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController$PrivacyState;->COMPLETE_HIDE_PRIVACY:Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController$PrivacyState;

    iput-object p1, p0, Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;->mPrivacyState:Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController$PrivacyState;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;->mBatteryChanged:Z

    sget-object p1, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController$PrivacyState;->COMPLETE_HIDE_PRIVACY:Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController$PrivacyState;

    iput-object p1, p0, Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;->mPrivacyState:Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController$PrivacyState;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;->mBatteryChanged:Z

    sget-object p1, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController$PrivacyState;->COMPLETE_HIDE_PRIVACY:Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController$PrivacyState;

    iput-object p1, p0, Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;->mPrivacyState:Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController$PrivacyState;

    return-void
.end method


# virtual methods
.method public generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    new-instance p0, Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    new-instance v0, Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    new-instance p0, Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer$LayoutParams;

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public onFinishInflate()V
    .registers 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    const v0, 0x7f0b0180

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;->mBattery:Landroid/view/View;

    const v0, 0x7f0b0569

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;->mHomePrivacyContainer:Landroid/view/View;

    const v0, 0x7f0b0b66

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;

    iput-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;->mStatusIcon:Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    return-void
.end method

.method public onLayout(ZIIII)V
    .registers 16

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    move-result p1

    sub-int/2addr p5, p3

    sub-int/2addr p4, p2

    iget-object p2, p0, Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;->mBattery:Landroid/view/View;

    const/16 p3, 0x8

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-eq p2, p3, :cond_4

    iget-object p2, p0, Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;->mBattery:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;->mBattery:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;->mBattery:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v3

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sub-int v3, p4, v3

    sub-int/2addr v3, p2

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    if-le v1, p5, :cond_1

    move v5, v0

    goto :goto_1

    :cond_1
    sub-int v5, p5, v1

    div-int/lit8 v5, v5, 0x2

    :goto_1
    add-int/2addr v5, v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v4

    if-eqz p1, :cond_2

    add-int/2addr v4, p2

    goto :goto_2

    :cond_2
    sub-int v4, p4, v4

    :goto_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v6

    if-le v1, p5, :cond_3

    move v7, p5

    goto :goto_3

    :cond_3
    add-int v7, p5, v1

    div-int/lit8 v7, v7, 0x2

    :goto_3
    add-int/2addr v7, v6

    invoke-virtual {v2, v3, v5, v4, v7}, Landroid/view/View;->layout(IIII)V

    goto :goto_4

    :cond_4
    move p2, v0

    move v1, p2

    :goto_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;->mHomePrivacyContainer:Landroid/view/View;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, p3, :cond_9

    iget-object v2, p0, Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;->mHomePrivacyContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;->mHomePrivacyContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;->mHomePrivacyContainer:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v5

    if-eqz p1, :cond_5

    goto :goto_5

    :cond_5
    sub-int v5, p4, v5

    sub-int/2addr v5, v2

    :goto_5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v6

    if-le v3, p5, :cond_6

    move v7, v0

    goto :goto_6

    :cond_6
    sub-int v7, p5, v3

    div-int/lit8 v7, v7, 0x2

    :goto_6
    add-int/2addr v7, v6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v6

    if-eqz p1, :cond_7

    add-int/2addr v6, v2

    goto :goto_7

    :cond_7
    sub-int v6, p4, v6

    :goto_7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v8

    if-le v3, p5, :cond_8

    move v9, p5

    goto :goto_8

    :cond_8
    add-int v9, p5, v3

    div-int/lit8 v9, v9, 0x2

    :goto_8
    add-int/2addr v9, v8

    invoke-virtual {v4, v5, v7, v6, v9}, Landroid/view/View;->layout(IIII)V

    goto :goto_9

    :cond_9
    move v2, v0

    move v3, v2

    :goto_9
    if-eqz p1, :cond_a

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v5

    :goto_a
    sub-int/2addr p4, v5

    goto :goto_b

    :cond_a
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v5

    goto :goto_a

    :goto_b
    iget-object v5, p0, Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;->mPrivacyState:Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController$PrivacyState;

    sget-object v6, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController$PrivacyState;->START_SHOW_PRIVACY:Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController$PrivacyState;

    if-eq v5, v6, :cond_e

    sget-object v6, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController$PrivacyState;->COMPLETE_SHOW_PRIVACY:Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController$PrivacyState;

    if-ne v5, v6, :cond_b

    goto :goto_c

    :cond_b
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;->mIsHideBattery:Z

    if-nez v2, :cond_d

    if-eqz p1, :cond_c

    add-int/2addr v4, p2

    goto :goto_e

    :cond_c
    sub-int/2addr p4, p2

    goto :goto_e

    :cond_d
    move v1, v0

    goto :goto_e

    :cond_e
    :goto_c
    if-eqz p1, :cond_f

    add-int/2addr v4, v2

    goto :goto_d

    :cond_f
    sub-int/2addr p4, v2

    :goto_d
    move v1, v3

    :goto_e
    iget-object p1, p0, Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;->mStatusIcon:Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-eq p1, p3, :cond_13

    if-nez v1, :cond_10

    iget-object p1, p0, Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;->mStatusIcon:Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    :cond_10
    iget-object p1, p0, Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;->mStatusIcon:Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;->mBatteryChanged:Z

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->setBatteryChanged(Z)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;->mStatusIcon:Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p2

    if-le v1, p5, :cond_11

    move p3, v0

    goto :goto_f

    :cond_11
    sub-int p3, p5, v1

    div-int/lit8 p3, p3, 0x2

    :goto_f
    add-int/2addr p3, p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p2

    if-le v1, p5, :cond_12

    goto :goto_10

    :cond_12
    add-int/2addr p5, v1

    div-int/lit8 p5, p5, 0x2

    :goto_10
    add-int/2addr p5, p2

    invoke-virtual {p1, v4, p3, p4, p5}, Landroid/widget/LinearLayout;->layout(IIII)V

    :cond_13
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;->mBatteryChanged:Z

    return-void
.end method

.method public onMeasure(II)V
    .registers 17

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;->mHomePrivacyContainer:Landroid/view/View;

    sget-object v10, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController$PrivacyState;->COMPLETE_SHOW_PRIVACY:Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController$PrivacyState;

    sget-object v11, Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController$PrivacyState;->START_SHOW_PRIVACY:Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController$PrivacyState;

    const/16 v12, 0x8

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v13, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v12, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;->mHomePrivacyContainer:Landroid/view/View;

    move-object v0, p0

    move v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;->mPrivacyState:Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController$PrivacyState;

    if-eq v1, v11, :cond_0

    if-ne v1, v10, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;->mHomePrivacyContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;->mHomePrivacyContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;->mBattery:Landroid/view/View;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v12, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;->mBattery:Landroid/view/View;

    move-object v0, p0

    move v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;->mIsHideBattery:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;->mPrivacyState:Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController$PrivacyState;

    if-eq v1, v11, :cond_3

    if-eq v1, v10, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;->mBattery:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v3, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;->mBattery:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;->mStatusIcon:Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-eq v1, v12, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;->mStatusIcon:Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;

    move-object v0, p0

    move v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;->mStatusIcon:Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v3, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;->mStatusIcon:Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    :cond_4
    const/high16 v1, -0x80000000

    const/high16 v2, 0x40000000

    if-ne v6, v2, :cond_5

    goto :goto_0

    :cond_5
    if-ne v6, v1, :cond_6

    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    goto :goto_0

    :cond_6
    move v8, v3

    :goto_0
    if-ne v7, v2, :cond_7

    goto :goto_1

    :cond_7
    if-ne v7, v1, :cond_8

    invoke-static {v13, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    goto :goto_1

    :cond_8
    move v9, v13

    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    add-int/2addr v1, v9

    invoke-virtual {p0, v8, v1}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public setBatteryChanged(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;->mBatteryChanged:Z

    return-void
.end method

.method public setIsHideBattery(Ljava/lang/Boolean;)V
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;->mIsHideBattery:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;->mBatteryChanged:Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public setPrivacyState(Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController$PrivacyState;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;->mPrivacyState:Lcom/android/systemui/statusbar/phone/MiuiHomePrivacyController$PrivacyState;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;->mBatteryChanged:Z

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

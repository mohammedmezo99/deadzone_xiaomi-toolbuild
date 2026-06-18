.class public Lcom/android/systemui/newstatusbar/sim/SimTypeContainer;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Lcom/android/systemui/newstatusbar/controllers/SimTypePositionController$CallBack;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "Nastya"


# instance fields
.field private final controller:Lcom/android/systemui/newstatusbar/controllers/SimTypePositionController;

.field private inOut:Landroid/view/View;

.field public isHorizontal:Z

.field private isStatusBar:Z

.field private mobileView:Lcom/android/systemui/newstatusbar/views/ModernStatusBarMobileView;

.field private final requestRunable:Ljava/lang/Runnable;

.field private simType:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-class v0, Lcom/android/systemui/newstatusbar/controllers/SimTypePositionController;

    invoke-static {v0}, Lcom/android/systemui/plugins/ControllerStorage;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/newstatusbar/controllers/SimTypePositionController;

    iput-object v0, p0, Lcom/android/systemui/newstatusbar/sim/SimTypeContainer;->controller:Lcom/android/systemui/newstatusbar/controllers/SimTypePositionController;

    iput-boolean v1, p0, Lcom/android/systemui/newstatusbar/sim/SimTypeContainer;->isStatusBar:Z

    new-instance v0, Lcom/android/systemui/newstatusbar/sim/SimTypeContainer$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/newstatusbar/sim/SimTypeContainer$1;-><init>(Lcom/android/systemui/newstatusbar/sim/SimTypeContainer;)V

    iput-object v0, p0, Lcom/android/systemui/newstatusbar/sim/SimTypeContainer;->requestRunable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/systemui/newstatusbar/sim/SimTypeContainer;->setClipChildren(Z)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/newstatusbar/sim/SimTypeContainer;->setClipToPadding(Z)V

    return-void
.end method

.method private updateMargin()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/sim/SimTypeContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const-string v1, "sim_type_margin"

    invoke-static {v1}, Landroid/preference/SettingsEliteHelper;->getIntofSettings(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/newstatusbar/sim/SimTypeContainer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public getInOut()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/sim/SimTypeContainer;->inOut:Landroid/view/View;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    goto :goto_4

    nop

    :goto_0
    invoke-static {v0}, Lcom/android/systemui/SysDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_7

    nop

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/sim/SimTypeContainer;->controller:Lcom/android/systemui/newstatusbar/controllers/SimTypePositionController;

    goto :goto_5

    nop

    :goto_2
    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    goto :goto_0

    nop

    :goto_3
    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/sim/SimTypeContainer;->onPositionChange()V

    goto :goto_6

    nop

    :goto_4
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    goto :goto_1

    nop

    :goto_5
    invoke-virtual {v0, p0}, Lcom/android/systemui/newstatusbar/controllers/SimTypePositionController;->addCallBack(Lcom/android/systemui/plugins/controllers/ControllerExt$CallBack;)V

    goto :goto_2

    nop

    :goto_6
    return-void

    :goto_7
    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    goto :goto_8

    nop

    :goto_8
    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->addCallback(Ljava/lang/Object;)V

    goto :goto_3

    nop
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/sim/SimTypeContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/newstatusbar/sim/SimTypeContainer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    goto :goto_2

    nop

    :goto_0
    return-void

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/sim/SimTypeContainer;->controller:Lcom/android/systemui/newstatusbar/controllers/SimTypePositionController;

    goto :goto_3

    nop

    :goto_2
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    goto :goto_1

    nop

    :goto_3
    invoke-virtual {v0, p0}, Lcom/android/systemui/newstatusbar/controllers/SimTypePositionController;->removeCallBack(Lcom/android/systemui/plugins/controllers/ControllerExt$CallBack;)V

    goto :goto_0

    nop
.end method

.method protected onFinishInflate()V
    .registers 2

    goto :goto_1

    nop

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/newstatusbar/sim/SimTypeContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_5

    nop

    :goto_1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    goto :goto_3

    nop

    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/systemui/newstatusbar/sim/SimTypeContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_4

    nop

    :goto_3
    const/4 v0, 0x0

    goto :goto_2

    nop

    :goto_4
    iput-object v0, p0, Lcom/android/systemui/newstatusbar/sim/SimTypeContainer;->simType:Landroid/view/View;

    goto :goto_6

    nop

    :goto_5
    iput-object v0, p0, Lcom/android/systemui/newstatusbar/sim/SimTypeContainer;->inOut:Landroid/view/View;

    goto :goto_7

    nop

    :goto_6
    const/4 v0, 0x1

    goto :goto_0

    nop

    :goto_7
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 14

    goto :goto_1

    nop

    :goto_0
    if-nez v5, :cond_0

    goto :goto_19

    :cond_0
    goto :goto_a

    nop

    :goto_1
    const/4 v7, 0x0

    goto :goto_1d

    nop

    :goto_2
    invoke-virtual {v5, v7, v2, v4, v6}, Landroid/view/View;->layout(IIII)V

    goto :goto_11

    nop

    :goto_3
    iget-object v5, p0, Lcom/android/systemui/newstatusbar/sim/SimTypeContainer;->simType:Landroid/view/View;

    goto :goto_c

    nop

    :goto_4
    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/sim/SimTypeContainer;->getMeasuredHeight()I

    move-result v0

    goto :goto_1a

    nop

    :goto_5
    div-int/lit8 v2, v6, 0x2

    goto :goto_1c

    nop

    :goto_6
    invoke-virtual {v5, v4, v7, v6, v0}, Landroid/view/View;->layout(IIII)V

    :goto_7
    goto :goto_18

    nop

    :goto_8
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    goto :goto_16

    nop

    :goto_9
    iget-boolean v5, p0, Lcom/android/systemui/newstatusbar/sim/SimTypeContainer;->isHorizontal:Z

    goto :goto_0

    nop

    :goto_a
    iget-object v5, p0, Lcom/android/systemui/newstatusbar/sim/SimTypeContainer;->simType:Landroid/view/View;

    goto :goto_17

    nop

    :goto_b
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    goto :goto_3

    nop

    :goto_c
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    goto :goto_4

    nop

    :goto_d
    add-int v6, v4, v3

    goto :goto_6

    nop

    :goto_e
    iget-object v5, p0, Lcom/android/systemui/newstatusbar/sim/SimTypeContainer;->simType:Landroid/view/View;

    goto :goto_1e

    nop

    :goto_f
    iget-object v5, p0, Lcom/android/systemui/newstatusbar/sim/SimTypeContainer;->inOut:Landroid/view/View;

    goto :goto_15

    nop

    :goto_10
    if-nez v5, :cond_1

    goto :goto_7

    :cond_1
    goto :goto_14

    nop

    :goto_11
    iget-object v5, p0, Lcom/android/systemui/newstatusbar/sim/SimTypeContainer;->inOut:Landroid/view/View;

    goto :goto_d

    nop

    :goto_12
    goto :goto_7

    :goto_13
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    goto :goto_9

    nop

    :goto_14
    iget-object v5, p0, Lcom/android/systemui/newstatusbar/sim/SimTypeContainer;->simType:Landroid/view/View;

    goto :goto_8

    nop

    :goto_15
    invoke-virtual {v5, v7, v7, v3, v0}, Landroid/view/View;->layout(IIII)V

    goto :goto_12

    nop

    :goto_16
    if-gtz v5, :cond_2

    goto :goto_7

    :cond_2
    goto :goto_1b

    nop

    :goto_17
    sub-int v6, v0, v1

    goto :goto_5

    nop

    :goto_18
    return-void

    :goto_19
    goto :goto_e

    nop

    :goto_1a
    iget-object v5, p0, Lcom/android/systemui/newstatusbar/sim/SimTypeContainer;->inOut:Landroid/view/View;

    goto :goto_13

    nop

    :goto_1b
    iget-object v5, p0, Lcom/android/systemui/newstatusbar/sim/SimTypeContainer;->simType:Landroid/view/View;

    goto :goto_b

    nop

    :goto_1c
    add-int v6, v2, v1

    goto :goto_2

    nop

    :goto_1d
    iget-object v5, p0, Lcom/android/systemui/newstatusbar/sim/SimTypeContainer;->simType:Landroid/view/View;

    goto :goto_10

    nop

    :goto_1e
    invoke-virtual {v5, v7, v7, v4, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_f

    nop
.end method

.method protected onMeasure(II)V
    .registers 9

    goto :goto_18

    nop

    :goto_0
    if-nez v2, :cond_0

    goto :goto_4

    :cond_0
    goto :goto_e

    nop

    :goto_1
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    goto :goto_24

    nop

    :goto_2
    if-eqz v2, :cond_1

    goto :goto_1b

    :cond_1
    goto :goto_2b

    nop

    :goto_3
    goto :goto_11

    :goto_4
    goto :goto_2e

    nop

    :goto_5
    const-wide/16 v4, 0x64

    goto :goto_1d

    nop

    :goto_6
    iget-boolean v2, p0, Lcom/android/systemui/newstatusbar/sim/SimTypeContainer;->isHorizontal:Z

    goto :goto_2c

    nop

    :goto_7
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    goto :goto_2f

    nop

    :goto_8
    goto :goto_d

    :goto_9
    if-nez v2, :cond_2

    goto :goto_29

    :cond_2
    goto :goto_10

    nop

    :goto_a
    iget-boolean v2, p0, Lcom/android/systemui/newstatusbar/sim/SimTypeContainer;->isHorizontal:Z

    goto :goto_9

    nop

    :goto_b
    if-gtz v2, :cond_3

    goto :goto_4

    :cond_3
    goto :goto_19

    nop

    :goto_c
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/newstatusbar/sim/SimTypeContainer;->setMeasuredDimension(II)V

    :goto_d
    goto :goto_28

    nop

    :goto_e
    iget-object v2, p0, Lcom/android/systemui/newstatusbar/sim/SimTypeContainer;->simType:Landroid/view/View;

    goto :goto_17

    nop

    :goto_f
    iget-object v3, p0, Lcom/android/systemui/newstatusbar/sim/SimTypeContainer;->simType:Landroid/view/View;

    goto :goto_1

    nop

    :goto_10
    const/4 v2, 0x1

    :goto_11
    goto :goto_f

    nop

    :goto_12
    iget-object v2, p0, Lcom/android/systemui/newstatusbar/sim/SimTypeContainer;->inOut:Landroid/view/View;

    goto :goto_1c

    nop

    :goto_13
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    goto :goto_21

    nop

    :goto_14
    iget-object v3, p0, Lcom/android/systemui/newstatusbar/sim/SimTypeContainer;->inOut:Landroid/view/View;

    goto :goto_7

    nop

    :goto_15
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    goto :goto_2d

    nop

    :goto_16
    const/4 v2, 0x2

    goto :goto_3

    nop

    :goto_17
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    goto :goto_b

    nop

    :goto_18
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_20

    nop

    :goto_19
    iget-object v2, p0, Lcom/android/systemui/newstatusbar/sim/SimTypeContainer;->simType:Landroid/view/View;

    goto :goto_15

    nop

    :goto_1a
    float-to-int v1, v2

    :goto_1b
    goto :goto_6

    nop

    :goto_1c
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    goto :goto_25

    nop

    :goto_1d
    invoke-virtual {p0, v2, v4, v5}, Lcom/android/systemui/newstatusbar/sim/SimTypeContainer;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_8

    nop

    :goto_1e
    if-nez v2, :cond_4

    goto :goto_1b

    :cond_4
    goto :goto_2a

    nop

    :goto_1f
    invoke-virtual {p0, v2}, Lcom/android/systemui/newstatusbar/sim/SimTypeContainer;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_27

    nop

    :goto_20
    iget-object v2, p0, Lcom/android/systemui/newstatusbar/sim/SimTypeContainer;->requestRunable:Ljava/lang/Runnable;

    goto :goto_1f

    nop

    :goto_21
    iget-boolean v2, p0, Lcom/android/systemui/newstatusbar/sim/SimTypeContainer;->isHorizontal:Z

    goto :goto_2

    nop

    :goto_22
    iget-object v2, p0, Lcom/android/systemui/newstatusbar/sim/SimTypeContainer;->simType:Landroid/view/View;

    goto :goto_13

    nop

    :goto_23
    invoke-virtual {v2}, Lcom/android/systemui/newstatusbar/views/ModernStatusBarMobileView;->getTextInPaint()F

    move-result v2

    goto :goto_1a

    nop

    :goto_24
    mul-int/2addr v2, v3

    goto :goto_14

    nop

    :goto_25
    add-int/2addr v1, v2

    :goto_26
    goto :goto_c

    nop

    :goto_27
    iget-object v2, p0, Lcom/android/systemui/newstatusbar/sim/SimTypeContainer;->simType:Landroid/view/View;

    goto :goto_0

    nop

    :goto_28
    return-void

    :goto_29
    goto :goto_16

    nop

    :goto_2a
    iget-object v2, p0, Lcom/android/systemui/newstatusbar/sim/SimTypeContainer;->mobileView:Lcom/android/systemui/newstatusbar/views/ModernStatusBarMobileView;

    goto :goto_23

    nop

    :goto_2b
    iget-object v2, p0, Lcom/android/systemui/newstatusbar/sim/SimTypeContainer;->mobileView:Lcom/android/systemui/newstatusbar/views/ModernStatusBarMobileView;

    goto :goto_1e

    nop

    :goto_2c
    if-nez v2, :cond_5

    goto :goto_26

    :cond_5
    goto :goto_12

    nop

    :goto_2d
    if-gtz v2, :cond_6

    goto :goto_4

    :cond_6
    goto :goto_a

    nop

    :goto_2e
    iget-object v2, p0, Lcom/android/systemui/newstatusbar/sim/SimTypeContainer;->requestRunable:Ljava/lang/Runnable;

    goto :goto_5

    nop

    :goto_2f
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_22

    nop
.end method

.method public onMiuiThemeChanged(Z)V
    .registers 2

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/sim/SimTypeContainer;->requestLayout()V

    return-void
.end method

.method public onPositionChange()V
    .registers 2

    const-string v0, "sim_type_position"

    invoke-static {v0}, Landroid/preference/SettingsEliteHelper;->getBoolofSettings(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/newstatusbar/sim/SimTypeContainer;->isHorizontal:Z

    invoke-direct {p0}, Lcom/android/systemui/newstatusbar/sim/SimTypeContainer;->updateMargin()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    goto :goto_0

    nop

    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    goto :goto_2

    nop

    :goto_1
    return-void

    :goto_2
    invoke-direct {p0}, Lcom/android/systemui/newstatusbar/sim/SimTypeContainer;->updateMargin()V

    goto :goto_1

    nop
.end method

.method public setIsStatusBar()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/newstatusbar/sim/SimTypeContainer;->isStatusBar:Z

    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4

    const/16 v1, 0x10

    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    :cond_0
    :goto_0
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const-string v1, "sim_type_margin"

    invoke-static {v1}, Landroid/preference/SettingsEliteHelper;->getIntofSettings(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_1
    instance-of v0, p1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0
.end method

.method public setMobileView(Lcom/android/systemui/newstatusbar/views/ModernStatusBarMobileView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/newstatusbar/sim/SimTypeContainer;->mobileView:Lcom/android/systemui/newstatusbar/views/ModernStatusBarMobileView;

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/sim/SimTypeContainer;->onPositionChange()V

    return-void
.end method

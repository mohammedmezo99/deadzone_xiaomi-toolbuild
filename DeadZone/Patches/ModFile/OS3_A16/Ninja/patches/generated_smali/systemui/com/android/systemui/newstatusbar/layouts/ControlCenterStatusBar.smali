.class public Lcom/android/systemui/newstatusbar/layouts/ControlCenterStatusBar;
.super Lcom/android/keyguard/AlphaOptimizedLinearLayout;


# instance fields
.field private final controller:Lcom/android/systemui/newstatusbar/controllers/ElementController;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/keyguard/AlphaOptimizedLinearLayout;-><init>(Landroid/content/Context;)V

    const-class v0, Lcom/android/systemui/newstatusbar/controllers/ElementController;

    invoke-static {v0}, Lcom/android/systemui/plugins/ControllerStorage;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/newstatusbar/controllers/ElementController;

    iput-object v0, p0, Lcom/android/systemui/newstatusbar/layouts/ControlCenterStatusBar;->controller:Lcom/android/systemui/newstatusbar/controllers/ElementController;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/AlphaOptimizedLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-class v0, Lcom/android/systemui/newstatusbar/controllers/ElementController;

    invoke-static {v0}, Lcom/android/systemui/plugins/ControllerStorage;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/newstatusbar/controllers/ElementController;

    iput-object v0, p0, Lcom/android/systemui/newstatusbar/layouts/ControlCenterStatusBar;->controller:Lcom/android/systemui/newstatusbar/controllers/ElementController;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/AlphaOptimizedLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-class v0, Lcom/android/systemui/newstatusbar/controllers/ElementController;

    invoke-static {v0}, Lcom/android/systemui/plugins/ControllerStorage;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/newstatusbar/controllers/ElementController;

    iput-object v0, p0, Lcom/android/systemui/newstatusbar/layouts/ControlCenterStatusBar;->controller:Lcom/android/systemui/newstatusbar/controllers/ElementController;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/keyguard/AlphaOptimizedLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-class v0, Lcom/android/systemui/newstatusbar/controllers/ElementController;

    invoke-static {v0}, Lcom/android/systemui/plugins/ControllerStorage;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/newstatusbar/controllers/ElementController;

    iput-object v0, p0, Lcom/android/systemui/newstatusbar/layouts/ControlCenterStatusBar;->controller:Lcom/android/systemui/newstatusbar/controllers/ElementController;

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .registers 4

    goto :goto_9

    nop

    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    goto :goto_6

    nop

    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/layouts/ControlCenterStatusBar;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_7

    nop

    :goto_2
    check-cast v2, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;

    goto :goto_b

    nop

    :goto_3
    invoke-static {v0, v1}, Landroid/Utils/Utils;->IDtoID(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    goto :goto_4

    nop

    :goto_4
    invoke-virtual {p0, v0}, Lcom/android/systemui/newstatusbar/layouts/ControlCenterStatusBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_5

    nop

    :goto_5
    instance-of v1, v0, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;

    goto :goto_a

    nop

    :goto_6
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_8

    nop

    :goto_7
    const-string v1, "statusIcons"

    goto :goto_3

    nop

    :goto_8
    move-object v2, v0

    goto :goto_2

    nop

    :goto_9
    invoke-super {p0}, Lcom/android/keyguard/AlphaOptimizedLinearLayout;->onFinishInflate()V

    goto :goto_1

    nop

    :goto_a
    if-nez v1, :cond_0

    goto :goto_c

    :cond_0
    goto :goto_0

    nop

    :goto_b
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->addIgnoredSlots(Ljava/util/List;)V

    :goto_c
    goto :goto_d

    nop

    :goto_d
    return-void
.end method

.method protected onMeasure(II)V
    .registers 5

    goto :goto_5

    nop

    :goto_0
    return-void

    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/newstatusbar/layouts/ControlCenterStatusBar;->setMeasuredDimension(II)V

    :goto_2
    goto :goto_0

    nop

    :goto_3
    iget-object v0, p0, Lcom/android/systemui/newstatusbar/layouts/ControlCenterStatusBar;->controller:Lcom/android/systemui/newstatusbar/controllers/ElementController;

    goto :goto_4

    nop

    :goto_4
    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    goto :goto_7

    nop

    :goto_5
    invoke-super {p0, p1, p2}, Lcom/android/keyguard/AlphaOptimizedLinearLayout;->onMeasure(II)V

    goto :goto_3

    nop

    :goto_6
    iget-object v1, p0, Lcom/android/systemui/newstatusbar/layouts/ControlCenterStatusBar;->controller:Lcom/android/systemui/newstatusbar/controllers/ElementController;

    goto :goto_8

    nop

    :goto_7
    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/layouts/ControlCenterStatusBar;->getMeasuredWidth()I

    move-result v0

    goto :goto_6

    nop

    :goto_8
    iget v1, v1, Lcom/android/systemui/newstatusbar/controllers/ElementController;->statusBarHeight:I

    goto :goto_1

    nop
.end method

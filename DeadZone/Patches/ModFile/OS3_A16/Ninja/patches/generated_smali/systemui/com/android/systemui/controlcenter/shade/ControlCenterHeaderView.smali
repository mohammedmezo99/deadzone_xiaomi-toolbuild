.class public final Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;


# instance fields
.field private final controller:Lcom/android/systemui/newstatusbar/controllers/ElementController;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-class v0, Lcom/android/systemui/newstatusbar/controllers/ElementController;

    invoke-static {v0}, Lcom/android/systemui/plugins/ControllerStorage;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/newstatusbar/controllers/ElementController;

    iput-object v0, p0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderView;->controller:Lcom/android/systemui/newstatusbar/controllers/ElementController;

    return-void
.end method


# virtual methods
.method public final hasOverlappingRendering()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method

.method public onMeasure(II)V
    .registers 5

    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->onMeasure(II)V

    iget-object v0, p0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderView;->controller:Lcom/android/systemui/newstatusbar/controllers/ElementController;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderView;->controller:Lcom/android/systemui/newstatusbar/controllers/ElementController;

    iget v1, v1, Lcom/android/systemui/newstatusbar/controllers/ElementController;->statusBarHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/controlcenter/shade/ControlCenterHeaderView;->setMeasuredDimension(II)V

    :cond_0
    return-void
.end method

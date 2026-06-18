.class public Lcom/android/systemui/newstatusbar/views/HeaderDate;
.super Lcom/android/systemui/statusbar/views/MiuiClock;


# instance fields
.field private final controller:Lcom/android/systemui/newstatusbar/controllers/NotifHeaderTransitionController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/views/MiuiClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-class v0, Lcom/android/systemui/newstatusbar/controllers/NotifHeaderTransitionController;

    invoke-static {v0}, Lcom/android/systemui/plugins/ControllerStorage;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/newstatusbar/controllers/NotifHeaderTransitionController;

    iput-object v0, p0, Lcom/android/systemui/newstatusbar/views/HeaderDate;->controller:Lcom/android/systemui/newstatusbar/controllers/NotifHeaderTransitionController;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/views/MiuiClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-class v0, Lcom/android/systemui/newstatusbar/controllers/NotifHeaderTransitionController;

    invoke-static {v0}, Lcom/android/systemui/plugins/ControllerStorage;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/newstatusbar/controllers/NotifHeaderTransitionController;

    iput-object v0, p0, Lcom/android/systemui/newstatusbar/views/HeaderDate;->controller:Lcom/android/systemui/newstatusbar/controllers/NotifHeaderTransitionController;

    return-void
.end method


# virtual methods
.method public setAlpha(F)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/views/MiuiClock;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/views/HeaderDate;->controller:Lcom/android/systemui/newstatusbar/controllers/NotifHeaderTransitionController;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/systemui/newstatusbar/controllers/NotifHeaderTransitionController;->onAlphaChange(F)V

    :cond_0
    return-void
.end method

.method public setTransitionAlpha(F)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/views/MiuiClock;->setTransitionAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/views/HeaderDate;->controller:Lcom/android/systemui/newstatusbar/controllers/NotifHeaderTransitionController;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/systemui/newstatusbar/controllers/NotifHeaderTransitionController;->onAlphaChange(F)V

    :cond_0
    return-void
.end method

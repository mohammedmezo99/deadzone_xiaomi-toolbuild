.class public Lcom/android/systemui/newstatusbar/KeyguardStatusBarView;
.super Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public updateKeyguardStatusBarHeight()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/systemui/newstatusbar/KeyguardStatusBarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-class v1, Lcom/android/systemui/newstatusbar/controllers/ElementController;

    invoke-static {v1}, Lcom/android/systemui/plugins/ControllerStorage;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/newstatusbar/controllers/ElementController;

    iget v1, v1, Lcom/android/systemui/newstatusbar/controllers/ElementController;->statusBarHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/newstatusbar/KeyguardStatusBarView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final updateSystemIconsLayoutParams()V
    .registers 5

    iget-object v0, p0, Lcom/android/systemui/newstatusbar/KeyguardStatusBarView;->mSystemIconsContainer:Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-boolean v1, p0, Lcom/android/systemui/newstatusbar/KeyguardStatusBarView;->mKeyguardUserSwitcherEnabled:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/systemui/newstatusbar/KeyguardStatusBarView;->mSystemIconsSwitcherHiddenExpandedMargin:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/newstatusbar/KeyguardStatusBarView;->mSystemIconsContainer:Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;

    instance-of v2, v2, Lcom/android/systemui/newstatusbar/layouts/MiuiStatusBatteryContainer;

    if-eqz v2, :cond_1

    invoke-static {}, Landroid/Utils/Utils;->getRealWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, -0x2d

    iget-object v3, p0, Lcom/android/systemui/newstatusbar/KeyguardStatusBarView;->mSystemIconsContainer:Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;->getPaddingEnd()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    iget-object v3, p0, Lcom/android/systemui/newstatusbar/KeyguardStatusBarView;->mSystemIconsContainer:Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;

    check-cast v3, Lcom/android/systemui/newstatusbar/layouts/MiuiStatusBatteryContainer;

    invoke-virtual {v3, v2}, Lcom/android/systemui/newstatusbar/layouts/MiuiStatusBatteryContainer;->setMaxWidth(I)V

    :cond_1
    invoke-virtual {v0}, Landroid/widget/LinearLayout$LayoutParams;->getMarginEnd()I

    move-result v2

    if-eq v1, v2, :cond_2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    iget-object v2, p0, Lcom/android/systemui/newstatusbar/KeyguardStatusBarView;->mSystemIconsContainer:Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.class public final Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakeStatusIcons;
.super Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;

# interfaces
.implements Lcom/android/systemui/plugins/miui/statusbar/ControlCenterStatusBarView;


# instance fields
.field public final delegate:Lcom/android/systemui/controlcenter/header/CcFakeStatusBarIcons;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/android/systemui/controlcenter/header/CcFakeStatusBarIcons;

    invoke-direct {p1, p0}, Lcom/android/systemui/controlcenter/header/CcFakeStatusBarIcons;-><init>(Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakeStatusIcons;)V

    iput-object p1, p0, Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakeStatusIcons;->delegate:Lcom/android/systemui/controlcenter/header/CcFakeStatusBarIcons;

    return-void
.end method


# virtual methods
.method public getPaddingForLaunchAnimation()Landroid/graphics/Rect;
    .registers 1

    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    return-object p0
.end method

.method public final onAttachedToWindow()V
    .registers 6

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object p0, p0, Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakeStatusIcons;->delegate:Lcom/android/systemui/controlcenter/header/CcFakeStatusBarIcons;

    iget-object v0, p0, Lcom/android/systemui/controlcenter/header/CcFakeStatusBarIcons;->iconManager:Lcom/android/systemui/statusbar/phone/MiuiLightDarkIconManager;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/controlcenter/header/CcFakeStatusBarIcons;->dependency:Lcom/android/systemui/controlcenter/header/StatusBarDependencyInCc;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/controlcenter/header/CcFakeStatusBarIcons;->statusIcons:Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;

    sget-object v3, Lcom/android/systemui/statusbar/phone/StatusBarLocation;->QS_FAKE:Lcom/android/systemui/statusbar/phone/StatusBarLocation;

    iget-object v4, v0, Lcom/android/systemui/controlcenter/header/StatusBarDependencyInCc;->iconDispatcher:Lcom/miui/systemui/statusbar/shade/ShadeDarkIconDispatcher;

    check-cast v4, Lcom/miui/systemui/statusbar/shade/ShadeDarkIconDispatcherImpl;

    iget v4, v4, Lcom/miui/systemui/statusbar/shade/ShadeDarkIconDispatcherImpl;->lightModeIconColorSingleTone:I

    iget-object v0, v0, Lcom/android/systemui/controlcenter/header/StatusBarDependencyInCc;->factory:Lcom/android/systemui/statusbar/phone/ui/TintedIconManager$Factory;

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/android/systemui/statusbar/phone/ui/TintedIconManager$Factory;->createMiuiIconManager(Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/StatusBarLocation;ZI)Lcom/android/systemui/statusbar/phone/MiuiLightDarkIconManager;

    move-result-object v0

    sget-object v2, Lcom/android/systemui/statusbar/phone/MiuiIconManagerUtils;->RIGHT_BLOCK_LIST:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/ui/IconManager;->setBlockList(Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/systemui/controlcenter/header/CcFakeStatusBarIcons;->iconManager:Lcom/android/systemui/statusbar/phone/MiuiLightDarkIconManager;

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/controlcenter/header/CcFakeStatusBarIcons;->iconManager:Lcom/android/systemui/statusbar/phone/MiuiLightDarkIconManager;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/controlcenter/header/CcFakeStatusBarIcons;->dependency:Lcom/android/systemui/controlcenter/header/StatusBarDependencyInCc;

    if-nez v0, :cond_3

    :goto_1
    return-void

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/controlcenter/header/CcFakeStatusBarIcons;->statusIcons:Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;

    if-eqz v2, :cond_4

    const/4 v3, 0x5

    iget-object v4, v0, Lcom/android/systemui/controlcenter/header/StatusBarDependencyInCc;->islandController:Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;

    invoke-virtual {v2, v4, v3}, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->setIslandController(Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;I)V

    :cond_4
    iget-object v2, v0, Lcom/android/systemui/controlcenter/header/StatusBarDependencyInCc;->configController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v2, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v2, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/android/systemui/controlcenter/header/StatusBarDependencyInCc;->iconDispatcher:Lcom/miui/systemui/statusbar/shade/ShadeDarkIconDispatcher;

    check-cast v2, Lcom/miui/systemui/statusbar/shade/ShadeDarkIconDispatcherImpl;

    invoke-virtual {v2, p0}, Lcom/miui/systemui/statusbar/shade/ShadeDarkIconDispatcherImpl;->addDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    iget-object v2, p0, Lcom/android/systemui/controlcenter/header/CcFakeStatusBarIcons;->iconManager:Lcom/android/systemui/statusbar/phone/MiuiLightDarkIconManager;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/ui/IconManager;->onDensityOrFontScaleChanged()V

    :cond_5
    iget-object v2, p0, Lcom/android/systemui/controlcenter/header/CcFakeStatusBarIcons;->iconManager:Lcom/android/systemui/statusbar/phone/MiuiLightDarkIconManager;

    iget-object v0, v0, Lcom/android/systemui/controlcenter/header/StatusBarDependencyInCc;->iconController:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->addIconGroup(Lcom/android/systemui/statusbar/phone/ui/IconManager;)V

    iget-object v0, p0, Lcom/android/systemui/controlcenter/header/CcFakeStatusBarIcons;->statusIcons:Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;

    if-eqz v0, :cond_6

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->setNeedLimitIcon(Z)V

    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/header/CcFakeStatusBarIcons;->updateHeaderColor()V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .registers 3

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object p0, p0, Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakeStatusIcons;->delegate:Lcom/android/systemui/controlcenter/header/CcFakeStatusBarIcons;

    iget-object v0, p0, Lcom/android/systemui/controlcenter/header/CcFakeStatusBarIcons;->dependency:Lcom/android/systemui/controlcenter/header/StatusBarDependencyInCc;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/android/systemui/controlcenter/header/StatusBarDependencyInCc;->configController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v1, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/android/systemui/controlcenter/header/StatusBarDependencyInCc;->iconDispatcher:Lcom/miui/systemui/statusbar/shade/ShadeDarkIconDispatcher;

    check-cast v1, Lcom/miui/systemui/statusbar/shade/ShadeDarkIconDispatcherImpl;

    invoke-virtual {v1, p0}, Lcom/miui/systemui/statusbar/shade/ShadeDarkIconDispatcherImpl;->removeDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    iget-object p0, p0, Lcom/android/systemui/controlcenter/header/CcFakeStatusBarIcons;->iconManager:Lcom/android/systemui/statusbar/phone/MiuiLightDarkIconManager;

    iget-object v0, v0, Lcom/android/systemui/controlcenter/header/StatusBarDependencyInCc;->iconController:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->removeIconGroup(Lcom/android/systemui/statusbar/phone/ui/IconManager;)V

    return-void
.end method

.method public final onFinishInflate()V
    .registers 6

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    iget-object p0, p0, Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakeStatusIcons;->delegate:Lcom/android/systemui/controlcenter/header/CcFakeStatusBarIcons;

    iget-object v0, p0, Lcom/android/systemui/controlcenter/header/CcFakeStatusBarIcons;->view:Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakeStatusIcons;

    const v1, 0x7f0b0180

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;

    iput-object v0, p0, Lcom/android/systemui/controlcenter/header/CcFakeStatusBarIcons;->battery:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;

    iget-object v0, p0, Lcom/android/systemui/controlcenter/header/CcFakeStatusBarIcons;->view:Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakeStatusIcons;

    const v1, 0x7f0b0b66

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;

    iput-object v1, p0, Lcom/android/systemui/controlcenter/header/CcFakeStatusBarIcons;->statusIcons:Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;

    const/4 v2, 0x5

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->updateLayoutFrom(I)V

    iget-object v3, p0, Lcom/android/systemui/controlcenter/header/CcFakeStatusBarIcons;->dependency:Lcom/android/systemui/controlcenter/header/StatusBarDependencyInCc;

    if-eqz v3, :cond_0

    iget-object v3, v3, Lcom/android/systemui/controlcenter/header/StatusBarDependencyInCc;->islandController:Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;

    if-eqz v3, :cond_0

    invoke-virtual {v1, v3, v2}, Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;->setIslandController(Lcom/android/systemui/statusbar/StatusBarIslandControllerImpl;I)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/controlcenter/header/CcFakeStatusBarIcons;->battery:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->setLayoutFromTag(I)V

    :cond_1
    const v1, 0x7f0b0b7a

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/controlcenter/header/CcFakeStatusBarIcons;->statusBarInner:Landroid/widget/LinearLayout;

    const v1, 0x7f0b0be6

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;

    iput-object v0, p0, Lcom/android/systemui/controlcenter/header/CcFakeStatusBarIcons;->statusBarArea:Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;

    iget-object v1, p0, Lcom/android/systemui/controlcenter/header/CcFakeStatusBarIcons;->battery:Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/views/MiuiBatteryMeterView;->setStatusBatteryContainer(Lcom/android/systemui/statusbar/views/MiuiStatusBatteryContainer;)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/controlcenter/header/CcFakeStatusBarIcons;->dependency:Lcom/android/systemui/controlcenter/header/StatusBarDependencyInCc;

    if-nez v0, :cond_3

    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/controlcenter/header/CcFakeStatusBarIcons;->statusIcons:Lcom/android/systemui/statusbar/views/MiuiStatusIconContainer;

    sget-object v2, Lcom/android/systemui/statusbar/phone/StatusBarLocation;->QS_FAKE:Lcom/android/systemui/statusbar/phone/StatusBarLocation;

    iget-object v3, v0, Lcom/android/systemui/controlcenter/header/StatusBarDependencyInCc;->iconDispatcher:Lcom/miui/systemui/statusbar/shade/ShadeDarkIconDispatcher;

    check-cast v3, Lcom/miui/systemui/statusbar/shade/ShadeDarkIconDispatcherImpl;

    iget v3, v3, Lcom/miui/systemui/statusbar/shade/ShadeDarkIconDispatcherImpl;->lightModeIconColorSingleTone:I

    iget-object v0, v0, Lcom/android/systemui/controlcenter/header/StatusBarDependencyInCc;->factory:Lcom/android/systemui/statusbar/phone/ui/TintedIconManager$Factory;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/android/systemui/statusbar/phone/ui/TintedIconManager$Factory;->createMiuiIconManager(Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/StatusBarLocation;ZI)Lcom/android/systemui/statusbar/phone/MiuiLightDarkIconManager;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/phone/MiuiIconManagerUtils;->RIGHT_BLOCK_LIST:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ui/IconManager;->setBlockList(Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/systemui/controlcenter/header/CcFakeStatusBarIcons;->iconManager:Lcom/android/systemui/statusbar/phone/MiuiLightDarkIconManager;

    return-void
.end method

.method public setAlpha(F)V
    .registers 3

    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/android/systemui/statusbar/AlphaOptimizedFrameLayout;->setAlpha(F)V

    return-void
.end method

.method public final setDependency(Lcom/android/systemui/controlcenter/header/StatusBarDependencyInCc;)V
    .registers 2

    iget-object p0, p0, Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakeStatusIcons;->delegate:Lcom/android/systemui/controlcenter/header/CcFakeStatusBarIcons;

    iput-object p1, p0, Lcom/android/systemui/controlcenter/header/CcFakeStatusBarIcons;->dependency:Lcom/android/systemui/controlcenter/header/StatusBarDependencyInCc;

    return-void
.end method

.method public final setIsDrip(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakeStatusIcons;->delegate:Lcom/android/systemui/controlcenter/header/CcFakeStatusBarIcons;

    iget-object p0, p0, Lcom/android/systemui/controlcenter/header/CcFakeStatusBarIcons;->iconManager:Lcom/android/systemui/statusbar/phone/MiuiLightDarkIconManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ui/IconManager;->setDripEnd(Z)V

    :cond_0
    return-void
.end method

.method public final setKeyguardStatusBarColors(ZIF)V
    .registers 5

    iget-object p0, p0, Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakeStatusIcons;->delegate:Lcom/android/systemui/controlcenter/header/CcFakeStatusBarIcons;

    iget-boolean v0, p0, Lcom/android/systemui/controlcenter/header/CcFakeStatusBarIcons;->mKeyguardStatusBarDark:Z

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/systemui/controlcenter/header/CcFakeStatusBarIcons;->mKeyguardStatusBarColor:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/android/systemui/controlcenter/header/CcFakeStatusBarIcons;->mKeyguardStatusBarIntensity:F

    cmpg-float v0, v0, p3

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/controlcenter/header/CcFakeStatusBarIcons;->mKeyguardStatusBarDark:Z

    iput p2, p0, Lcom/android/systemui/controlcenter/header/CcFakeStatusBarIcons;->mKeyguardStatusBarColor:I

    iput p3, p0, Lcom/android/systemui/controlcenter/header/CcFakeStatusBarIcons;->mKeyguardStatusBarIntensity:F

    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/header/CcFakeStatusBarIcons;->updateHeaderColor()V

    return-void
.end method

.method public setListening(Z)V
    .registers 2

    return-void
.end method

.method public final setStatusBarState(I)V
    .registers 3

    iget-object p0, p0, Lcom/android/systemui/controlcenter/phone/widget/ControlCenterFakeStatusIcons;->delegate:Lcom/android/systemui/controlcenter/header/CcFakeStatusBarIcons;

    iget v0, p0, Lcom/android/systemui/controlcenter/header/CcFakeStatusBarIcons;->mStatusBarState:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/systemui/controlcenter/header/CcFakeStatusBarIcons;->mStatusBarState:I

    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/header/CcFakeStatusBarIcons;->updateHeaderColor()V

    :cond_0
    return-void
.end method
